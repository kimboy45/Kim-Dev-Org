/* for non static method only
Fitness fitness = new Fitness();
System.debug('The BMI is ' + fitness.calculateBMI(60, 1.7));

System.debug('The KPH is ' + fitness.calculateBMI(10, 60));
*/

//for static method
System.debug('The BMI is ' + Fitness.calculateBMI(60, 1.2));

System.debug('The pace is ' + Fitness.calculatePace(10, 130));
