<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<head>
  <meta charset="utf-8"/>
		  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
		  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
		<link rel="icon"
			href="//cdn.shopify.com/s/files/1/0155/7645/t/177/assets/favicon.ico?11981592617154272979"
			type="image/ico" />
		<link href="https://plus.googlecom/108540024862647200608"
			rel="publisher"/>
		<title>Livros de Java, SOA, Android, iPhone, Ruby on Rails e
			muito mais - Casa do Código</title>
		<link href="/casadocodigo/resources/css/cssbase-min.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
			rel='stylesheet'/>
		<link href="/casadocodigo/resources/css/fonts.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="/casadocodigo/resources/css/fontello-ie7.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="/casadocodigo/resources/css/fontello-embedded.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="/casadocodigo/resources/css/fontello.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="/casadocodigo/resources/css/style.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="/casadocodigo/resources/css/layout-colors.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="/casadocodigo/resources/css/responsive-style.css"
			rel="stylesheet" type="text/css" media="all" />
		<link href="/casadocodigo/resources/css/estilos-casadocodigo.css" 
			rel="stylesheet" type="text/css"  media="all"  />
	    <link href="/casadocodigo/resources/css/produtos.css" 
	    	rel="stylesheet" type="text/css"  media="all"  />
		<link rel="canonical" href="http://www.casadocodigo.com.br/" />	
		<link href="/casadocodigo/resources/css/book-collection.css"
				rel="stylesheet" type="text/css" media="all" />
				
	<link rel="stylesheet" href="/casadocodigo/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="/casadocodigo/resources/css/bootstrap-theme.min.css">	
</head>


  <header id="layout-header">
    <div class="clearfix container">
        <a href="${s:mvcUrl('HC#index').build() }" id="logo">
          <!-- <img src="http://cdn.shopify.com/s/files/1/0155/7645/t/177/assets/casa-do-codigo-blue.svg?15063963123751285545" alt="Casa do Codigo"> -->
        </a>
      <div id="header-content">
        <nav id="main-nav">
              <ul class="clearfix">
                  <li>
                      <a href="${s:mvcUrl('CCC#itens').build() }" rel="nofollow">
                      	<s:message code="menu.carrinho"
                      		arguments="${carrinhoCompras.quantidade }" />
                      </a>
                      
                  </li>
                  <li>
                      <a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">
                      	<fmt:message key="menu.sobre" />
                      </a>
                  </li>
                  <li>
                      <a href="?locale=pt" rel="nofollow">
                      	<fmt:message key="menu.pt" />
                      </a>
                  </li>
                  <li>
                      <a href="?locale=en_US" rel="nofollow">
                      	<fmt:message key="menu.en" />
                      </a>
                  </li>
              </ul>
        </nav>
      </div>
    </div>
  </header>
  <nav class="categories-nav">
    <ul class="container">
        <li class="category">
        		<a href="${s:mvcUrl('HC#index').build() }">
        			<fmt:message key="navegacao.categoria.home" /></a>
        	
                <li class="category"><a href="/collections/livros-de-agile">
                		<fmt:message key="navegacao.categoria.agile" /></a>
                <li class="category"><a href="/collections/livros-de-front-end">
                    <fmt:message key="navegacao.categoria.front_end" /></a>
                <li class="category"><a href="/collections/livros-de-games">
                    <fmt:message key="navegacao.categoria.games" />
                  </a>
                <li class="category"><a href="/collections/livros-de-java">
                    <fmt:message key="navegacao.categoria.java" />
                  </a>
                <li class="category"><a href="/collections/livros-de-mobile">
                    <fmt:message key="navegacao.categoria.mobile" />
                  </a>
                <li class="category"><a href="/collections/livros-desenvolvimento-web">
                    <fmt:message key="navegacao.categoria.web" />
                  </a>
                <li class="category"><a href="/collections/outros">
                    <fmt:message key="navegacao.categoria.outros" />
                  </a>
    </ul>
  </nav>
    