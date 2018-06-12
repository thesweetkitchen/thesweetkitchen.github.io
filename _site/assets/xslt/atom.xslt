<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/atom:feed">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Atom Feed (Styled)</title>

    <link rel="stylesheet" type="text/css" href="http://localhost:4000//assets/css/styles_feeling_responsive.css">
		<link rel="stylesheet" href="http://localhost:4000//assets/fonts/font-awesome/css/font-awesome.min.css">

  

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

	<script src="http://localhost:4000//assets/js/modernizr.min.js"></script>
	<script src="http://localhost:4000//assets/js/infinite-jekyll.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
	<script>
		WebFont.load({
			google: {
				families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ]
			}
		});
	</script>


	<noscript>
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic%7CVolkhov' rel='stylesheet' type='text/css'>
	</noscript>

	<!-- Search Engine Optimization -->
	<meta name="description" content="">
	
	
	
	
	
	
	<link rel="canonical" href="http://localhost:4000//assets/xslt/atom.xslt">


	<!-- Facebook Open Graph
	<meta property="og:title" content="Atom Feed (Styled)">
	<meta property="og:description" content="">
	<meta property="og:url" content="http://localhost:4000//assets/xslt/atom.xslt">
	<meta property="og:locale" content="en_EN">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="The Sweet Kitchen">
	
	
-->

	

	<!-- Pinterest Business -->
	 <meta name="p:domain_verify" content="2e94a37fbebf40459812c80d5b8cd6fe"/>


	<link type="text/plain" rel="author" href="http://localhost:4000//humans.txt">

	

	

	<link rel="icon" sizes="32x32" href="http://localhost:4000//assets/img/favicon-32x32.png">

	<link rel="icon" sizes="192x192" href="http://localhost:4000//assets/img/touch-icon-192x192.png">

	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="http://localhost:4000//assets/img/apple-touch-icon-180x180-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://localhost:4000//assets/img/apple-touch-icon-152x152-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://localhost:4000//assets/img/apple-touch-icon-144x144-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="http://localhost:4000//assets/img/apple-touch-icon-120x120-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://localhost:4000//assets/img/apple-touch-icon-114x114-precomposed.png">

	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="http://localhost:4000//assets/img/apple-touch-icon-76x76-precomposed.png">

	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://localhost:4000//assets/img/apple-touch-icon-72x72-precomposed.png">

	<link rel="apple-touch-icon-precomposed" href="http://localhost:4000//assets/img/apple-touch-icon-precomposed.png">	

	<meta name="msapplication-TileImage" content="http://localhost:4000//assets/img/msapplication_tileimage.png">

	<meta name="msapplication-TileColor" content="#fabb00">


	

	

		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>

    <ul class="title-area">
      <li class="name">
        <a id="nav-logo" href="http://localhost:4000/"><img src="http://localhost:4000//assets/img/logo.png" alt="The Sweet Kitchen logo" /></a>
      <h1 id="site-title"><a href="http://localhost:4000/">The Sweet Kitchen</a></h1>
      </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
    </ul>
    <section class="top-bar-section">









      <ul class="left">

        

              

          
          
            
            
              <li><a  href="http://localhost:4000//">home</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
            
            
              <li><a  href="http://localhost:4000//blog/">baking tests</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
            
            
              <li><a  href="http://localhost:4000//resources/">resources</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
            
            
              <li><a  href="http://localhost:4000//about/">about</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
            
            
              <li><a  href="http://localhost:4000//contact/">contact</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          
        
        
      </ul>


      
            <ul class="right">
              

                    

                
                
              

                    

                
                
              

                    

                
                
              

                    

                
                
              

                    

                
                
              

                    

                
                
                  
                  
                    <li class="divider"></li>
                    <li><a  href="http://localhost:4000//search/">  <i class="fa fa-search" aria-hidden="true"></i> search</a></li>

                  
                  
                
              
              
            </ul>



    </section>
  </nav>
</div><!-- /#navigation -->

		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="http://localhost:4000//" title="The Sweet Kitchen – ">
			 <img src="http://localhost:4000//assets/img/logo.jpng" alt="The Sweet Kitchen – ">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->

<!---->







		


<div class="alert-box warning text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">Atom feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="atom:subtitle" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="atom:id" />
			</xsl:attribute>
			<xsl:value-of select="atom:title" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="atom:entry">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="atom:id" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="atom:title"/>
				<br/>
				<small><xsl:value-of select="atom:updated"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="atom:id"/></xsl:attribute>
						<xsl:value-of select="atom:title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="atom:content" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->


    <footer id="footer-content" class="bg-grau">
      <div id="footer">
        <div class="row">
          <div class="large-5 columns">
            <h5>Get baking tips</h5>

            <p>
              <!-- Begin MailChimp Signup Form -->
              <link href="//cdn-images.mailchimp.com/embedcode/slim-10_7.css" rel="stylesheet" type="text/css">

              <div id="mc_embed_signup">
              <form action="//kitchen.us16.list-manage.com/subscribe/post?u=14807e9a00d9bba2f85e9e57f&amp;id=e7b2ac2b73" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate style="padding:0;">
                  <div id="mc_embed_signup_scroll">

              	<input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
                  <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_14807e9a00d9bba2f85e9e57f_e7b2ac2b73" tabindex="-1" value=""></div>
                  <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
                </div> <!--mc_embed_signup_scroll-->
              </form>
              </div>
              <!--End mc_embed_signup-->
            </p>
          </div><!-- /.large-5.columns -->


          <div id="subfooter-right" class="small-12 large-7 columns">
              <h5>Connect with me</h5>
              <p>
            <ul class="inline-list social-icons">
            
              <li><a href="https://www.pinterest.com/cookinthesweetkitchen/" target="_blank" class="icon-pinterest" title="Pinterest: cookinthesweetkitchen"></a></li>
            
              <li><a href="https://www.instagram.com/thesweet.kitchen/" target="_blank" class="icon-instagram" title="Instagram: thesweet.kitchen"></a></li>
            
              <li><a href="https://twitter.com/sw33tkitchen" target="_blank" class="icon-twitter" title="Twitter: @sw33tkitchen"></a></li>
            
              <li><a href="https://thesweet.kitchen/feed.xml" target="_blank" class="icon-rss" title="Subscribe to our RSS feed"></a></li>
            
            </ul>
            </p>
          </div>

        </div><!-- /.row -->

        <div class="row">
          <div id="subfooter" class="small-24 medium-12 columns credits" >
            © 2017 Copyright The Sweet Kitchen. All rights reserved. Template based on <a href="http://phlow.github.io/feeling-responsive/">Feeling Responsive</a>.
          </div>
        </div>


      </div><!-- /#footer -->



    </footer>

		

<script src="http://localhost:4000//assets/js/javascript.min.js"></script>













<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-54082e6526fad47f"></script>

		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
