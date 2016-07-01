package Kauppapaikka;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

/**
 * Created by Tuomas on 24.6.2016.
 */
@Configuration
@EnableWebMvc
public class MvcConfiguration extends WebMvcConfigurerAdapter {
    @Bean
    public ViewResolver getViewResolver() {
        FreeMarkerViewResolver resolver = new FreeMarkerViewResolver();
        resolver.setPrefix("/WEB-INF/ftl/");
        resolver.setSuffix(".ftl");
        return resolver;
    }

   @Bean
   public FreeMarkerConfigurer getFreemarkerConfig() {

       FreeMarkerConfigurer result = new FreeMarkerConfigurer();

       result.setTemplateLoaderPath("WEB-INF/ftl/");

       return result;

   }
}
