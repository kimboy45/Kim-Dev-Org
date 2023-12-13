public class UserDataCreateByCSV {
	@AuraEnabled
	public static List<User> createUserRecords(String base64Data) {
		String data = JSON.deserializeUntyped(base64Data).toString();
		List<User> userList = new List<User>();
		List<String> lstCSVLines = data.split('\n');

		for (Integer i = 1; i < lstCSVLines.size(); i++) {
			User user = new User();
			String csvLine = lstCSVLines[i];
			String prevLine = csvLine;
			Integer startIndex;
			Integer endIndex;

			while (csvLine.indexOf('"') > -1) {
				if (startIndex == null) {
					startIndex = csvLine.indexOf('"');
					csvLine =
						csvLine.substring(0, startIndex) +
						':quotes:' +
						csvLine.substring(startIndex + 1, csvLine.length());
				} else {
					if (endIndex == null) {
						endIndex = csvLine.indexOf('"');
						csvLine =
							csvLine.substring(0, endIndex) +
							':quotes:' +
							csvLine.substring(endIndex + 1, csvLine.length());
					}
				}

				if (startIndex != null && endIndex != null) {
					String sub = csvLine.substring(startIndex, endIndex);
					sub = sub.replaceAll(',', ':comma:');
					csvLine = csvLine.substring(0, startIndex) + sub + csvLine.substring(endIndex, csvLine.length());
					startIndex = null;
					endIndex = null;
				}
			}

			List<String> csvRowData = new List<String>();
			for (String column : csvLine.split(',')) {
				column = column.replaceAll(':quotes:', '').replaceAll(':comma:', ',');
				csvRowData.add(column);
			}

			user.FirstName = csvRowData[0];
			user.LastName = csvRowData[1];
			user.Alias = csvRowData[2];
			user.ProfileId = csvRowData[3];
			user.Email = csvRowData[4];
			user.LocaleSidKey = csvRowData[5];
			user.LanguageLocaleKey = csvRowData[6];
			user.EmailEncodingKey = csvRowData[7];
			user.TimeZoneSidKey = csvRowData[8];
			user.Market__c = csvRowData[9];
			//String.valueOfString(user.IsActive) = csvRowData[10];
			userList.add(user);
		}

		if (!userList.isEmpty()) {
			insert userList;
		}

		return userList;
	}
}
