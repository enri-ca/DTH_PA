The project <a href="https://enri-ca.github.io/dist/" target="_blank"><b>Partizione Antica from Fototeca Supino: a pilot digital edition</b></a>, has been realized in the framework of the <a href="https://www.unibo.it/en/teaching/course-unit-catalogue/course-unit/2021/443592"  target="_blank">85448 Digital Text in the Humanities Theories, Methodologies and Applications</a> course of the 1st year <a href="https://corsi.unibo.it/2cycle/DigitalHumanitiesKnowledge"  target="_blank">DHDK Master Degree</a> a.a. 2020-21.<br>
The project aims to realize a pilot for a digital edition of the <a href="https://archiviostorico.unibo.it/it/archivio-fotografico/altre-collezioni-e-fondi/fondo-igino-benvenuto-supino/patrimonio-fotografico-altri-paesi/algeria" target="_blank"><b>Partizione Antica</b></a> of the Supino photographic Archival fund. <br>
The Github repository hosts:

1. the <b>0_source_data</b> folder that contains: <br>
<ul>
<li> 14 recto-verso photographs digital reproduction as the sample used (<b>0_images</b>) </li> 
<li> the F and OA metadata descriptions for the sample from the <a href="http://catalogo.fondazionezeri.unibo.it/scheda.livello.jsp?decorator=layout_resp&apply=true&locale=it&tipo_scheda=fondo&id=9" target="_blank">"Federico Zeri" Fundation catalogue</a> (<b>1_xml_OA_F_metadata</b>) </li>
<li> the TEI (and other formats) files of text-images encoding realized with <a href="https://readcoop.eu/transkri bus/?sc=Transkribus" target="_blank">Transkribus tool</a> (<b>2_xml-tei_sample_items</b>) </li>
</ul>

2. the <b>1_xquery_CollectiveTEIFiles</b> folder that contains:
<ul>
<li> the Xquery files to work as a whole the single photographs' TEI encodings (<b>3_xpath_xquery_files</b>). </li>
<li> the final TEI files used to the visualization, according to the rules stated in the <b>Encoding Guide (1_PA_encoding_model.pdf)</b></li>
</ul>

3. the <b>2_evt-files</b> folder that contains the customized files to make work the <a href="http://evt.labcd.unipi.it/" target="_blank">EVT-Edition Visualization Technology tool</a>:
<ul>
<li> a config.json file to be put in the config folder</li>
<li> the final tei files to be put in the data\text folders</li>
<li> the image folder (the files are the same of 0_source_data\0_images folder but with different names)</li> 
</ul>

These files have been used for creating the overall <a href="https://enri-ca.github.io/dist/" target="_blank"><b>Partizione Antica from Fototeca Supino: a pilot digital edition</b></a> from the cloned EVT files: <a href="https://github.com/enri-ca/dist" target="_blank">Github EVT repository</a>.<br>

The project is completed by:<br>
- an <b>Encoding Guide (1_PA_encoding_model.pdf)</b> 
- the <b>project presentation (2_PA_presentation)</b>.<br>

All the images (CC-BY-NC-ND credits to:<a href="mailto:abis.arti-av@unibo.it">Biblioteca delle Arti. Sezione di Arti visive "I. B. Supino". Alma Mater Studiorum Università di Bologna</a>) and the OA and F records (CC-BY credits to: <a href="mailto:fondazionezeri.fototeca@unibo.it">Fondazione "Federico Zeri"</a>(CC-BY- ) are published for <b>illustrative and didactical purposes only</b>.
