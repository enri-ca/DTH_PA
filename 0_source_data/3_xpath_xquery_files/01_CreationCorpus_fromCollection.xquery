declare namespace tei='http://www.tei-c.org/ns/1.0';

<teiCorpus version="3.3.0" xmlns="http://www.tei-c.org/ns/1.0"
            xmlns:tei="http://www.tei-c.org/ns/1.0"
            xmlns:dc="http://purl.org/dc/elements/1.1/"
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
                    <publicationStmt>
                        <date>2022</date>
                        <availability>                        
                            <licence target="http://creativecommons.org/licenses/by-sa/3.0/">Project distributed under a Creative Commons Attribution-ShareAlike 3.0 License. All the images and the data are published for illustrative and didactical purposes only. For any request of use, please refer to: Biblioteca delle Arti. Sezione di Arti visive "I. B. Supino" (images) and Fondazione "Federico Zeri" (OA and F records).</licence>
                        </availability>
                    </publicationStmt> 
                    <sourceDesc>
                        <xi:include href="03_SourceDesc_nor.xml"/>
                    </sourceDesc>
                </fileDesc>
                <xi:include href="02_ProfileDesc_nor.xml"/>
                <encodingDesc>
                     <projectDesc>
                      <p>A sample of 14 photographs over the more than 3000 of the Partizione Antica, has been used to try to face an high challenging
                      material to encode as works of art photographs annotated on their verso by an unknown art historian.</p>
                     </projectDesc>
                </encodingDesc>
                <xi:include href="04_xenoData.xml"/>
            </teiHeader>

{
let $photo_entry := collection("../2_xml-tei_sample_items/normalized_?select=*.xml")
return $photo_entry
}

</teiCorpus>