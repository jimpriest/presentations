<style>
.fullscreenDiv {
background-color: #e8e8e8;
width: 100%;
height: auto;
bottom: 0px;
top: 0px;
left: 0;
position: absolute;
}
.center {
text-align: center;
position: absolute;
width: 400px;
height: 200px;
top: 50%;
left: 50%;
margin-top: -100px;
margin-left: -200px;
}

.big {font-size: 3em;}
p {font-size: 2em;}
</style>



<cfset foo = "Hello World"/>

<div class='fullscreenDiv'>
<div class='center'>
<cfoutput>
<p class="big">#foo#</h1></p>
<p>It is now #DateFormat(Now(), "long")#</p>
</cfoutput>
</div>
</div>
