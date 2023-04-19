/// This is a sample business rule to deal with cats and dogs
Class dc.Demo.FilterPostsRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="dc.Demo.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="FR">
<constraint name="msgClass" value="dc.Demo.PostMessage"></constraint>
<constraint name="source" value="REDDIT FR"></constraint>
<when condition="(ToUpper(Document.Post.Selftext)) Contains &quot;GRÈVE&quot;||((ToUpper(Document.Post.Selftext)) Contains &quot;MANIF&quot;)" comment="">
<assign property="Document.ToEmailAddress" value="&quot;cat@company.com&quot;"></assign>
<assign property="Document.Found" value="&quot;GREVE&quot;"></assign>
<send transform="" target="dc.Demo.EmailOperation,dc.Demo.FileOperation"></send>
<return></return>
</when>
<otherwise>
<return></return>
</otherwise>
</rule>
<rule name="US" disabled="false">
<constraint name="source" value="REDDIT US"></constraint>
<constraint name="msgClass" value="dc.Demo.PostMessage"></constraint>
<when condition="(ToUpper(Document.Post.Selftext)) Contains &quot;Cat&quot;" comment="">
<assign property="Document.ToEmailAddress" value="&quot;cat@company.com&quot;"></assign>
<assign property="Document.Found" value="&quot;Cat&quot;"></assign>
<send transform="" target="dc.Demo.EmailOperation,dc.Demo.FileOperation"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
