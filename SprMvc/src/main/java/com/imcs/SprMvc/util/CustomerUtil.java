package com.imcs.SprMvc.util;

import javax.servlet.http.HttpServletRequest;
import trng.imcs.hib.pojo.Address;
import trng.imcs.hib.pojo.Customers;

public class CustomerUtil {
	
	public static Customers prepareCustomerRequest(HttpServletRequest hsr) {

		
		Address addr = new Address();
		addr.setCity((String) hsr.getParameter("City"));
		addr.setStreet((String) hsr.getParameter("Street"));
		addr.setZip((String) hsr.getParameter("zip"));
		


Customers cust1 = new Customers();
cust1.setCust_id_pk(Integer.parseInt((String)hsr.getParameter("Customer_Id")));
cust1.setFirst_name((String) hsr.getParameter("firstname"));
cust1.setLast_name((String) hsr.getParameter("lastname"));
cust1.setCompany((String) hsr.getParameter("company"));
cust1.setEmail((String) hsr.getParameter("Email"));
cust1.setTitle((String) hsr.getParameter("Title"));
cust1.setAddress(addr);
cust1.setBilling_city((String) hsr.getParameter("City"));
cust1.setBilling_country((String) hsr.getParameter("Country"));
cust1.setBilling_state((String) hsr.getParameter("State"));
cust1.setBilling_street((String) hsr.getParameter("Street"));
cust1.setBilling_zip((String) hsr.getParameter("zip"));
cust1.setDisplay_name((String) hsr.getParameter("Display_name"));
cust1.setMiddle_name((String) hsr.getParameter("Middle_name"));
cust1.setOther_details((String) hsr.getParameter("Other_Details"));
cust1.setPrint_on_check_as((String) hsr.getParameter("Print_on_cheque_as"));
cust1.setShipping_city((String) hsr.getParameter("Shipping_City"));
cust1.setShipping_country((String) hsr.getParameter("Shipping_Country"));
cust1.setShipping_state((String) hsr.getParameter("Shipping_State"));
cust1.setShipping_street((String) hsr.getParameter("Shipping_Street"));
cust1.setShipping_zip((String) hsr.getParameter("Shipping_Zip"));
return cust1;


	}

}
