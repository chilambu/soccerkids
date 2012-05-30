
var PageName = 'Program list';
var PageId = 'p688e836fde784327b5af606f0f2dacf6'
document.title = 'Program list';

if (top.location != self.location)
{
	if (parent.HandleMainFrameChanged) {
		parent.HandleMainFrameChanged();
	}
}

var $OnLoadVariable = '';

var $CSUM;

var hasQuery = false;
var query = window.location.hash.substring(1);
if (query.length > 0) hasQuery = true;
var vars = query.split("&");
for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split("=");
    if (pair[0].length > 0) eval("$" + pair[0] + " = decodeURI(pair[1]);");
} 

if (hasQuery && $CSUM != 1) {
alert('Prototype Warning: Variable values were truncated.');
}

function GetQuerystring() {
    return encodeURI('#OnLoadVariable=' + $OnLoadVariable + '&CSUM=1');
}

function PopulateVariables(value) {
  value = value.replace(/\[\[OnLoadVariable\]\]/g, $OnLoadVariable);
  value = value.replace(/\[\[PageName\]\]/g, PageName);
  return value;
}

function OnLoad() {

}

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u28NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u28NoteContainer').style.visibility = document.getElementById('pd0u28').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u32NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u32NoteContainer').style.visibility = document.getElementById('pd0u32').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u36NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u36NoteContainer').style.visibility = document.getElementById('pd0u36').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u41NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u41NoteContainer').style.visibility = document.getElementById('pd0u41').style.visibility;

