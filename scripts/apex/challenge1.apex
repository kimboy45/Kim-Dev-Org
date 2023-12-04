List<String> apexPosts = new List<String>{ 'Value 1', 'Value 2' };
List<String> lightningPosts = new List<String>{ 'Value 1', 'Value 2' };
Map<String, List<String>> allPosts = new Map<String, List<String>>();
allPosts.put('Apex', apexPosts);
allPosts.put('Lightning', lightningPosts);
System.debug(allPosts);
 