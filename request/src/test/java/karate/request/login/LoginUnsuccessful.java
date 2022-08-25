package karate.request.login;

import com.intuit.karate.junit5.Karate;

public class LoginUnsuccessful {
    @Karate.Test
    Karate sampleTest(){
        return Karate.run("classpath:karate/request/login_Email_Post/login_Unsuccessful.feature").relativeTo(getClass());
    }
}