document.getElementById('pd0u41NoteContainer').insertAdjacentHTML("afterBegin", "<div id='pd0u42NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u42NoteContainer').style.visibility = document.getElementById('pd0u42').style.visibility;

document.getElementById('pd0u41NoteContainer').insertAdjacentHTML("afterBegin", "<div id='pd0u46NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u46NoteContainer').style.visibility = document.getElementById('pd0u46').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u50NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u50NoteContainer').style.visibility = document.getElementById('pd0u50').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u57NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u57NoteContainer').style.visibility = document.getElementById('pd0u57').style.visibility;

document.getElementById('pd0u57NoteContainer').insertAdjacentHTML("afterBegin", "<div id='pd0u58NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u58NoteContainer').style.visibility = document.getElementById('pd0u58').style.visibility;

document.getElementById('pd0u57NoteContainer').insertAdjacentHTML("afterBegin", "<div id='pd0u62NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u62NoteContainer').style.visibility = document.getElementById('pd0u62').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u66NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u66NoteContainer').style.visibility = document.getElementById('pd0u66').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u78NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u78NoteContainer').style.visibility = document.getElementById('pd0u78').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u81NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u81NoteContainer').style.visibility = document.getElementById('pd0u81').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u84NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u84NoteContainer').style.visibility = document.getElementById('pd0u84').style.visibility;

document.body.insertAdjacentHTML("afterBegin", "<div id='pd0u87NoteContainer' style='position:absolute;left:0;top:0;width:3000;z-index:500'></div>");
document.getElementById('pd0u87NoteContainer').style.visibility = document.getElementById('pd0u87').style.visibility;

eval(GetDynamicPanelScript('u57', 1));

eval(GetDynamicPanelScript('u28', 1));

eval(GetDynamicPanelScript('u87', 1));

eval(GetDynamicPanelScript('u81', 1));

eval(GetDynamicPanelScript('u32', 1));

eval(GetDynamicPanelScript('u50', 1));

eval(GetDynamicPanelScript('u36', 1));

eval(GetDynamicPanelScript('u42', 1));

eval(GetDynamicPanelScript('u62', 1));

eval(GetDynamicPanelScript('u84', 1));

eval(GetDynamicPanelScript('u78', 1));

eval(GetDynamicPanelScript('u46', 1));

eval(GetDynamicPanelScript('u66', 1));

eval(GetDynamicPanelScript('u41', 1));

eval(GetDynamicPanelScript('u58', 1));

var u86 = document.getElementById('u86');
gv_vAlignTable['u86'] = 'center';
var u54 = document.getElementById('u54');

var u60 = document.getElementById('u60');

var u29 = document.getElementById('u29');

u29.style.cursor = 'pointer';
if (bIE) u29.attachEvent("onclick", Clicku29);
else u29.addEventListener("click", Clicku29, true);
function Clicku29(e)
{

if (true) {

	SetPanelVisibilityu41("");

	SetPanelVisibilityu57("");

	SetPanelVisibilityu66("");

	SetPanelVisibilityu78("");

	SetPanelVisibilityu81("");

	SetPanelVisibilityu28("hidden");

	SetPanelVisibilityu32("hidden");

	SetPanelVisibilityu36("hidden");

	SetPanelVisibilityu84("hidden");

	SetPanelVisibilityu87("hidden");

}

}

var u45 = document.getElementById('u45');
gv_vAlignTable['u45'] = 'center';
var u83 = document.getElementById('u83');
gv_vAlignTable['u83'] = 'center';
var u51 = document.getElementById('u51');

x = 0;
y = 0;
u51ann.insertAdjacentHTML("afterBegin", "<div id='u51Note' class='annnoteimage' style='left:" + x + ";top:" + y + "' onclick=\"ToggleWorkflow(event, 'u51', 300, 300, false)\"></div>");

eval(annwindow.replace(/\[\[id\]\]/g, 'u51'));

document.body.insertAdjacentHTML("afterBegin", "<div id='u51based' style='z-index:1; visibility:hidden; position:absolute'></div><div id='u51base' style='z-index:1; visibility:hidden; position:absolute'></div>");
var u51based = document.getElementById('u51based');
            
u51based.insertAdjacentHTML("beforeEnd", "<div class='anncontent'><span class='annfieldname'>Specification:</span> This shows the list of the programs in the Glen park from the list the member can register for a program...<BR><BR></div><div class='anncontent'><span class='annfieldname'>Status:</span> Proposed<BR><BR></div><div class='anncontent'><span class='annfieldname'>Benefit:</span> Important<BR><BR></div>");

u51.style.cursor = 'pointer';
if (bIE) u51.attachEvent("onclick", Clicku51);
else u51.addEventListener("click", Clicku51, true);
function Clicku51(e)
{

if (true) {

	self.location.href="Program category details.html" + GetQuerystring();

}

}

var u79 = document.getElementById('u79');

var u42 = document.getElementById('u42');

var u80 = document.getElementById('u80');
gv_vAlignTable['u80'] = 'center';
var u26 = document.getElementById('u26');

var u5 = document.getElementById('u5');

var u23 = document.getElementById('u23');

var u76 = document.getElementById('u76');

var u14 = document.getElementById('u14');
gv_vAlignTable['u14'] = 'center';
var u67 = document.getElementById('u67');

u67.style.cursor = 'pointer';
if (bIE) u67.attachEvent("onclick", Clicku67);
else u67.addEventListener("click", Clicku67, true);
function Clicku67(e)
{

if (true) {

	SetPanelVisibilityu28("");

	SetPanelVisibilityu32("");

	SetPanelVisibilityu36("");

	SetPanelVisibilityu84("");

	SetPanelVisibilityu87("");

	SetPanelVisibilityu41("hidden");

	SetPanelVisibilityu46("hidden");

	SetPanelVisibilityu50("hidden");

	SetPanelVisibilityu57("hidden");

	SetPanelVisibilityu66("hidden");

	SetPanelVisibilityu78("hidden");

	SetPanelVisibilityu81("hidden");

}

}

var u20 = document.getElementById('u20');
gv_vAlignTable['u20'] = 'center';
var u73 = document.getElementById('u73');
gv_vAlignTable['u73'] = 'center';
var u48 = document.getElementById('u48');

u48.style.cursor = 'pointer';
if (bIE) u48.attachEvent("onclick", Clicku48);
else u48.addEventListener("click", Clicku48, true);
function Clicku48(e)
{

if (true) {

	SetPanelVisibilityu42("");

	SetPanelVisibilityu46("hidden");

	SetPanelVisibilityu50("hidden");

}

}

var u4 = document.getElementById('u4');

var u11 = document.getElementById('u11');

x = 0;
y = 0;
u11ann.insertAdjacentHTML("afterBegin", "<div id='u11Note' class='annnoteimage' style='left:" + x + ";top:" + y + "' onclick=\"ToggleWorkflow(event, 'u11', 300, 300, false)\"></div>");

eval(annwindow.replace(/\[\[id\]\]/g, 'u11'));

document.body.insertAdjacentHTML("afterBegin", "<div id='u11based' style='z-index:1; visibility:hidden; position:absolute'></div><div id='u11base' style='z-index:1; visibility:hidden; position:absolute'></div>");
var u11based = document.getElementById('u11based');
            
u11based.insertAdjacentHTML("beforeEnd", "<div class='anncontent'><span class='annfieldname'>Specification:</span> This link when clicked home page is rendered to the user.. <BR><BR></div><div class='anncontent'><span class='annfieldname'>Status:</span> Approved<BR><BR></div><div class='anncontent'><span class='annfieldname'>Benefit:</span> Important<BR><BR></div>");

u11.style.cursor = 'pointer';
if (bIE) u11.attachEvent("onclick", Clicku11);
else u11.addEventListener("click", Clicku11, true);
function Clicku11(e)
{

if (true) {

	self.location.href="Home.html" + GetQuerystring();

}

}

var u64 = document.getElementById('u64');

var u70 = document.getElementById('u70');

x = 0;
y = 0;
u70ann.insertAdjacentHTML("afterBegin", "<div id='u70Note' class='annnoteimage' style='left:" + x + ";top:" + y + "' onclick=\"ToggleWorkflow(event, 'u70', 300, 300, false)\"></div>");

eval(annwindow.replace(/\[\[id\]\]/g, 'u70'));

document.body.insertAdjacentHTML("afterBegin", "<div id='u70based' style='z-index:1; visibility:hidden; position:absolute'></div><div id='u70base' style='z-index:1; visibility:hidden; position:absolute'></div>");
var u70based = document.getElementById('u70based');
            
u70based.insertAdjacentHTML("beforeEnd", "<div class='anncontent'><span class='annfieldname'>Specification:</span> This Link shows all the programs of the San Franscisco Fall 07. From that the member choose his desired program and proceed with further steps....<BR><BR></div><div class='anncontent'><span class='annfieldname'>Status:</span> Approved<BR><BR></div><div class='anncontent'><span class='annfieldname'>Benefit:</span> Important<BR><BR></div>");

u70.style.cursor = 'pointer';
if (bIE) u70.attachEvent("onclick", Clicku70);
else u70.addEventListener("click", Clicku70, true);
function Clicku70(e)
{

if (true) {

	self.location.href="Program full schedules.html" + GetQuerystring();

}

}

var u39 = document.getElementById('u39');
gv_vAlignTable['u39'] = 'center';
var u87 = document.getElementById('u87');

var u55 = document.getElementById('u55');
gv_vAlignTable['u55'] = 'center';
var u61 = document.getElementById('u61');
gv_vAlignTable['u61'] = 'center';
var u84 = document.getElementById('u84');

var u52 = document.getElementById('u52');
gv_vAlignTable['u52'] = 'center';
var u36 = document.getElementById('u36');

var u89 = document.getElementById('u89');
gv_vAlignTable['u89'] = 'center';
var u81 = document.getElementById('u81');

var u27 = document.getElementById('u27');
gv_vAlignTable['u27'] = 'center';
var u33 = document.getElementById('u33');

var u0 = document.getElementById('u0');

var u24 = document.getElementById('u24');

var u77 = document.getElementById('u77');

var u30 = document.getElementById('u30');

u30.style.cursor = 'pointer';
if (bIE) u30.attachEvent("onclick", Clicku30);
else u30.addEventListener("click", Clicku30, true);
function Clicku30(e)
{

if (true) {

	SetPanelVisibilityu41("");

	SetPanelVisibilityu42("");

	SetPanelVisibilityu57("");

	SetPanelVisibilityu66("");

	SetPanelVisibilityu78("");

	SetPanelVisibilityu81("");

	SetPanelVisibilityu28("hidden");

	SetPanelVisibilityu32("hidden");

	SetPanelVisibilityu36("hidden");

	SetPanelVisibilityu84("hidden");

	SetPanelVisibilityu87("hidden");

}

}

var u58 = document.getElementById('u58');

var u15 = document.getElementById('u15');

x = 0;
y = 0;
u15ann.insertAdjacentHTML("afterBegin", "<div id='u15Note' class='annnoteimage' style='left:" + x + ";top:" + y + "' onclick=\"ToggleWorkflow(event, 'u15', 300, 300, false)\"></div>");

eval(annwindow.replace(/\[\[id\]\]/g, 'u15'));

document.body.insertAdjacentHTML("afterBegin", "<div id='u15based' style='z-index:1; visibility:hidden; position:absolute'></div><div id='u15base' style='z-index:1; visibility:hidden; position:absolute'></div>");
var u15based = document.getElementById('u15based');
            
u15based.insertAdjacentHTML("beforeEnd", "<div class='anncontent'><span class='annfieldname'>Specification:</span> This link gives our Online store page to the user...<BR><BR></div><div class='anncontent'><span class='annfieldname'>Status:</span> Approved<BR><BR></div><div class='anncontent'><span class='annfieldname'>Benefit:</span> Important<BR><BR></div><div class='anncontent'><span class='annfieldname'>Comments:</span> Where a member can purchase football kits for their kids....<BR><BR></div>");

u15.style.cursor = 'pointer';
if (bIE) u15.attachEvent("onclick", Clicku15);
else u15.addEventListener("click", Clicku15, true);
function Clicku15(e)
{

if (true) {

	self.location.href="Online store.html" + GetQuerystring();

}

}

var u21 = document.getElementById('u21');
gv_vAlignTable['u21'] = 'top';
var u74 = document.getElementById('u74');

var u49 = document.getElementById('u49');
gv_vAlignTable['u49'] = 'center';
var u12 = document.getElementById('u12');
gv_vAlignTable['u12'] = 'center';
var u65 = document.getElementById('u65');
gv_vAlignTable['u65'] = 'center';
var u71 = document.getElementById('u71');
gv_vAlignTable['u71'] = 'center';
var u62 = document.getElementById('u62');

var u46 = document.getElementById('u46');

var u85 = document.getElementById('u85');

var u37 = document.getElementById('u37');

var u43 = document.getElementById('u43');

u43.style.cursor = 'pointer';
if (bIE) u43.attachEvent("onclick", Clicku43);
else u43.addEventListener("click", Clicku43, true);
function Clicku43(e)
{

if (true) {

	SetPanelVisibilityu46("");

	SetPanelVisibilityu50("");

	SetPanelVisibilityu57("");

	SetPanelVisibilityu42("hidden");

}

}

var u17 = document.getElementById('u17');

var u18 = document.getElementById('u18');
gv_vAlignTable['u18'] = 'center';
var u82 = document.getElementById('u82');

var u1 = document.getElementById('u1');
gv_vAlignTable['u1'] = 'center';
var u34 = document.getElementById('u34');

var u40 = document.getElementById('u40');

var u68 = document.getElementById('u68');

u68.style.cursor = 'pointer';
if (bIE) u68.attachEvent("onclick", Clicku68);
else u68.addEventListener("click", Clicku68, true);
function Clicku68(e)
{

if (true) {

	SetPanelVisibilityu28("");

	SetPanelVisibilityu32("");

	SetPanelVisibilityu36("");

	SetPanelVisibilityu84("");

	SetPanelVisibilityu87("");

	SetPanelVisibilityu41("hidden");

	SetPanelVisibilityu46("hidden");

	SetPanelVisibilityu50("hidden");

	SetPanelVisibilityu57("hidden");

	SetPanelVisibilityu66("hidden");

	SetPanelVisibilityu78("hidden");

	SetPanelVisibilityu81("hidden");

}

}

var u25 = document.getElementById('u25');
gv_vAlignTable['u25'] = 'center';
var u31 = document.getElementById('u31');
gv_vAlignTable['u31'] = 'center';
var u59 = document.getElementById('u59');

var u22 = document.getElementById('u22');
gv_vAlignTable['u22'] = 'top';
var u75 = document.getElementById('u75');
gv_vAlignTable['u75'] = 'center';
var u88 = document.getElementById('u88');

var u8 = document.getElementById('u8');
gv_vAlignTable['u8'] = 'center';
var u72 = document.getElementById('u72');

var u56 = document.getElementById('u56');

var u47 = document.getElementById('u47');

u47.style.cursor = 'pointer';
if (bIE) u47.attachEvent("onclick", Clicku47);
else u47.addEventListener("click", Clicku47, true);
function Clicku47(e)
{

if (true) {

	SetPanelVisibilityu42("");

	SetPanelVisibilityu46("hidden");

	SetPanelVisibilityu50("hidden");

}

}

var u53 = document.getElementById('u53');

var u28 = document.getElementById('u28');

var u2 = document.getElementById('u2');

var u44 = document.getElementById('u44');

u44.style.cursor = 'pointer';
if (bIE) u44.attachEvent("onclick", Clicku44);
else u44.addEventListener("click", Clicku44, true);
function Clicku44(e)
{

if (true) {

	SetPanelVisibilityu46("");

	SetPanelVisibilityu50("");

	SetPanelVisibilityu42("hidden");

}

}

var u50 = document.getElementById('u50');

var u19 = document.getElementById('u19');

var u78 = document.getElementById('u78');

var u7 = document.getElementById('u7');

var u41 = document.getElementById('u41');

var u69 = document.getElementById('u69');
gv_vAlignTable['u69'] = 'center';
var u32 = document.getElementById('u32');

var u16 = document.getElementById('u16');
gv_vAlignTable['u16'] = 'center';
var u9 = document.getElementById('u9');

var u13 = document.getElementById('u13');

x = 0;
y = 0;
u13ann.insertAdjacentHTML("afterBegin", "<div id='u13Note' class='annnoteimage' style='left:" + x + ";top:" + y + "' onclick=\"ToggleWorkflow(event, 'u13', 300, 300, false)\"></div>");

eval(annwindow.replace(/\[\[id\]\]/g, 'u13'));

document.body.insertAdjacentHTML("afterBegin", "<div id='u13based' style='z-index:1; visibility:hidden; position:absolute'></div><div id='u13base' style='z-index:1; visibility:hidden; position:absolute'></div>");
var u13based = document.getElementById('u13based');
            
u13based.insertAdjacentHTML("beforeEnd", "<div class='anncontent'><span class='annfieldname'>Specification:</span> When user clicks this link,&nbsp; programs page will be shown...<BR><BR></div><div class='anncontent'><span class='annfieldname'>Status:</span> Approved<BR><BR></div><div class='anncontent'><span class='annfieldname'>Benefit:</span> Important<BR><BR></div>");

u13.style.cursor = 'pointer';
if (bIE) u13.attachEvent("onclick", Clicku13);
else u13.addEventListener("click", Clicku13, true);
function Clicku13(e)
{

if (true) {

	self.location.href="Program list.html" + GetQuerystring();

	window.location.reload();

}

}

var u66 = document.getElementById('u66');

var u6 = document.getElementById('u6');
gv_vAlignTable['u6'] = 'center';
var u35 = document.getElementById('u35');
gv_vAlignTable['u35'] = 'center';
var u57 = document.getElementById('u57');

var u10 = document.getElementById('u10');
gv_vAlignTable['u10'] = 'center';
var u63 = document.getElementById('u63');

var u38 = document.getElementById('u38');

var u3 = document.getElementById('u3');
gv_vAlignTable['u3'] = 'center';
if (window.OnLoad) OnLoad();
