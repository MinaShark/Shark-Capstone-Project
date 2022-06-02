@AllScenario
Feature: Retail Page feature 

Background:
	Given user is on Retail website
	When user click on MyAccount 
	And user click on Login 
	And user enter userName 'UserName' and password 'Password' 
	And user click on LoginButton 
	Then user should be logged in to my account dashboard 

@AffiliateRegister

Scenario: Register as an Affiliate user with Cheque Payment Method 
	When User click on ‘Register for an Affiliate Account’ link 
	And User fill affiliate form with below information 
		|company	|website		|taxID	|paymentMethod	|chequePayeeName|paypalEmail|
		|wazjma	|wazjma.com	|3145122|paypal			|ABD			|wzj@yahoo.com|
	And User check on About us check box 
	And User click on Continue button 
	Then User should see a success message 
	
@editAffiliate
Scenario: 
	Edit your affiliate information from Cheque payment method to Bank Transfer 
	When User click on ‘Edit your affiliate informationlink 
	And user click on Bank Transfer radio button 
	And User fill Bank information with below information 
		|bankName	|abaNumber	|swiftCode	|accountName|accountNumber	|
		|USA Bank	|	15328	|2661570934	|ME	|523572314		|
	And User click on Continue button1 
	Then User should see a success message1 
	
@editAccountInfo
Scenario: Edit your account Information 
	When User click on ‘Edit your account information’ link 
	And User modify below information 
#		|firstname	|lastName	|email						|telephone				|
#		|wazjma		|salehi	|wazjmasalehi2@gmail.com	|321-534-7643			|
	And User click on continue button for edit account info 
	Then User should see a message ‘Success: Your account has been successfully updated.1’ 
	
