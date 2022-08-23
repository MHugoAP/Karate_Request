package karate.request.post;

import com.intuit.karate.junit5.Karate;

public class post {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/Post/post.feature").relativeTo(getClass());
    }
}