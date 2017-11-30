package br.com.casadocodigo.loja.infra;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;

@Component
public class FileSaver {

	@Autowired
	private AmazonS3 amazonS3;
	private static final String BUCKET="casadocodigo-rafaelsilvanercessian";

	public String write(MultipartFile file) {
		try {
			amazonS3.putObject(new PutObjectRequest(BUCKET, 
					file.getOriginalFilename(), file.getInputStream(),null)
					.withCannedAcl(CannedAccessControlList.PublicRead));
				
			return "http://s3.amazonaws.com/"+BUCKET+"/"+file.getOriginalFilename();
			
		} catch (IllegalStateException | IOException e) {
			throw new RuntimeException(e);
		}
	}
	
}









