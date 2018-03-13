package szpak.marcin.management.app;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@ComponentScan("szpak.marcin.management.app")
@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/*.js/**").addResourceLocations("/WEB-INF/views/static/");
        registry.addResourceHandler("/*.css/**").addResourceLocations("/WEB-INF/views/static/");
        registry.addResourceHandler("/*.jpg").addResourceLocations("/WEB-INF/views/static/");
    }

}
