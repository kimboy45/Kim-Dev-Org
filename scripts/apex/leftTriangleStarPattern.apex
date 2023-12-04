for (Integer i = 1; i <= 5; i++) {
	String s = '';
	for (Integer x = 1; x <= 5; x++) {
		//System.debug('print 1st x ' + x);
		if (x >= 6 - i) {
			s = s + 'x';
		} else {
			s = s + '_';
		}
	}
	System.debug(s);
}

/*
print i 1
print 1st x 1
print 1st x 2
print 1st x 3
print 1st x 4
print 1st x 5

5 => 6 - 1
5 => 5 = true
print 2nd x 5

print i 2
print 1st x 1
print 1st x 2
print 1st x 3
print 1st x 4

4 => 6 - 2
4 => 4 = true
print 2nd x 4

print 1st x 5

5 => 6 - 2
5 => 4 = true
print 2nd x 5

print i 3
print 1st x 1
print 1st x 2
print 1st x 3

3 => 6 - 3
3 => 3 = true
print 2nd x 3
print 1st x 4

4 => 6 - 3
4 => 3 = true
print 2nd x 4
print 1st x 5

5 => 6 - 3
5 => 3 = true
print 2nd x 5


print i 4
print 1st x 1
print 1st x 2

2 >= 6 - 4
2 >= 2 = true
print 2nd x 2
print 1st x 3

3 >= 6 - 4
3 >= 2 = true
print 2nd x 3
print 1st x 4


4 >= 6 - 4
4 >= 2 = true
print 2nd x 4
print 1st x 5

5 >= 6 - 4
5 >= 2 = true
print 2nd x 5

print i 5
print 1st x 1

1 >= 6 - 5
1 >= 1 = true
print 2nd x 1
print 1st x 2

2 >= 6 - 5
2 >= 1 = true
print 2nd x 2
print 1st x 3

3 >= 6 - 5
3 >= 1 = true
print 2nd x 3
print 1st x 4

4 >= 6 - 5
4 >= 1 = true
print 2nd x 4
print 1st x 5

5 >= 6 - 5
5 >= 1 = true
print 2nd x 5
*/

