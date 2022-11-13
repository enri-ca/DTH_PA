declare namespace tei='http://www.tei-c.org/ns/1.0';

<TEI xmlns="http://www.tei-c.org/ns/1.0"
     xmlns:tei="http://www.tei-c.org/ns/1.0"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
     xmlns:wikidata="https://www.wikidata.org/wiki/"
     xmlns:geonames="https://www.geonames.org/"
     xmlns:viaf="http://viaf.org/viaf/"
     xmlns:foaf="http://xmlns.com/foaf/0.1/"
     xmlns:dbo="http://dbpedia.org/ontology/"
     xmlns:xi="http://www.w3.org/2001/XInclude">
     <teiHeader>
        <fileDesc>
            <titleStmt>
                <title type="main">Partizione Antica from Fototeca Supino: a pilot digital edition</title>
                <title>Fototeca Supino</title>
                <principal>Zani, Enrica</principal>
             </titleStmt>
             <extent>14 recto-verso photographs</extent>
             <publicationStmt>
                <distributor>Github</distributor>
                <date>2022</date>
                <availability>                        
                    <licence target="http://creativecommons.org/licenses/by-sa/3.0/">Distributed under a Creative Commons Attribution-ShareAlike 3.0 Unported License</licence>
                </availability>
             </publicationStmt> 
             <!--sourceDesc>
                <bibl>Fototeca Supino</bibl>
                <xi:include href="sourceDesc.xml"/-->
                {let $source :=doc ("03_SourceDesc_nor.xml")
                    return $source
                }
             <!--/sourceDesc-->
          </fileDesc>
          <!--profileDesc>
          <xi:include href="ProfileDesc.xml"/-->
            {let $profile :=doc ("02_ProfileDesc_nor.xml")
            return $profile
            }
          <!--xi:include href="hands.xml"/>
                <handDesc hands="2">
                    <handNote xml:id="h_2">
                        <p>A second and probably later hand adds information with a different medium and mark. Writing remains probably the same<p>
                    </handNote>
                </handDesc>
          </profileDesc-->
          <encodingDesc>
            <projectDesc>
                <p>A sample of 14 photographs over the more than 3000 of the Partizione Antica, has been used to try to face an high challenging
                      material to encode as works of art photographs annotated on their verso by an unknown art historian.</p>
            </projectDesc>
          </encodingDesc>
      </teiHeader>

{
let $photo_entry := collection("../2_xml-tei_sample_items/normalized_?select=*.xml")
for $title at $i in $photo_entry/tei:TEI/teiHeader/fileDesc/titleStmt/title[@type='main']
(:where hanno stanno nello stesso ramo:)
return <text xml:id="{$title[$i]}">{$photo_entry/tei:TEI/text/body[$i]}</text>
}
</TEI>