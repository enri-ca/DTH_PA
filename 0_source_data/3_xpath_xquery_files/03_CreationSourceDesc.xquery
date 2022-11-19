declare namespace tei='http://www.tei-c.org/ns/1.0';

<sourceDesc>
    <listBibl>
		{
            for $x in doc("01_Corpus.xml")//tei:text//tei:bibl
            order by $x/@source
            let $id := substring(($x/@source), 2)
            return <bibl xml:id="{$id}"><title>{data($x)}</title></bibl>
        }
	   </listBibl>
	   <msDesc>
		<msIdentifier>
		  <settlement>Bologna</settlement>
		  <repository>Biblioteca delle Arti. Sezione di Arti visive "I. B. Supino". Alma Mater Studiorum Università di Bologna</repository>
		</msIdentifier>
		<msContents>
		  <msItem>
		   <author>Supino, Igino Benvenuto</author>
		   <title>Fototeca Supino - Partizione Antica</title>
		  </msItem>
		</msContents>
		<physDesc>
		  <objectDesc>
		   <p>3260 albumen photographs collected and handritten annotated on the verso by an unknown Art Historian or Collector in the second half of the XIXth century.</p>
		  </objectDesc>
		</physDesc>
	   <history>
		  <p>For their peculiarity in the overall Supino fund, the 3260 photographs in the series called Partizione Antica, were transferred in 1990 to the Historical Archive of the University of Bologna, reorganized on a topographical basis, digitized and cataloged with the Sebina Multimedia software. In 2006 they rejoined the rest of the Fund at the Arts Department.</p>
		<p>Between 2019 and 2020 the entire Partizione Antica series was cataloged by the Federico Zeri Foundation.</p>
		<p>A sample of 14 recto-verso photographs is the object of this pilot digital edition.</p>
	   </history>
    </msDesc>
</sourceDesc>