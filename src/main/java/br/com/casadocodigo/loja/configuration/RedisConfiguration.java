package br.com.casadocodigo.loja.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericToStringSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.session.data.redis.config.ConfigureRedisAction;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.session.web.context.AbstractHttpSessionApplicationInitializer;

import redis.clients.jedis.JedisPoolConfig;

@EnableRedisHttpSession
@Configuration
public class RedisConfiguration extends AbstractHttpSessionApplicationInitializer {

	@Bean
	public JedisConnectionFactory jedisConnectionFactory() {
		JedisPoolConfig pool = new JedisPoolConfig();
		JedisConnectionFactory factory = new JedisConnectionFactory(pool);
		factory.setHostName("[SEU ENDPOINT]");
		factory.setPort(6379);
		return factory;
	}

	@Bean
	public RedisTemplate<String, Object> redisTemplate() {
		RedisTemplate<String, Object> template = new RedisTemplate<String, Object>();
		template.setConnectionFactory(jedisConnectionFactory());
		template.setKeySerializer(new StringRedisSerializer());
		template.setValueSerializer(new GenericToStringSerializer<Object>(Object.class));
		return template;
	}
	
	@Bean
	public ConfigureRedisAction configureRedisAction() {
		return ConfigureRedisAction.NO_OP;
	}
}
