public with sharing class Constructor {
	public String computerType = 'Gaming';
	private String brandType;
	public Integer numberOfPC = 0;
	private Integer numberOfBrand = 0;

	public Constructor(String comptuerTypePassed) {
		System.debug('Orginial comptuer type is ' + computerType);
		// Result: Original computer type is Gaming
		computerType = comptuerTypePassed;
		System.debug('New comptuer type is ' + computerType);
		// Result: New computer type is Server
	}

	public Constructor() {
		brandType = 'Samsung';
		System.debug('Computer brand type is ' + brandType);
		// Result: Computer brand type is Samsung
	}

	public Constructor(Integer numberOfPC) {
		//to call a constuctor in a constrcuctor it should be the first statement
		this();
		this.numberOfPC = numberOfPC;
	}
}
