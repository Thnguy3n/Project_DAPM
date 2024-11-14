package com.javabackend.shop.Controller.admin;

import com.javabackend.shop.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {
    @Autowired
    private OrderRepository orderRepository;
//    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
//
//    public ModelAndView homePage() {
//
//        ModelAndView mav = new ModelAndView("admin/adminHome");
//
//        return mav;
//
//    }
@Controller
public class OrderStatisticsController {

    @Autowired
    private OrderRepository orderRepository;

    @GetMapping("/admin/home")
    public ModelAndView getMonthlyRevenue(@RequestParam(defaultValue = "2024") int year,
                                          @RequestParam(required = false) Integer month,
                                          @RequestParam(required = false) String status) {
        ModelAndView modelAndView = new ModelAndView("admin/adminHome");
        List<Object[]> monthlyRevenueData = orderRepository.getMonthlyRevenue(year, month, status);
        Map<Integer, Double> monthlyRevenue = new LinkedHashMap<>();
        for (Object[] record : monthlyRevenueData) {
            Integer revenueMonth = (Integer) record[0];
            Double revenue = (Double) record[2];
            monthlyRevenue.put(revenueMonth, revenue);
        }
        modelAndView.addObject("monthlyRevenue", monthlyRevenue);
        modelAndView.addObject("year", year);
        modelAndView.addObject("month", month);
        modelAndView.addObject("status", status);

        return modelAndView;
    }
}

}
