Class dc.Reddit.Post Extends (%Persistent, %JSON.Adaptor, %XML.Adaptor)
{

Parameter %JSONIGNOREINVALIDFIELD = 1;

Property OriginalJSON As %String(%JSONINCLUDE = "none", MAXLEN = 3000000);

Property Title As %String(%JSONFIELDNAME = "title", MAXLEN = 255);

Property Selftext As %String(%JSONFIELDNAME = "selftext", MAXLEN = 3000000);

Property Author As %String(%JSONFIELDNAME = "author", MAXLEN = 255);

Property Url As %String(%JSONFIELDNAME = "url", MAXLEN = 255);

Property CreatedUTC As %Float(%JSONFIELDNAME = "created_utc");

Storage Default
{
<Data name="PostDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>OriginalJSON</Value>
</Value>
<Value name="3">
<Value>selftext</Value>
</Value>
<Value name="4">
<Value>title</Value>
</Value>
<Value name="5">
<Value>author</Value>
</Value>
<Value name="6">
<Value>url</Value>
</Value>
<Value name="7">
<Value>created_utc</Value>
</Value>
<Value name="8">
<Value>Title</Value>
</Value>
<Value name="9">
<Value>Selftext</Value>
</Value>
<Value name="10">
<Value>Author</Value>
</Value>
<Value name="11">
<Value>Url</Value>
</Value>
<Value name="12">
<Value>CreatedUTC</Value>
</Value>
</Data>
<DataLocation>^dc.Reddit.PostD</DataLocation>
<DefaultData>PostDefaultData</DefaultData>
<ExtentSize>10</ExtentSize>
<IdLocation>^dc.Reddit.PostD</IdLocation>
<IndexLocation>^dc.Reddit.PostI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Author">
<AverageFieldSize>14.6</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="CreatedUTC">
<AverageFieldSize>8</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="OriginalJSON">
<AverageFieldSize>8175.7</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="Selftext">
<AverageFieldSize>1281</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="Title">
<AverageFieldSize>57.4</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<Property name="Url">
<AverageFieldSize>91.7</AverageFieldSize>
<Selectivity>10.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-64</BlockCount>
</SQLMap>
<StreamLocation>^dc.Reddit.PostS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
