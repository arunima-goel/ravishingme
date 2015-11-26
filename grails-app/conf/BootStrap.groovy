import org.ravishingme.Profile
import org.ravishingme.SecRole
import org.ravishingme.SecUser;
import org.ravishingme.SecUserSecRole;

class BootStrap {

    def init = { servletContext ->
		SecRole secRoleUser = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		SecRole secRoleAdmin = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		Profile profile = new Profile("test-user-name", "test-name");
		SecUser secUser = new SecUser("testId", "testName", profile);
		secUser.save(failOnError: true);
		SecUserSecRole secUserSecRole = new SecUserSecRole(secUser, secRoleUser);
		secUserSecRole.save(failOnError: true);
		secUserSecRole = new SecUserSecRole(secUser, secRoleAdmin);
		secUserSecRole.save(failOnError: true);
    }
    def destroy = {
    }
}
