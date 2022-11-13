declare namespace tei='http://www.tei-c.org/ns/1.0';

<sourceDesc>
    <listBibl>
		{
            for $x in doc("Corpus_mod.xml")//tei:text//tei:bibl
            order by $x/@source
            let $id := substring(($x/@source), 2)
            return <bibl xml:id="{$id}"><title>{data($x)}</title></bibl>
        }
	   </listBibl>
</sourceDesc>