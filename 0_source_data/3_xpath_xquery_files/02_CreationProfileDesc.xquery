declare namespace tei='http://www.tei-c.org/ns/1.0';
(:doc("transcriptions_Visited_list.xml")//tei:persName:)

<profileDesc>
    <particDesc>
	   <listPerson>
            {
            for $x in doc("Corpus.xml")//tei:persName
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <person xml:id="{$id}"><persName>{data($x)}</persName></person>
            }
	   </listPerson>
	   <listOrg>
	   <head>Museums</head>
            {
            for $x in doc("Corpus.xml")//tei:orgName[@type="museum"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        <head>Collecions</head>
            {
            for $x in doc("Corpus.xml")//tei:orgName[@type="collection"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        <head>Photographer</head>
            {
            for $x in doc("Corpus.xml")//tei:orgName[@type="photographer"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        <head>Collector</head>
            {
            for $x in doc("Corpus.xml")//tei:orgName[@type="collector"]
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <org xml:id="{$id}"><orgName>{data($x)}</orgName></org>
            }
        </listOrg>
		<listObject>
            {
            for $x in doc("Corpus.xml")//tei:objectName
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <object xml:id="{$id}"><objectName>{data($x)}</objectName></object>
            }
		</listObject>
    </particDesc>
    <settingDesc>
		<listPlace>
            {
            for $x in doc("Corpus.xml")//tei:placeName
            order by $x/@ref
            let $id := substring(($x/@ref), 2)
            return <place xml:id="{$id}"><placeName>{data($x)}</placeName></place>
            }
		</listPlace>
	</settingDesc>
</profileDesc>