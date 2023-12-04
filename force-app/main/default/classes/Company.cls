public with sharing class Company {
	public String companyName;
	public String ceo;
	public Integer employeeCount;
	public Long revenue;

	//List of all customers
	List<Client> customers = new List<Client>();

	//Add new customer
	public void addNewCustomer(String clientName, String website, String email, Long phone) {
		Client customer = new Client(clientName, website, email, phone);
		customers.add(customer);
	}

	//Print the list of customers
	public void getAllCustomers() {
		for (Client customer : customers) {
			System.debug('Customer name: ' + customer.clientName + ', Website: ' + customer.website + ', Email: ' + customer.email + ', Phone: ' + customer.phone);
		}
	}

	//Private inner class to store the customer information
	private class Client {
		public String clientName;
		public String website;
		public String email;
		public Long phone;

		Client(String clientName, String website, String email, Long phone) {
			this.clientName = clientName;
			this.website = website;
			this.email = email;
			this.phone = phone;
		}
	}
}
