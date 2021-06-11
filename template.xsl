<?xml version="1.0" encoding="UTF-8"?>
<!--
    Progetto esame-corso Codifica di testi 20-21
    Studente: Chiara De Nigris, Alice Vitali
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:variable name="space"><![CDATA[&#32;]]></xsl:variable>

	<!-- GENERALE -->
	<xsl:template match="/">
		<xsl:comment>
			Progetto esame Codifica di Testi.
			Filename: cartoline.html
		</xsl:comment> 
		<html>
			<head>
				<!-- <meta name="viewport" content="width=device-width, initial-scale=1"/> -->
				<title>
					<xsl:value-of select="//tei:titleStmt/tei:title"/>
				</title>
				<xsl:element name="meta">
					<xsl:attribute name="name">author</xsl:attribute>
					<xsl:attribute name="content">
						<xsl:value-of select="//tei:titleStmt/tei:respStmt[1]/tei:name[1]"/>
						<p> e </p>
            			<xsl:value-of select="//tei:titleStmt/tei:respStmt[1]/tei:name[2]"/>
					</xsl:attribute>
				</xsl:element>
				<script src="script.js"></script>
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
				<link rel = "stylesheet" href="style.css"/>
			</head>
			<body>
				<header>
					<ul>
                        <li><a href="#cartolina181">CARTOLINA 181</a></li>
						<li><a href="#cartolina209">CARTOLINA 209</a></li>
						<li><a href="#cartolina217">CARTOLINA 217</a></li>
						<li><a href="#crediti">CREDITI</a></li>
                    </ul> 
					<div id="title">
						<h1>
							<xsl:value-of select="//tei:titleStmt/tei:title"/>
						</h1>
					</div>
				</header>
				<div id="info">
					<xsl:apply-templates select="tei:teiCorpus"/>
				</div>
				<!--CARTOLINA 181-->
			    <div id="cartolina181">
					<!-- n id -->
					<div class="numeroC">Cartolina <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:idno"/>
					</div>
			        <section class="box">
						<div class="info">
							<!-- titolo -->
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
							<div class="column">
								<!--info comuni cartoline-->
			                   <xsl:apply-templates select="tei:teiCorpus/tei:teiHeader//tei:msDesc"/>
			                   <!--info singola cartolina-->
			                   <xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:teiHeader"/>
							</div>
							<div class="column">
								<!-- info corrispondenza -->
								<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
								<!-- data corrispondenza -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]//tei:correspAction[1]/tei:date"/>
							</div>
						</div>
						<div class = "note">
							<!--note-->
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]//tei:note"/>
						</div>
			            <div class="generaleCart">
			                <h3>Fronte della cartolina</h3>
							<!-- fronte -->
							<div id="fronte181">
								<!--immagine fronte-->
								<xsl:element name="img">
									<xsl:attribute name="src">
										<xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:facsimile/tei:surface[@xml:id='c181Fronte']/tei:graphic/@url"/>
									</xsl:attribute>
								</xsl:element>
								<!-- info fronte -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[1]/tei:figure"/>
							</div>
							<div class="contenitore">
								<h3>Retro della cartolina</h3>
								<!-- bottone -->
								<button type="button" onclick="edizioni()" class="edizioni">Clicca per passare all'edizione interpretativa</button>
								<div class="cartolina">
									<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[1]/tei:facsimile/tei:surface[@xml:id='c181Retro']/tei:graphic/@url"/>
										</xsl:attribute>
									</xsl:element>
									<!--idno-->
									<div class="idno_mess">
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text//tei:idno"/>
									</div>
									<!-- messaggio -->
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[1]"/>	
									<!-- indirizzi -->
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:div/tei:p"/>
								</div>								
								<!-- stampe -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[1]/tei:text/tei:body/tei:div[2]"/>	
							</div>
						</div>
			        </section> 
			    </div>

			   <!--CARTOLINA 209-->
			    <div id="cartolina209">
					<!-- n id -->
					 <div class="numeroC">Cartolina <xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text//tei:idno"/>
					</div>
			        <section class="box">
						<div class="info">
							<!-- titolo -->
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
							<div class="column">
								<!--info comuni cartoline-->
								<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader//tei:msDesc"/>
								<!--info singola cartolina-->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:teiHeader"/>
							</div>
							<div class="column">
								<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
								<!-- data corrispondenza -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]//tei:correspAction[1]/tei:date"/>
							</div>
						</div>
						<div class = "note">
							<!--note-->
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]//tei:note"/>
						</div>
			            <div class="generaleCart">
			                <h3>Fronte della cartolina</h3>
							<!-- fronte della cartolina-->
							<div class="fronte">
							<!-- immagine fronte -->
								<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:facsimile/tei:surface[@xml:id='c209Fronte']/tei:graphic/@url"/>
										 </xsl:attribute>
								</xsl:element>
								<!--info fronte-->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[1]/tei:figure"/>
								<!-- autore dell'opera-->
								<xsl:apply-templates select="//tei:person[@xml:id='M']/tei:persName"/>
							</div>
							<div class="contenitore">
								<h3>Retro della cartolina</h3>
								<button type="button" onclick="edizioni()" class="edizioni">Clicca per passare all'edizione interpretativa</button>
								<div class="cartolina">
									<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[2]/tei:facsimile/tei:surface[@xml:id='c209Retro']/tei:graphic/@url"/>
										</xsl:attribute>
									</xsl:element>
									<!--idno-->
									<div class="idno_mess">
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text//tei:idno"/>
									</div>
									<!-- messaggio -->
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[1]"/>	
									<!-- indirizzi -->
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:div/tei:p"/>	
								</div>
								<!-- stampe -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[2]/tei:text/tei:body/tei:div[2]"/>	
							</div>
						</div>
			        </section> 
			    </div>

			    <!--CARTOLINA 217-->
			    <div id="cartolina217">
					 <!-- n id -->
					 <div class="numeroC">Cartolina <xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:text//tei:idno"/>
					</div>
			        <section class="box">
						<div class="info">
							<!-- titolo -->
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
							<div class="column">
								<!--info comuni cartoline-->
			                   <xsl:apply-templates select="tei:teiCorpus/tei:teiHeader//tei:msDesc"/>
			                   <!--info singola cartolina-->
			                   <xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:teiHeader"/>
							</div>
							<div class="column">
								<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
								<!-- data corrispondenza -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]//tei:correspAction[1]/tei:date"/>
							</div>
						</div>
						<div class = "note">
							<!--note-->
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]//tei:note"/>
						</div>
			            <div class="generaleCart">
			                <h3>Fronte della cartolina</h3>
							<div class="fronte">
								<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[3]/tei:facsimile/tei:surface[@xml:id='c217Fronte']/tei:graphic/@url"/>
										 </xsl:attribute>
								</xsl:element>
							</div>
							<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:text/tei:body/tei:div[1]/tei:figure"/>
							<!-- autore dell'opera-->
							<xsl:apply-templates select="//tei:person[@xml:id='CM']/tei:persName"/>
							<div class="contenitore">
								<h3>Retro della cartolina</h3>
								<button type="button" onclick="edizioni()" class="edizioni">Clicca per passare all'edizione interpretativa</button>
								<div class="cartolina">
									<xsl:element name="img">
										<xsl:attribute name="src">
											<xsl:value-of select="tei:teiCorpus/tei:TEI[3]/tei:facsimile/tei:surface[@xml:id='c217Retro']/tei:graphic/@url"/>
										</xsl:attribute>
									</xsl:element>
									<!--idno-->
									<div class="idno_mess">
										<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:text//tei:idno"/>
									</div>
									<!-- messaggio -->
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:text/tei:body/tei:div[2]/tei:div[1]"/>
									<!-- indirizzi -->
									<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:div/tei:p"/>
								</div>								
								<!-- stampe -->
								<xsl:apply-templates select="tei:teiCorpus/tei:TEI[3]/tei:text/tei:body/tei:div[2]"/>	
							</div>
						</div>
			        </section> 
			    </div>
                <!--crediti-->
                <div id="crediti">
                	<xsl:apply-templates select="tei:teiCorpus/tei:teiHeader/tei:fileDesc"/>
               	</div>	
			</body>
		</html>
	</xsl:template>
	
	<!-- template intro -->
	<xsl:template match="tei:teiCorpus">
		<p>
			Edizione digitale image based di <xsl:value-of select="count(tei:TEI)"/> cartoline indirizzate ad Oliva Tortura, scritte durante il periodo della Prima Guerra mondiale, tra il <xsl:value-of select="tei:TEI[1]/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:date"/> e il <xsl:value-of select="tei:TEI[2]/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:date"/>. Le cartoline sono di proprietà del <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt[2]/tei:name"/> e sono conservate nel <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/>.<br/> L' edizione digitale è stata codificata dagli <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/>. La pubblicazione (<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:pubPlace"/>, <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/>) è a cura dell' <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/> ed è rilasciata dal <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:address/tei:addrLine[1]"/>.
		</p>
	</xsl:template>
	
	 <!--template titolo cartolina -->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title">
    	<h2><xsl:value-of select="."/></h2>
    </xsl:template>

	<!--info comuni cartoline-->
	<xsl:template match="tei:teiCorpus/tei:teiHeader//tei:msDesc">
	    <p><b>Definizione: </b><xsl:value-of select="//tei:objectType"/></p>
	    <p><b>Materiale: </b><xsl:value-of select="//tei:material"/></p>
	    <p><b>Dimensioni: </b><xsl:value-of select="//tei:height"/>x<xsl:value-of select="//tei:width"/>cm</p>
	    <p><b>Stato di conservazione: </b><xsl:value-of select="//tei:condition"/></p>
	    <p><b>Lingua: </b><xsl:value-of select="//tei:textLang"/></p>
	</xsl:template>
	
	<!--info singola cartolina-->
    <xsl:template match="tei:teiCorpus/tei:TEI/tei:teiHeader">
    	<p><b>Codice Identificativo: </b><xsl:value-of select="tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:idno"/></p>
    	<p><b>Descrizione: </b><xsl:value-of select="tei:profileDesc/tei:textClass/tei:keywords/tei:term[2]"/></p>
    </xsl:template>

	<!--template info corrispondenza-->
	<xsl:template match="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc">
		<p><b>Mittente: </b><xsl:value-of select="tei:listPerson/tei:person[@xml:id='G']/tei:persName/tei:forename"/> (alias <xsl:value-of select="tei:listPerson/tei:person[@xml:id='G']/tei:persName/tei:addName"/>)</p>
		<p><b>Destinatario: </b><xsl:value-of select="tei:listPerson/tei:person[@xml:id='OT']/tei:persName"/></p>
		<p><b>Provenienza: </b><xsl:value-of select="tei:listPlace/tei:place[@xml:id='MO']/tei:placeName"/> (<xsl:value-of select="tei:listPlace/tei:place[@xml:id='MO']/tei:district[2]"/>)</p>
		<p><b>Destinazione: </b><xsl:value-of select="tei:listPlace/tei:place[@xml:id='RV']/tei:placeName"/> (<xsl:value-of select="tei:listPlace/tei:place[@xml:id='RV']/tei:district[2]"/>)</p>
	</xsl:template>

	<!--template date corrispondenza-->
	<xsl:template match="tei:teiCorpus/tei:TEI//tei:correspAction[1]/tei:date">
		 <p><b>Data: </b><xsl:value-of select="."/></p>
	</xsl:template>

	<!--template note-->
	<xsl:template match="tei:teiCorpus/tei:TEI//tei:note">
		 <p><b>Note:</b><xsl:value-of select="."/></p>
	</xsl:template>

    <!--template dati immagini fronte cartoline -->
     <xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[1]/tei:figure">
        <p><b>Opera: </b><xsl:value-of select="tei:head"/></p>
        <p><b>Descrizione dell'opera: </b><xsl:value-of select="tei:figDesc"/></p>
    </xsl:template>

    <!--template Mauzano-->
	<xsl:template match="//tei:person[@xml:id='M']/tei:persName">
		<p><b>Autore dell'opera: </b><xsl:value-of select="."/></p>
	</xsl:template>

	<!--template Monestier-->
	<xsl:template match="//tei:person[@xml:id='CM']/tei:persName">
		<p><b>Autore dell'opera: </b><xsl:value-of select="."/></p>
	</xsl:template>

	<!--template idno pre messaggio-->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]/tei:p/tei:idno">
		 <p><xsl:value-of select="."/></p>
	</xsl:template>
	
	<!--template messaggio -->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[1]">
		<div class="messaggio" style="text-align: center">
			<!-- opener -->
			<p><xsl:value-of select="tei:opener"/></p>
			<xsl:choose>
				<!-- closer c181-->
				<xsl:when test="./@facs='#c181_messaggio'">
					<div class="inl">
						<p><xsl:value-of select="tei:closer/tei:salute/tei:w[1]"/></p>
						<p><xsl:apply-templates select="tei:closer/tei:salute/tei:gap"/></p>
						<p><xsl:value-of select="tei:closer/tei:salute/tei:w[2]"/></p>
					</div>
				</xsl:when>
				<!-- closer c209-->
				<xsl:when test="./@facs='#c209_messaggio'">
					<div class="inl">
						<p><xsl:value-of select="tei:closer/tei:salute/tei:w"/></p>
						<p><xsl:apply-templates select="tei:closer/tei:salute/tei:unclear/tei:interp"/></p>
					</div>
				</xsl:when>
				<!-- closer c217-->
				<xsl:otherwise>
					<span class="linea" style="margin-left:25%">
						<p><xsl:value-of select="tei:closer/tei:salute/tei:w"/> </p>
						<p class="diplomatica" ><xsl:apply-templates select="tei:closer/tei:salute/tei:abbr"/></p>
						<p class="interpretativa" style="display:none"><xsl:apply-templates select="tei:closer/tei:salute/tei:expan"/></p>
						<p><xsl:value-of select="tei:closer/tei:salute/tei:seg"/> </p>
					</span>
				</xsl:otherwise>
			</xsl:choose>
			<!-- firma -->
			<p><xsl:value-of select="//tei:signed"/></p>
			<br/>
		</div>
	</xsl:template>
	
	<!-- template indirizzo -->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:div/tei:p">
	<div class="indirizzo" style="text-align: center">
			<!--interpretativa vs diplomatica-->
			<p class="diplomatica "><xsl:apply-templates select="tei:address/tei:addrLine[1]/tei:abbr"/></p>
			<p class="interpretativa "><xsl:apply-templates select="tei:address/tei:addrLine[1]/tei:expan"/></p>
			<!-- Oliva Tortura -->
			<p><xsl:value-of select="tei:address/tei:addrLine[2]"/></p>
			<!-- indirizzo -->
			<span class="linea ">
				<p><xsl:value-of select="tei:address/tei:addrLine[3]/tei:seg[1]"/></p>
				<p class="diplomatica nospace"><xsl:value-of select="tei:address/tei:addrLine[3]/tei:c"/></p>
				<p class="interpretativa nospace" style="display:none"><xsl:value-of select="tei:address/tei:addrLine[3]/tei:seg[2]"/></p>
				<p><xsl:value-of select="tei:address/tei:addrLine[3]/tei:seg[3]"/></p>
			</span>
			<!-- Ravenna-->
			<p><xsl:value-of select="tei:address/tei:addrLine[4]"/></p>
			<br/>
		</div>
	</xsl:template>
	
	<!-- template francobolli, timbri e stampe -->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]">
		<div class="poste">
		<h3><b>Timbri, francobolli e stampe:</b></h3>
			<!-- timbro 1-->
	    	<span><xsl:apply-templates select="tei:div[2]/tei:p/tei:stamp[1]"/></span>
			<!-- timbro 2 (c217)-->
	    	<span><xsl:apply-templates select="tei:div[2]/tei:p/tei:stamp[3]"/></span>
			<!-- francobollo-->
			<span class="francobollo">
				<xsl:value-of select="tei:div[2]/tei:p/tei:stamp[2]"/>
			</span>
			<!-- stampe-->
			<span class="stampa"><xsl:value-of select="tei:div[3]/tei:p[1]/tei:stamp"/></span>
			<span  class="stampa"><xsl:value-of select="tei:div[3]/tei:p[2]/tei:stamp"/></span>
		</div>
	</xsl:template>
	
	<!--template timbro-->
	<xsl:template match="tei:teiCorpus/tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[2]/tei:p/tei:stamp">
		<div class= "cerchio">
			<xsl:choose>
				<!-- timbro c209-->
				<xsl:when test="./@facs='#c209_timbro'">
					<p id="illeg"><xsl:apply-templates select="tei:gap"/></p>
				</xsl:when>
				<!-- timbro c181 e c217-->
				<xsl:otherwise>
					<xsl:choose>
						<xsl:when test="./@facs='#c217_timbro1' or ./@facs='#c217_timbro2'">
							<!-- sui timbri della c217 poco chiaro -->
							<p class="city"><xsl:apply-templates select="tei:unclear[1]"/></p>
						</xsl:when>
						<xsl:otherwise>
							<!-- sul timbro della c181 chiaro -->
							<p class="city"><xsl:value-of select="tei:placeName"/></p>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<!-- data illegibile-->
					<p><xsl:apply-templates select="tei:date/tei:gap"/></p>
					<br/>
					<xsl:choose>
						<xsl:when test="./@facs='#c217_timbro1' or ./@facs='#c217_timbro2'">
							<!-- sui timbri della c217 secondo unclear -->
							<p class="word"><xsl:apply-templates select="tei:unclear[2]"/></p>
						</xsl:when>
						<xsl:otherwise>
							<!-- sul timbro della c181 primo unclear -->
							<p class="word"><xsl:apply-templates select="tei:unclear"/></p>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
	   </div>
	</xsl:template>

	<!--template  crediti-->
	<xsl:template match="tei:teiCorpus/tei:teiHeader/tei:fileDesc">
	    <h2>Crediti</h2>
		<div class="column">
			<!--Trascrittore-->
			<p>
				<b>
					<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:resp"/>			
				</b>
				<xsl:value-of select="$space" disable-output-escaping="yes"/>
				<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name[1]"/>, <xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name[2]"/>
			</p>
			<!--Codificatore-->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[1]/tei:resp"/>
				</b>
				<xsl:value-of select="$space" disable-output-escaping="yes"/> 
				<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name[1]"/>, 
				<xsl:value-of select="tei:titleStmt/tei:respStmt[1]/tei:name[2]"/>
			</p>
			<!--Compilatore-->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[2]/tei:resp"/>
				</b>
				<xsl:value-of select="$space" disable-output-escaping="yes"/>      
				<xsl:value-of select="tei:editionStmt/tei:respStmt[2]/tei:name"/>
			</p>
		</div>
		<div class="column">
			<!--Responsabile scientifico -->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:resp"/>
				</b>
				<xsl:value-of select="$space" disable-output-escaping="yes"/>
				<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:name[1]"/> , 
				<xsl:value-of select="tei:editionStmt/tei:respStmt[3]/tei:name[2]"/>
			</p>
			<!--Funzionario responsabile-->
			<p>
				<b>
					<xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:resp"/>
				</b>
				<xsl:value-of select="$space" disable-output-escaping="yes"/>
				<xsl:value-of select="tei:editionStmt/tei:respStmt[4]/tei:name"/>
			</p> 
		</div>
		<p id="licence">
			<b><xsl:value-of select="tei:publicationStmt/tei:availability"/></b> 
		</p>   
    </xsl:template>

	<!--template interpretativa-->
	<xsl:template match="tei:expan">
		<xsl:value-of select="."/>
	</xsl:template>
	
	<!--template diplomatica-->
	<xsl:template match="tei:abbr">
		<xsl:value-of select="."/>
	</xsl:template>
	
	<!--template unclear-->
    <xsl:template match="tei:unclear">
       <xsl:value-of select="."/><br/><span class="italic">(poco chiaro)</span>
	</xsl:template>

	<!--template illeggibile-->
    <xsl:template match="tei:interp">
     	<span class="italic">(illeggibile)</span>
	</xsl:template>

	<!--template  gap-->
    <xsl:template match="tei:gap">
		<p class="italic">[completamente illeggibile]</p>
	</xsl:template>
	
</xsl:stylesheet> 
