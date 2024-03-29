package kennelpal



import grails.test.mixin.*
import org.junit.*
import kennelpal.Owner

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Contact)
class ContactTests {

	// declare mock Contact
	def mockContact

	// initialize mock Contact before each test
	@Before
	void setUp() {
		mockContact = initMockContact()
	}

	// set mock Contact to null after each test
	@After
    void tearDown() {
    	mockContact = null
    }

    // method to setup mock Contact
	Contact initMockContact() {
		Contact tempMockContact = new Contact(
			owner:initMockOwner(),
			firstName:"Joe",
			lastName:"John",
			phone:"612-098-0908",
			email:"joejohn@gmail.com",
			role:"Family",
			notes:null
			)
		tempMockContact
	}

	// method to setup mock Owner
	Owner initMockOwner() {
		Owner mockOwner = new Owner(
            accountNumber:"99999",
            accountBalance:0.00, 
            firstName:"Mary", 
            lastName:"Sanders", 
            address:"765 Hickory Lane", 
            city:"Rochester",
            state:"55902", 
            zipcode:"59902",
            email:"chet@yahoo.com", 
            primaryPhone:"507-123-9876", 
            secondaryPhone:null, 
            notes:null
            )
		mockOwner
	}

	// test to see if expected string is returned
    void testToString() {
    	assertEquals("${mockContact.lastName}, ${mockContact.firstName} ${mockContact.role}", mockContact.toString())
    }
}
