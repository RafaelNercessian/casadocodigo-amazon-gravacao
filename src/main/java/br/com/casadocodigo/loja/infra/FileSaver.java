package br.com.casadocodigo.loja.infra;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import br.com.casadocodigo.loja.models.Produto;

@Component
public class FileSaver {

	@Autowired
	private HttpServletRequest request;

	public String write(MultipartFile file) {
		try {
			File arquivo = new File(request.getServletContext().getRealPath(
					"/resources/imagens"), file.getOriginalFilename());
			file.transferTo(arquivo);
			
			return file.getOriginalFilename();
			
		} catch (IllegalStateException | IOException e) {
			throw new RuntimeException(e);
		}
	}
	
}









