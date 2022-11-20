declare namespace tei='http://www.tei-c.org/ns/1.0';

<profileDesc>
    <particDesc>
	   <listPerson>
	   <head>Persons</head>
            {
            for $x in doc("01_Corpus.xml")//tei:persName
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <person xml:id="{$id}"><persName>{data($x)}</persName></person>
            }
	   </listPerson>
	   <listOrg>
	   <head>Museums</head>
            {
            for $x in doc("01_Corpus.xml")//tei:orgName[@type="museum"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        <head>Collections</head>
            {
            for $x in doc("01_Corpus.xml")//tei:orgName[@type="collection"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        <head>Photographers</head>
            {
            for $x in doc("01_Corpus.xml")//tei:orgName[@type="photographer"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        <head>Collectors</head>
            {
            for $x in doc("01_Corpus.xml")//tei:orgName[@type="collector"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        </listOrg>
		<listObject>
		<head>Works of art and negatives</head>
            {
            for $x in doc("01_Corpus.xml")//tei:objectName
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <object xml:id="{$id}"><objectName>{data($x)}</objectName></object>
            }
		</listObject>
    </particDesc>
    <settingDesc>
		<listPlace>
		<head>Places</head>
            {
            for $x in doc("01_Corpus.xml")//tei:placeName
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <place xml:id="{$id}"><placeName>{data($x)}</placeName></place>
            }
		</listPlace>
	</settingDesc>
</profileDesc>