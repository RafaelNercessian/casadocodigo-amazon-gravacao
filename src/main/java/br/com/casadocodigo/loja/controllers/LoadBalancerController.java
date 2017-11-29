package br.com.casadocodigo.loja.controllers;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoadBalancerController {

	@RequestMapping("/loadbalancer")
	public String loadBalancer(Model model) {
		try {
			String hostName = InetAddress.getLocalHost().getHostName();
			model.addAttribute("hostName", hostName);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		return "loadbalancer";
	}
}
