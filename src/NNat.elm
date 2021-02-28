module NNat exposing (NNat, add1, add10, add100, add1000, add1001, add1002, add1003, add1004, add1005, add1006, add1007, add1008, add1009, add101, add1010, add1011, add1012, add1013, add1014, add1015, add1016, add1017, add1018, add1019, add102, add1020, add1021, add1022, add1023, add1024, add103, add104, add105, add106, add107, add108, add109, add11, add110, add111, add112, add113, add114, add115, add116, add117, add118, add119, add12, add120, add121, add122, add123, add124, add125, add126, add127, add128, add129, add13, add130, add131, add132, add133, add134, add135, add136, add137, add138, add139, add14, add140, add141, add142, add143, add144, add145, add146, add147, add148, add149, add15, add150, add151, add152, add153, add154, add155, add156, add157, add158, add159, add16, add160, add161, add162, add163, add164, add165, add166, add167, add168, add169, add17, add170, add171, add172, add173, add174, add175, add176, add177, add178, add179, add18, add180, add181, add182, add183, add184, add185, add186, add187, add188, add189, add19, add190, add191, add192, add193, add194, add195, add196, add197, add198, add199, add2, add20, add200, add201, add202, add203, add204, add205, add206, add207, add208, add209, add21, add210, add211, add212, add213, add214, add215, add216, add217, add218, add219, add22, add220, add221, add222, add223, add224, add225, add226, add227, add228, add229, add23, add230, add231, add232, add233, add234, add235, add236, add237, add238, add239, add24, add240, add241, add242, add243, add244, add245, add246, add247, add248, add249, add25, add250, add251, add252, add253, add254, add255, add256, add257, add258, add259, add26, add260, add261, add262, add263, add264, add265, add266, add267, add268, add269, add27, add270, add271, add272, add273, add274, add275, add276, add277, add278, add279, add28, add280, add281, add282, add283, add284, add285, add286, add287, add288, add289, add29, add290, add291, add292, add293, add294, add295, add296, add297, add298, add299, add3, add30, add300, add301, add302, add303, add304, add305, add306, add307, add308, add309, add31, add310, add311, add312, add313, add314, add315, add316, add317, add318, add319, add32, add320, add321, add322, add323, add324, add325, add326, add327, add328, add329, add33, add330, add331, add332, add333, add334, add335, add336, add337, add338, add339, add34, add340, add341, add342, add343, add344, add345, add346, add347, add348, add349, add35, add350, add351, add352, add353, add354, add355, add356, add357, add358, add359, add36, add360, add361, add362, add363, add364, add365, add366, add367, add368, add369, add37, add370, add371, add372, add373, add374, add375, add376, add377, add378, add379, add38, add380, add381, add382, add383, add384, add385, add386, add387, add388, add389, add39, add390, add391, add392, add393, add394, add395, add396, add397, add398, add399, add4, add40, add400, add401, add402, add403, add404, add405, add406, add407, add408, add409, add41, add410, add411, add412, add413, add414, add415, add416, add417, add418, add419, add42, add420, add421, add422, add423, add424, add425, add426, add427, add428, add429, add43, add430, add431, add432, add433, add434, add435, add436, add437, add438, add439, add44, add440, add441, add442, add443, add444, add445, add446, add447, add448, add449, add45, add450, add451, add452, add453, add454, add455, add456, add457, add458, add459, add46, add460, add461, add462, add463, add464, add465, add466, add467, add468, add469, add47, add470, add471, add472, add473, add474, add475, add476, add477, add478, add479, add48, add480, add481, add482, add483, add484, add485, add486, add487, add488, add489, add49, add490, add491, add492, add493, add494, add495, add496, add497, add498, add499, add5, add50, add500, add501, add502, add503, add504, add505, add506, add507, add508, add509, add51, add510, add511, add512, add513, add514, add515, add516, add517, add518, add519, add52, add520, add521, add522, add523, add524, add525, add526, add527, add528, add529, add53, add530, add531, add532, add533, add534, add535, add536, add537, add538, add539, add54, add540, add541, add542, add543, add544, add545, add546, add547, add548, add549, add55, add550, add551, add552, add553, add554, add555, add556, add557, add558, add559, add56, add560, add561, add562, add563, add564, add565, add566, add567, add568, add569, add57, add570, add571, add572, add573, add574, add575, add576, add577, add578, add579, add58, add580, add581, add582, add583, add584, add585, add586, add587, add588, add589, add59, add590, add591, add592, add593, add594, add595, add596, add597, add598, add599, add6, add60, add600, add601, add602, add603, add604, add605, add606, add607, add608, add609, add61, add610, add611, add612, add613, add614, add615, add616, add617, add618, add619, add62, add620, add621, add622, add623, add624, add625, add626, add627, add628, add629, add63, add630, add631, add632, add633, add634, add635, add636, add637, add638, add639, add64, add640, add641, add642, add643, add644, add645, add646, add647, add648, add649, add65, add650, add651, add652, add653, add654, add655, add656, add657, add658, add659, add66, add660, add661, add662, add663, add664, add665, add666, add667, add668, add669, add67, add670, add671, add672, add673, add674, add675, add676, add677, add678, add679, add68, add680, add681, add682, add683, add684, add685, add686, add687, add688, add689, add69, add690, add691, add692, add693, add694, add695, add696, add697, add698, add699, add7, add70, add700, add701, add702, add703, add704, add705, add706, add707, add708, add709, add71, add710, add711, add712, add713, add714, add715, add716, add717, add718, add719, add72, add720, add721, add722, add723, add724, add725, add726, add727, add728, add729, add73, add730, add731, add732, add733, add734, add735, add736, add737, add738, add739, add74, add740, add741, add742, add743, add744, add745, add746, add747, add748, add749, add75, add750, add751, add752, add753, add754, add755, add756, add757, add758, add759, add76, add760, add761, add762, add763, add764, add765, add766, add767, add768, add769, add77, add770, add771, add772, add773, add774, add775, add776, add777, add778, add779, add78, add780, add781, add782, add783, add784, add785, add786, add787, add788, add789, add79, add790, add791, add792, add793, add794, add795, add796, add797, add798, add799, add8, add80, add800, add801, add802, add803, add804, add805, add806, add807, add808, add809, add81, add810, add811, add812, add813, add814, add815, add816, add817, add818, add819, add82, add820, add821, add822, add823, add824, add825, add826, add827, add828, add829, add83, add830, add831, add832, add833, add834, add835, add836, add837, add838, add839, add84, add840, add841, add842, add843, add844, add845, add846, add847, add848, add849, add85, add850, add851, add852, add853, add854, add855, add856, add857, add858, add859, add86, add860, add861, add862, add863, add864, add865, add866, add867, add868, add869, add87, add870, add871, add872, add873, add874, add875, add876, add877, add878, add879, add88, add880, add881, add882, add883, add884, add885, add886, add887, add888, add889, add89, add890, add891, add892, add893, add894, add895, add896, add897, add898, add899, add9, add90, add900, add901, add902, add903, add904, add905, add906, add907, add908, add909, add91, add910, add911, add912, add913, add914, add915, add916, add917, add918, add919, add92, add920, add921, add922, add923, add924, add925, add926, add927, add928, add929, add93, add930, add931, add932, add933, add934, add935, add936, add937, add938, add939, add94, add940, add941, add942, add943, add944, add945, add946, add947, add948, add949, add95, add950, add951, add952, add953, add954, add955, add956, add957, add958, add959, add96, add960, add961, add962, add963, add964, add965, add966, add967, add968, add969, add97, add970, add971, add972, add973, add974, add975, add976, add977, add978, add979, add98, add980, add981, add982, add983, add984, add985, add986, add987, add988, add989, add99, add990, add991, add992, add993, add994, add995, add996, add997, add998, add999, n0, n1, n10, n100, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n101, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n102, n1020, n1021, n1022, n1023, n1024, n103, n104, n105, n106, n107, n108, n109, n11, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n12, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n13, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n14, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n15, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n16, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n17, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n18, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n19, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n2, n20, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n21, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n22, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n23, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n24, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n25, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n26, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n27, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n28, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n29, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n3, n30, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n31, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n32, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n33, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n34, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n35, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n36, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n37, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n38, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n39, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n4, n40, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n41, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n42, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n43, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n44, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n45, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n46, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n47, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n48, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n49, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n5, n50, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n51, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n52, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n53, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n54, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n55, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n56, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n57, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n58, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n59, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n6, n60, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n61, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n62, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n63, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n64, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n65, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n66, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n67, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n68, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n69, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n7, n70, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n71, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n72, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n73, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n74, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n75, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n76, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n77, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n78, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n79, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n8, n80, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n81, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n82, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n83, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n84, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n85, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n86, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n87, n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n88, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n89, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899, n9, n90, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n91, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n92, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n93, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n94, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n95, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n96, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n97, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n98, n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n99, n990, n991, n992, n993, n994, n995, n996, n997, n998, n999, sub1, sub10, sub100, sub1000, sub1001, sub1002, sub1003, sub1004, sub1005, sub1006, sub1007, sub1008, sub1009, sub101, sub1010, sub1011, sub1012, sub1013, sub1014, sub1015, sub1016, sub1017, sub1018, sub1019, sub102, sub1020, sub1021, sub1022, sub1023, sub1024, sub103, sub104, sub105, sub106, sub107, sub108, sub109, sub11, sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117, sub118, sub119, sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126, sub127, sub128, sub129, sub13, sub130, sub131, sub132, sub133, sub134, sub135, sub136, sub137, sub138, sub139, sub14, sub140, sub141, sub142, sub143, sub144, sub145, sub146, sub147, sub148, sub149, sub15, sub150, sub151, sub152, sub153, sub154, sub155, sub156, sub157, sub158, sub159, sub16, sub160, sub161, sub162, sub163, sub164, sub165, sub166, sub167, sub168, sub169, sub17, sub170, sub171, sub172, sub173, sub174, sub175, sub176, sub177, sub178, sub179, sub18, sub180, sub181, sub182, sub183, sub184, sub185, sub186, sub187, sub188, sub189, sub19, sub190, sub191, sub192, sub193, sub194, sub195, sub196, sub197, sub198, sub199, sub2, sub20, sub200, sub201, sub202, sub203, sub204, sub205, sub206, sub207, sub208, sub209, sub21, sub210, sub211, sub212, sub213, sub214, sub215, sub216, sub217, sub218, sub219, sub22, sub220, sub221, sub222, sub223, sub224, sub225, sub226, sub227, sub228, sub229, sub23, sub230, sub231, sub232, sub233, sub234, sub235, sub236, sub237, sub238, sub239, sub24, sub240, sub241, sub242, sub243, sub244, sub245, sub246, sub247, sub248, sub249, sub25, sub250, sub251, sub252, sub253, sub254, sub255, sub256, sub257, sub258, sub259, sub26, sub260, sub261, sub262, sub263, sub264, sub265, sub266, sub267, sub268, sub269, sub27, sub270, sub271, sub272, sub273, sub274, sub275, sub276, sub277, sub278, sub279, sub28, sub280, sub281, sub282, sub283, sub284, sub285, sub286, sub287, sub288, sub289, sub29, sub290, sub291, sub292, sub293, sub294, sub295, sub296, sub297, sub298, sub299, sub3, sub30, sub300, sub301, sub302, sub303, sub304, sub305, sub306, sub307, sub308, sub309, sub31, sub310, sub311, sub312, sub313, sub314, sub315, sub316, sub317, sub318, sub319, sub32, sub320, sub321, sub322, sub323, sub324, sub325, sub326, sub327, sub328, sub329, sub33, sub330, sub331, sub332, sub333, sub334, sub335, sub336, sub337, sub338, sub339, sub34, sub340, sub341, sub342, sub343, sub344, sub345, sub346, sub347, sub348, sub349, sub35, sub350, sub351, sub352, sub353, sub354, sub355, sub356, sub357, sub358, sub359, sub36, sub360, sub361, sub362, sub363, sub364, sub365, sub366, sub367, sub368, sub369, sub37, sub370, sub371, sub372, sub373, sub374, sub375, sub376, sub377, sub378, sub379, sub38, sub380, sub381, sub382, sub383, sub384, sub385, sub386, sub387, sub388, sub389, sub39, sub390, sub391, sub392, sub393, sub394, sub395, sub396, sub397, sub398, sub399, sub4, sub40, sub400, sub401, sub402, sub403, sub404, sub405, sub406, sub407, sub408, sub409, sub41, sub410, sub411, sub412, sub413, sub414, sub415, sub416, sub417, sub418, sub419, sub42, sub420, sub421, sub422, sub423, sub424, sub425, sub426, sub427, sub428, sub429, sub43, sub430, sub431, sub432, sub433, sub434, sub435, sub436, sub437, sub438, sub439, sub44, sub440, sub441, sub442, sub443, sub444, sub445, sub446, sub447, sub448, sub449, sub45, sub450, sub451, sub452, sub453, sub454, sub455, sub456, sub457, sub458, sub459, sub46, sub460, sub461, sub462, sub463, sub464, sub465, sub466, sub467, sub468, sub469, sub47, sub470, sub471, sub472, sub473, sub474, sub475, sub476, sub477, sub478, sub479, sub48, sub480, sub481, sub482, sub483, sub484, sub485, sub486, sub487, sub488, sub489, sub49, sub490, sub491, sub492, sub493, sub494, sub495, sub496, sub497, sub498, sub499, sub5, sub50, sub500, sub501, sub502, sub503, sub504, sub505, sub506, sub507, sub508, sub509, sub51, sub510, sub511, sub512, sub513, sub514, sub515, sub516, sub517, sub518, sub519, sub52, sub520, sub521, sub522, sub523, sub524, sub525, sub526, sub527, sub528, sub529, sub53, sub530, sub531, sub532, sub533, sub534, sub535, sub536, sub537, sub538, sub539, sub54, sub540, sub541, sub542, sub543, sub544, sub545, sub546, sub547, sub548, sub549, sub55, sub550, sub551, sub552, sub553, sub554, sub555, sub556, sub557, sub558, sub559, sub56, sub560, sub561, sub562, sub563, sub564, sub565, sub566, sub567, sub568, sub569, sub57, sub570, sub571, sub572, sub573, sub574, sub575, sub576, sub577, sub578, sub579, sub58, sub580, sub581, sub582, sub583, sub584, sub585, sub586, sub587, sub588, sub589, sub59, sub590, sub591, sub592, sub593, sub594, sub595, sub596, sub597, sub598, sub599, sub6, sub60, sub600, sub601, sub602, sub603, sub604, sub605, sub606, sub607, sub608, sub609, sub61, sub610, sub611, sub612, sub613, sub614, sub615, sub616, sub617, sub618, sub619, sub62, sub620, sub621, sub622, sub623, sub624, sub625, sub626, sub627, sub628, sub629, sub63, sub630, sub631, sub632, sub633, sub634, sub635, sub636, sub637, sub638, sub639, sub64, sub640, sub641, sub642, sub643, sub644, sub645, sub646, sub647, sub648, sub649, sub65, sub650, sub651, sub652, sub653, sub654, sub655, sub656, sub657, sub658, sub659, sub66, sub660, sub661, sub662, sub663, sub664, sub665, sub666, sub667, sub668, sub669, sub67, sub670, sub671, sub672, sub673, sub674, sub675, sub676, sub677, sub678, sub679, sub68, sub680, sub681, sub682, sub683, sub684, sub685, sub686, sub687, sub688, sub689, sub69, sub690, sub691, sub692, sub693, sub694, sub695, sub696, sub697, sub698, sub699, sub7, sub70, sub700, sub701, sub702, sub703, sub704, sub705, sub706, sub707, sub708, sub709, sub71, sub710, sub711, sub712, sub713, sub714, sub715, sub716, sub717, sub718, sub719, sub72, sub720, sub721, sub722, sub723, sub724, sub725, sub726, sub727, sub728, sub729, sub73, sub730, sub731, sub732, sub733, sub734, sub735, sub736, sub737, sub738, sub739, sub74, sub740, sub741, sub742, sub743, sub744, sub745, sub746, sub747, sub748, sub749, sub75, sub750, sub751, sub752, sub753, sub754, sub755, sub756, sub757, sub758, sub759, sub76, sub760, sub761, sub762, sub763, sub764, sub765, sub766, sub767, sub768, sub769, sub77, sub770, sub771, sub772, sub773, sub774, sub775, sub776, sub777, sub778, sub779, sub78, sub780, sub781, sub782, sub783, sub784, sub785, sub786, sub787, sub788, sub789, sub79, sub790, sub791, sub792, sub793, sub794, sub795, sub796, sub797, sub798, sub799, sub8, sub80, sub800, sub801, sub802, sub803, sub804, sub805, sub806, sub807, sub808, sub809, sub81, sub810, sub811, sub812, sub813, sub814, sub815, sub816, sub817, sub818, sub819, sub82, sub820, sub821, sub822, sub823, sub824, sub825, sub826, sub827, sub828, sub829, sub83, sub830, sub831, sub832, sub833, sub834, sub835, sub836, sub837, sub838, sub839, sub84, sub840, sub841, sub842, sub843, sub844, sub845, sub846, sub847, sub848, sub849, sub85, sub850, sub851, sub852, sub853, sub854, sub855, sub856, sub857, sub858, sub859, sub86, sub860, sub861, sub862, sub863, sub864, sub865, sub866, sub867, sub868, sub869, sub87, sub870, sub871, sub872, sub873, sub874, sub875, sub876, sub877, sub878, sub879, sub88, sub880, sub881, sub882, sub883, sub884, sub885, sub886, sub887, sub888, sub889, sub89, sub890, sub891, sub892, sub893, sub894, sub895, sub896, sub897, sub898, sub899, sub9, sub90, sub900, sub901, sub902, sub903, sub904, sub905, sub906, sub907, sub908, sub909, sub91, sub910, sub911, sub912, sub913, sub914, sub915, sub916, sub917, sub918, sub919, sub92, sub920, sub921, sub922, sub923, sub924, sub925, sub926, sub927, sub928, sub929, sub93, sub930, sub931, sub932, sub933, sub934, sub935, sub936, sub937, sub938, sub939, sub94, sub940, sub941, sub942, sub943, sub944, sub945, sub946, sub947, sub948, sub949, sub95, sub950, sub951, sub952, sub953, sub954, sub955, sub956, sub957, sub958, sub959, sub96, sub960, sub961, sub962, sub963, sub964, sub965, sub966, sub967, sub968, sub969, sub97, sub970, sub971, sub972, sub973, sub974, sub975, sub976, sub977, sub978, sub979, sub98, sub980, sub981, sub982, sub983, sub984, sub985, sub986, sub987, sub988, sub989, sub99, sub990, sub991, sub992, sub993, sub994, sub995, sub996, sub997, sub998, sub999, toInt)

{-| Representing natural numbers (`>=0`).


This module lets you represent exact values in the `NNat` type.


This means, packages like [elm-n-array][elm-n-array] can use a `NNat` to promise:


    fromRepeating : NNat n -> element -> NArray n element
→ repeating an element n times gives a Array with n elements!


The other use is to describe a difference between two values.


    interval :
        { first : NNat (N first Is (Difference range To last))
        , last : NNat (N last Is differenceLast)
        }
    -> Interval
    → because `range` is 0 or positive, `last` must also be at least as high as `first`.
See the readme for more information.


@docs NNat
## transform


@docs toInt
## values


@docs n0, n1, n10, n100, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009
@docs n101, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n102, n1020
@docs n1021, n1022, n1023, n1024, n103, n104, n105, n106, n107, n108, n109, n11, n110, n111, n112
@docs n113, n114, n115, n116, n117, n118, n119, n12, n120, n121, n122, n123, n124, n125, n126, n127
@docs n128, n129, n13, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n14, n140, n141
@docs n142, n143, n144, n145, n146, n147, n148, n149, n15, n150, n151, n152, n153, n154, n155, n156
@docs n157, n158, n159, n16, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n17, n170
@docs n171, n172, n173, n174, n175, n176, n177, n178, n179, n18, n180, n181, n182, n183, n184, n185
@docs n186, n187, n188, n189, n19, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n2, n20
@docs n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n21, n210, n211, n212, n213, n214
@docs n215, n216, n217, n218, n219, n22, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229
@docs n23, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n24, n240, n241, n242, n243
@docs n244, n245, n246, n247, n248, n249, n25, n250, n251, n252, n253, n254, n255, n256, n257, n258
@docs n259, n26, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n27, n270, n271, n272
@docs n273, n274, n275, n276, n277, n278, n279, n28, n280, n281, n282, n283, n284, n285, n286, n287
@docs n288, n289, n29, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n3, n30, n300, n301
@docs n302, n303, n304, n305, n306, n307, n308, n309, n31, n310, n311, n312, n313, n314, n315, n316
@docs n317, n318, n319, n32, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n33, n330
@docs n331, n332, n333, n334, n335, n336, n337, n338, n339, n34, n340, n341, n342, n343, n344, n345
@docs n346, n347, n348, n349, n35, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n36
@docs n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n37, n370, n371, n372, n373, n374
@docs n375, n376, n377, n378, n379, n38, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389
@docs n39, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n4, n40, n400, n401, n402, n403
@docs n404, n405, n406, n407, n408, n409, n41, n410, n411, n412, n413, n414, n415, n416, n417, n418
@docs n419, n42, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n43, n430, n431, n432
@docs n433, n434, n435, n436, n437, n438, n439, n44, n440, n441, n442, n443, n444, n445, n446, n447
@docs n448, n449, n45, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n46, n460, n461
@docs n462, n463, n464, n465, n466, n467, n468, n469, n47, n470, n471, n472, n473, n474, n475, n476
@docs n477, n478, n479, n48, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n49, n490
@docs n491, n492, n493, n494, n495, n496, n497, n498, n499, n5, n50, n500, n501, n502, n503, n504
@docs n505, n506, n507, n508, n509, n51, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519
@docs n52, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n53, n530, n531, n532, n533
@docs n534, n535, n536, n537, n538, n539, n54, n540, n541, n542, n543, n544, n545, n546, n547, n548
@docs n549, n55, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n56, n560, n561, n562
@docs n563, n564, n565, n566, n567, n568, n569, n57, n570, n571, n572, n573, n574, n575, n576, n577
@docs n578, n579, n58, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n59, n590, n591
@docs n592, n593, n594, n595, n596, n597, n598, n599, n6, n60, n600, n601, n602, n603, n604, n605
@docs n606, n607, n608, n609, n61, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n62
@docs n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n63, n630, n631, n632, n633, n634
@docs n635, n636, n637, n638, n639, n64, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649
@docs n65, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n66, n660, n661, n662, n663
@docs n664, n665, n666, n667, n668, n669, n67, n670, n671, n672, n673, n674, n675, n676, n677, n678
@docs n679, n68, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n69, n690, n691, n692
@docs n693, n694, n695, n696, n697, n698, n699, n7, n70, n700, n701, n702, n703, n704, n705, n706
@docs n707, n708, n709, n71, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n72, n720
@docs n721, n722, n723, n724, n725, n726, n727, n728, n729, n73, n730, n731, n732, n733, n734, n735
@docs n736, n737, n738, n739, n74, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n75
@docs n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n76, n760, n761, n762, n763, n764
@docs n765, n766, n767, n768, n769, n77, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779
@docs n78, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n79, n790, n791, n792, n793
@docs n794, n795, n796, n797, n798, n799, n8, n80, n800, n801, n802, n803, n804, n805, n806, n807
@docs n808, n809, n81, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n82, n820, n821
@docs n822, n823, n824, n825, n826, n827, n828, n829, n83, n830, n831, n832, n833, n834, n835, n836
@docs n837, n838, n839, n84, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n85, n850
@docs n851, n852, n853, n854, n855, n856, n857, n858, n859, n86, n860, n861, n862, n863, n864, n865
@docs n866, n867, n868, n869, n87, n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n88
@docs n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n89, n890, n891, n892, n893, n894
@docs n895, n896, n897, n898, n899, n9, n90, n900, n901, n902, n903, n904, n905, n906, n907, n908
@docs n909, n91, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919, n92, n920, n921, n922
@docs n923, n924, n925, n926, n927, n928, n929, n93, n930, n931, n932, n933, n934, n935, n936, n937
@docs n938, n939, n94, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n95, n950, n951
@docs n952, n953, n954, n955, n956, n957, n958, n959, n96, n960, n961, n962, n963, n964, n965, n966
@docs n967, n968, n969, n97, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n98, n980
@docs n981, n982, n983, n984, n985, n986, n987, n988, n989, n99, n990, n991, n992, n993, n994, n995
@docs n996, n997, n998, n999
## add


@docs add1, add10, add100, add1000, add1001, add1002, add1003, add1004, add1005, add1006
@docs add1007, add1008, add1009, add101, add1010, add1011, add1012, add1013, add1014
@docs add1015, add1016, add1017, add1018, add1019, add102, add1020, add1021, add1022
@docs add1023, add1024, add103, add104, add105, add106, add107, add108, add109, add11
@docs add110, add111, add112, add113, add114, add115, add116, add117, add118, add119
@docs add12, add120, add121, add122, add123, add124, add125, add126, add127, add128
@docs add129, add13, add130, add131, add132, add133, add134, add135, add136, add137
@docs add138, add139, add14, add140, add141, add142, add143, add144, add145, add146
@docs add147, add148, add149, add15, add150, add151, add152, add153, add154, add155
@docs add156, add157, add158, add159, add16, add160, add161, add162, add163, add164
@docs add165, add166, add167, add168, add169, add17, add170, add171, add172, add173
@docs add174, add175, add176, add177, add178, add179, add18, add180, add181, add182
@docs add183, add184, add185, add186, add187, add188, add189, add19, add190, add191
@docs add192, add193, add194, add195, add196, add197, add198, add199, add2, add20, add200
@docs add201, add202, add203, add204, add205, add206, add207, add208, add209, add21
@docs add210, add211, add212, add213, add214, add215, add216, add217, add218, add219
@docs add22, add220, add221, add222, add223, add224, add225, add226, add227, add228
@docs add229, add23, add230, add231, add232, add233, add234, add235, add236, add237
@docs add238, add239, add24, add240, add241, add242, add243, add244, add245, add246
@docs add247, add248, add249, add25, add250, add251, add252, add253, add254, add255
@docs add256, add257, add258, add259, add26, add260, add261, add262, add263, add264
@docs add265, add266, add267, add268, add269, add27, add270, add271, add272, add273
@docs add274, add275, add276, add277, add278, add279, add28, add280, add281, add282
@docs add283, add284, add285, add286, add287, add288, add289, add29, add290, add291
@docs add292, add293, add294, add295, add296, add297, add298, add299, add3, add30, add300
@docs add301, add302, add303, add304, add305, add306, add307, add308, add309, add31
@docs add310, add311, add312, add313, add314, add315, add316, add317, add318, add319
@docs add32, add320, add321, add322, add323, add324, add325, add326, add327, add328
@docs add329, add33, add330, add331, add332, add333, add334, add335, add336, add337
@docs add338, add339, add34, add340, add341, add342, add343, add344, add345, add346
@docs add347, add348, add349, add35, add350, add351, add352, add353, add354, add355
@docs add356, add357, add358, add359, add36, add360, add361, add362, add363, add364
@docs add365, add366, add367, add368, add369, add37, add370, add371, add372, add373
@docs add374, add375, add376, add377, add378, add379, add38, add380, add381, add382
@docs add383, add384, add385, add386, add387, add388, add389, add39, add390, add391
@docs add392, add393, add394, add395, add396, add397, add398, add399, add4, add40, add400
@docs add401, add402, add403, add404, add405, add406, add407, add408, add409, add41
@docs add410, add411, add412, add413, add414, add415, add416, add417, add418, add419
@docs add42, add420, add421, add422, add423, add424, add425, add426, add427, add428
@docs add429, add43, add430, add431, add432, add433, add434, add435, add436, add437
@docs add438, add439, add44, add440, add441, add442, add443, add444, add445, add446
@docs add447, add448, add449, add45, add450, add451, add452, add453, add454, add455
@docs add456, add457, add458, add459, add46, add460, add461, add462, add463, add464
@docs add465, add466, add467, add468, add469, add47, add470, add471, add472, add473
@docs add474, add475, add476, add477, add478, add479, add48, add480, add481, add482
@docs add483, add484, add485, add486, add487, add488, add489, add49, add490, add491
@docs add492, add493, add494, add495, add496, add497, add498, add499, add5, add50, add500
@docs add501, add502, add503, add504, add505, add506, add507, add508, add509, add51
@docs add510, add511, add512, add513, add514, add515, add516, add517, add518, add519
@docs add52, add520, add521, add522, add523, add524, add525, add526, add527, add528
@docs add529, add53, add530, add531, add532, add533, add534, add535, add536, add537
@docs add538, add539, add54, add540, add541, add542, add543, add544, add545, add546
@docs add547, add548, add549, add55, add550, add551, add552, add553, add554, add555
@docs add556, add557, add558, add559, add56, add560, add561, add562, add563, add564
@docs add565, add566, add567, add568, add569, add57, add570, add571, add572, add573
@docs add574, add575, add576, add577, add578, add579, add58, add580, add581, add582
@docs add583, add584, add585, add586, add587, add588, add589, add59, add590, add591
@docs add592, add593, add594, add595, add596, add597, add598, add599, add6, add60, add600
@docs add601, add602, add603, add604, add605, add606, add607, add608, add609, add61
@docs add610, add611, add612, add613, add614, add615, add616, add617, add618, add619
@docs add62, add620, add621, add622, add623, add624, add625, add626, add627, add628
@docs add629, add63, add630, add631, add632, add633, add634, add635, add636, add637
@docs add638, add639, add64, add640, add641, add642, add643, add644, add645, add646
@docs add647, add648, add649, add65, add650, add651, add652, add653, add654, add655
@docs add656, add657, add658, add659, add66, add660, add661, add662, add663, add664
@docs add665, add666, add667, add668, add669, add67, add670, add671, add672, add673
@docs add674, add675, add676, add677, add678, add679, add68, add680, add681, add682
@docs add683, add684, add685, add686, add687, add688, add689, add69, add690, add691
@docs add692, add693, add694, add695, add696, add697, add698, add699, add7, add70, add700
@docs add701, add702, add703, add704, add705, add706, add707, add708, add709, add71
@docs add710, add711, add712, add713, add714, add715, add716, add717, add718, add719
@docs add72, add720, add721, add722, add723, add724, add725, add726, add727, add728
@docs add729, add73, add730, add731, add732, add733, add734, add735, add736, add737
@docs add738, add739, add74, add740, add741, add742, add743, add744, add745, add746
@docs add747, add748, add749, add75, add750, add751, add752, add753, add754, add755
@docs add756, add757, add758, add759, add76, add760, add761, add762, add763, add764
@docs add765, add766, add767, add768, add769, add77, add770, add771, add772, add773
@docs add774, add775, add776, add777, add778, add779, add78, add780, add781, add782
@docs add783, add784, add785, add786, add787, add788, add789, add79, add790, add791
@docs add792, add793, add794, add795, add796, add797, add798, add799, add8, add80, add800
@docs add801, add802, add803, add804, add805, add806, add807, add808, add809, add81
@docs add810, add811, add812, add813, add814, add815, add816, add817, add818, add819
@docs add82, add820, add821, add822, add823, add824, add825, add826, add827, add828
@docs add829, add83, add830, add831, add832, add833, add834, add835, add836, add837
@docs add838, add839, add84, add840, add841, add842, add843, add844, add845, add846
@docs add847, add848, add849, add85, add850, add851, add852, add853, add854, add855
@docs add856, add857, add858, add859, add86, add860, add861, add862, add863, add864
@docs add865, add866, add867, add868, add869, add87, add870, add871, add872, add873
@docs add874, add875, add876, add877, add878, add879, add88, add880, add881, add882
@docs add883, add884, add885, add886, add887, add888, add889, add89, add890, add891
@docs add892, add893, add894, add895, add896, add897, add898, add899, add9, add90, add900
@docs add901, add902, add903, add904, add905, add906, add907, add908, add909, add91
@docs add910, add911, add912, add913, add914, add915, add916, add917, add918, add919
@docs add92, add920, add921, add922, add923, add924, add925, add926, add927, add928
@docs add929, add93, add930, add931, add932, add933, add934, add935, add936, add937
@docs add938, add939, add94, add940, add941, add942, add943, add944, add945, add946
@docs add947, add948, add949, add95, add950, add951, add952, add953, add954, add955
@docs add956, add957, add958, add959, add96, add960, add961, add962, add963, add964
@docs add965, add966, add967, add968, add969, add97, add970, add971, add972, add973
@docs add974, add975, add976, add977, add978, add979, add98, add980, add981, add982
@docs add983, add984, add985, add986, add987, add988, add989, add99, add990, add991
@docs add992, add993, add994, add995, add996, add997, add998, add999
## at least


@docs sub1, sub10, sub100, sub1000, sub1001, sub1002, sub1003, sub1004, sub1005, sub1006
@docs sub1007, sub1008, sub1009, sub101, sub1010, sub1011, sub1012, sub1013, sub1014
@docs sub1015, sub1016, sub1017, sub1018, sub1019, sub102, sub1020, sub1021, sub1022
@docs sub1023, sub1024, sub103, sub104, sub105, sub106, sub107, sub108, sub109, sub11
@docs sub110, sub111, sub112, sub113, sub114, sub115, sub116, sub117, sub118, sub119
@docs sub12, sub120, sub121, sub122, sub123, sub124, sub125, sub126, sub127, sub128
@docs sub129, sub13, sub130, sub131, sub132, sub133, sub134, sub135, sub136, sub137
@docs sub138, sub139, sub14, sub140, sub141, sub142, sub143, sub144, sub145, sub146
@docs sub147, sub148, sub149, sub15, sub150, sub151, sub152, sub153, sub154, sub155
@docs sub156, sub157, sub158, sub159, sub16, sub160, sub161, sub162, sub163, sub164
@docs sub165, sub166, sub167, sub168, sub169, sub17, sub170, sub171, sub172, sub173
@docs sub174, sub175, sub176, sub177, sub178, sub179, sub18, sub180, sub181, sub182
@docs sub183, sub184, sub185, sub186, sub187, sub188, sub189, sub19, sub190, sub191
@docs sub192, sub193, sub194, sub195, sub196, sub197, sub198, sub199, sub2, sub20, sub200
@docs sub201, sub202, sub203, sub204, sub205, sub206, sub207, sub208, sub209, sub21
@docs sub210, sub211, sub212, sub213, sub214, sub215, sub216, sub217, sub218, sub219
@docs sub22, sub220, sub221, sub222, sub223, sub224, sub225, sub226, sub227, sub228
@docs sub229, sub23, sub230, sub231, sub232, sub233, sub234, sub235, sub236, sub237
@docs sub238, sub239, sub24, sub240, sub241, sub242, sub243, sub244, sub245, sub246
@docs sub247, sub248, sub249, sub25, sub250, sub251, sub252, sub253, sub254, sub255
@docs sub256, sub257, sub258, sub259, sub26, sub260, sub261, sub262, sub263, sub264
@docs sub265, sub266, sub267, sub268, sub269, sub27, sub270, sub271, sub272, sub273
@docs sub274, sub275, sub276, sub277, sub278, sub279, sub28, sub280, sub281, sub282
@docs sub283, sub284, sub285, sub286, sub287, sub288, sub289, sub29, sub290, sub291
@docs sub292, sub293, sub294, sub295, sub296, sub297, sub298, sub299, sub3, sub30, sub300
@docs sub301, sub302, sub303, sub304, sub305, sub306, sub307, sub308, sub309, sub31
@docs sub310, sub311, sub312, sub313, sub314, sub315, sub316, sub317, sub318, sub319
@docs sub32, sub320, sub321, sub322, sub323, sub324, sub325, sub326, sub327, sub328
@docs sub329, sub33, sub330, sub331, sub332, sub333, sub334, sub335, sub336, sub337
@docs sub338, sub339, sub34, sub340, sub341, sub342, sub343, sub344, sub345, sub346
@docs sub347, sub348, sub349, sub35, sub350, sub351, sub352, sub353, sub354, sub355
@docs sub356, sub357, sub358, sub359, sub36, sub360, sub361, sub362, sub363, sub364
@docs sub365, sub366, sub367, sub368, sub369, sub37, sub370, sub371, sub372, sub373
@docs sub374, sub375, sub376, sub377, sub378, sub379, sub38, sub380, sub381, sub382
@docs sub383, sub384, sub385, sub386, sub387, sub388, sub389, sub39, sub390, sub391
@docs sub392, sub393, sub394, sub395, sub396, sub397, sub398, sub399, sub4, sub40, sub400
@docs sub401, sub402, sub403, sub404, sub405, sub406, sub407, sub408, sub409, sub41
@docs sub410, sub411, sub412, sub413, sub414, sub415, sub416, sub417, sub418, sub419
@docs sub42, sub420, sub421, sub422, sub423, sub424, sub425, sub426, sub427, sub428
@docs sub429, sub43, sub430, sub431, sub432, sub433, sub434, sub435, sub436, sub437
@docs sub438, sub439, sub44, sub440, sub441, sub442, sub443, sub444, sub445, sub446
@docs sub447, sub448, sub449, sub45, sub450, sub451, sub452, sub453, sub454, sub455
@docs sub456, sub457, sub458, sub459, sub46, sub460, sub461, sub462, sub463, sub464
@docs sub465, sub466, sub467, sub468, sub469, sub47, sub470, sub471, sub472, sub473
@docs sub474, sub475, sub476, sub477, sub478, sub479, sub48, sub480, sub481, sub482
@docs sub483, sub484, sub485, sub486, sub487, sub488, sub489, sub49, sub490, sub491
@docs sub492, sub493, sub494, sub495, sub496, sub497, sub498, sub499, sub5, sub50, sub500
@docs sub501, sub502, sub503, sub504, sub505, sub506, sub507, sub508, sub509, sub51
@docs sub510, sub511, sub512, sub513, sub514, sub515, sub516, sub517, sub518, sub519
@docs sub52, sub520, sub521, sub522, sub523, sub524, sub525, sub526, sub527, sub528
@docs sub529, sub53, sub530, sub531, sub532, sub533, sub534, sub535, sub536, sub537
@docs sub538, sub539, sub54, sub540, sub541, sub542, sub543, sub544, sub545, sub546
@docs sub547, sub548, sub549, sub55, sub550, sub551, sub552, sub553, sub554, sub555
@docs sub556, sub557, sub558, sub559, sub56, sub560, sub561, sub562, sub563, sub564
@docs sub565, sub566, sub567, sub568, sub569, sub57, sub570, sub571, sub572, sub573
@docs sub574, sub575, sub576, sub577, sub578, sub579, sub58, sub580, sub581, sub582
@docs sub583, sub584, sub585, sub586, sub587, sub588, sub589, sub59, sub590, sub591
@docs sub592, sub593, sub594, sub595, sub596, sub597, sub598, sub599, sub6, sub60, sub600
@docs sub601, sub602, sub603, sub604, sub605, sub606, sub607, sub608, sub609, sub61
@docs sub610, sub611, sub612, sub613, sub614, sub615, sub616, sub617, sub618, sub619
@docs sub62, sub620, sub621, sub622, sub623, sub624, sub625, sub626, sub627, sub628
@docs sub629, sub63, sub630, sub631, sub632, sub633, sub634, sub635, sub636, sub637
@docs sub638, sub639, sub64, sub640, sub641, sub642, sub643, sub644, sub645, sub646
@docs sub647, sub648, sub649, sub65, sub650, sub651, sub652, sub653, sub654, sub655
@docs sub656, sub657, sub658, sub659, sub66, sub660, sub661, sub662, sub663, sub664
@docs sub665, sub666, sub667, sub668, sub669, sub67, sub670, sub671, sub672, sub673
@docs sub674, sub675, sub676, sub677, sub678, sub679, sub68, sub680, sub681, sub682
@docs sub683, sub684, sub685, sub686, sub687, sub688, sub689, sub69, sub690, sub691
@docs sub692, sub693, sub694, sub695, sub696, sub697, sub698, sub699, sub7, sub70, sub700
@docs sub701, sub702, sub703, sub704, sub705, sub706, sub707, sub708, sub709, sub71
@docs sub710, sub711, sub712, sub713, sub714, sub715, sub716, sub717, sub718, sub719
@docs sub72, sub720, sub721, sub722, sub723, sub724, sub725, sub726, sub727, sub728
@docs sub729, sub73, sub730, sub731, sub732, sub733, sub734, sub735, sub736, sub737
@docs sub738, sub739, sub74, sub740, sub741, sub742, sub743, sub744, sub745, sub746
@docs sub747, sub748, sub749, sub75, sub750, sub751, sub752, sub753, sub754, sub755
@docs sub756, sub757, sub758, sub759, sub76, sub760, sub761, sub762, sub763, sub764
@docs sub765, sub766, sub767, sub768, sub769, sub77, sub770, sub771, sub772, sub773
@docs sub774, sub775, sub776, sub777, sub778, sub779, sub78, sub780, sub781, sub782
@docs sub783, sub784, sub785, sub786, sub787, sub788, sub789, sub79, sub790, sub791
@docs sub792, sub793, sub794, sub795, sub796, sub797, sub798, sub799, sub8, sub80, sub800
@docs sub801, sub802, sub803, sub804, sub805, sub806, sub807, sub808, sub809, sub81
@docs sub810, sub811, sub812, sub813, sub814, sub815, sub816, sub817, sub818, sub819
@docs sub82, sub820, sub821, sub822, sub823, sub824, sub825, sub826, sub827, sub828
@docs sub829, sub83, sub830, sub831, sub832, sub833, sub834, sub835, sub836, sub837
@docs sub838, sub839, sub84, sub840, sub841, sub842, sub843, sub844, sub845, sub846
@docs sub847, sub848, sub849, sub85, sub850, sub851, sub852, sub853, sub854, sub855
@docs sub856, sub857, sub858, sub859, sub86, sub860, sub861, sub862, sub863, sub864
@docs sub865, sub866, sub867, sub868, sub869, sub87, sub870, sub871, sub872, sub873
@docs sub874, sub875, sub876, sub877, sub878, sub879, sub88, sub880, sub881, sub882
@docs sub883, sub884, sub885, sub886, sub887, sub888, sub889, sub89, sub890, sub891
@docs sub892, sub893, sub894, sub895, sub896, sub897, sub898, sub899, sub9, sub90, sub900
@docs sub901, sub902, sub903, sub904, sub905, sub906, sub907, sub908, sub909, sub91
@docs sub910, sub911, sub912, sub913, sub914, sub915, sub916, sub917, sub918, sub919
@docs sub92, sub920, sub921, sub922, sub923, sub924, sub925, sub926, sub927, sub928
@docs sub929, sub93, sub930, sub931, sub932, sub933, sub934, sub935, sub936, sub937
@docs sub938, sub939, sub94, sub940, sub941, sub942, sub943, sub944, sub945, sub946
@docs sub947, sub948, sub949, sub95, sub950, sub951, sub952, sub953, sub954, sub955
@docs sub956, sub957, sub958, sub959, sub96, sub960, sub961, sub962, sub963, sub964
@docs sub965, sub966, sub967, sub968, sub969, sub97, sub970, sub971, sub972, sub973
@docs sub974, sub975, sub976, sub977, sub978, sub979, sub98, sub980, sub981, sub982
@docs sub983, sub984, sub985, sub986, sub987, sub988, sub989, sub99, sub990, sub991
@docs sub992, sub993, sub994, sub995, sub996, sub997, sub998, sub999
[elm-n-array]: https://package.elm-lang.org/packages/indique/elm-n-array/latest/


-}

import Internal
import N.Nat.Type exposing (..)
import N.Type exposing (..)


{-| A natural number (`<= 0`), where you know the exact value.


`NNat.n3` is of type


    NNat (N N3Nat Is (Difference a To (N3NatPlus a)))
This means, its exact value can be described as


  - `N3Nat`


  - the `Diffence` of some `a` to `a` plus 3.


-}
type alias NNat n =
    Internal.NNat n


{-| Convert a `NNat` to an `Int`.


    NNat.n4 |> NNat.toInt
    --> 4
-}
toInt : NNat n -> Int
toInt =
    Internal.toInt


{-| The NNat 0.


-}
n0 : NNat (N N0Nat Is (Difference a To a))
n0 =
    Internal.zero


{-| The `NNat` 1.


-}
n1 : NNat (N N1Nat Is (Difference a To (N1NatPlus a)))
n1 =
    n0 |> add1


{-| The `NNat` 2.


-}
n2 : NNat (N N2Nat Is (Difference a To (N2NatPlus a)))
n2 =
    n1 |> add1


{-| The `NNat` 3.


-}
n3 : NNat (N N3Nat Is (Difference a To (N3NatPlus a)))
n3 =
    n2 |> add1


{-| The `NNat` 4.


-}
n4 : NNat (N N4Nat Is (Difference a To (N4NatPlus a)))
n4 =
    n3 |> add1


{-| The `NNat` 5.


-}
n5 : NNat (N N5Nat Is (Difference a To (N5NatPlus a)))
n5 =
    n4 |> add1


{-| The `NNat` 6.


-}
n6 : NNat (N N6Nat Is (Difference a To (N6NatPlus a)))
n6 =
    n5 |> add1


{-| The `NNat` 7.


-}
n7 : NNat (N N7Nat Is (Difference a To (N7NatPlus a)))
n7 =
    n6 |> add1


{-| The `NNat` 8.


-}
n8 : NNat (N N8Nat Is (Difference a To (N8NatPlus a)))
n8 =
    n7 |> add1


{-| The `NNat` 9.


-}
n9 : NNat (N N9Nat Is (Difference a To (N9NatPlus a)))
n9 =
    n8 |> add1


{-| The `NNat` 10.


-}
n10 : NNat (N N10Nat Is (Difference a To (N10NatPlus a)))
n10 =
    n9 |> add1


{-| The `NNat` 11.


-}
n11 : NNat (N N11Nat Is (Difference a To (N11NatPlus a)))
n11 =
    n10 |> add1


{-| The `NNat` 12.


-}
n12 : NNat (N N12Nat Is (Difference a To (N12NatPlus a)))
n12 =
    n11 |> add1


{-| The `NNat` 13.


-}
n13 : NNat (N N13Nat Is (Difference a To (N13NatPlus a)))
n13 =
    n12 |> add1


{-| The `NNat` 14.


-}
n14 : NNat (N N14Nat Is (Difference a To (N14NatPlus a)))
n14 =
    n13 |> add1


{-| The `NNat` 15.


-}
n15 : NNat (N N15Nat Is (Difference a To (N15NatPlus a)))
n15 =
    n14 |> add1


{-| The `NNat` 16.


-}
n16 : NNat (N N16Nat Is (Difference a To (N16NatPlus a)))
n16 =
    n15 |> add1


{-| The `NNat` 17.


-}
n17 : NNat (N N17Nat Is (Difference a To (N17NatPlus a)))
n17 =
    n16 |> add1


{-| The `NNat` 18.


-}
n18 : NNat (N N18Nat Is (Difference a To (N18NatPlus a)))
n18 =
    n17 |> add1


{-| The `NNat` 19.


-}
n19 : NNat (N N19Nat Is (Difference a To (N19NatPlus a)))
n19 =
    n18 |> add1


{-| The `NNat` 20.


-}
n20 : NNat (N N20Nat Is (Difference a To (N20NatPlus a)))
n20 =
    n19 |> add1


{-| The `NNat` 21.


-}
n21 : NNat (N N21Nat Is (Difference a To (N21NatPlus a)))
n21 =
    n20 |> add1


{-| The `NNat` 22.


-}
n22 : NNat (N N22Nat Is (Difference a To (N22NatPlus a)))
n22 =
    n21 |> add1


{-| The `NNat` 23.


-}
n23 : NNat (N N23Nat Is (Difference a To (N23NatPlus a)))
n23 =
    n22 |> add1


{-| The `NNat` 24.


-}
n24 : NNat (N N24Nat Is (Difference a To (N24NatPlus a)))
n24 =
    n23 |> add1


{-| The `NNat` 25.


-}
n25 : NNat (N N25Nat Is (Difference a To (N25NatPlus a)))
n25 =
    n24 |> add1


{-| The `NNat` 26.


-}
n26 : NNat (N N26Nat Is (Difference a To (N26NatPlus a)))
n26 =
    n25 |> add1


{-| The `NNat` 27.


-}
n27 : NNat (N N27Nat Is (Difference a To (N27NatPlus a)))
n27 =
    n26 |> add1


{-| The `NNat` 28.


-}
n28 : NNat (N N28Nat Is (Difference a To (N28NatPlus a)))
n28 =
    n27 |> add1


{-| The `NNat` 29.


-}
n29 : NNat (N N29Nat Is (Difference a To (N29NatPlus a)))
n29 =
    n28 |> add1


{-| The `NNat` 30.


-}
n30 : NNat (N N30Nat Is (Difference a To (N30NatPlus a)))
n30 =
    n29 |> add1


{-| The `NNat` 31.


-}
n31 : NNat (N N31Nat Is (Difference a To (N31NatPlus a)))
n31 =
    n30 |> add1


{-| The `NNat` 32.


-}
n32 : NNat (N N32Nat Is (Difference a To (N32NatPlus a)))
n32 =
    n31 |> add1


{-| The `NNat` 33.


-}
n33 : NNat (N N33Nat Is (Difference a To (N33NatPlus a)))
n33 =
    n32 |> add1


{-| The `NNat` 34.


-}
n34 : NNat (N N34Nat Is (Difference a To (N34NatPlus a)))
n34 =
    n33 |> add1


{-| The `NNat` 35.


-}
n35 : NNat (N N35Nat Is (Difference a To (N35NatPlus a)))
n35 =
    n34 |> add1


{-| The `NNat` 36.


-}
n36 : NNat (N N36Nat Is (Difference a To (N36NatPlus a)))
n36 =
    n35 |> add1


{-| The `NNat` 37.


-}
n37 : NNat (N N37Nat Is (Difference a To (N37NatPlus a)))
n37 =
    n36 |> add1


{-| The `NNat` 38.


-}
n38 : NNat (N N38Nat Is (Difference a To (N38NatPlus a)))
n38 =
    n37 |> add1


{-| The `NNat` 39.


-}
n39 : NNat (N N39Nat Is (Difference a To (N39NatPlus a)))
n39 =
    n38 |> add1


{-| The `NNat` 40.


-}
n40 : NNat (N N40Nat Is (Difference a To (N40NatPlus a)))
n40 =
    n39 |> add1


{-| The `NNat` 41.


-}
n41 : NNat (N N41Nat Is (Difference a To (N41NatPlus a)))
n41 =
    n40 |> add1


{-| The `NNat` 42.


-}
n42 : NNat (N N42Nat Is (Difference a To (N42NatPlus a)))
n42 =
    n41 |> add1


{-| The `NNat` 43.


-}
n43 : NNat (N N43Nat Is (Difference a To (N43NatPlus a)))
n43 =
    n42 |> add1


{-| The `NNat` 44.


-}
n44 : NNat (N N44Nat Is (Difference a To (N44NatPlus a)))
n44 =
    n43 |> add1


{-| The `NNat` 45.


-}
n45 : NNat (N N45Nat Is (Difference a To (N45NatPlus a)))
n45 =
    n44 |> add1


{-| The `NNat` 46.


-}
n46 : NNat (N N46Nat Is (Difference a To (N46NatPlus a)))
n46 =
    n45 |> add1


{-| The `NNat` 47.


-}
n47 : NNat (N N47Nat Is (Difference a To (N47NatPlus a)))
n47 =
    n46 |> add1


{-| The `NNat` 48.


-}
n48 : NNat (N N48Nat Is (Difference a To (N48NatPlus a)))
n48 =
    n47 |> add1


{-| The `NNat` 49.


-}
n49 : NNat (N N49Nat Is (Difference a To (N49NatPlus a)))
n49 =
    n48 |> add1


{-| The `NNat` 50.


-}
n50 : NNat (N N50Nat Is (Difference a To (N50NatPlus a)))
n50 =
    n49 |> add1


{-| The `NNat` 51.


-}
n51 : NNat (N N51Nat Is (Difference a To (N51NatPlus a)))
n51 =
    n50 |> add1


{-| The `NNat` 52.


-}
n52 : NNat (N N52Nat Is (Difference a To (N52NatPlus a)))
n52 =
    n51 |> add1


{-| The `NNat` 53.


-}
n53 : NNat (N N53Nat Is (Difference a To (N53NatPlus a)))
n53 =
    n52 |> add1


{-| The `NNat` 54.


-}
n54 : NNat (N N54Nat Is (Difference a To (N54NatPlus a)))
n54 =
    n53 |> add1


{-| The `NNat` 55.


-}
n55 : NNat (N N55Nat Is (Difference a To (N55NatPlus a)))
n55 =
    n54 |> add1


{-| The `NNat` 56.


-}
n56 : NNat (N N56Nat Is (Difference a To (N56NatPlus a)))
n56 =
    n55 |> add1


{-| The `NNat` 57.


-}
n57 : NNat (N N57Nat Is (Difference a To (N57NatPlus a)))
n57 =
    n56 |> add1


{-| The `NNat` 58.


-}
n58 : NNat (N N58Nat Is (Difference a To (N58NatPlus a)))
n58 =
    n57 |> add1


{-| The `NNat` 59.


-}
n59 : NNat (N N59Nat Is (Difference a To (N59NatPlus a)))
n59 =
    n58 |> add1


{-| The `NNat` 60.


-}
n60 : NNat (N N60Nat Is (Difference a To (N60NatPlus a)))
n60 =
    n59 |> add1


{-| The `NNat` 61.


-}
n61 : NNat (N N61Nat Is (Difference a To (N61NatPlus a)))
n61 =
    n60 |> add1


{-| The `NNat` 62.


-}
n62 : NNat (N N62Nat Is (Difference a To (N62NatPlus a)))
n62 =
    n61 |> add1


{-| The `NNat` 63.


-}
n63 : NNat (N N63Nat Is (Difference a To (N63NatPlus a)))
n63 =
    n62 |> add1


{-| The `NNat` 64.


-}
n64 : NNat (N N64Nat Is (Difference a To (N64NatPlus a)))
n64 =
    n63 |> add1


{-| The `NNat` 65.


-}
n65 : NNat (N N65Nat Is (Difference a To (N65NatPlus a)))
n65 =
    n64 |> add1


{-| The `NNat` 66.


-}
n66 : NNat (N N66Nat Is (Difference a To (N66NatPlus a)))
n66 =
    n65 |> add1


{-| The `NNat` 67.


-}
n67 : NNat (N N67Nat Is (Difference a To (N67NatPlus a)))
n67 =
    n66 |> add1


{-| The `NNat` 68.


-}
n68 : NNat (N N68Nat Is (Difference a To (N68NatPlus a)))
n68 =
    n67 |> add1


{-| The `NNat` 69.


-}
n69 : NNat (N N69Nat Is (Difference a To (N69NatPlus a)))
n69 =
    n68 |> add1


{-| The `NNat` 70.


-}
n70 : NNat (N N70Nat Is (Difference a To (N70NatPlus a)))
n70 =
    n69 |> add1


{-| The `NNat` 71.


-}
n71 : NNat (N N71Nat Is (Difference a To (N71NatPlus a)))
n71 =
    n70 |> add1


{-| The `NNat` 72.


-}
n72 : NNat (N N72Nat Is (Difference a To (N72NatPlus a)))
n72 =
    n71 |> add1


{-| The `NNat` 73.


-}
n73 : NNat (N N73Nat Is (Difference a To (N73NatPlus a)))
n73 =
    n72 |> add1


{-| The `NNat` 74.


-}
n74 : NNat (N N74Nat Is (Difference a To (N74NatPlus a)))
n74 =
    n73 |> add1


{-| The `NNat` 75.


-}
n75 : NNat (N N75Nat Is (Difference a To (N75NatPlus a)))
n75 =
    n74 |> add1


{-| The `NNat` 76.


-}
n76 : NNat (N N76Nat Is (Difference a To (N76NatPlus a)))
n76 =
    n75 |> add1


{-| The `NNat` 77.


-}
n77 : NNat (N N77Nat Is (Difference a To (N77NatPlus a)))
n77 =
    n76 |> add1


{-| The `NNat` 78.


-}
n78 : NNat (N N78Nat Is (Difference a To (N78NatPlus a)))
n78 =
    n77 |> add1


{-| The `NNat` 79.


-}
n79 : NNat (N N79Nat Is (Difference a To (N79NatPlus a)))
n79 =
    n78 |> add1


{-| The `NNat` 80.


-}
n80 : NNat (N N80Nat Is (Difference a To (N80NatPlus a)))
n80 =
    n79 |> add1


{-| The `NNat` 81.


-}
n81 : NNat (N N81Nat Is (Difference a To (N81NatPlus a)))
n81 =
    n80 |> add1


{-| The `NNat` 82.


-}
n82 : NNat (N N82Nat Is (Difference a To (N82NatPlus a)))
n82 =
    n81 |> add1


{-| The `NNat` 83.


-}
n83 : NNat (N N83Nat Is (Difference a To (N83NatPlus a)))
n83 =
    n82 |> add1


{-| The `NNat` 84.


-}
n84 : NNat (N N84Nat Is (Difference a To (N84NatPlus a)))
n84 =
    n83 |> add1


{-| The `NNat` 85.


-}
n85 : NNat (N N85Nat Is (Difference a To (N85NatPlus a)))
n85 =
    n84 |> add1


{-| The `NNat` 86.


-}
n86 : NNat (N N86Nat Is (Difference a To (N86NatPlus a)))
n86 =
    n85 |> add1


{-| The `NNat` 87.


-}
n87 : NNat (N N87Nat Is (Difference a To (N87NatPlus a)))
n87 =
    n86 |> add1


{-| The `NNat` 88.


-}
n88 : NNat (N N88Nat Is (Difference a To (N88NatPlus a)))
n88 =
    n87 |> add1


{-| The `NNat` 89.


-}
n89 : NNat (N N89Nat Is (Difference a To (N89NatPlus a)))
n89 =
    n88 |> add1


{-| The `NNat` 90.


-}
n90 : NNat (N N90Nat Is (Difference a To (N90NatPlus a)))
n90 =
    n89 |> add1


{-| The `NNat` 91.


-}
n91 : NNat (N N91Nat Is (Difference a To (N91NatPlus a)))
n91 =
    n90 |> add1


{-| The `NNat` 92.


-}
n92 : NNat (N N92Nat Is (Difference a To (N92NatPlus a)))
n92 =
    n91 |> add1


{-| The `NNat` 93.


-}
n93 : NNat (N N93Nat Is (Difference a To (N93NatPlus a)))
n93 =
    n92 |> add1


{-| The `NNat` 94.


-}
n94 : NNat (N N94Nat Is (Difference a To (N94NatPlus a)))
n94 =
    n93 |> add1


{-| The `NNat` 95.


-}
n95 : NNat (N N95Nat Is (Difference a To (N95NatPlus a)))
n95 =
    n94 |> add1


{-| The `NNat` 96.


-}
n96 : NNat (N N96Nat Is (Difference a To (N96NatPlus a)))
n96 =
    n95 |> add1


{-| The `NNat` 97.


-}
n97 : NNat (N N97Nat Is (Difference a To (N97NatPlus a)))
n97 =
    n96 |> add1


{-| The `NNat` 98.


-}
n98 : NNat (N N98Nat Is (Difference a To (N98NatPlus a)))
n98 =
    n97 |> add1


{-| The `NNat` 99.


-}
n99 : NNat (N N99Nat Is (Difference a To (N99NatPlus a)))
n99 =
    n98 |> add1


{-| The `NNat` 100.


-}
n100 : NNat (N N100Nat Is (Difference a To (N100NatPlus a)))
n100 =
    n99 |> add1


{-| The `NNat` 101.


-}
n101 : NNat (N N101Nat Is (Difference a To (N101NatPlus a)))
n101 =
    n100 |> add1


{-| The `NNat` 102.


-}
n102 : NNat (N N102Nat Is (Difference a To (N102NatPlus a)))
n102 =
    n101 |> add1


{-| The `NNat` 103.


-}
n103 : NNat (N N103Nat Is (Difference a To (N103NatPlus a)))
n103 =
    n102 |> add1


{-| The `NNat` 104.


-}
n104 : NNat (N N104Nat Is (Difference a To (N104NatPlus a)))
n104 =
    n103 |> add1


{-| The `NNat` 105.


-}
n105 : NNat (N N105Nat Is (Difference a To (N105NatPlus a)))
n105 =
    n104 |> add1


{-| The `NNat` 106.


-}
n106 : NNat (N N106Nat Is (Difference a To (N106NatPlus a)))
n106 =
    n105 |> add1


{-| The `NNat` 107.


-}
n107 : NNat (N N107Nat Is (Difference a To (N107NatPlus a)))
n107 =
    n106 |> add1


{-| The `NNat` 108.


-}
n108 : NNat (N N108Nat Is (Difference a To (N108NatPlus a)))
n108 =
    n107 |> add1


{-| The `NNat` 109.


-}
n109 : NNat (N N109Nat Is (Difference a To (N109NatPlus a)))
n109 =
    n108 |> add1


{-| The `NNat` 110.


-}
n110 : NNat (N N110Nat Is (Difference a To (N110NatPlus a)))
n110 =
    n109 |> add1


{-| The `NNat` 111.


-}
n111 : NNat (N N111Nat Is (Difference a To (N111NatPlus a)))
n111 =
    n110 |> add1


{-| The `NNat` 112.


-}
n112 : NNat (N N112Nat Is (Difference a To (N112NatPlus a)))
n112 =
    n111 |> add1


{-| The `NNat` 113.


-}
n113 : NNat (N N113Nat Is (Difference a To (N113NatPlus a)))
n113 =
    n112 |> add1


{-| The `NNat` 114.


-}
n114 : NNat (N N114Nat Is (Difference a To (N114NatPlus a)))
n114 =
    n113 |> add1


{-| The `NNat` 115.


-}
n115 : NNat (N N115Nat Is (Difference a To (N115NatPlus a)))
n115 =
    n114 |> add1


{-| The `NNat` 116.


-}
n116 : NNat (N N116Nat Is (Difference a To (N116NatPlus a)))
n116 =
    n115 |> add1


{-| The `NNat` 117.


-}
n117 : NNat (N N117Nat Is (Difference a To (N117NatPlus a)))
n117 =
    n116 |> add1


{-| The `NNat` 118.


-}
n118 : NNat (N N118Nat Is (Difference a To (N118NatPlus a)))
n118 =
    n117 |> add1


{-| The `NNat` 119.


-}
n119 : NNat (N N119Nat Is (Difference a To (N119NatPlus a)))
n119 =
    n118 |> add1


{-| The `NNat` 120.


-}
n120 : NNat (N N120Nat Is (Difference a To (N120NatPlus a)))
n120 =
    n119 |> add1


{-| The `NNat` 121.


-}
n121 : NNat (N N121Nat Is (Difference a To (N121NatPlus a)))
n121 =
    n120 |> add1


{-| The `NNat` 122.


-}
n122 : NNat (N N122Nat Is (Difference a To (N122NatPlus a)))
n122 =
    n121 |> add1


{-| The `NNat` 123.


-}
n123 : NNat (N N123Nat Is (Difference a To (N123NatPlus a)))
n123 =
    n122 |> add1


{-| The `NNat` 124.


-}
n124 : NNat (N N124Nat Is (Difference a To (N124NatPlus a)))
n124 =
    n123 |> add1


{-| The `NNat` 125.


-}
n125 : NNat (N N125Nat Is (Difference a To (N125NatPlus a)))
n125 =
    n124 |> add1


{-| The `NNat` 126.


-}
n126 : NNat (N N126Nat Is (Difference a To (N126NatPlus a)))
n126 =
    n125 |> add1


{-| The `NNat` 127.


-}
n127 : NNat (N N127Nat Is (Difference a To (N127NatPlus a)))
n127 =
    n126 |> add1


{-| The `NNat` 128.


-}
n128 : NNat (N N128Nat Is (Difference a To (N128NatPlus a)))
n128 =
    n127 |> add1


{-| The `NNat` 129.


-}
n129 : NNat (N N129Nat Is (Difference a To (N129NatPlus a)))
n129 =
    n128 |> add1


{-| The `NNat` 130.


-}
n130 : NNat (N N130Nat Is (Difference a To (N130NatPlus a)))
n130 =
    n129 |> add1


{-| The `NNat` 131.


-}
n131 : NNat (N N131Nat Is (Difference a To (N131NatPlus a)))
n131 =
    n130 |> add1


{-| The `NNat` 132.


-}
n132 : NNat (N N132Nat Is (Difference a To (N132NatPlus a)))
n132 =
    n131 |> add1


{-| The `NNat` 133.


-}
n133 : NNat (N N133Nat Is (Difference a To (N133NatPlus a)))
n133 =
    n132 |> add1


{-| The `NNat` 134.


-}
n134 : NNat (N N134Nat Is (Difference a To (N134NatPlus a)))
n134 =
    n133 |> add1


{-| The `NNat` 135.


-}
n135 : NNat (N N135Nat Is (Difference a To (N135NatPlus a)))
n135 =
    n134 |> add1


{-| The `NNat` 136.


-}
n136 : NNat (N N136Nat Is (Difference a To (N136NatPlus a)))
n136 =
    n135 |> add1


{-| The `NNat` 137.


-}
n137 : NNat (N N137Nat Is (Difference a To (N137NatPlus a)))
n137 =
    n136 |> add1


{-| The `NNat` 138.


-}
n138 : NNat (N N138Nat Is (Difference a To (N138NatPlus a)))
n138 =
    n137 |> add1


{-| The `NNat` 139.


-}
n139 : NNat (N N139Nat Is (Difference a To (N139NatPlus a)))
n139 =
    n138 |> add1


{-| The `NNat` 140.


-}
n140 : NNat (N N140Nat Is (Difference a To (N140NatPlus a)))
n140 =
    n139 |> add1


{-| The `NNat` 141.


-}
n141 : NNat (N N141Nat Is (Difference a To (N141NatPlus a)))
n141 =
    n140 |> add1


{-| The `NNat` 142.


-}
n142 : NNat (N N142Nat Is (Difference a To (N142NatPlus a)))
n142 =
    n141 |> add1


{-| The `NNat` 143.


-}
n143 : NNat (N N143Nat Is (Difference a To (N143NatPlus a)))
n143 =
    n142 |> add1


{-| The `NNat` 144.


-}
n144 : NNat (N N144Nat Is (Difference a To (N144NatPlus a)))
n144 =
    n143 |> add1


{-| The `NNat` 145.


-}
n145 : NNat (N N145Nat Is (Difference a To (N145NatPlus a)))
n145 =
    n144 |> add1


{-| The `NNat` 146.


-}
n146 : NNat (N N146Nat Is (Difference a To (N146NatPlus a)))
n146 =
    n145 |> add1


{-| The `NNat` 147.


-}
n147 : NNat (N N147Nat Is (Difference a To (N147NatPlus a)))
n147 =
    n146 |> add1


{-| The `NNat` 148.


-}
n148 : NNat (N N148Nat Is (Difference a To (N148NatPlus a)))
n148 =
    n147 |> add1


{-| The `NNat` 149.


-}
n149 : NNat (N N149Nat Is (Difference a To (N149NatPlus a)))
n149 =
    n148 |> add1


{-| The `NNat` 150.


-}
n150 : NNat (N N150Nat Is (Difference a To (N150NatPlus a)))
n150 =
    n149 |> add1


{-| The `NNat` 151.


-}
n151 : NNat (N N151Nat Is (Difference a To (N151NatPlus a)))
n151 =
    n150 |> add1


{-| The `NNat` 152.


-}
n152 : NNat (N N152Nat Is (Difference a To (N152NatPlus a)))
n152 =
    n151 |> add1


{-| The `NNat` 153.


-}
n153 : NNat (N N153Nat Is (Difference a To (N153NatPlus a)))
n153 =
    n152 |> add1


{-| The `NNat` 154.


-}
n154 : NNat (N N154Nat Is (Difference a To (N154NatPlus a)))
n154 =
    n153 |> add1


{-| The `NNat` 155.


-}
n155 : NNat (N N155Nat Is (Difference a To (N155NatPlus a)))
n155 =
    n154 |> add1


{-| The `NNat` 156.


-}
n156 : NNat (N N156Nat Is (Difference a To (N156NatPlus a)))
n156 =
    n155 |> add1


{-| The `NNat` 157.


-}
n157 : NNat (N N157Nat Is (Difference a To (N157NatPlus a)))
n157 =
    n156 |> add1


{-| The `NNat` 158.


-}
n158 : NNat (N N158Nat Is (Difference a To (N158NatPlus a)))
n158 =
    n157 |> add1


{-| The `NNat` 159.


-}
n159 : NNat (N N159Nat Is (Difference a To (N159NatPlus a)))
n159 =
    n158 |> add1


{-| The `NNat` 160.


-}
n160 : NNat (N N160Nat Is (Difference a To (N160NatPlus a)))
n160 =
    n159 |> add1


{-| The `NNat` 161.


-}
n161 : NNat (N N161Nat Is (Difference a To (N161NatPlus a)))
n161 =
    n160 |> add1


{-| The `NNat` 162.


-}
n162 : NNat (N N162Nat Is (Difference a To (N162NatPlus a)))
n162 =
    n161 |> add1


{-| The `NNat` 163.


-}
n163 : NNat (N N163Nat Is (Difference a To (N163NatPlus a)))
n163 =
    n162 |> add1


{-| The `NNat` 164.


-}
n164 : NNat (N N164Nat Is (Difference a To (N164NatPlus a)))
n164 =
    n163 |> add1


{-| The `NNat` 165.


-}
n165 : NNat (N N165Nat Is (Difference a To (N165NatPlus a)))
n165 =
    n164 |> add1


{-| The `NNat` 166.


-}
n166 : NNat (N N166Nat Is (Difference a To (N166NatPlus a)))
n166 =
    n165 |> add1


{-| The `NNat` 167.


-}
n167 : NNat (N N167Nat Is (Difference a To (N167NatPlus a)))
n167 =
    n166 |> add1


{-| The `NNat` 168.


-}
n168 : NNat (N N168Nat Is (Difference a To (N168NatPlus a)))
n168 =
    n167 |> add1


{-| The `NNat` 169.


-}
n169 : NNat (N N169Nat Is (Difference a To (N169NatPlus a)))
n169 =
    n168 |> add1


{-| The `NNat` 170.


-}
n170 : NNat (N N170Nat Is (Difference a To (N170NatPlus a)))
n170 =
    n169 |> add1


{-| The `NNat` 171.


-}
n171 : NNat (N N171Nat Is (Difference a To (N171NatPlus a)))
n171 =
    n170 |> add1


{-| The `NNat` 172.


-}
n172 : NNat (N N172Nat Is (Difference a To (N172NatPlus a)))
n172 =
    n171 |> add1


{-| The `NNat` 173.


-}
n173 : NNat (N N173Nat Is (Difference a To (N173NatPlus a)))
n173 =
    n172 |> add1


{-| The `NNat` 174.


-}
n174 : NNat (N N174Nat Is (Difference a To (N174NatPlus a)))
n174 =
    n173 |> add1


{-| The `NNat` 175.


-}
n175 : NNat (N N175Nat Is (Difference a To (N175NatPlus a)))
n175 =
    n174 |> add1


{-| The `NNat` 176.


-}
n176 : NNat (N N176Nat Is (Difference a To (N176NatPlus a)))
n176 =
    n175 |> add1


{-| The `NNat` 177.


-}
n177 : NNat (N N177Nat Is (Difference a To (N177NatPlus a)))
n177 =
    n176 |> add1


{-| The `NNat` 178.


-}
n178 : NNat (N N178Nat Is (Difference a To (N178NatPlus a)))
n178 =
    n177 |> add1


{-| The `NNat` 179.


-}
n179 : NNat (N N179Nat Is (Difference a To (N179NatPlus a)))
n179 =
    n178 |> add1


{-| The `NNat` 180.


-}
n180 : NNat (N N180Nat Is (Difference a To (N180NatPlus a)))
n180 =
    n179 |> add1


{-| The `NNat` 181.


-}
n181 : NNat (N N181Nat Is (Difference a To (N181NatPlus a)))
n181 =
    n180 |> add1


{-| The `NNat` 182.


-}
n182 : NNat (N N182Nat Is (Difference a To (N182NatPlus a)))
n182 =
    n181 |> add1


{-| The `NNat` 183.


-}
n183 : NNat (N N183Nat Is (Difference a To (N183NatPlus a)))
n183 =
    n182 |> add1


{-| The `NNat` 184.


-}
n184 : NNat (N N184Nat Is (Difference a To (N184NatPlus a)))
n184 =
    n183 |> add1


{-| The `NNat` 185.


-}
n185 : NNat (N N185Nat Is (Difference a To (N185NatPlus a)))
n185 =
    n184 |> add1


{-| The `NNat` 186.


-}
n186 : NNat (N N186Nat Is (Difference a To (N186NatPlus a)))
n186 =
    n185 |> add1


{-| The `NNat` 187.


-}
n187 : NNat (N N187Nat Is (Difference a To (N187NatPlus a)))
n187 =
    n186 |> add1


{-| The `NNat` 188.


-}
n188 : NNat (N N188Nat Is (Difference a To (N188NatPlus a)))
n188 =
    n187 |> add1


{-| The `NNat` 189.


-}
n189 : NNat (N N189Nat Is (Difference a To (N189NatPlus a)))
n189 =
    n188 |> add1


{-| The `NNat` 190.


-}
n190 : NNat (N N190Nat Is (Difference a To (N190NatPlus a)))
n190 =
    n189 |> add1


{-| The `NNat` 191.


-}
n191 : NNat (N N191Nat Is (Difference a To (N191NatPlus a)))
n191 =
    n190 |> add1


{-| The `NNat` 192.


-}
n192 : NNat (N N192Nat Is (Difference a To (N192NatPlus a)))
n192 =
    n191 |> add1


{-| The `NNat` 193.


-}
n193 : NNat (N N193Nat Is (Difference a To (N193NatPlus a)))
n193 =
    n192 |> add1


{-| The `NNat` 194.


-}
n194 : NNat (N N194Nat Is (Difference a To (N194NatPlus a)))
n194 =
    n193 |> add1


{-| The `NNat` 195.


-}
n195 : NNat (N N195Nat Is (Difference a To (N195NatPlus a)))
n195 =
    n194 |> add1


{-| The `NNat` 196.


-}
n196 : NNat (N N196Nat Is (Difference a To (N196NatPlus a)))
n196 =
    n195 |> add1


{-| The `NNat` 197.


-}
n197 : NNat (N N197Nat Is (Difference a To (N197NatPlus a)))
n197 =
    n196 |> add1


{-| The `NNat` 198.


-}
n198 : NNat (N N198Nat Is (Difference a To (N198NatPlus a)))
n198 =
    n197 |> add1


{-| The `NNat` 199.


-}
n199 : NNat (N N199Nat Is (Difference a To (N199NatPlus a)))
n199 =
    n198 |> add1


{-| The `NNat` 200.


-}
n200 : NNat (N N200Nat Is (Difference a To (N200NatPlus a)))
n200 =
    n199 |> add1


{-| The `NNat` 201.


-}
n201 : NNat (N N201Nat Is (Difference a To (N201NatPlus a)))
n201 =
    n200 |> add1


{-| The `NNat` 202.


-}
n202 : NNat (N N202Nat Is (Difference a To (N202NatPlus a)))
n202 =
    n201 |> add1


{-| The `NNat` 203.


-}
n203 : NNat (N N203Nat Is (Difference a To (N203NatPlus a)))
n203 =
    n202 |> add1


{-| The `NNat` 204.


-}
n204 : NNat (N N204Nat Is (Difference a To (N204NatPlus a)))
n204 =
    n203 |> add1


{-| The `NNat` 205.


-}
n205 : NNat (N N205Nat Is (Difference a To (N205NatPlus a)))
n205 =
    n204 |> add1


{-| The `NNat` 206.


-}
n206 : NNat (N N206Nat Is (Difference a To (N206NatPlus a)))
n206 =
    n205 |> add1


{-| The `NNat` 207.


-}
n207 : NNat (N N207Nat Is (Difference a To (N207NatPlus a)))
n207 =
    n206 |> add1


{-| The `NNat` 208.


-}
n208 : NNat (N N208Nat Is (Difference a To (N208NatPlus a)))
n208 =
    n207 |> add1


{-| The `NNat` 209.


-}
n209 : NNat (N N209Nat Is (Difference a To (N209NatPlus a)))
n209 =
    n208 |> add1


{-| The `NNat` 210.


-}
n210 : NNat (N N210Nat Is (Difference a To (N210NatPlus a)))
n210 =
    n209 |> add1


{-| The `NNat` 211.


-}
n211 : NNat (N N211Nat Is (Difference a To (N211NatPlus a)))
n211 =
    n210 |> add1


{-| The `NNat` 212.


-}
n212 : NNat (N N212Nat Is (Difference a To (N212NatPlus a)))
n212 =
    n211 |> add1


{-| The `NNat` 213.


-}
n213 : NNat (N N213Nat Is (Difference a To (N213NatPlus a)))
n213 =
    n212 |> add1


{-| The `NNat` 214.


-}
n214 : NNat (N N214Nat Is (Difference a To (N214NatPlus a)))
n214 =
    n213 |> add1


{-| The `NNat` 215.


-}
n215 : NNat (N N215Nat Is (Difference a To (N215NatPlus a)))
n215 =
    n214 |> add1


{-| The `NNat` 216.


-}
n216 : NNat (N N216Nat Is (Difference a To (N216NatPlus a)))
n216 =
    n215 |> add1


{-| The `NNat` 217.


-}
n217 : NNat (N N217Nat Is (Difference a To (N217NatPlus a)))
n217 =
    n216 |> add1


{-| The `NNat` 218.


-}
n218 : NNat (N N218Nat Is (Difference a To (N218NatPlus a)))
n218 =
    n217 |> add1


{-| The `NNat` 219.


-}
n219 : NNat (N N219Nat Is (Difference a To (N219NatPlus a)))
n219 =
    n218 |> add1


{-| The `NNat` 220.


-}
n220 : NNat (N N220Nat Is (Difference a To (N220NatPlus a)))
n220 =
    n219 |> add1


{-| The `NNat` 221.


-}
n221 : NNat (N N221Nat Is (Difference a To (N221NatPlus a)))
n221 =
    n220 |> add1


{-| The `NNat` 222.


-}
n222 : NNat (N N222Nat Is (Difference a To (N222NatPlus a)))
n222 =
    n221 |> add1


{-| The `NNat` 223.


-}
n223 : NNat (N N223Nat Is (Difference a To (N223NatPlus a)))
n223 =
    n222 |> add1


{-| The `NNat` 224.


-}
n224 : NNat (N N224Nat Is (Difference a To (N224NatPlus a)))
n224 =
    n223 |> add1


{-| The `NNat` 225.


-}
n225 : NNat (N N225Nat Is (Difference a To (N225NatPlus a)))
n225 =
    n224 |> add1


{-| The `NNat` 226.


-}
n226 : NNat (N N226Nat Is (Difference a To (N226NatPlus a)))
n226 =
    n225 |> add1


{-| The `NNat` 227.


-}
n227 : NNat (N N227Nat Is (Difference a To (N227NatPlus a)))
n227 =
    n226 |> add1


{-| The `NNat` 228.


-}
n228 : NNat (N N228Nat Is (Difference a To (N228NatPlus a)))
n228 =
    n227 |> add1


{-| The `NNat` 229.


-}
n229 : NNat (N N229Nat Is (Difference a To (N229NatPlus a)))
n229 =
    n228 |> add1


{-| The `NNat` 230.


-}
n230 : NNat (N N230Nat Is (Difference a To (N230NatPlus a)))
n230 =
    n229 |> add1


{-| The `NNat` 231.


-}
n231 : NNat (N N231Nat Is (Difference a To (N231NatPlus a)))
n231 =
    n230 |> add1


{-| The `NNat` 232.


-}
n232 : NNat (N N232Nat Is (Difference a To (N232NatPlus a)))
n232 =
    n231 |> add1


{-| The `NNat` 233.


-}
n233 : NNat (N N233Nat Is (Difference a To (N233NatPlus a)))
n233 =
    n232 |> add1


{-| The `NNat` 234.


-}
n234 : NNat (N N234Nat Is (Difference a To (N234NatPlus a)))
n234 =
    n233 |> add1


{-| The `NNat` 235.


-}
n235 : NNat (N N235Nat Is (Difference a To (N235NatPlus a)))
n235 =
    n234 |> add1


{-| The `NNat` 236.


-}
n236 : NNat (N N236Nat Is (Difference a To (N236NatPlus a)))
n236 =
    n235 |> add1


{-| The `NNat` 237.


-}
n237 : NNat (N N237Nat Is (Difference a To (N237NatPlus a)))
n237 =
    n236 |> add1


{-| The `NNat` 238.


-}
n238 : NNat (N N238Nat Is (Difference a To (N238NatPlus a)))
n238 =
    n237 |> add1


{-| The `NNat` 239.


-}
n239 : NNat (N N239Nat Is (Difference a To (N239NatPlus a)))
n239 =
    n238 |> add1


{-| The `NNat` 240.


-}
n240 : NNat (N N240Nat Is (Difference a To (N240NatPlus a)))
n240 =
    n239 |> add1


{-| The `NNat` 241.


-}
n241 : NNat (N N241Nat Is (Difference a To (N241NatPlus a)))
n241 =
    n240 |> add1


{-| The `NNat` 242.


-}
n242 : NNat (N N242Nat Is (Difference a To (N242NatPlus a)))
n242 =
    n241 |> add1


{-| The `NNat` 243.


-}
n243 : NNat (N N243Nat Is (Difference a To (N243NatPlus a)))
n243 =
    n242 |> add1


{-| The `NNat` 244.


-}
n244 : NNat (N N244Nat Is (Difference a To (N244NatPlus a)))
n244 =
    n243 |> add1


{-| The `NNat` 245.


-}
n245 : NNat (N N245Nat Is (Difference a To (N245NatPlus a)))
n245 =
    n244 |> add1


{-| The `NNat` 246.


-}
n246 : NNat (N N246Nat Is (Difference a To (N246NatPlus a)))
n246 =
    n245 |> add1


{-| The `NNat` 247.


-}
n247 : NNat (N N247Nat Is (Difference a To (N247NatPlus a)))
n247 =
    n246 |> add1


{-| The `NNat` 248.


-}
n248 : NNat (N N248Nat Is (Difference a To (N248NatPlus a)))
n248 =
    n247 |> add1


{-| The `NNat` 249.


-}
n249 : NNat (N N249Nat Is (Difference a To (N249NatPlus a)))
n249 =
    n248 |> add1


{-| The `NNat` 250.


-}
n250 : NNat (N N250Nat Is (Difference a To (N250NatPlus a)))
n250 =
    n249 |> add1


{-| The `NNat` 251.


-}
n251 : NNat (N N251Nat Is (Difference a To (N251NatPlus a)))
n251 =
    n250 |> add1


{-| The `NNat` 252.


-}
n252 : NNat (N N252Nat Is (Difference a To (N252NatPlus a)))
n252 =
    n251 |> add1


{-| The `NNat` 253.


-}
n253 : NNat (N N253Nat Is (Difference a To (N253NatPlus a)))
n253 =
    n252 |> add1


{-| The `NNat` 254.


-}
n254 : NNat (N N254Nat Is (Difference a To (N254NatPlus a)))
n254 =
    n253 |> add1


{-| The `NNat` 255.


-}
n255 : NNat (N N255Nat Is (Difference a To (N255NatPlus a)))
n255 =
    n254 |> add1


{-| The `NNat` 256.


-}
n256 : NNat (N N256Nat Is (Difference a To (N256NatPlus a)))
n256 =
    n255 |> add1


{-| The `NNat` 257.


-}
n257 : NNat (N N257Nat Is (Difference a To (N257NatPlus a)))
n257 =
    n256 |> add1


{-| The `NNat` 258.


-}
n258 : NNat (N N258Nat Is (Difference a To (N258NatPlus a)))
n258 =
    n257 |> add1


{-| The `NNat` 259.


-}
n259 : NNat (N N259Nat Is (Difference a To (N259NatPlus a)))
n259 =
    n258 |> add1


{-| The `NNat` 260.


-}
n260 : NNat (N N260Nat Is (Difference a To (N260NatPlus a)))
n260 =
    n259 |> add1


{-| The `NNat` 261.


-}
n261 : NNat (N N261Nat Is (Difference a To (N261NatPlus a)))
n261 =
    n260 |> add1


{-| The `NNat` 262.


-}
n262 : NNat (N N262Nat Is (Difference a To (N262NatPlus a)))
n262 =
    n261 |> add1


{-| The `NNat` 263.


-}
n263 : NNat (N N263Nat Is (Difference a To (N263NatPlus a)))
n263 =
    n262 |> add1


{-| The `NNat` 264.


-}
n264 : NNat (N N264Nat Is (Difference a To (N264NatPlus a)))
n264 =
    n263 |> add1


{-| The `NNat` 265.


-}
n265 : NNat (N N265Nat Is (Difference a To (N265NatPlus a)))
n265 =
    n264 |> add1


{-| The `NNat` 266.


-}
n266 : NNat (N N266Nat Is (Difference a To (N266NatPlus a)))
n266 =
    n265 |> add1


{-| The `NNat` 267.


-}
n267 : NNat (N N267Nat Is (Difference a To (N267NatPlus a)))
n267 =
    n266 |> add1


{-| The `NNat` 268.


-}
n268 : NNat (N N268Nat Is (Difference a To (N268NatPlus a)))
n268 =
    n267 |> add1


{-| The `NNat` 269.


-}
n269 : NNat (N N269Nat Is (Difference a To (N269NatPlus a)))
n269 =
    n268 |> add1


{-| The `NNat` 270.


-}
n270 : NNat (N N270Nat Is (Difference a To (N270NatPlus a)))
n270 =
    n269 |> add1


{-| The `NNat` 271.


-}
n271 : NNat (N N271Nat Is (Difference a To (N271NatPlus a)))
n271 =
    n270 |> add1


{-| The `NNat` 272.


-}
n272 : NNat (N N272Nat Is (Difference a To (N272NatPlus a)))
n272 =
    n271 |> add1


{-| The `NNat` 273.


-}
n273 : NNat (N N273Nat Is (Difference a To (N273NatPlus a)))
n273 =
    n272 |> add1


{-| The `NNat` 274.


-}
n274 : NNat (N N274Nat Is (Difference a To (N274NatPlus a)))
n274 =
    n273 |> add1


{-| The `NNat` 275.


-}
n275 : NNat (N N275Nat Is (Difference a To (N275NatPlus a)))
n275 =
    n274 |> add1


{-| The `NNat` 276.


-}
n276 : NNat (N N276Nat Is (Difference a To (N276NatPlus a)))
n276 =
    n275 |> add1


{-| The `NNat` 277.


-}
n277 : NNat (N N277Nat Is (Difference a To (N277NatPlus a)))
n277 =
    n276 |> add1


{-| The `NNat` 278.


-}
n278 : NNat (N N278Nat Is (Difference a To (N278NatPlus a)))
n278 =
    n277 |> add1


{-| The `NNat` 279.


-}
n279 : NNat (N N279Nat Is (Difference a To (N279NatPlus a)))
n279 =
    n278 |> add1


{-| The `NNat` 280.


-}
n280 : NNat (N N280Nat Is (Difference a To (N280NatPlus a)))
n280 =
    n279 |> add1


{-| The `NNat` 281.


-}
n281 : NNat (N N281Nat Is (Difference a To (N281NatPlus a)))
n281 =
    n280 |> add1


{-| The `NNat` 282.


-}
n282 : NNat (N N282Nat Is (Difference a To (N282NatPlus a)))
n282 =
    n281 |> add1


{-| The `NNat` 283.


-}
n283 : NNat (N N283Nat Is (Difference a To (N283NatPlus a)))
n283 =
    n282 |> add1


{-| The `NNat` 284.


-}
n284 : NNat (N N284Nat Is (Difference a To (N284NatPlus a)))
n284 =
    n283 |> add1


{-| The `NNat` 285.


-}
n285 : NNat (N N285Nat Is (Difference a To (N285NatPlus a)))
n285 =
    n284 |> add1


{-| The `NNat` 286.


-}
n286 : NNat (N N286Nat Is (Difference a To (N286NatPlus a)))
n286 =
    n285 |> add1


{-| The `NNat` 287.


-}
n287 : NNat (N N287Nat Is (Difference a To (N287NatPlus a)))
n287 =
    n286 |> add1


{-| The `NNat` 288.


-}
n288 : NNat (N N288Nat Is (Difference a To (N288NatPlus a)))
n288 =
    n287 |> add1


{-| The `NNat` 289.


-}
n289 : NNat (N N289Nat Is (Difference a To (N289NatPlus a)))
n289 =
    n288 |> add1


{-| The `NNat` 290.


-}
n290 : NNat (N N290Nat Is (Difference a To (N290NatPlus a)))
n290 =
    n289 |> add1


{-| The `NNat` 291.


-}
n291 : NNat (N N291Nat Is (Difference a To (N291NatPlus a)))
n291 =
    n290 |> add1


{-| The `NNat` 292.


-}
n292 : NNat (N N292Nat Is (Difference a To (N292NatPlus a)))
n292 =
    n291 |> add1


{-| The `NNat` 293.


-}
n293 : NNat (N N293Nat Is (Difference a To (N293NatPlus a)))
n293 =
    n292 |> add1


{-| The `NNat` 294.


-}
n294 : NNat (N N294Nat Is (Difference a To (N294NatPlus a)))
n294 =
    n293 |> add1


{-| The `NNat` 295.


-}
n295 : NNat (N N295Nat Is (Difference a To (N295NatPlus a)))
n295 =
    n294 |> add1


{-| The `NNat` 296.


-}
n296 : NNat (N N296Nat Is (Difference a To (N296NatPlus a)))
n296 =
    n295 |> add1


{-| The `NNat` 297.


-}
n297 : NNat (N N297Nat Is (Difference a To (N297NatPlus a)))
n297 =
    n296 |> add1


{-| The `NNat` 298.


-}
n298 : NNat (N N298Nat Is (Difference a To (N298NatPlus a)))
n298 =
    n297 |> add1


{-| The `NNat` 299.


-}
n299 : NNat (N N299Nat Is (Difference a To (N299NatPlus a)))
n299 =
    n298 |> add1


{-| The `NNat` 300.


-}
n300 : NNat (N N300Nat Is (Difference a To (N300NatPlus a)))
n300 =
    n299 |> add1


{-| The `NNat` 301.


-}
n301 : NNat (N N301Nat Is (Difference a To (N301NatPlus a)))
n301 =
    n300 |> add1


{-| The `NNat` 302.


-}
n302 : NNat (N N302Nat Is (Difference a To (N302NatPlus a)))
n302 =
    n301 |> add1


{-| The `NNat` 303.


-}
n303 : NNat (N N303Nat Is (Difference a To (N303NatPlus a)))
n303 =
    n302 |> add1


{-| The `NNat` 304.


-}
n304 : NNat (N N304Nat Is (Difference a To (N304NatPlus a)))
n304 =
    n303 |> add1


{-| The `NNat` 305.


-}
n305 : NNat (N N305Nat Is (Difference a To (N305NatPlus a)))
n305 =
    n304 |> add1


{-| The `NNat` 306.


-}
n306 : NNat (N N306Nat Is (Difference a To (N306NatPlus a)))
n306 =
    n305 |> add1


{-| The `NNat` 307.


-}
n307 : NNat (N N307Nat Is (Difference a To (N307NatPlus a)))
n307 =
    n306 |> add1


{-| The `NNat` 308.


-}
n308 : NNat (N N308Nat Is (Difference a To (N308NatPlus a)))
n308 =
    n307 |> add1


{-| The `NNat` 309.


-}
n309 : NNat (N N309Nat Is (Difference a To (N309NatPlus a)))
n309 =
    n308 |> add1


{-| The `NNat` 310.


-}
n310 : NNat (N N310Nat Is (Difference a To (N310NatPlus a)))
n310 =
    n309 |> add1


{-| The `NNat` 311.


-}
n311 : NNat (N N311Nat Is (Difference a To (N311NatPlus a)))
n311 =
    n310 |> add1


{-| The `NNat` 312.


-}
n312 : NNat (N N312Nat Is (Difference a To (N312NatPlus a)))
n312 =
    n311 |> add1


{-| The `NNat` 313.


-}
n313 : NNat (N N313Nat Is (Difference a To (N313NatPlus a)))
n313 =
    n312 |> add1


{-| The `NNat` 314.


-}
n314 : NNat (N N314Nat Is (Difference a To (N314NatPlus a)))
n314 =
    n313 |> add1


{-| The `NNat` 315.


-}
n315 : NNat (N N315Nat Is (Difference a To (N315NatPlus a)))
n315 =
    n314 |> add1


{-| The `NNat` 316.


-}
n316 : NNat (N N316Nat Is (Difference a To (N316NatPlus a)))
n316 =
    n315 |> add1


{-| The `NNat` 317.


-}
n317 : NNat (N N317Nat Is (Difference a To (N317NatPlus a)))
n317 =
    n316 |> add1


{-| The `NNat` 318.


-}
n318 : NNat (N N318Nat Is (Difference a To (N318NatPlus a)))
n318 =
    n317 |> add1


{-| The `NNat` 319.


-}
n319 : NNat (N N319Nat Is (Difference a To (N319NatPlus a)))
n319 =
    n318 |> add1


{-| The `NNat` 320.


-}
n320 : NNat (N N320Nat Is (Difference a To (N320NatPlus a)))
n320 =
    n319 |> add1


{-| The `NNat` 321.


-}
n321 : NNat (N N321Nat Is (Difference a To (N321NatPlus a)))
n321 =
    n320 |> add1


{-| The `NNat` 322.


-}
n322 : NNat (N N322Nat Is (Difference a To (N322NatPlus a)))
n322 =
    n321 |> add1


{-| The `NNat` 323.


-}
n323 : NNat (N N323Nat Is (Difference a To (N323NatPlus a)))
n323 =
    n322 |> add1


{-| The `NNat` 324.


-}
n324 : NNat (N N324Nat Is (Difference a To (N324NatPlus a)))
n324 =
    n323 |> add1


{-| The `NNat` 325.


-}
n325 : NNat (N N325Nat Is (Difference a To (N325NatPlus a)))
n325 =
    n324 |> add1


{-| The `NNat` 326.


-}
n326 : NNat (N N326Nat Is (Difference a To (N326NatPlus a)))
n326 =
    n325 |> add1


{-| The `NNat` 327.


-}
n327 : NNat (N N327Nat Is (Difference a To (N327NatPlus a)))
n327 =
    n326 |> add1


{-| The `NNat` 328.


-}
n328 : NNat (N N328Nat Is (Difference a To (N328NatPlus a)))
n328 =
    n327 |> add1


{-| The `NNat` 329.


-}
n329 : NNat (N N329Nat Is (Difference a To (N329NatPlus a)))
n329 =
    n328 |> add1


{-| The `NNat` 330.


-}
n330 : NNat (N N330Nat Is (Difference a To (N330NatPlus a)))
n330 =
    n329 |> add1


{-| The `NNat` 331.


-}
n331 : NNat (N N331Nat Is (Difference a To (N331NatPlus a)))
n331 =
    n330 |> add1


{-| The `NNat` 332.


-}
n332 : NNat (N N332Nat Is (Difference a To (N332NatPlus a)))
n332 =
    n331 |> add1


{-| The `NNat` 333.


-}
n333 : NNat (N N333Nat Is (Difference a To (N333NatPlus a)))
n333 =
    n332 |> add1


{-| The `NNat` 334.


-}
n334 : NNat (N N334Nat Is (Difference a To (N334NatPlus a)))
n334 =
    n333 |> add1


{-| The `NNat` 335.


-}
n335 : NNat (N N335Nat Is (Difference a To (N335NatPlus a)))
n335 =
    n334 |> add1


{-| The `NNat` 336.


-}
n336 : NNat (N N336Nat Is (Difference a To (N336NatPlus a)))
n336 =
    n335 |> add1


{-| The `NNat` 337.


-}
n337 : NNat (N N337Nat Is (Difference a To (N337NatPlus a)))
n337 =
    n336 |> add1


{-| The `NNat` 338.


-}
n338 : NNat (N N338Nat Is (Difference a To (N338NatPlus a)))
n338 =
    n337 |> add1


{-| The `NNat` 339.


-}
n339 : NNat (N N339Nat Is (Difference a To (N339NatPlus a)))
n339 =
    n338 |> add1


{-| The `NNat` 340.


-}
n340 : NNat (N N340Nat Is (Difference a To (N340NatPlus a)))
n340 =
    n339 |> add1


{-| The `NNat` 341.


-}
n341 : NNat (N N341Nat Is (Difference a To (N341NatPlus a)))
n341 =
    n340 |> add1


{-| The `NNat` 342.


-}
n342 : NNat (N N342Nat Is (Difference a To (N342NatPlus a)))
n342 =
    n341 |> add1


{-| The `NNat` 343.


-}
n343 : NNat (N N343Nat Is (Difference a To (N343NatPlus a)))
n343 =
    n342 |> add1


{-| The `NNat` 344.


-}
n344 : NNat (N N344Nat Is (Difference a To (N344NatPlus a)))
n344 =
    n343 |> add1


{-| The `NNat` 345.


-}
n345 : NNat (N N345Nat Is (Difference a To (N345NatPlus a)))
n345 =
    n344 |> add1


{-| The `NNat` 346.


-}
n346 : NNat (N N346Nat Is (Difference a To (N346NatPlus a)))
n346 =
    n345 |> add1


{-| The `NNat` 347.


-}
n347 : NNat (N N347Nat Is (Difference a To (N347NatPlus a)))
n347 =
    n346 |> add1


{-| The `NNat` 348.


-}
n348 : NNat (N N348Nat Is (Difference a To (N348NatPlus a)))
n348 =
    n347 |> add1


{-| The `NNat` 349.


-}
n349 : NNat (N N349Nat Is (Difference a To (N349NatPlus a)))
n349 =
    n348 |> add1


{-| The `NNat` 350.


-}
n350 : NNat (N N350Nat Is (Difference a To (N350NatPlus a)))
n350 =
    n349 |> add1


{-| The `NNat` 351.


-}
n351 : NNat (N N351Nat Is (Difference a To (N351NatPlus a)))
n351 =
    n350 |> add1


{-| The `NNat` 352.


-}
n352 : NNat (N N352Nat Is (Difference a To (N352NatPlus a)))
n352 =
    n351 |> add1


{-| The `NNat` 353.


-}
n353 : NNat (N N353Nat Is (Difference a To (N353NatPlus a)))
n353 =
    n352 |> add1


{-| The `NNat` 354.


-}
n354 : NNat (N N354Nat Is (Difference a To (N354NatPlus a)))
n354 =
    n353 |> add1


{-| The `NNat` 355.


-}
n355 : NNat (N N355Nat Is (Difference a To (N355NatPlus a)))
n355 =
    n354 |> add1


{-| The `NNat` 356.


-}
n356 : NNat (N N356Nat Is (Difference a To (N356NatPlus a)))
n356 =
    n355 |> add1


{-| The `NNat` 357.


-}
n357 : NNat (N N357Nat Is (Difference a To (N357NatPlus a)))
n357 =
    n356 |> add1


{-| The `NNat` 358.


-}
n358 : NNat (N N358Nat Is (Difference a To (N358NatPlus a)))
n358 =
    n357 |> add1


{-| The `NNat` 359.


-}
n359 : NNat (N N359Nat Is (Difference a To (N359NatPlus a)))
n359 =
    n358 |> add1


{-| The `NNat` 360.


-}
n360 : NNat (N N360Nat Is (Difference a To (N360NatPlus a)))
n360 =
    n359 |> add1


{-| The `NNat` 361.


-}
n361 : NNat (N N361Nat Is (Difference a To (N361NatPlus a)))
n361 =
    n360 |> add1


{-| The `NNat` 362.


-}
n362 : NNat (N N362Nat Is (Difference a To (N362NatPlus a)))
n362 =
    n361 |> add1


{-| The `NNat` 363.


-}
n363 : NNat (N N363Nat Is (Difference a To (N363NatPlus a)))
n363 =
    n362 |> add1


{-| The `NNat` 364.


-}
n364 : NNat (N N364Nat Is (Difference a To (N364NatPlus a)))
n364 =
    n363 |> add1


{-| The `NNat` 365.


-}
n365 : NNat (N N365Nat Is (Difference a To (N365NatPlus a)))
n365 =
    n364 |> add1


{-| The `NNat` 366.


-}
n366 : NNat (N N366Nat Is (Difference a To (N366NatPlus a)))
n366 =
    n365 |> add1


{-| The `NNat` 367.


-}
n367 : NNat (N N367Nat Is (Difference a To (N367NatPlus a)))
n367 =
    n366 |> add1


{-| The `NNat` 368.


-}
n368 : NNat (N N368Nat Is (Difference a To (N368NatPlus a)))
n368 =
    n367 |> add1


{-| The `NNat` 369.


-}
n369 : NNat (N N369Nat Is (Difference a To (N369NatPlus a)))
n369 =
    n368 |> add1


{-| The `NNat` 370.


-}
n370 : NNat (N N370Nat Is (Difference a To (N370NatPlus a)))
n370 =
    n369 |> add1


{-| The `NNat` 371.


-}
n371 : NNat (N N371Nat Is (Difference a To (N371NatPlus a)))
n371 =
    n370 |> add1


{-| The `NNat` 372.


-}
n372 : NNat (N N372Nat Is (Difference a To (N372NatPlus a)))
n372 =
    n371 |> add1


{-| The `NNat` 373.


-}
n373 : NNat (N N373Nat Is (Difference a To (N373NatPlus a)))
n373 =
    n372 |> add1


{-| The `NNat` 374.


-}
n374 : NNat (N N374Nat Is (Difference a To (N374NatPlus a)))
n374 =
    n373 |> add1


{-| The `NNat` 375.


-}
n375 : NNat (N N375Nat Is (Difference a To (N375NatPlus a)))
n375 =
    n374 |> add1


{-| The `NNat` 376.


-}
n376 : NNat (N N376Nat Is (Difference a To (N376NatPlus a)))
n376 =
    n375 |> add1


{-| The `NNat` 377.


-}
n377 : NNat (N N377Nat Is (Difference a To (N377NatPlus a)))
n377 =
    n376 |> add1


{-| The `NNat` 378.


-}
n378 : NNat (N N378Nat Is (Difference a To (N378NatPlus a)))
n378 =
    n377 |> add1


{-| The `NNat` 379.


-}
n379 : NNat (N N379Nat Is (Difference a To (N379NatPlus a)))
n379 =
    n378 |> add1


{-| The `NNat` 380.


-}
n380 : NNat (N N380Nat Is (Difference a To (N380NatPlus a)))
n380 =
    n379 |> add1


{-| The `NNat` 381.


-}
n381 : NNat (N N381Nat Is (Difference a To (N381NatPlus a)))
n381 =
    n380 |> add1


{-| The `NNat` 382.


-}
n382 : NNat (N N382Nat Is (Difference a To (N382NatPlus a)))
n382 =
    n381 |> add1


{-| The `NNat` 383.


-}
n383 : NNat (N N383Nat Is (Difference a To (N383NatPlus a)))
n383 =
    n382 |> add1


{-| The `NNat` 384.


-}
n384 : NNat (N N384Nat Is (Difference a To (N384NatPlus a)))
n384 =
    n383 |> add1


{-| The `NNat` 385.


-}
n385 : NNat (N N385Nat Is (Difference a To (N385NatPlus a)))
n385 =
    n384 |> add1


{-| The `NNat` 386.


-}
n386 : NNat (N N386Nat Is (Difference a To (N386NatPlus a)))
n386 =
    n385 |> add1


{-| The `NNat` 387.


-}
n387 : NNat (N N387Nat Is (Difference a To (N387NatPlus a)))
n387 =
    n386 |> add1


{-| The `NNat` 388.


-}
n388 : NNat (N N388Nat Is (Difference a To (N388NatPlus a)))
n388 =
    n387 |> add1


{-| The `NNat` 389.


-}
n389 : NNat (N N389Nat Is (Difference a To (N389NatPlus a)))
n389 =
    n388 |> add1


{-| The `NNat` 390.


-}
n390 : NNat (N N390Nat Is (Difference a To (N390NatPlus a)))
n390 =
    n389 |> add1


{-| The `NNat` 391.


-}
n391 : NNat (N N391Nat Is (Difference a To (N391NatPlus a)))
n391 =
    n390 |> add1


{-| The `NNat` 392.


-}
n392 : NNat (N N392Nat Is (Difference a To (N392NatPlus a)))
n392 =
    n391 |> add1


{-| The `NNat` 393.


-}
n393 : NNat (N N393Nat Is (Difference a To (N393NatPlus a)))
n393 =
    n392 |> add1


{-| The `NNat` 394.


-}
n394 : NNat (N N394Nat Is (Difference a To (N394NatPlus a)))
n394 =
    n393 |> add1


{-| The `NNat` 395.


-}
n395 : NNat (N N395Nat Is (Difference a To (N395NatPlus a)))
n395 =
    n394 |> add1


{-| The `NNat` 396.


-}
n396 : NNat (N N396Nat Is (Difference a To (N396NatPlus a)))
n396 =
    n395 |> add1


{-| The `NNat` 397.


-}
n397 : NNat (N N397Nat Is (Difference a To (N397NatPlus a)))
n397 =
    n396 |> add1


{-| The `NNat` 398.


-}
n398 : NNat (N N398Nat Is (Difference a To (N398NatPlus a)))
n398 =
    n397 |> add1


{-| The `NNat` 399.


-}
n399 : NNat (N N399Nat Is (Difference a To (N399NatPlus a)))
n399 =
    n398 |> add1


{-| The `NNat` 400.


-}
n400 : NNat (N N400Nat Is (Difference a To (N400NatPlus a)))
n400 =
    n399 |> add1


{-| The `NNat` 401.


-}
n401 : NNat (N N401Nat Is (Difference a To (N401NatPlus a)))
n401 =
    n400 |> add1


{-| The `NNat` 402.


-}
n402 : NNat (N N402Nat Is (Difference a To (N402NatPlus a)))
n402 =
    n401 |> add1


{-| The `NNat` 403.


-}
n403 : NNat (N N403Nat Is (Difference a To (N403NatPlus a)))
n403 =
    n402 |> add1


{-| The `NNat` 404.


-}
n404 : NNat (N N404Nat Is (Difference a To (N404NatPlus a)))
n404 =
    n403 |> add1


{-| The `NNat` 405.


-}
n405 : NNat (N N405Nat Is (Difference a To (N405NatPlus a)))
n405 =
    n404 |> add1


{-| The `NNat` 406.


-}
n406 : NNat (N N406Nat Is (Difference a To (N406NatPlus a)))
n406 =
    n405 |> add1


{-| The `NNat` 407.


-}
n407 : NNat (N N407Nat Is (Difference a To (N407NatPlus a)))
n407 =
    n406 |> add1


{-| The `NNat` 408.


-}
n408 : NNat (N N408Nat Is (Difference a To (N408NatPlus a)))
n408 =
    n407 |> add1


{-| The `NNat` 409.


-}
n409 : NNat (N N409Nat Is (Difference a To (N409NatPlus a)))
n409 =
    n408 |> add1


{-| The `NNat` 410.


-}
n410 : NNat (N N410Nat Is (Difference a To (N410NatPlus a)))
n410 =
    n409 |> add1


{-| The `NNat` 411.


-}
n411 : NNat (N N411Nat Is (Difference a To (N411NatPlus a)))
n411 =
    n410 |> add1


{-| The `NNat` 412.


-}
n412 : NNat (N N412Nat Is (Difference a To (N412NatPlus a)))
n412 =
    n411 |> add1


{-| The `NNat` 413.


-}
n413 : NNat (N N413Nat Is (Difference a To (N413NatPlus a)))
n413 =
    n412 |> add1


{-| The `NNat` 414.


-}
n414 : NNat (N N414Nat Is (Difference a To (N414NatPlus a)))
n414 =
    n413 |> add1


{-| The `NNat` 415.


-}
n415 : NNat (N N415Nat Is (Difference a To (N415NatPlus a)))
n415 =
    n414 |> add1


{-| The `NNat` 416.


-}
n416 : NNat (N N416Nat Is (Difference a To (N416NatPlus a)))
n416 =
    n415 |> add1


{-| The `NNat` 417.


-}
n417 : NNat (N N417Nat Is (Difference a To (N417NatPlus a)))
n417 =
    n416 |> add1


{-| The `NNat` 418.


-}
n418 : NNat (N N418Nat Is (Difference a To (N418NatPlus a)))
n418 =
    n417 |> add1


{-| The `NNat` 419.


-}
n419 : NNat (N N419Nat Is (Difference a To (N419NatPlus a)))
n419 =
    n418 |> add1


{-| The `NNat` 420.


-}
n420 : NNat (N N420Nat Is (Difference a To (N420NatPlus a)))
n420 =
    n419 |> add1


{-| The `NNat` 421.


-}
n421 : NNat (N N421Nat Is (Difference a To (N421NatPlus a)))
n421 =
    n420 |> add1


{-| The `NNat` 422.


-}
n422 : NNat (N N422Nat Is (Difference a To (N422NatPlus a)))
n422 =
    n421 |> add1


{-| The `NNat` 423.


-}
n423 : NNat (N N423Nat Is (Difference a To (N423NatPlus a)))
n423 =
    n422 |> add1


{-| The `NNat` 424.


-}
n424 : NNat (N N424Nat Is (Difference a To (N424NatPlus a)))
n424 =
    n423 |> add1


{-| The `NNat` 425.


-}
n425 : NNat (N N425Nat Is (Difference a To (N425NatPlus a)))
n425 =
    n424 |> add1


{-| The `NNat` 426.


-}
n426 : NNat (N N426Nat Is (Difference a To (N426NatPlus a)))
n426 =
    n425 |> add1


{-| The `NNat` 427.


-}
n427 : NNat (N N427Nat Is (Difference a To (N427NatPlus a)))
n427 =
    n426 |> add1


{-| The `NNat` 428.


-}
n428 : NNat (N N428Nat Is (Difference a To (N428NatPlus a)))
n428 =
    n427 |> add1


{-| The `NNat` 429.


-}
n429 : NNat (N N429Nat Is (Difference a To (N429NatPlus a)))
n429 =
    n428 |> add1


{-| The `NNat` 430.


-}
n430 : NNat (N N430Nat Is (Difference a To (N430NatPlus a)))
n430 =
    n429 |> add1


{-| The `NNat` 431.


-}
n431 : NNat (N N431Nat Is (Difference a To (N431NatPlus a)))
n431 =
    n430 |> add1


{-| The `NNat` 432.


-}
n432 : NNat (N N432Nat Is (Difference a To (N432NatPlus a)))
n432 =
    n431 |> add1


{-| The `NNat` 433.


-}
n433 : NNat (N N433Nat Is (Difference a To (N433NatPlus a)))
n433 =
    n432 |> add1


{-| The `NNat` 434.


-}
n434 : NNat (N N434Nat Is (Difference a To (N434NatPlus a)))
n434 =
    n433 |> add1


{-| The `NNat` 435.


-}
n435 : NNat (N N435Nat Is (Difference a To (N435NatPlus a)))
n435 =
    n434 |> add1


{-| The `NNat` 436.


-}
n436 : NNat (N N436Nat Is (Difference a To (N436NatPlus a)))
n436 =
    n435 |> add1


{-| The `NNat` 437.


-}
n437 : NNat (N N437Nat Is (Difference a To (N437NatPlus a)))
n437 =
    n436 |> add1


{-| The `NNat` 438.


-}
n438 : NNat (N N438Nat Is (Difference a To (N438NatPlus a)))
n438 =
    n437 |> add1


{-| The `NNat` 439.


-}
n439 : NNat (N N439Nat Is (Difference a To (N439NatPlus a)))
n439 =
    n438 |> add1


{-| The `NNat` 440.


-}
n440 : NNat (N N440Nat Is (Difference a To (N440NatPlus a)))
n440 =
    n439 |> add1


{-| The `NNat` 441.


-}
n441 : NNat (N N441Nat Is (Difference a To (N441NatPlus a)))
n441 =
    n440 |> add1


{-| The `NNat` 442.


-}
n442 : NNat (N N442Nat Is (Difference a To (N442NatPlus a)))
n442 =
    n441 |> add1


{-| The `NNat` 443.


-}
n443 : NNat (N N443Nat Is (Difference a To (N443NatPlus a)))
n443 =
    n442 |> add1


{-| The `NNat` 444.


-}
n444 : NNat (N N444Nat Is (Difference a To (N444NatPlus a)))
n444 =
    n443 |> add1


{-| The `NNat` 445.


-}
n445 : NNat (N N445Nat Is (Difference a To (N445NatPlus a)))
n445 =
    n444 |> add1


{-| The `NNat` 446.


-}
n446 : NNat (N N446Nat Is (Difference a To (N446NatPlus a)))
n446 =
    n445 |> add1


{-| The `NNat` 447.


-}
n447 : NNat (N N447Nat Is (Difference a To (N447NatPlus a)))
n447 =
    n446 |> add1


{-| The `NNat` 448.


-}
n448 : NNat (N N448Nat Is (Difference a To (N448NatPlus a)))
n448 =
    n447 |> add1


{-| The `NNat` 449.


-}
n449 : NNat (N N449Nat Is (Difference a To (N449NatPlus a)))
n449 =
    n448 |> add1


{-| The `NNat` 450.


-}
n450 : NNat (N N450Nat Is (Difference a To (N450NatPlus a)))
n450 =
    n449 |> add1


{-| The `NNat` 451.


-}
n451 : NNat (N N451Nat Is (Difference a To (N451NatPlus a)))
n451 =
    n450 |> add1


{-| The `NNat` 452.


-}
n452 : NNat (N N452Nat Is (Difference a To (N452NatPlus a)))
n452 =
    n451 |> add1


{-| The `NNat` 453.


-}
n453 : NNat (N N453Nat Is (Difference a To (N453NatPlus a)))
n453 =
    n452 |> add1


{-| The `NNat` 454.


-}
n454 : NNat (N N454Nat Is (Difference a To (N454NatPlus a)))
n454 =
    n453 |> add1


{-| The `NNat` 455.


-}
n455 : NNat (N N455Nat Is (Difference a To (N455NatPlus a)))
n455 =
    n454 |> add1


{-| The `NNat` 456.


-}
n456 : NNat (N N456Nat Is (Difference a To (N456NatPlus a)))
n456 =
    n455 |> add1


{-| The `NNat` 457.


-}
n457 : NNat (N N457Nat Is (Difference a To (N457NatPlus a)))
n457 =
    n456 |> add1


{-| The `NNat` 458.


-}
n458 : NNat (N N458Nat Is (Difference a To (N458NatPlus a)))
n458 =
    n457 |> add1


{-| The `NNat` 459.


-}
n459 : NNat (N N459Nat Is (Difference a To (N459NatPlus a)))
n459 =
    n458 |> add1


{-| The `NNat` 460.


-}
n460 : NNat (N N460Nat Is (Difference a To (N460NatPlus a)))
n460 =
    n459 |> add1


{-| The `NNat` 461.


-}
n461 : NNat (N N461Nat Is (Difference a To (N461NatPlus a)))
n461 =
    n460 |> add1


{-| The `NNat` 462.


-}
n462 : NNat (N N462Nat Is (Difference a To (N462NatPlus a)))
n462 =
    n461 |> add1


{-| The `NNat` 463.


-}
n463 : NNat (N N463Nat Is (Difference a To (N463NatPlus a)))
n463 =
    n462 |> add1


{-| The `NNat` 464.


-}
n464 : NNat (N N464Nat Is (Difference a To (N464NatPlus a)))
n464 =
    n463 |> add1


{-| The `NNat` 465.


-}
n465 : NNat (N N465Nat Is (Difference a To (N465NatPlus a)))
n465 =
    n464 |> add1


{-| The `NNat` 466.


-}
n466 : NNat (N N466Nat Is (Difference a To (N466NatPlus a)))
n466 =
    n465 |> add1


{-| The `NNat` 467.


-}
n467 : NNat (N N467Nat Is (Difference a To (N467NatPlus a)))
n467 =
    n466 |> add1


{-| The `NNat` 468.


-}
n468 : NNat (N N468Nat Is (Difference a To (N468NatPlus a)))
n468 =
    n467 |> add1


{-| The `NNat` 469.


-}
n469 : NNat (N N469Nat Is (Difference a To (N469NatPlus a)))
n469 =
    n468 |> add1


{-| The `NNat` 470.


-}
n470 : NNat (N N470Nat Is (Difference a To (N470NatPlus a)))
n470 =
    n469 |> add1


{-| The `NNat` 471.


-}
n471 : NNat (N N471Nat Is (Difference a To (N471NatPlus a)))
n471 =
    n470 |> add1


{-| The `NNat` 472.


-}
n472 : NNat (N N472Nat Is (Difference a To (N472NatPlus a)))
n472 =
    n471 |> add1


{-| The `NNat` 473.


-}
n473 : NNat (N N473Nat Is (Difference a To (N473NatPlus a)))
n473 =
    n472 |> add1


{-| The `NNat` 474.


-}
n474 : NNat (N N474Nat Is (Difference a To (N474NatPlus a)))
n474 =
    n473 |> add1


{-| The `NNat` 475.


-}
n475 : NNat (N N475Nat Is (Difference a To (N475NatPlus a)))
n475 =
    n474 |> add1


{-| The `NNat` 476.


-}
n476 : NNat (N N476Nat Is (Difference a To (N476NatPlus a)))
n476 =
    n475 |> add1


{-| The `NNat` 477.


-}
n477 : NNat (N N477Nat Is (Difference a To (N477NatPlus a)))
n477 =
    n476 |> add1


{-| The `NNat` 478.


-}
n478 : NNat (N N478Nat Is (Difference a To (N478NatPlus a)))
n478 =
    n477 |> add1


{-| The `NNat` 479.


-}
n479 : NNat (N N479Nat Is (Difference a To (N479NatPlus a)))
n479 =
    n478 |> add1


{-| The `NNat` 480.


-}
n480 : NNat (N N480Nat Is (Difference a To (N480NatPlus a)))
n480 =
    n479 |> add1


{-| The `NNat` 481.


-}
n481 : NNat (N N481Nat Is (Difference a To (N481NatPlus a)))
n481 =
    n480 |> add1


{-| The `NNat` 482.


-}
n482 : NNat (N N482Nat Is (Difference a To (N482NatPlus a)))
n482 =
    n481 |> add1


{-| The `NNat` 483.


-}
n483 : NNat (N N483Nat Is (Difference a To (N483NatPlus a)))
n483 =
    n482 |> add1


{-| The `NNat` 484.


-}
n484 : NNat (N N484Nat Is (Difference a To (N484NatPlus a)))
n484 =
    n483 |> add1


{-| The `NNat` 485.


-}
n485 : NNat (N N485Nat Is (Difference a To (N485NatPlus a)))
n485 =
    n484 |> add1


{-| The `NNat` 486.


-}
n486 : NNat (N N486Nat Is (Difference a To (N486NatPlus a)))
n486 =
    n485 |> add1


{-| The `NNat` 487.


-}
n487 : NNat (N N487Nat Is (Difference a To (N487NatPlus a)))
n487 =
    n486 |> add1


{-| The `NNat` 488.


-}
n488 : NNat (N N488Nat Is (Difference a To (N488NatPlus a)))
n488 =
    n487 |> add1


{-| The `NNat` 489.


-}
n489 : NNat (N N489Nat Is (Difference a To (N489NatPlus a)))
n489 =
    n488 |> add1


{-| The `NNat` 490.


-}
n490 : NNat (N N490Nat Is (Difference a To (N490NatPlus a)))
n490 =
    n489 |> add1


{-| The `NNat` 491.


-}
n491 : NNat (N N491Nat Is (Difference a To (N491NatPlus a)))
n491 =
    n490 |> add1


{-| The `NNat` 492.


-}
n492 : NNat (N N492Nat Is (Difference a To (N492NatPlus a)))
n492 =
    n491 |> add1


{-| The `NNat` 493.


-}
n493 : NNat (N N493Nat Is (Difference a To (N493NatPlus a)))
n493 =
    n492 |> add1


{-| The `NNat` 494.


-}
n494 : NNat (N N494Nat Is (Difference a To (N494NatPlus a)))
n494 =
    n493 |> add1


{-| The `NNat` 495.


-}
n495 : NNat (N N495Nat Is (Difference a To (N495NatPlus a)))
n495 =
    n494 |> add1


{-| The `NNat` 496.


-}
n496 : NNat (N N496Nat Is (Difference a To (N496NatPlus a)))
n496 =
    n495 |> add1


{-| The `NNat` 497.


-}
n497 : NNat (N N497Nat Is (Difference a To (N497NatPlus a)))
n497 =
    n496 |> add1


{-| The `NNat` 498.


-}
n498 : NNat (N N498Nat Is (Difference a To (N498NatPlus a)))
n498 =
    n497 |> add1


{-| The `NNat` 499.


-}
n499 : NNat (N N499Nat Is (Difference a To (N499NatPlus a)))
n499 =
    n498 |> add1


{-| The `NNat` 500.


-}
n500 : NNat (N N500Nat Is (Difference a To (N500NatPlus a)))
n500 =
    n499 |> add1


{-| The `NNat` 501.


-}
n501 : NNat (N N501Nat Is (Difference a To (N501NatPlus a)))
n501 =
    n500 |> add1


{-| The `NNat` 502.


-}
n502 : NNat (N N502Nat Is (Difference a To (N502NatPlus a)))
n502 =
    n501 |> add1


{-| The `NNat` 503.


-}
n503 : NNat (N N503Nat Is (Difference a To (N503NatPlus a)))
n503 =
    n502 |> add1


{-| The `NNat` 504.


-}
n504 : NNat (N N504Nat Is (Difference a To (N504NatPlus a)))
n504 =
    n503 |> add1


{-| The `NNat` 505.


-}
n505 : NNat (N N505Nat Is (Difference a To (N505NatPlus a)))
n505 =
    n504 |> add1


{-| The `NNat` 506.


-}
n506 : NNat (N N506Nat Is (Difference a To (N506NatPlus a)))
n506 =
    n505 |> add1


{-| The `NNat` 507.


-}
n507 : NNat (N N507Nat Is (Difference a To (N507NatPlus a)))
n507 =
    n506 |> add1


{-| The `NNat` 508.


-}
n508 : NNat (N N508Nat Is (Difference a To (N508NatPlus a)))
n508 =
    n507 |> add1


{-| The `NNat` 509.


-}
n509 : NNat (N N509Nat Is (Difference a To (N509NatPlus a)))
n509 =
    n508 |> add1


{-| The `NNat` 510.


-}
n510 : NNat (N N510Nat Is (Difference a To (N510NatPlus a)))
n510 =
    n509 |> add1


{-| The `NNat` 511.


-}
n511 : NNat (N N511Nat Is (Difference a To (N511NatPlus a)))
n511 =
    n510 |> add1


{-| The `NNat` 512.


-}
n512 : NNat (N N512Nat Is (Difference a To (N512NatPlus a)))
n512 =
    n511 |> add1


{-| The `NNat` 513.


-}
n513 : NNat (N N513Nat Is (Difference a To (N513NatPlus a)))
n513 =
    n512 |> add1


{-| The `NNat` 514.


-}
n514 : NNat (N N514Nat Is (Difference a To (N514NatPlus a)))
n514 =
    n513 |> add1


{-| The `NNat` 515.


-}
n515 : NNat (N N515Nat Is (Difference a To (N515NatPlus a)))
n515 =
    n514 |> add1


{-| The `NNat` 516.


-}
n516 : NNat (N N516Nat Is (Difference a To (N516NatPlus a)))
n516 =
    n515 |> add1


{-| The `NNat` 517.


-}
n517 : NNat (N N517Nat Is (Difference a To (N517NatPlus a)))
n517 =
    n516 |> add1


{-| The `NNat` 518.


-}
n518 : NNat (N N518Nat Is (Difference a To (N518NatPlus a)))
n518 =
    n517 |> add1


{-| The `NNat` 519.


-}
n519 : NNat (N N519Nat Is (Difference a To (N519NatPlus a)))
n519 =
    n518 |> add1


{-| The `NNat` 520.


-}
n520 : NNat (N N520Nat Is (Difference a To (N520NatPlus a)))
n520 =
    n519 |> add1


{-| The `NNat` 521.


-}
n521 : NNat (N N521Nat Is (Difference a To (N521NatPlus a)))
n521 =
    n520 |> add1


{-| The `NNat` 522.


-}
n522 : NNat (N N522Nat Is (Difference a To (N522NatPlus a)))
n522 =
    n521 |> add1


{-| The `NNat` 523.


-}
n523 : NNat (N N523Nat Is (Difference a To (N523NatPlus a)))
n523 =
    n522 |> add1


{-| The `NNat` 524.


-}
n524 : NNat (N N524Nat Is (Difference a To (N524NatPlus a)))
n524 =
    n523 |> add1


{-| The `NNat` 525.


-}
n525 : NNat (N N525Nat Is (Difference a To (N525NatPlus a)))
n525 =
    n524 |> add1


{-| The `NNat` 526.


-}
n526 : NNat (N N526Nat Is (Difference a To (N526NatPlus a)))
n526 =
    n525 |> add1


{-| The `NNat` 527.


-}
n527 : NNat (N N527Nat Is (Difference a To (N527NatPlus a)))
n527 =
    n526 |> add1


{-| The `NNat` 528.


-}
n528 : NNat (N N528Nat Is (Difference a To (N528NatPlus a)))
n528 =
    n527 |> add1


{-| The `NNat` 529.


-}
n529 : NNat (N N529Nat Is (Difference a To (N529NatPlus a)))
n529 =
    n528 |> add1


{-| The `NNat` 530.


-}
n530 : NNat (N N530Nat Is (Difference a To (N530NatPlus a)))
n530 =
    n529 |> add1


{-| The `NNat` 531.


-}
n531 : NNat (N N531Nat Is (Difference a To (N531NatPlus a)))
n531 =
    n530 |> add1


{-| The `NNat` 532.


-}
n532 : NNat (N N532Nat Is (Difference a To (N532NatPlus a)))
n532 =
    n531 |> add1


{-| The `NNat` 533.


-}
n533 : NNat (N N533Nat Is (Difference a To (N533NatPlus a)))
n533 =
    n532 |> add1


{-| The `NNat` 534.


-}
n534 : NNat (N N534Nat Is (Difference a To (N534NatPlus a)))
n534 =
    n533 |> add1


{-| The `NNat` 535.


-}
n535 : NNat (N N535Nat Is (Difference a To (N535NatPlus a)))
n535 =
    n534 |> add1


{-| The `NNat` 536.


-}
n536 : NNat (N N536Nat Is (Difference a To (N536NatPlus a)))
n536 =
    n535 |> add1


{-| The `NNat` 537.


-}
n537 : NNat (N N537Nat Is (Difference a To (N537NatPlus a)))
n537 =
    n536 |> add1


{-| The `NNat` 538.


-}
n538 : NNat (N N538Nat Is (Difference a To (N538NatPlus a)))
n538 =
    n537 |> add1


{-| The `NNat` 539.


-}
n539 : NNat (N N539Nat Is (Difference a To (N539NatPlus a)))
n539 =
    n538 |> add1


{-| The `NNat` 540.


-}
n540 : NNat (N N540Nat Is (Difference a To (N540NatPlus a)))
n540 =
    n539 |> add1


{-| The `NNat` 541.


-}
n541 : NNat (N N541Nat Is (Difference a To (N541NatPlus a)))
n541 =
    n540 |> add1


{-| The `NNat` 542.


-}
n542 : NNat (N N542Nat Is (Difference a To (N542NatPlus a)))
n542 =
    n541 |> add1


{-| The `NNat` 543.


-}
n543 : NNat (N N543Nat Is (Difference a To (N543NatPlus a)))
n543 =
    n542 |> add1


{-| The `NNat` 544.


-}
n544 : NNat (N N544Nat Is (Difference a To (N544NatPlus a)))
n544 =
    n543 |> add1


{-| The `NNat` 545.


-}
n545 : NNat (N N545Nat Is (Difference a To (N545NatPlus a)))
n545 =
    n544 |> add1


{-| The `NNat` 546.


-}
n546 : NNat (N N546Nat Is (Difference a To (N546NatPlus a)))
n546 =
    n545 |> add1


{-| The `NNat` 547.


-}
n547 : NNat (N N547Nat Is (Difference a To (N547NatPlus a)))
n547 =
    n546 |> add1


{-| The `NNat` 548.


-}
n548 : NNat (N N548Nat Is (Difference a To (N548NatPlus a)))
n548 =
    n547 |> add1


{-| The `NNat` 549.


-}
n549 : NNat (N N549Nat Is (Difference a To (N549NatPlus a)))
n549 =
    n548 |> add1


{-| The `NNat` 550.


-}
n550 : NNat (N N550Nat Is (Difference a To (N550NatPlus a)))
n550 =
    n549 |> add1


{-| The `NNat` 551.


-}
n551 : NNat (N N551Nat Is (Difference a To (N551NatPlus a)))
n551 =
    n550 |> add1


{-| The `NNat` 552.


-}
n552 : NNat (N N552Nat Is (Difference a To (N552NatPlus a)))
n552 =
    n551 |> add1


{-| The `NNat` 553.


-}
n553 : NNat (N N553Nat Is (Difference a To (N553NatPlus a)))
n553 =
    n552 |> add1


{-| The `NNat` 554.


-}
n554 : NNat (N N554Nat Is (Difference a To (N554NatPlus a)))
n554 =
    n553 |> add1


{-| The `NNat` 555.


-}
n555 : NNat (N N555Nat Is (Difference a To (N555NatPlus a)))
n555 =
    n554 |> add1


{-| The `NNat` 556.


-}
n556 : NNat (N N556Nat Is (Difference a To (N556NatPlus a)))
n556 =
    n555 |> add1


{-| The `NNat` 557.


-}
n557 : NNat (N N557Nat Is (Difference a To (N557NatPlus a)))
n557 =
    n556 |> add1


{-| The `NNat` 558.


-}
n558 : NNat (N N558Nat Is (Difference a To (N558NatPlus a)))
n558 =
    n557 |> add1


{-| The `NNat` 559.


-}
n559 : NNat (N N559Nat Is (Difference a To (N559NatPlus a)))
n559 =
    n558 |> add1


{-| The `NNat` 560.


-}
n560 : NNat (N N560Nat Is (Difference a To (N560NatPlus a)))
n560 =
    n559 |> add1


{-| The `NNat` 561.


-}
n561 : NNat (N N561Nat Is (Difference a To (N561NatPlus a)))
n561 =
    n560 |> add1


{-| The `NNat` 562.


-}
n562 : NNat (N N562Nat Is (Difference a To (N562NatPlus a)))
n562 =
    n561 |> add1


{-| The `NNat` 563.


-}
n563 : NNat (N N563Nat Is (Difference a To (N563NatPlus a)))
n563 =
    n562 |> add1


{-| The `NNat` 564.


-}
n564 : NNat (N N564Nat Is (Difference a To (N564NatPlus a)))
n564 =
    n563 |> add1


{-| The `NNat` 565.


-}
n565 : NNat (N N565Nat Is (Difference a To (N565NatPlus a)))
n565 =
    n564 |> add1


{-| The `NNat` 566.


-}
n566 : NNat (N N566Nat Is (Difference a To (N566NatPlus a)))
n566 =
    n565 |> add1


{-| The `NNat` 567.


-}
n567 : NNat (N N567Nat Is (Difference a To (N567NatPlus a)))
n567 =
    n566 |> add1


{-| The `NNat` 568.


-}
n568 : NNat (N N568Nat Is (Difference a To (N568NatPlus a)))
n568 =
    n567 |> add1


{-| The `NNat` 569.


-}
n569 : NNat (N N569Nat Is (Difference a To (N569NatPlus a)))
n569 =
    n568 |> add1


{-| The `NNat` 570.


-}
n570 : NNat (N N570Nat Is (Difference a To (N570NatPlus a)))
n570 =
    n569 |> add1


{-| The `NNat` 571.


-}
n571 : NNat (N N571Nat Is (Difference a To (N571NatPlus a)))
n571 =
    n570 |> add1


{-| The `NNat` 572.


-}
n572 : NNat (N N572Nat Is (Difference a To (N572NatPlus a)))
n572 =
    n571 |> add1


{-| The `NNat` 573.


-}
n573 : NNat (N N573Nat Is (Difference a To (N573NatPlus a)))
n573 =
    n572 |> add1


{-| The `NNat` 574.


-}
n574 : NNat (N N574Nat Is (Difference a To (N574NatPlus a)))
n574 =
    n573 |> add1


{-| The `NNat` 575.


-}
n575 : NNat (N N575Nat Is (Difference a To (N575NatPlus a)))
n575 =
    n574 |> add1


{-| The `NNat` 576.


-}
n576 : NNat (N N576Nat Is (Difference a To (N576NatPlus a)))
n576 =
    n575 |> add1


{-| The `NNat` 577.


-}
n577 : NNat (N N577Nat Is (Difference a To (N577NatPlus a)))
n577 =
    n576 |> add1


{-| The `NNat` 578.


-}
n578 : NNat (N N578Nat Is (Difference a To (N578NatPlus a)))
n578 =
    n577 |> add1


{-| The `NNat` 579.


-}
n579 : NNat (N N579Nat Is (Difference a To (N579NatPlus a)))
n579 =
    n578 |> add1


{-| The `NNat` 580.


-}
n580 : NNat (N N580Nat Is (Difference a To (N580NatPlus a)))
n580 =
    n579 |> add1


{-| The `NNat` 581.


-}
n581 : NNat (N N581Nat Is (Difference a To (N581NatPlus a)))
n581 =
    n580 |> add1


{-| The `NNat` 582.


-}
n582 : NNat (N N582Nat Is (Difference a To (N582NatPlus a)))
n582 =
    n581 |> add1


{-| The `NNat` 583.


-}
n583 : NNat (N N583Nat Is (Difference a To (N583NatPlus a)))
n583 =
    n582 |> add1


{-| The `NNat` 584.


-}
n584 : NNat (N N584Nat Is (Difference a To (N584NatPlus a)))
n584 =
    n583 |> add1


{-| The `NNat` 585.


-}
n585 : NNat (N N585Nat Is (Difference a To (N585NatPlus a)))
n585 =
    n584 |> add1


{-| The `NNat` 586.


-}
n586 : NNat (N N586Nat Is (Difference a To (N586NatPlus a)))
n586 =
    n585 |> add1


{-| The `NNat` 587.


-}
n587 : NNat (N N587Nat Is (Difference a To (N587NatPlus a)))
n587 =
    n586 |> add1


{-| The `NNat` 588.


-}
n588 : NNat (N N588Nat Is (Difference a To (N588NatPlus a)))
n588 =
    n587 |> add1


{-| The `NNat` 589.


-}
n589 : NNat (N N589Nat Is (Difference a To (N589NatPlus a)))
n589 =
    n588 |> add1


{-| The `NNat` 590.


-}
n590 : NNat (N N590Nat Is (Difference a To (N590NatPlus a)))
n590 =
    n589 |> add1


{-| The `NNat` 591.


-}
n591 : NNat (N N591Nat Is (Difference a To (N591NatPlus a)))
n591 =
    n590 |> add1


{-| The `NNat` 592.


-}
n592 : NNat (N N592Nat Is (Difference a To (N592NatPlus a)))
n592 =
    n591 |> add1


{-| The `NNat` 593.


-}
n593 : NNat (N N593Nat Is (Difference a To (N593NatPlus a)))
n593 =
    n592 |> add1


{-| The `NNat` 594.


-}
n594 : NNat (N N594Nat Is (Difference a To (N594NatPlus a)))
n594 =
    n593 |> add1


{-| The `NNat` 595.


-}
n595 : NNat (N N595Nat Is (Difference a To (N595NatPlus a)))
n595 =
    n594 |> add1


{-| The `NNat` 596.


-}
n596 : NNat (N N596Nat Is (Difference a To (N596NatPlus a)))
n596 =
    n595 |> add1


{-| The `NNat` 597.


-}
n597 : NNat (N N597Nat Is (Difference a To (N597NatPlus a)))
n597 =
    n596 |> add1


{-| The `NNat` 598.


-}
n598 : NNat (N N598Nat Is (Difference a To (N598NatPlus a)))
n598 =
    n597 |> add1


{-| The `NNat` 599.


-}
n599 : NNat (N N599Nat Is (Difference a To (N599NatPlus a)))
n599 =
    n598 |> add1


{-| The `NNat` 600.


-}
n600 : NNat (N N600Nat Is (Difference a To (N600NatPlus a)))
n600 =
    n599 |> add1


{-| The `NNat` 601.


-}
n601 : NNat (N N601Nat Is (Difference a To (N601NatPlus a)))
n601 =
    n600 |> add1


{-| The `NNat` 602.


-}
n602 : NNat (N N602Nat Is (Difference a To (N602NatPlus a)))
n602 =
    n601 |> add1


{-| The `NNat` 603.


-}
n603 : NNat (N N603Nat Is (Difference a To (N603NatPlus a)))
n603 =
    n602 |> add1


{-| The `NNat` 604.


-}
n604 : NNat (N N604Nat Is (Difference a To (N604NatPlus a)))
n604 =
    n603 |> add1


{-| The `NNat` 605.


-}
n605 : NNat (N N605Nat Is (Difference a To (N605NatPlus a)))
n605 =
    n604 |> add1


{-| The `NNat` 606.


-}
n606 : NNat (N N606Nat Is (Difference a To (N606NatPlus a)))
n606 =
    n605 |> add1


{-| The `NNat` 607.


-}
n607 : NNat (N N607Nat Is (Difference a To (N607NatPlus a)))
n607 =
    n606 |> add1


{-| The `NNat` 608.


-}
n608 : NNat (N N608Nat Is (Difference a To (N608NatPlus a)))
n608 =
    n607 |> add1


{-| The `NNat` 609.


-}
n609 : NNat (N N609Nat Is (Difference a To (N609NatPlus a)))
n609 =
    n608 |> add1


{-| The `NNat` 610.


-}
n610 : NNat (N N610Nat Is (Difference a To (N610NatPlus a)))
n610 =
    n609 |> add1


{-| The `NNat` 611.


-}
n611 : NNat (N N611Nat Is (Difference a To (N611NatPlus a)))
n611 =
    n610 |> add1


{-| The `NNat` 612.


-}
n612 : NNat (N N612Nat Is (Difference a To (N612NatPlus a)))
n612 =
    n611 |> add1


{-| The `NNat` 613.


-}
n613 : NNat (N N613Nat Is (Difference a To (N613NatPlus a)))
n613 =
    n612 |> add1


{-| The `NNat` 614.


-}
n614 : NNat (N N614Nat Is (Difference a To (N614NatPlus a)))
n614 =
    n613 |> add1


{-| The `NNat` 615.


-}
n615 : NNat (N N615Nat Is (Difference a To (N615NatPlus a)))
n615 =
    n614 |> add1


{-| The `NNat` 616.


-}
n616 : NNat (N N616Nat Is (Difference a To (N616NatPlus a)))
n616 =
    n615 |> add1


{-| The `NNat` 617.


-}
n617 : NNat (N N617Nat Is (Difference a To (N617NatPlus a)))
n617 =
    n616 |> add1


{-| The `NNat` 618.


-}
n618 : NNat (N N618Nat Is (Difference a To (N618NatPlus a)))
n618 =
    n617 |> add1


{-| The `NNat` 619.


-}
n619 : NNat (N N619Nat Is (Difference a To (N619NatPlus a)))
n619 =
    n618 |> add1


{-| The `NNat` 620.


-}
n620 : NNat (N N620Nat Is (Difference a To (N620NatPlus a)))
n620 =
    n619 |> add1


{-| The `NNat` 621.


-}
n621 : NNat (N N621Nat Is (Difference a To (N621NatPlus a)))
n621 =
    n620 |> add1


{-| The `NNat` 622.


-}
n622 : NNat (N N622Nat Is (Difference a To (N622NatPlus a)))
n622 =
    n621 |> add1


{-| The `NNat` 623.


-}
n623 : NNat (N N623Nat Is (Difference a To (N623NatPlus a)))
n623 =
    n622 |> add1


{-| The `NNat` 624.


-}
n624 : NNat (N N624Nat Is (Difference a To (N624NatPlus a)))
n624 =
    n623 |> add1


{-| The `NNat` 625.


-}
n625 : NNat (N N625Nat Is (Difference a To (N625NatPlus a)))
n625 =
    n624 |> add1


{-| The `NNat` 626.


-}
n626 : NNat (N N626Nat Is (Difference a To (N626NatPlus a)))
n626 =
    n625 |> add1


{-| The `NNat` 627.


-}
n627 : NNat (N N627Nat Is (Difference a To (N627NatPlus a)))
n627 =
    n626 |> add1


{-| The `NNat` 628.


-}
n628 : NNat (N N628Nat Is (Difference a To (N628NatPlus a)))
n628 =
    n627 |> add1


{-| The `NNat` 629.


-}
n629 : NNat (N N629Nat Is (Difference a To (N629NatPlus a)))
n629 =
    n628 |> add1


{-| The `NNat` 630.


-}
n630 : NNat (N N630Nat Is (Difference a To (N630NatPlus a)))
n630 =
    n629 |> add1


{-| The `NNat` 631.


-}
n631 : NNat (N N631Nat Is (Difference a To (N631NatPlus a)))
n631 =
    n630 |> add1


{-| The `NNat` 632.


-}
n632 : NNat (N N632Nat Is (Difference a To (N632NatPlus a)))
n632 =
    n631 |> add1


{-| The `NNat` 633.


-}
n633 : NNat (N N633Nat Is (Difference a To (N633NatPlus a)))
n633 =
    n632 |> add1


{-| The `NNat` 634.


-}
n634 : NNat (N N634Nat Is (Difference a To (N634NatPlus a)))
n634 =
    n633 |> add1


{-| The `NNat` 635.


-}
n635 : NNat (N N635Nat Is (Difference a To (N635NatPlus a)))
n635 =
    n634 |> add1


{-| The `NNat` 636.


-}
n636 : NNat (N N636Nat Is (Difference a To (N636NatPlus a)))
n636 =
    n635 |> add1


{-| The `NNat` 637.


-}
n637 : NNat (N N637Nat Is (Difference a To (N637NatPlus a)))
n637 =
    n636 |> add1


{-| The `NNat` 638.


-}
n638 : NNat (N N638Nat Is (Difference a To (N638NatPlus a)))
n638 =
    n637 |> add1


{-| The `NNat` 639.


-}
n639 : NNat (N N639Nat Is (Difference a To (N639NatPlus a)))
n639 =
    n638 |> add1


{-| The `NNat` 640.


-}
n640 : NNat (N N640Nat Is (Difference a To (N640NatPlus a)))
n640 =
    n639 |> add1


{-| The `NNat` 641.


-}
n641 : NNat (N N641Nat Is (Difference a To (N641NatPlus a)))
n641 =
    n640 |> add1


{-| The `NNat` 642.


-}
n642 : NNat (N N642Nat Is (Difference a To (N642NatPlus a)))
n642 =
    n641 |> add1


{-| The `NNat` 643.


-}
n643 : NNat (N N643Nat Is (Difference a To (N643NatPlus a)))
n643 =
    n642 |> add1


{-| The `NNat` 644.


-}
n644 : NNat (N N644Nat Is (Difference a To (N644NatPlus a)))
n644 =
    n643 |> add1


{-| The `NNat` 645.


-}
n645 : NNat (N N645Nat Is (Difference a To (N645NatPlus a)))
n645 =
    n644 |> add1


{-| The `NNat` 646.


-}
n646 : NNat (N N646Nat Is (Difference a To (N646NatPlus a)))
n646 =
    n645 |> add1


{-| The `NNat` 647.


-}
n647 : NNat (N N647Nat Is (Difference a To (N647NatPlus a)))
n647 =
    n646 |> add1


{-| The `NNat` 648.


-}
n648 : NNat (N N648Nat Is (Difference a To (N648NatPlus a)))
n648 =
    n647 |> add1


{-| The `NNat` 649.


-}
n649 : NNat (N N649Nat Is (Difference a To (N649NatPlus a)))
n649 =
    n648 |> add1


{-| The `NNat` 650.


-}
n650 : NNat (N N650Nat Is (Difference a To (N650NatPlus a)))
n650 =
    n649 |> add1


{-| The `NNat` 651.


-}
n651 : NNat (N N651Nat Is (Difference a To (N651NatPlus a)))
n651 =
    n650 |> add1


{-| The `NNat` 652.


-}
n652 : NNat (N N652Nat Is (Difference a To (N652NatPlus a)))
n652 =
    n651 |> add1


{-| The `NNat` 653.


-}
n653 : NNat (N N653Nat Is (Difference a To (N653NatPlus a)))
n653 =
    n652 |> add1


{-| The `NNat` 654.


-}
n654 : NNat (N N654Nat Is (Difference a To (N654NatPlus a)))
n654 =
    n653 |> add1


{-| The `NNat` 655.


-}
n655 : NNat (N N655Nat Is (Difference a To (N655NatPlus a)))
n655 =
    n654 |> add1


{-| The `NNat` 656.


-}
n656 : NNat (N N656Nat Is (Difference a To (N656NatPlus a)))
n656 =
    n655 |> add1


{-| The `NNat` 657.


-}
n657 : NNat (N N657Nat Is (Difference a To (N657NatPlus a)))
n657 =
    n656 |> add1


{-| The `NNat` 658.


-}
n658 : NNat (N N658Nat Is (Difference a To (N658NatPlus a)))
n658 =
    n657 |> add1


{-| The `NNat` 659.


-}
n659 : NNat (N N659Nat Is (Difference a To (N659NatPlus a)))
n659 =
    n658 |> add1


{-| The `NNat` 660.


-}
n660 : NNat (N N660Nat Is (Difference a To (N660NatPlus a)))
n660 =
    n659 |> add1


{-| The `NNat` 661.


-}
n661 : NNat (N N661Nat Is (Difference a To (N661NatPlus a)))
n661 =
    n660 |> add1


{-| The `NNat` 662.


-}
n662 : NNat (N N662Nat Is (Difference a To (N662NatPlus a)))
n662 =
    n661 |> add1


{-| The `NNat` 663.


-}
n663 : NNat (N N663Nat Is (Difference a To (N663NatPlus a)))
n663 =
    n662 |> add1


{-| The `NNat` 664.


-}
n664 : NNat (N N664Nat Is (Difference a To (N664NatPlus a)))
n664 =
    n663 |> add1


{-| The `NNat` 665.


-}
n665 : NNat (N N665Nat Is (Difference a To (N665NatPlus a)))
n665 =
    n664 |> add1


{-| The `NNat` 666.


-}
n666 : NNat (N N666Nat Is (Difference a To (N666NatPlus a)))
n666 =
    n665 |> add1


{-| The `NNat` 667.


-}
n667 : NNat (N N667Nat Is (Difference a To (N667NatPlus a)))
n667 =
    n666 |> add1


{-| The `NNat` 668.


-}
n668 : NNat (N N668Nat Is (Difference a To (N668NatPlus a)))
n668 =
    n667 |> add1


{-| The `NNat` 669.


-}
n669 : NNat (N N669Nat Is (Difference a To (N669NatPlus a)))
n669 =
    n668 |> add1


{-| The `NNat` 670.


-}
n670 : NNat (N N670Nat Is (Difference a To (N670NatPlus a)))
n670 =
    n669 |> add1


{-| The `NNat` 671.


-}
n671 : NNat (N N671Nat Is (Difference a To (N671NatPlus a)))
n671 =
    n670 |> add1


{-| The `NNat` 672.


-}
n672 : NNat (N N672Nat Is (Difference a To (N672NatPlus a)))
n672 =
    n671 |> add1


{-| The `NNat` 673.


-}
n673 : NNat (N N673Nat Is (Difference a To (N673NatPlus a)))
n673 =
    n672 |> add1


{-| The `NNat` 674.


-}
n674 : NNat (N N674Nat Is (Difference a To (N674NatPlus a)))
n674 =
    n673 |> add1


{-| The `NNat` 675.


-}
n675 : NNat (N N675Nat Is (Difference a To (N675NatPlus a)))
n675 =
    n674 |> add1


{-| The `NNat` 676.


-}
n676 : NNat (N N676Nat Is (Difference a To (N676NatPlus a)))
n676 =
    n675 |> add1


{-| The `NNat` 677.


-}
n677 : NNat (N N677Nat Is (Difference a To (N677NatPlus a)))
n677 =
    n676 |> add1


{-| The `NNat` 678.


-}
n678 : NNat (N N678Nat Is (Difference a To (N678NatPlus a)))
n678 =
    n677 |> add1


{-| The `NNat` 679.


-}
n679 : NNat (N N679Nat Is (Difference a To (N679NatPlus a)))
n679 =
    n678 |> add1


{-| The `NNat` 680.


-}
n680 : NNat (N N680Nat Is (Difference a To (N680NatPlus a)))
n680 =
    n679 |> add1


{-| The `NNat` 681.


-}
n681 : NNat (N N681Nat Is (Difference a To (N681NatPlus a)))
n681 =
    n680 |> add1


{-| The `NNat` 682.


-}
n682 : NNat (N N682Nat Is (Difference a To (N682NatPlus a)))
n682 =
    n681 |> add1


{-| The `NNat` 683.


-}
n683 : NNat (N N683Nat Is (Difference a To (N683NatPlus a)))
n683 =
    n682 |> add1


{-| The `NNat` 684.


-}
n684 : NNat (N N684Nat Is (Difference a To (N684NatPlus a)))
n684 =
    n683 |> add1


{-| The `NNat` 685.


-}
n685 : NNat (N N685Nat Is (Difference a To (N685NatPlus a)))
n685 =
    n684 |> add1


{-| The `NNat` 686.


-}
n686 : NNat (N N686Nat Is (Difference a To (N686NatPlus a)))
n686 =
    n685 |> add1


{-| The `NNat` 687.


-}
n687 : NNat (N N687Nat Is (Difference a To (N687NatPlus a)))
n687 =
    n686 |> add1


{-| The `NNat` 688.


-}
n688 : NNat (N N688Nat Is (Difference a To (N688NatPlus a)))
n688 =
    n687 |> add1


{-| The `NNat` 689.


-}
n689 : NNat (N N689Nat Is (Difference a To (N689NatPlus a)))
n689 =
    n688 |> add1


{-| The `NNat` 690.


-}
n690 : NNat (N N690Nat Is (Difference a To (N690NatPlus a)))
n690 =
    n689 |> add1


{-| The `NNat` 691.


-}
n691 : NNat (N N691Nat Is (Difference a To (N691NatPlus a)))
n691 =
    n690 |> add1


{-| The `NNat` 692.


-}
n692 : NNat (N N692Nat Is (Difference a To (N692NatPlus a)))
n692 =
    n691 |> add1


{-| The `NNat` 693.


-}
n693 : NNat (N N693Nat Is (Difference a To (N693NatPlus a)))
n693 =
    n692 |> add1


{-| The `NNat` 694.


-}
n694 : NNat (N N694Nat Is (Difference a To (N694NatPlus a)))
n694 =
    n693 |> add1


{-| The `NNat` 695.


-}
n695 : NNat (N N695Nat Is (Difference a To (N695NatPlus a)))
n695 =
    n694 |> add1


{-| The `NNat` 696.


-}
n696 : NNat (N N696Nat Is (Difference a To (N696NatPlus a)))
n696 =
    n695 |> add1


{-| The `NNat` 697.


-}
n697 : NNat (N N697Nat Is (Difference a To (N697NatPlus a)))
n697 =
    n696 |> add1


{-| The `NNat` 698.


-}
n698 : NNat (N N698Nat Is (Difference a To (N698NatPlus a)))
n698 =
    n697 |> add1


{-| The `NNat` 699.


-}
n699 : NNat (N N699Nat Is (Difference a To (N699NatPlus a)))
n699 =
    n698 |> add1


{-| The `NNat` 700.


-}
n700 : NNat (N N700Nat Is (Difference a To (N700NatPlus a)))
n700 =
    n699 |> add1


{-| The `NNat` 701.


-}
n701 : NNat (N N701Nat Is (Difference a To (N701NatPlus a)))
n701 =
    n700 |> add1


{-| The `NNat` 702.


-}
n702 : NNat (N N702Nat Is (Difference a To (N702NatPlus a)))
n702 =
    n701 |> add1


{-| The `NNat` 703.


-}
n703 : NNat (N N703Nat Is (Difference a To (N703NatPlus a)))
n703 =
    n702 |> add1


{-| The `NNat` 704.


-}
n704 : NNat (N N704Nat Is (Difference a To (N704NatPlus a)))
n704 =
    n703 |> add1


{-| The `NNat` 705.


-}
n705 : NNat (N N705Nat Is (Difference a To (N705NatPlus a)))
n705 =
    n704 |> add1


{-| The `NNat` 706.


-}
n706 : NNat (N N706Nat Is (Difference a To (N706NatPlus a)))
n706 =
    n705 |> add1


{-| The `NNat` 707.


-}
n707 : NNat (N N707Nat Is (Difference a To (N707NatPlus a)))
n707 =
    n706 |> add1


{-| The `NNat` 708.


-}
n708 : NNat (N N708Nat Is (Difference a To (N708NatPlus a)))
n708 =
    n707 |> add1


{-| The `NNat` 709.


-}
n709 : NNat (N N709Nat Is (Difference a To (N709NatPlus a)))
n709 =
    n708 |> add1


{-| The `NNat` 710.


-}
n710 : NNat (N N710Nat Is (Difference a To (N710NatPlus a)))
n710 =
    n709 |> add1


{-| The `NNat` 711.


-}
n711 : NNat (N N711Nat Is (Difference a To (N711NatPlus a)))
n711 =
    n710 |> add1


{-| The `NNat` 712.


-}
n712 : NNat (N N712Nat Is (Difference a To (N712NatPlus a)))
n712 =
    n711 |> add1


{-| The `NNat` 713.


-}
n713 : NNat (N N713Nat Is (Difference a To (N713NatPlus a)))
n713 =
    n712 |> add1


{-| The `NNat` 714.


-}
n714 : NNat (N N714Nat Is (Difference a To (N714NatPlus a)))
n714 =
    n713 |> add1


{-| The `NNat` 715.


-}
n715 : NNat (N N715Nat Is (Difference a To (N715NatPlus a)))
n715 =
    n714 |> add1


{-| The `NNat` 716.


-}
n716 : NNat (N N716Nat Is (Difference a To (N716NatPlus a)))
n716 =
    n715 |> add1


{-| The `NNat` 717.


-}
n717 : NNat (N N717Nat Is (Difference a To (N717NatPlus a)))
n717 =
    n716 |> add1


{-| The `NNat` 718.


-}
n718 : NNat (N N718Nat Is (Difference a To (N718NatPlus a)))
n718 =
    n717 |> add1


{-| The `NNat` 719.


-}
n719 : NNat (N N719Nat Is (Difference a To (N719NatPlus a)))
n719 =
    n718 |> add1


{-| The `NNat` 720.


-}
n720 : NNat (N N720Nat Is (Difference a To (N720NatPlus a)))
n720 =
    n719 |> add1


{-| The `NNat` 721.


-}
n721 : NNat (N N721Nat Is (Difference a To (N721NatPlus a)))
n721 =
    n720 |> add1


{-| The `NNat` 722.


-}
n722 : NNat (N N722Nat Is (Difference a To (N722NatPlus a)))
n722 =
    n721 |> add1


{-| The `NNat` 723.


-}
n723 : NNat (N N723Nat Is (Difference a To (N723NatPlus a)))
n723 =
    n722 |> add1


{-| The `NNat` 724.


-}
n724 : NNat (N N724Nat Is (Difference a To (N724NatPlus a)))
n724 =
    n723 |> add1


{-| The `NNat` 725.


-}
n725 : NNat (N N725Nat Is (Difference a To (N725NatPlus a)))
n725 =
    n724 |> add1


{-| The `NNat` 726.


-}
n726 : NNat (N N726Nat Is (Difference a To (N726NatPlus a)))
n726 =
    n725 |> add1


{-| The `NNat` 727.


-}
n727 : NNat (N N727Nat Is (Difference a To (N727NatPlus a)))
n727 =
    n726 |> add1


{-| The `NNat` 728.


-}
n728 : NNat (N N728Nat Is (Difference a To (N728NatPlus a)))
n728 =
    n727 |> add1


{-| The `NNat` 729.


-}
n729 : NNat (N N729Nat Is (Difference a To (N729NatPlus a)))
n729 =
    n728 |> add1


{-| The `NNat` 730.


-}
n730 : NNat (N N730Nat Is (Difference a To (N730NatPlus a)))
n730 =
    n729 |> add1


{-| The `NNat` 731.


-}
n731 : NNat (N N731Nat Is (Difference a To (N731NatPlus a)))
n731 =
    n730 |> add1


{-| The `NNat` 732.


-}
n732 : NNat (N N732Nat Is (Difference a To (N732NatPlus a)))
n732 =
    n731 |> add1


{-| The `NNat` 733.


-}
n733 : NNat (N N733Nat Is (Difference a To (N733NatPlus a)))
n733 =
    n732 |> add1


{-| The `NNat` 734.


-}
n734 : NNat (N N734Nat Is (Difference a To (N734NatPlus a)))
n734 =
    n733 |> add1


{-| The `NNat` 735.


-}
n735 : NNat (N N735Nat Is (Difference a To (N735NatPlus a)))
n735 =
    n734 |> add1


{-| The `NNat` 736.


-}
n736 : NNat (N N736Nat Is (Difference a To (N736NatPlus a)))
n736 =
    n735 |> add1


{-| The `NNat` 737.


-}
n737 : NNat (N N737Nat Is (Difference a To (N737NatPlus a)))
n737 =
    n736 |> add1


{-| The `NNat` 738.


-}
n738 : NNat (N N738Nat Is (Difference a To (N738NatPlus a)))
n738 =
    n737 |> add1


{-| The `NNat` 739.


-}
n739 : NNat (N N739Nat Is (Difference a To (N739NatPlus a)))
n739 =
    n738 |> add1


{-| The `NNat` 740.


-}
n740 : NNat (N N740Nat Is (Difference a To (N740NatPlus a)))
n740 =
    n739 |> add1


{-| The `NNat` 741.


-}
n741 : NNat (N N741Nat Is (Difference a To (N741NatPlus a)))
n741 =
    n740 |> add1


{-| The `NNat` 742.


-}
n742 : NNat (N N742Nat Is (Difference a To (N742NatPlus a)))
n742 =
    n741 |> add1


{-| The `NNat` 743.


-}
n743 : NNat (N N743Nat Is (Difference a To (N743NatPlus a)))
n743 =
    n742 |> add1


{-| The `NNat` 744.


-}
n744 : NNat (N N744Nat Is (Difference a To (N744NatPlus a)))
n744 =
    n743 |> add1


{-| The `NNat` 745.


-}
n745 : NNat (N N745Nat Is (Difference a To (N745NatPlus a)))
n745 =
    n744 |> add1


{-| The `NNat` 746.


-}
n746 : NNat (N N746Nat Is (Difference a To (N746NatPlus a)))
n746 =
    n745 |> add1


{-| The `NNat` 747.


-}
n747 : NNat (N N747Nat Is (Difference a To (N747NatPlus a)))
n747 =
    n746 |> add1


{-| The `NNat` 748.


-}
n748 : NNat (N N748Nat Is (Difference a To (N748NatPlus a)))
n748 =
    n747 |> add1


{-| The `NNat` 749.


-}
n749 : NNat (N N749Nat Is (Difference a To (N749NatPlus a)))
n749 =
    n748 |> add1


{-| The `NNat` 750.


-}
n750 : NNat (N N750Nat Is (Difference a To (N750NatPlus a)))
n750 =
    n749 |> add1


{-| The `NNat` 751.


-}
n751 : NNat (N N751Nat Is (Difference a To (N751NatPlus a)))
n751 =
    n750 |> add1


{-| The `NNat` 752.


-}
n752 : NNat (N N752Nat Is (Difference a To (N752NatPlus a)))
n752 =
    n751 |> add1


{-| The `NNat` 753.


-}
n753 : NNat (N N753Nat Is (Difference a To (N753NatPlus a)))
n753 =
    n752 |> add1


{-| The `NNat` 754.


-}
n754 : NNat (N N754Nat Is (Difference a To (N754NatPlus a)))
n754 =
    n753 |> add1


{-| The `NNat` 755.


-}
n755 : NNat (N N755Nat Is (Difference a To (N755NatPlus a)))
n755 =
    n754 |> add1


{-| The `NNat` 756.


-}
n756 : NNat (N N756Nat Is (Difference a To (N756NatPlus a)))
n756 =
    n755 |> add1


{-| The `NNat` 757.


-}
n757 : NNat (N N757Nat Is (Difference a To (N757NatPlus a)))
n757 =
    n756 |> add1


{-| The `NNat` 758.


-}
n758 : NNat (N N758Nat Is (Difference a To (N758NatPlus a)))
n758 =
    n757 |> add1


{-| The `NNat` 759.


-}
n759 : NNat (N N759Nat Is (Difference a To (N759NatPlus a)))
n759 =
    n758 |> add1


{-| The `NNat` 760.


-}
n760 : NNat (N N760Nat Is (Difference a To (N760NatPlus a)))
n760 =
    n759 |> add1


{-| The `NNat` 761.


-}
n761 : NNat (N N761Nat Is (Difference a To (N761NatPlus a)))
n761 =
    n760 |> add1


{-| The `NNat` 762.


-}
n762 : NNat (N N762Nat Is (Difference a To (N762NatPlus a)))
n762 =
    n761 |> add1


{-| The `NNat` 763.


-}
n763 : NNat (N N763Nat Is (Difference a To (N763NatPlus a)))
n763 =
    n762 |> add1


{-| The `NNat` 764.


-}
n764 : NNat (N N764Nat Is (Difference a To (N764NatPlus a)))
n764 =
    n763 |> add1


{-| The `NNat` 765.


-}
n765 : NNat (N N765Nat Is (Difference a To (N765NatPlus a)))
n765 =
    n764 |> add1


{-| The `NNat` 766.


-}
n766 : NNat (N N766Nat Is (Difference a To (N766NatPlus a)))
n766 =
    n765 |> add1


{-| The `NNat` 767.


-}
n767 : NNat (N N767Nat Is (Difference a To (N767NatPlus a)))
n767 =
    n766 |> add1


{-| The `NNat` 768.


-}
n768 : NNat (N N768Nat Is (Difference a To (N768NatPlus a)))
n768 =
    n767 |> add1


{-| The `NNat` 769.


-}
n769 : NNat (N N769Nat Is (Difference a To (N769NatPlus a)))
n769 =
    n768 |> add1


{-| The `NNat` 770.


-}
n770 : NNat (N N770Nat Is (Difference a To (N770NatPlus a)))
n770 =
    n769 |> add1


{-| The `NNat` 771.


-}
n771 : NNat (N N771Nat Is (Difference a To (N771NatPlus a)))
n771 =
    n770 |> add1


{-| The `NNat` 772.


-}
n772 : NNat (N N772Nat Is (Difference a To (N772NatPlus a)))
n772 =
    n771 |> add1


{-| The `NNat` 773.


-}
n773 : NNat (N N773Nat Is (Difference a To (N773NatPlus a)))
n773 =
    n772 |> add1


{-| The `NNat` 774.


-}
n774 : NNat (N N774Nat Is (Difference a To (N774NatPlus a)))
n774 =
    n773 |> add1


{-| The `NNat` 775.


-}
n775 : NNat (N N775Nat Is (Difference a To (N775NatPlus a)))
n775 =
    n774 |> add1


{-| The `NNat` 776.


-}
n776 : NNat (N N776Nat Is (Difference a To (N776NatPlus a)))
n776 =
    n775 |> add1


{-| The `NNat` 777.


-}
n777 : NNat (N N777Nat Is (Difference a To (N777NatPlus a)))
n777 =
    n776 |> add1


{-| The `NNat` 778.


-}
n778 : NNat (N N778Nat Is (Difference a To (N778NatPlus a)))
n778 =
    n777 |> add1


{-| The `NNat` 779.


-}
n779 : NNat (N N779Nat Is (Difference a To (N779NatPlus a)))
n779 =
    n778 |> add1


{-| The `NNat` 780.


-}
n780 : NNat (N N780Nat Is (Difference a To (N780NatPlus a)))
n780 =
    n779 |> add1


{-| The `NNat` 781.


-}
n781 : NNat (N N781Nat Is (Difference a To (N781NatPlus a)))
n781 =
    n780 |> add1


{-| The `NNat` 782.


-}
n782 : NNat (N N782Nat Is (Difference a To (N782NatPlus a)))
n782 =
    n781 |> add1


{-| The `NNat` 783.


-}
n783 : NNat (N N783Nat Is (Difference a To (N783NatPlus a)))
n783 =
    n782 |> add1


{-| The `NNat` 784.


-}
n784 : NNat (N N784Nat Is (Difference a To (N784NatPlus a)))
n784 =
    n783 |> add1


{-| The `NNat` 785.


-}
n785 : NNat (N N785Nat Is (Difference a To (N785NatPlus a)))
n785 =
    n784 |> add1


{-| The `NNat` 786.


-}
n786 : NNat (N N786Nat Is (Difference a To (N786NatPlus a)))
n786 =
    n785 |> add1


{-| The `NNat` 787.


-}
n787 : NNat (N N787Nat Is (Difference a To (N787NatPlus a)))
n787 =
    n786 |> add1


{-| The `NNat` 788.


-}
n788 : NNat (N N788Nat Is (Difference a To (N788NatPlus a)))
n788 =
    n787 |> add1


{-| The `NNat` 789.


-}
n789 : NNat (N N789Nat Is (Difference a To (N789NatPlus a)))
n789 =
    n788 |> add1


{-| The `NNat` 790.


-}
n790 : NNat (N N790Nat Is (Difference a To (N790NatPlus a)))
n790 =
    n789 |> add1


{-| The `NNat` 791.


-}
n791 : NNat (N N791Nat Is (Difference a To (N791NatPlus a)))
n791 =
    n790 |> add1


{-| The `NNat` 792.


-}
n792 : NNat (N N792Nat Is (Difference a To (N792NatPlus a)))
n792 =
    n791 |> add1


{-| The `NNat` 793.


-}
n793 : NNat (N N793Nat Is (Difference a To (N793NatPlus a)))
n793 =
    n792 |> add1


{-| The `NNat` 794.


-}
n794 : NNat (N N794Nat Is (Difference a To (N794NatPlus a)))
n794 =
    n793 |> add1


{-| The `NNat` 795.


-}
n795 : NNat (N N795Nat Is (Difference a To (N795NatPlus a)))
n795 =
    n794 |> add1


{-| The `NNat` 796.


-}
n796 : NNat (N N796Nat Is (Difference a To (N796NatPlus a)))
n796 =
    n795 |> add1


{-| The `NNat` 797.


-}
n797 : NNat (N N797Nat Is (Difference a To (N797NatPlus a)))
n797 =
    n796 |> add1


{-| The `NNat` 798.


-}
n798 : NNat (N N798Nat Is (Difference a To (N798NatPlus a)))
n798 =
    n797 |> add1


{-| The `NNat` 799.


-}
n799 : NNat (N N799Nat Is (Difference a To (N799NatPlus a)))
n799 =
    n798 |> add1


{-| The `NNat` 800.


-}
n800 : NNat (N N800Nat Is (Difference a To (N800NatPlus a)))
n800 =
    n799 |> add1


{-| The `NNat` 801.


-}
n801 : NNat (N N801Nat Is (Difference a To (N801NatPlus a)))
n801 =
    n800 |> add1


{-| The `NNat` 802.


-}
n802 : NNat (N N802Nat Is (Difference a To (N802NatPlus a)))
n802 =
    n801 |> add1


{-| The `NNat` 803.


-}
n803 : NNat (N N803Nat Is (Difference a To (N803NatPlus a)))
n803 =
    n802 |> add1


{-| The `NNat` 804.


-}
n804 : NNat (N N804Nat Is (Difference a To (N804NatPlus a)))
n804 =
    n803 |> add1


{-| The `NNat` 805.


-}
n805 : NNat (N N805Nat Is (Difference a To (N805NatPlus a)))
n805 =
    n804 |> add1


{-| The `NNat` 806.


-}
n806 : NNat (N N806Nat Is (Difference a To (N806NatPlus a)))
n806 =
    n805 |> add1


{-| The `NNat` 807.


-}
n807 : NNat (N N807Nat Is (Difference a To (N807NatPlus a)))
n807 =
    n806 |> add1


{-| The `NNat` 808.


-}
n808 : NNat (N N808Nat Is (Difference a To (N808NatPlus a)))
n808 =
    n807 |> add1


{-| The `NNat` 809.


-}
n809 : NNat (N N809Nat Is (Difference a To (N809NatPlus a)))
n809 =
    n808 |> add1


{-| The `NNat` 810.


-}
n810 : NNat (N N810Nat Is (Difference a To (N810NatPlus a)))
n810 =
    n809 |> add1


{-| The `NNat` 811.


-}
n811 : NNat (N N811Nat Is (Difference a To (N811NatPlus a)))
n811 =
    n810 |> add1


{-| The `NNat` 812.


-}
n812 : NNat (N N812Nat Is (Difference a To (N812NatPlus a)))
n812 =
    n811 |> add1


{-| The `NNat` 813.


-}
n813 : NNat (N N813Nat Is (Difference a To (N813NatPlus a)))
n813 =
    n812 |> add1


{-| The `NNat` 814.


-}
n814 : NNat (N N814Nat Is (Difference a To (N814NatPlus a)))
n814 =
    n813 |> add1


{-| The `NNat` 815.


-}
n815 : NNat (N N815Nat Is (Difference a To (N815NatPlus a)))
n815 =
    n814 |> add1


{-| The `NNat` 816.


-}
n816 : NNat (N N816Nat Is (Difference a To (N816NatPlus a)))
n816 =
    n815 |> add1


{-| The `NNat` 817.


-}
n817 : NNat (N N817Nat Is (Difference a To (N817NatPlus a)))
n817 =
    n816 |> add1


{-| The `NNat` 818.


-}
n818 : NNat (N N818Nat Is (Difference a To (N818NatPlus a)))
n818 =
    n817 |> add1


{-| The `NNat` 819.


-}
n819 : NNat (N N819Nat Is (Difference a To (N819NatPlus a)))
n819 =
    n818 |> add1


{-| The `NNat` 820.


-}
n820 : NNat (N N820Nat Is (Difference a To (N820NatPlus a)))
n820 =
    n819 |> add1


{-| The `NNat` 821.


-}
n821 : NNat (N N821Nat Is (Difference a To (N821NatPlus a)))
n821 =
    n820 |> add1


{-| The `NNat` 822.


-}
n822 : NNat (N N822Nat Is (Difference a To (N822NatPlus a)))
n822 =
    n821 |> add1


{-| The `NNat` 823.


-}
n823 : NNat (N N823Nat Is (Difference a To (N823NatPlus a)))
n823 =
    n822 |> add1


{-| The `NNat` 824.


-}
n824 : NNat (N N824Nat Is (Difference a To (N824NatPlus a)))
n824 =
    n823 |> add1


{-| The `NNat` 825.


-}
n825 : NNat (N N825Nat Is (Difference a To (N825NatPlus a)))
n825 =
    n824 |> add1


{-| The `NNat` 826.


-}
n826 : NNat (N N826Nat Is (Difference a To (N826NatPlus a)))
n826 =
    n825 |> add1


{-| The `NNat` 827.


-}
n827 : NNat (N N827Nat Is (Difference a To (N827NatPlus a)))
n827 =
    n826 |> add1


{-| The `NNat` 828.


-}
n828 : NNat (N N828Nat Is (Difference a To (N828NatPlus a)))
n828 =
    n827 |> add1


{-| The `NNat` 829.


-}
n829 : NNat (N N829Nat Is (Difference a To (N829NatPlus a)))
n829 =
    n828 |> add1


{-| The `NNat` 830.


-}
n830 : NNat (N N830Nat Is (Difference a To (N830NatPlus a)))
n830 =
    n829 |> add1


{-| The `NNat` 831.


-}
n831 : NNat (N N831Nat Is (Difference a To (N831NatPlus a)))
n831 =
    n830 |> add1


{-| The `NNat` 832.


-}
n832 : NNat (N N832Nat Is (Difference a To (N832NatPlus a)))
n832 =
    n831 |> add1


{-| The `NNat` 833.


-}
n833 : NNat (N N833Nat Is (Difference a To (N833NatPlus a)))
n833 =
    n832 |> add1


{-| The `NNat` 834.


-}
n834 : NNat (N N834Nat Is (Difference a To (N834NatPlus a)))
n834 =
    n833 |> add1


{-| The `NNat` 835.


-}
n835 : NNat (N N835Nat Is (Difference a To (N835NatPlus a)))
n835 =
    n834 |> add1


{-| The `NNat` 836.


-}
n836 : NNat (N N836Nat Is (Difference a To (N836NatPlus a)))
n836 =
    n835 |> add1


{-| The `NNat` 837.


-}
n837 : NNat (N N837Nat Is (Difference a To (N837NatPlus a)))
n837 =
    n836 |> add1


{-| The `NNat` 838.


-}
n838 : NNat (N N838Nat Is (Difference a To (N838NatPlus a)))
n838 =
    n837 |> add1


{-| The `NNat` 839.


-}
n839 : NNat (N N839Nat Is (Difference a To (N839NatPlus a)))
n839 =
    n838 |> add1


{-| The `NNat` 840.


-}
n840 : NNat (N N840Nat Is (Difference a To (N840NatPlus a)))
n840 =
    n839 |> add1


{-| The `NNat` 841.


-}
n841 : NNat (N N841Nat Is (Difference a To (N841NatPlus a)))
n841 =
    n840 |> add1


{-| The `NNat` 842.


-}
n842 : NNat (N N842Nat Is (Difference a To (N842NatPlus a)))
n842 =
    n841 |> add1


{-| The `NNat` 843.


-}
n843 : NNat (N N843Nat Is (Difference a To (N843NatPlus a)))
n843 =
    n842 |> add1


{-| The `NNat` 844.


-}
n844 : NNat (N N844Nat Is (Difference a To (N844NatPlus a)))
n844 =
    n843 |> add1


{-| The `NNat` 845.


-}
n845 : NNat (N N845Nat Is (Difference a To (N845NatPlus a)))
n845 =
    n844 |> add1


{-| The `NNat` 846.


-}
n846 : NNat (N N846Nat Is (Difference a To (N846NatPlus a)))
n846 =
    n845 |> add1


{-| The `NNat` 847.


-}
n847 : NNat (N N847Nat Is (Difference a To (N847NatPlus a)))
n847 =
    n846 |> add1


{-| The `NNat` 848.


-}
n848 : NNat (N N848Nat Is (Difference a To (N848NatPlus a)))
n848 =
    n847 |> add1


{-| The `NNat` 849.


-}
n849 : NNat (N N849Nat Is (Difference a To (N849NatPlus a)))
n849 =
    n848 |> add1


{-| The `NNat` 850.


-}
n850 : NNat (N N850Nat Is (Difference a To (N850NatPlus a)))
n850 =
    n849 |> add1


{-| The `NNat` 851.


-}
n851 : NNat (N N851Nat Is (Difference a To (N851NatPlus a)))
n851 =
    n850 |> add1


{-| The `NNat` 852.


-}
n852 : NNat (N N852Nat Is (Difference a To (N852NatPlus a)))
n852 =
    n851 |> add1


{-| The `NNat` 853.


-}
n853 : NNat (N N853Nat Is (Difference a To (N853NatPlus a)))
n853 =
    n852 |> add1


{-| The `NNat` 854.


-}
n854 : NNat (N N854Nat Is (Difference a To (N854NatPlus a)))
n854 =
    n853 |> add1


{-| The `NNat` 855.


-}
n855 : NNat (N N855Nat Is (Difference a To (N855NatPlus a)))
n855 =
    n854 |> add1


{-| The `NNat` 856.


-}
n856 : NNat (N N856Nat Is (Difference a To (N856NatPlus a)))
n856 =
    n855 |> add1


{-| The `NNat` 857.


-}
n857 : NNat (N N857Nat Is (Difference a To (N857NatPlus a)))
n857 =
    n856 |> add1


{-| The `NNat` 858.


-}
n858 : NNat (N N858Nat Is (Difference a To (N858NatPlus a)))
n858 =
    n857 |> add1


{-| The `NNat` 859.


-}
n859 : NNat (N N859Nat Is (Difference a To (N859NatPlus a)))
n859 =
    n858 |> add1


{-| The `NNat` 860.


-}
n860 : NNat (N N860Nat Is (Difference a To (N860NatPlus a)))
n860 =
    n859 |> add1


{-| The `NNat` 861.


-}
n861 : NNat (N N861Nat Is (Difference a To (N861NatPlus a)))
n861 =
    n860 |> add1


{-| The `NNat` 862.


-}
n862 : NNat (N N862Nat Is (Difference a To (N862NatPlus a)))
n862 =
    n861 |> add1


{-| The `NNat` 863.


-}
n863 : NNat (N N863Nat Is (Difference a To (N863NatPlus a)))
n863 =
    n862 |> add1


{-| The `NNat` 864.


-}
n864 : NNat (N N864Nat Is (Difference a To (N864NatPlus a)))
n864 =
    n863 |> add1


{-| The `NNat` 865.


-}
n865 : NNat (N N865Nat Is (Difference a To (N865NatPlus a)))
n865 =
    n864 |> add1


{-| The `NNat` 866.


-}
n866 : NNat (N N866Nat Is (Difference a To (N866NatPlus a)))
n866 =
    n865 |> add1


{-| The `NNat` 867.


-}
n867 : NNat (N N867Nat Is (Difference a To (N867NatPlus a)))
n867 =
    n866 |> add1


{-| The `NNat` 868.


-}
n868 : NNat (N N868Nat Is (Difference a To (N868NatPlus a)))
n868 =
    n867 |> add1


{-| The `NNat` 869.


-}
n869 : NNat (N N869Nat Is (Difference a To (N869NatPlus a)))
n869 =
    n868 |> add1


{-| The `NNat` 870.


-}
n870 : NNat (N N870Nat Is (Difference a To (N870NatPlus a)))
n870 =
    n869 |> add1


{-| The `NNat` 871.


-}
n871 : NNat (N N871Nat Is (Difference a To (N871NatPlus a)))
n871 =
    n870 |> add1


{-| The `NNat` 872.


-}
n872 : NNat (N N872Nat Is (Difference a To (N872NatPlus a)))
n872 =
    n871 |> add1


{-| The `NNat` 873.


-}
n873 : NNat (N N873Nat Is (Difference a To (N873NatPlus a)))
n873 =
    n872 |> add1


{-| The `NNat` 874.


-}
n874 : NNat (N N874Nat Is (Difference a To (N874NatPlus a)))
n874 =
    n873 |> add1


{-| The `NNat` 875.


-}
n875 : NNat (N N875Nat Is (Difference a To (N875NatPlus a)))
n875 =
    n874 |> add1


{-| The `NNat` 876.


-}
n876 : NNat (N N876Nat Is (Difference a To (N876NatPlus a)))
n876 =
    n875 |> add1


{-| The `NNat` 877.


-}
n877 : NNat (N N877Nat Is (Difference a To (N877NatPlus a)))
n877 =
    n876 |> add1


{-| The `NNat` 878.


-}
n878 : NNat (N N878Nat Is (Difference a To (N878NatPlus a)))
n878 =
    n877 |> add1


{-| The `NNat` 879.


-}
n879 : NNat (N N879Nat Is (Difference a To (N879NatPlus a)))
n879 =
    n878 |> add1


{-| The `NNat` 880.


-}
n880 : NNat (N N880Nat Is (Difference a To (N880NatPlus a)))
n880 =
    n879 |> add1


{-| The `NNat` 881.


-}
n881 : NNat (N N881Nat Is (Difference a To (N881NatPlus a)))
n881 =
    n880 |> add1


{-| The `NNat` 882.


-}
n882 : NNat (N N882Nat Is (Difference a To (N882NatPlus a)))
n882 =
    n881 |> add1


{-| The `NNat` 883.


-}
n883 : NNat (N N883Nat Is (Difference a To (N883NatPlus a)))
n883 =
    n882 |> add1


{-| The `NNat` 884.


-}
n884 : NNat (N N884Nat Is (Difference a To (N884NatPlus a)))
n884 =
    n883 |> add1


{-| The `NNat` 885.


-}
n885 : NNat (N N885Nat Is (Difference a To (N885NatPlus a)))
n885 =
    n884 |> add1


{-| The `NNat` 886.


-}
n886 : NNat (N N886Nat Is (Difference a To (N886NatPlus a)))
n886 =
    n885 |> add1


{-| The `NNat` 887.


-}
n887 : NNat (N N887Nat Is (Difference a To (N887NatPlus a)))
n887 =
    n886 |> add1


{-| The `NNat` 888.


-}
n888 : NNat (N N888Nat Is (Difference a To (N888NatPlus a)))
n888 =
    n887 |> add1


{-| The `NNat` 889.


-}
n889 : NNat (N N889Nat Is (Difference a To (N889NatPlus a)))
n889 =
    n888 |> add1


{-| The `NNat` 890.


-}
n890 : NNat (N N890Nat Is (Difference a To (N890NatPlus a)))
n890 =
    n889 |> add1


{-| The `NNat` 891.


-}
n891 : NNat (N N891Nat Is (Difference a To (N891NatPlus a)))
n891 =
    n890 |> add1


{-| The `NNat` 892.


-}
n892 : NNat (N N892Nat Is (Difference a To (N892NatPlus a)))
n892 =
    n891 |> add1


{-| The `NNat` 893.


-}
n893 : NNat (N N893Nat Is (Difference a To (N893NatPlus a)))
n893 =
    n892 |> add1


{-| The `NNat` 894.


-}
n894 : NNat (N N894Nat Is (Difference a To (N894NatPlus a)))
n894 =
    n893 |> add1


{-| The `NNat` 895.


-}
n895 : NNat (N N895Nat Is (Difference a To (N895NatPlus a)))
n895 =
    n894 |> add1


{-| The `NNat` 896.


-}
n896 : NNat (N N896Nat Is (Difference a To (N896NatPlus a)))
n896 =
    n895 |> add1


{-| The `NNat` 897.


-}
n897 : NNat (N N897Nat Is (Difference a To (N897NatPlus a)))
n897 =
    n896 |> add1


{-| The `NNat` 898.


-}
n898 : NNat (N N898Nat Is (Difference a To (N898NatPlus a)))
n898 =
    n897 |> add1


{-| The `NNat` 899.


-}
n899 : NNat (N N899Nat Is (Difference a To (N899NatPlus a)))
n899 =
    n898 |> add1


{-| The `NNat` 900.


-}
n900 : NNat (N N900Nat Is (Difference a To (N900NatPlus a)))
n900 =
    n899 |> add1


{-| The `NNat` 901.


-}
n901 : NNat (N N901Nat Is (Difference a To (N901NatPlus a)))
n901 =
    n900 |> add1


{-| The `NNat` 902.


-}
n902 : NNat (N N902Nat Is (Difference a To (N902NatPlus a)))
n902 =
    n901 |> add1


{-| The `NNat` 903.


-}
n903 : NNat (N N903Nat Is (Difference a To (N903NatPlus a)))
n903 =
    n902 |> add1


{-| The `NNat` 904.


-}
n904 : NNat (N N904Nat Is (Difference a To (N904NatPlus a)))
n904 =
    n903 |> add1


{-| The `NNat` 905.


-}
n905 : NNat (N N905Nat Is (Difference a To (N905NatPlus a)))
n905 =
    n904 |> add1


{-| The `NNat` 906.


-}
n906 : NNat (N N906Nat Is (Difference a To (N906NatPlus a)))
n906 =
    n905 |> add1


{-| The `NNat` 907.


-}
n907 : NNat (N N907Nat Is (Difference a To (N907NatPlus a)))
n907 =
    n906 |> add1


{-| The `NNat` 908.


-}
n908 : NNat (N N908Nat Is (Difference a To (N908NatPlus a)))
n908 =
    n907 |> add1


{-| The `NNat` 909.


-}
n909 : NNat (N N909Nat Is (Difference a To (N909NatPlus a)))
n909 =
    n908 |> add1


{-| The `NNat` 910.


-}
n910 : NNat (N N910Nat Is (Difference a To (N910NatPlus a)))
n910 =
    n909 |> add1


{-| The `NNat` 911.


-}
n911 : NNat (N N911Nat Is (Difference a To (N911NatPlus a)))
n911 =
    n910 |> add1


{-| The `NNat` 912.


-}
n912 : NNat (N N912Nat Is (Difference a To (N912NatPlus a)))
n912 =
    n911 |> add1


{-| The `NNat` 913.


-}
n913 : NNat (N N913Nat Is (Difference a To (N913NatPlus a)))
n913 =
    n912 |> add1


{-| The `NNat` 914.


-}
n914 : NNat (N N914Nat Is (Difference a To (N914NatPlus a)))
n914 =
    n913 |> add1


{-| The `NNat` 915.


-}
n915 : NNat (N N915Nat Is (Difference a To (N915NatPlus a)))
n915 =
    n914 |> add1


{-| The `NNat` 916.


-}
n916 : NNat (N N916Nat Is (Difference a To (N916NatPlus a)))
n916 =
    n915 |> add1


{-| The `NNat` 917.


-}
n917 : NNat (N N917Nat Is (Difference a To (N917NatPlus a)))
n917 =
    n916 |> add1


{-| The `NNat` 918.


-}
n918 : NNat (N N918Nat Is (Difference a To (N918NatPlus a)))
n918 =
    n917 |> add1


{-| The `NNat` 919.


-}
n919 : NNat (N N919Nat Is (Difference a To (N919NatPlus a)))
n919 =
    n918 |> add1


{-| The `NNat` 920.


-}
n920 : NNat (N N920Nat Is (Difference a To (N920NatPlus a)))
n920 =
    n919 |> add1


{-| The `NNat` 921.


-}
n921 : NNat (N N921Nat Is (Difference a To (N921NatPlus a)))
n921 =
    n920 |> add1


{-| The `NNat` 922.


-}
n922 : NNat (N N922Nat Is (Difference a To (N922NatPlus a)))
n922 =
    n921 |> add1


{-| The `NNat` 923.


-}
n923 : NNat (N N923Nat Is (Difference a To (N923NatPlus a)))
n923 =
    n922 |> add1


{-| The `NNat` 924.


-}
n924 : NNat (N N924Nat Is (Difference a To (N924NatPlus a)))
n924 =
    n923 |> add1


{-| The `NNat` 925.


-}
n925 : NNat (N N925Nat Is (Difference a To (N925NatPlus a)))
n925 =
    n924 |> add1


{-| The `NNat` 926.


-}
n926 : NNat (N N926Nat Is (Difference a To (N926NatPlus a)))
n926 =
    n925 |> add1


{-| The `NNat` 927.


-}
n927 : NNat (N N927Nat Is (Difference a To (N927NatPlus a)))
n927 =
    n926 |> add1


{-| The `NNat` 928.


-}
n928 : NNat (N N928Nat Is (Difference a To (N928NatPlus a)))
n928 =
    n927 |> add1


{-| The `NNat` 929.


-}
n929 : NNat (N N929Nat Is (Difference a To (N929NatPlus a)))
n929 =
    n928 |> add1


{-| The `NNat` 930.


-}
n930 : NNat (N N930Nat Is (Difference a To (N930NatPlus a)))
n930 =
    n929 |> add1


{-| The `NNat` 931.


-}
n931 : NNat (N N931Nat Is (Difference a To (N931NatPlus a)))
n931 =
    n930 |> add1


{-| The `NNat` 932.


-}
n932 : NNat (N N932Nat Is (Difference a To (N932NatPlus a)))
n932 =
    n931 |> add1


{-| The `NNat` 933.


-}
n933 : NNat (N N933Nat Is (Difference a To (N933NatPlus a)))
n933 =
    n932 |> add1


{-| The `NNat` 934.


-}
n934 : NNat (N N934Nat Is (Difference a To (N934NatPlus a)))
n934 =
    n933 |> add1


{-| The `NNat` 935.


-}
n935 : NNat (N N935Nat Is (Difference a To (N935NatPlus a)))
n935 =
    n934 |> add1


{-| The `NNat` 936.


-}
n936 : NNat (N N936Nat Is (Difference a To (N936NatPlus a)))
n936 =
    n935 |> add1


{-| The `NNat` 937.


-}
n937 : NNat (N N937Nat Is (Difference a To (N937NatPlus a)))
n937 =
    n936 |> add1


{-| The `NNat` 938.


-}
n938 : NNat (N N938Nat Is (Difference a To (N938NatPlus a)))
n938 =
    n937 |> add1


{-| The `NNat` 939.


-}
n939 : NNat (N N939Nat Is (Difference a To (N939NatPlus a)))
n939 =
    n938 |> add1


{-| The `NNat` 940.


-}
n940 : NNat (N N940Nat Is (Difference a To (N940NatPlus a)))
n940 =
    n939 |> add1


{-| The `NNat` 941.


-}
n941 : NNat (N N941Nat Is (Difference a To (N941NatPlus a)))
n941 =
    n940 |> add1


{-| The `NNat` 942.


-}
n942 : NNat (N N942Nat Is (Difference a To (N942NatPlus a)))
n942 =
    n941 |> add1


{-| The `NNat` 943.


-}
n943 : NNat (N N943Nat Is (Difference a To (N943NatPlus a)))
n943 =
    n942 |> add1


{-| The `NNat` 944.


-}
n944 : NNat (N N944Nat Is (Difference a To (N944NatPlus a)))
n944 =
    n943 |> add1


{-| The `NNat` 945.


-}
n945 : NNat (N N945Nat Is (Difference a To (N945NatPlus a)))
n945 =
    n944 |> add1


{-| The `NNat` 946.


-}
n946 : NNat (N N946Nat Is (Difference a To (N946NatPlus a)))
n946 =
    n945 |> add1


{-| The `NNat` 947.


-}
n947 : NNat (N N947Nat Is (Difference a To (N947NatPlus a)))
n947 =
    n946 |> add1


{-| The `NNat` 948.


-}
n948 : NNat (N N948Nat Is (Difference a To (N948NatPlus a)))
n948 =
    n947 |> add1


{-| The `NNat` 949.


-}
n949 : NNat (N N949Nat Is (Difference a To (N949NatPlus a)))
n949 =
    n948 |> add1


{-| The `NNat` 950.


-}
n950 : NNat (N N950Nat Is (Difference a To (N950NatPlus a)))
n950 =
    n949 |> add1


{-| The `NNat` 951.


-}
n951 : NNat (N N951Nat Is (Difference a To (N951NatPlus a)))
n951 =
    n950 |> add1


{-| The `NNat` 952.


-}
n952 : NNat (N N952Nat Is (Difference a To (N952NatPlus a)))
n952 =
    n951 |> add1


{-| The `NNat` 953.


-}
n953 : NNat (N N953Nat Is (Difference a To (N953NatPlus a)))
n953 =
    n952 |> add1


{-| The `NNat` 954.


-}
n954 : NNat (N N954Nat Is (Difference a To (N954NatPlus a)))
n954 =
    n953 |> add1


{-| The `NNat` 955.


-}
n955 : NNat (N N955Nat Is (Difference a To (N955NatPlus a)))
n955 =
    n954 |> add1


{-| The `NNat` 956.


-}
n956 : NNat (N N956Nat Is (Difference a To (N956NatPlus a)))
n956 =
    n955 |> add1


{-| The `NNat` 957.


-}
n957 : NNat (N N957Nat Is (Difference a To (N957NatPlus a)))
n957 =
    n956 |> add1


{-| The `NNat` 958.


-}
n958 : NNat (N N958Nat Is (Difference a To (N958NatPlus a)))
n958 =
    n957 |> add1


{-| The `NNat` 959.


-}
n959 : NNat (N N959Nat Is (Difference a To (N959NatPlus a)))
n959 =
    n958 |> add1


{-| The `NNat` 960.


-}
n960 : NNat (N N960Nat Is (Difference a To (N960NatPlus a)))
n960 =
    n959 |> add1


{-| The `NNat` 961.


-}
n961 : NNat (N N961Nat Is (Difference a To (N961NatPlus a)))
n961 =
    n960 |> add1


{-| The `NNat` 962.


-}
n962 : NNat (N N962Nat Is (Difference a To (N962NatPlus a)))
n962 =
    n961 |> add1


{-| The `NNat` 963.


-}
n963 : NNat (N N963Nat Is (Difference a To (N963NatPlus a)))
n963 =
    n962 |> add1


{-| The `NNat` 964.


-}
n964 : NNat (N N964Nat Is (Difference a To (N964NatPlus a)))
n964 =
    n963 |> add1


{-| The `NNat` 965.


-}
n965 : NNat (N N965Nat Is (Difference a To (N965NatPlus a)))
n965 =
    n964 |> add1


{-| The `NNat` 966.


-}
n966 : NNat (N N966Nat Is (Difference a To (N966NatPlus a)))
n966 =
    n965 |> add1


{-| The `NNat` 967.


-}
n967 : NNat (N N967Nat Is (Difference a To (N967NatPlus a)))
n967 =
    n966 |> add1


{-| The `NNat` 968.


-}
n968 : NNat (N N968Nat Is (Difference a To (N968NatPlus a)))
n968 =
    n967 |> add1


{-| The `NNat` 969.


-}
n969 : NNat (N N969Nat Is (Difference a To (N969NatPlus a)))
n969 =
    n968 |> add1


{-| The `NNat` 970.


-}
n970 : NNat (N N970Nat Is (Difference a To (N970NatPlus a)))
n970 =
    n969 |> add1


{-| The `NNat` 971.


-}
n971 : NNat (N N971Nat Is (Difference a To (N971NatPlus a)))
n971 =
    n970 |> add1


{-| The `NNat` 972.


-}
n972 : NNat (N N972Nat Is (Difference a To (N972NatPlus a)))
n972 =
    n971 |> add1


{-| The `NNat` 973.


-}
n973 : NNat (N N973Nat Is (Difference a To (N973NatPlus a)))
n973 =
    n972 |> add1


{-| The `NNat` 974.


-}
n974 : NNat (N N974Nat Is (Difference a To (N974NatPlus a)))
n974 =
    n973 |> add1


{-| The `NNat` 975.


-}
n975 : NNat (N N975Nat Is (Difference a To (N975NatPlus a)))
n975 =
    n974 |> add1


{-| The `NNat` 976.


-}
n976 : NNat (N N976Nat Is (Difference a To (N976NatPlus a)))
n976 =
    n975 |> add1


{-| The `NNat` 977.


-}
n977 : NNat (N N977Nat Is (Difference a To (N977NatPlus a)))
n977 =
    n976 |> add1


{-| The `NNat` 978.


-}
n978 : NNat (N N978Nat Is (Difference a To (N978NatPlus a)))
n978 =
    n977 |> add1


{-| The `NNat` 979.


-}
n979 : NNat (N N979Nat Is (Difference a To (N979NatPlus a)))
n979 =
    n978 |> add1


{-| The `NNat` 980.


-}
n980 : NNat (N N980Nat Is (Difference a To (N980NatPlus a)))
n980 =
    n979 |> add1


{-| The `NNat` 981.


-}
n981 : NNat (N N981Nat Is (Difference a To (N981NatPlus a)))
n981 =
    n980 |> add1


{-| The `NNat` 982.


-}
n982 : NNat (N N982Nat Is (Difference a To (N982NatPlus a)))
n982 =
    n981 |> add1


{-| The `NNat` 983.


-}
n983 : NNat (N N983Nat Is (Difference a To (N983NatPlus a)))
n983 =
    n982 |> add1


{-| The `NNat` 984.


-}
n984 : NNat (N N984Nat Is (Difference a To (N984NatPlus a)))
n984 =
    n983 |> add1


{-| The `NNat` 985.


-}
n985 : NNat (N N985Nat Is (Difference a To (N985NatPlus a)))
n985 =
    n984 |> add1


{-| The `NNat` 986.


-}
n986 : NNat (N N986Nat Is (Difference a To (N986NatPlus a)))
n986 =
    n985 |> add1


{-| The `NNat` 987.


-}
n987 : NNat (N N987Nat Is (Difference a To (N987NatPlus a)))
n987 =
    n986 |> add1


{-| The `NNat` 988.


-}
n988 : NNat (N N988Nat Is (Difference a To (N988NatPlus a)))
n988 =
    n987 |> add1


{-| The `NNat` 989.


-}
n989 : NNat (N N989Nat Is (Difference a To (N989NatPlus a)))
n989 =
    n988 |> add1


{-| The `NNat` 990.


-}
n990 : NNat (N N990Nat Is (Difference a To (N990NatPlus a)))
n990 =
    n989 |> add1


{-| The `NNat` 991.


-}
n991 : NNat (N N991Nat Is (Difference a To (N991NatPlus a)))
n991 =
    n990 |> add1


{-| The `NNat` 992.


-}
n992 : NNat (N N992Nat Is (Difference a To (N992NatPlus a)))
n992 =
    n991 |> add1


{-| The `NNat` 993.


-}
n993 : NNat (N N993Nat Is (Difference a To (N993NatPlus a)))
n993 =
    n992 |> add1


{-| The `NNat` 994.


-}
n994 : NNat (N N994Nat Is (Difference a To (N994NatPlus a)))
n994 =
    n993 |> add1


{-| The `NNat` 995.


-}
n995 : NNat (N N995Nat Is (Difference a To (N995NatPlus a)))
n995 =
    n994 |> add1


{-| The `NNat` 996.


-}
n996 : NNat (N N996Nat Is (Difference a To (N996NatPlus a)))
n996 =
    n995 |> add1


{-| The `NNat` 997.


-}
n997 : NNat (N N997Nat Is (Difference a To (N997NatPlus a)))
n997 =
    n996 |> add1


{-| The `NNat` 998.


-}
n998 : NNat (N N998Nat Is (Difference a To (N998NatPlus a)))
n998 =
    n997 |> add1


{-| The `NNat` 999.


-}
n999 : NNat (N N999Nat Is (Difference a To (N999NatPlus a)))
n999 =
    n998 |> add1


{-| The `NNat` 1000.


-}
n1000 : NNat (N N1000Nat Is (Difference a To (N1000NatPlus a)))
n1000 =
    n999 |> add1


{-| The `NNat` 1001.


-}
n1001 : NNat (N N1001Nat Is (Difference a To (N1001NatPlus a)))
n1001 =
    n1000 |> add1


{-| The `NNat` 1002.


-}
n1002 : NNat (N N1002Nat Is (Difference a To (N1002NatPlus a)))
n1002 =
    n1001 |> add1


{-| The `NNat` 1003.


-}
n1003 : NNat (N N1003Nat Is (Difference a To (N1003NatPlus a)))
n1003 =
    n1002 |> add1


{-| The `NNat` 1004.


-}
n1004 : NNat (N N1004Nat Is (Difference a To (N1004NatPlus a)))
n1004 =
    n1003 |> add1


{-| The `NNat` 1005.


-}
n1005 : NNat (N N1005Nat Is (Difference a To (N1005NatPlus a)))
n1005 =
    n1004 |> add1


{-| The `NNat` 1006.


-}
n1006 : NNat (N N1006Nat Is (Difference a To (N1006NatPlus a)))
n1006 =
    n1005 |> add1


{-| The `NNat` 1007.


-}
n1007 : NNat (N N1007Nat Is (Difference a To (N1007NatPlus a)))
n1007 =
    n1006 |> add1


{-| The `NNat` 1008.


-}
n1008 : NNat (N N1008Nat Is (Difference a To (N1008NatPlus a)))
n1008 =
    n1007 |> add1


{-| The `NNat` 1009.


-}
n1009 : NNat (N N1009Nat Is (Difference a To (N1009NatPlus a)))
n1009 =
    n1008 |> add1


{-| The `NNat` 1010.


-}
n1010 : NNat (N N1010Nat Is (Difference a To (N1010NatPlus a)))
n1010 =
    n1009 |> add1


{-| The `NNat` 1011.


-}
n1011 : NNat (N N1011Nat Is (Difference a To (N1011NatPlus a)))
n1011 =
    n1010 |> add1


{-| The `NNat` 1012.


-}
n1012 : NNat (N N1012Nat Is (Difference a To (N1012NatPlus a)))
n1012 =
    n1011 |> add1


{-| The `NNat` 1013.


-}
n1013 : NNat (N N1013Nat Is (Difference a To (N1013NatPlus a)))
n1013 =
    n1012 |> add1


{-| The `NNat` 1014.


-}
n1014 : NNat (N N1014Nat Is (Difference a To (N1014NatPlus a)))
n1014 =
    n1013 |> add1


{-| The `NNat` 1015.


-}
n1015 : NNat (N N1015Nat Is (Difference a To (N1015NatPlus a)))
n1015 =
    n1014 |> add1


{-| The `NNat` 1016.


-}
n1016 : NNat (N N1016Nat Is (Difference a To (N1016NatPlus a)))
n1016 =
    n1015 |> add1


{-| The `NNat` 1017.


-}
n1017 : NNat (N N1017Nat Is (Difference a To (N1017NatPlus a)))
n1017 =
    n1016 |> add1


{-| The `NNat` 1018.


-}
n1018 : NNat (N N1018Nat Is (Difference a To (N1018NatPlus a)))
n1018 =
    n1017 |> add1


{-| The `NNat` 1019.


-}
n1019 : NNat (N N1019Nat Is (Difference a To (N1019NatPlus a)))
n1019 =
    n1018 |> add1


{-| The `NNat` 1020.


-}
n1020 : NNat (N N1020Nat Is (Difference a To (N1020NatPlus a)))
n1020 =
    n1019 |> add1


{-| The `NNat` 1021.


-}
n1021 : NNat (N N1021Nat Is (Difference a To (N1021NatPlus a)))
n1021 =
    n1020 |> add1


{-| The `NNat` 1022.


-}
n1022 : NNat (N N1022Nat Is (Difference a To (N1022NatPlus a)))
n1022 =
    n1021 |> add1


{-| The `NNat` 1023.


-}
n1023 : NNat (N N1023Nat Is (Difference a To (N1023NatPlus a)))
n1023 =
    n1022 |> add1


{-| The `NNat` 1024.


-}
n1024 : NNat (N N1024Nat Is (Difference a To (N1024NatPlus a)))
n1024 =
    n1023 |> add1


{-| The `NNat` plus 1.


-}
add1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1NatPlus n) Is (Difference a To (N1NatPlus nPlusA)))
add1 =
    Internal.add1


{-| The `NNat` plus 2.


-}
add2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N2NatPlus n) Is (Difference a To (N2NatPlus nPlusA)))
add2 =
    add1 >> add1


{-| The `NNat` plus 3.


-}
add3 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N3NatPlus n) Is (Difference a To (N3NatPlus nPlusA)))
add3 =
    add2 >> add1


{-| The `NNat` plus 4.


-}
add4 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N4NatPlus n) Is (Difference a To (N4NatPlus nPlusA)))
add4 =
    add3 >> add1


{-| The `NNat` plus 5.


-}
add5 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N5NatPlus n) Is (Difference a To (N5NatPlus nPlusA)))
add5 =
    add4 >> add1


{-| The `NNat` plus 6.


-}
add6 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N6NatPlus n) Is (Difference a To (N6NatPlus nPlusA)))
add6 =
    add5 >> add1


{-| The `NNat` plus 7.


-}
add7 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N7NatPlus n) Is (Difference a To (N7NatPlus nPlusA)))
add7 =
    add6 >> add1


{-| The `NNat` plus 8.


-}
add8 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N8NatPlus n) Is (Difference a To (N8NatPlus nPlusA)))
add8 =
    add7 >> add1


{-| The `NNat` plus 9.


-}
add9 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N9NatPlus n) Is (Difference a To (N9NatPlus nPlusA)))
add9 =
    add8 >> add1


{-| The `NNat` plus 10.


-}
add10 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N10NatPlus n) Is (Difference a To (N10NatPlus nPlusA)))
add10 =
    add9 >> add1


{-| The `NNat` plus 11.


-}
add11 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N11NatPlus n) Is (Difference a To (N11NatPlus nPlusA)))
add11 =
    add10 >> add1


{-| The `NNat` plus 12.


-}
add12 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N12NatPlus n) Is (Difference a To (N12NatPlus nPlusA)))
add12 =
    add11 >> add1


{-| The `NNat` plus 13.


-}
add13 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N13NatPlus n) Is (Difference a To (N13NatPlus nPlusA)))
add13 =
    add12 >> add1


{-| The `NNat` plus 14.


-}
add14 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N14NatPlus n) Is (Difference a To (N14NatPlus nPlusA)))
add14 =
    add13 >> add1


{-| The `NNat` plus 15.


-}
add15 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N15NatPlus n) Is (Difference a To (N15NatPlus nPlusA)))
add15 =
    add14 >> add1


{-| The `NNat` plus 16.


-}
add16 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N16NatPlus n) Is (Difference a To (N16NatPlus nPlusA)))
add16 =
    add15 >> add1


{-| The `NNat` plus 17.


-}
add17 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N17NatPlus n) Is (Difference a To (N17NatPlus nPlusA)))
add17 =
    add16 >> add1


{-| The `NNat` plus 18.


-}
add18 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N18NatPlus n) Is (Difference a To (N18NatPlus nPlusA)))
add18 =
    add17 >> add1


{-| The `NNat` plus 19.


-}
add19 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N19NatPlus n) Is (Difference a To (N19NatPlus nPlusA)))
add19 =
    add18 >> add1


{-| The `NNat` plus 20.


-}
add20 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N20NatPlus n) Is (Difference a To (N20NatPlus nPlusA)))
add20 =
    add19 >> add1


{-| The `NNat` plus 21.


-}
add21 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N21NatPlus n) Is (Difference a To (N21NatPlus nPlusA)))
add21 =
    add20 >> add1


{-| The `NNat` plus 22.


-}
add22 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N22NatPlus n) Is (Difference a To (N22NatPlus nPlusA)))
add22 =
    add21 >> add1


{-| The `NNat` plus 23.


-}
add23 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N23NatPlus n) Is (Difference a To (N23NatPlus nPlusA)))
add23 =
    add22 >> add1


{-| The `NNat` plus 24.


-}
add24 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N24NatPlus n) Is (Difference a To (N24NatPlus nPlusA)))
add24 =
    add23 >> add1


{-| The `NNat` plus 25.


-}
add25 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N25NatPlus n) Is (Difference a To (N25NatPlus nPlusA)))
add25 =
    add24 >> add1


{-| The `NNat` plus 26.


-}
add26 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N26NatPlus n) Is (Difference a To (N26NatPlus nPlusA)))
add26 =
    add25 >> add1


{-| The `NNat` plus 27.


-}
add27 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N27NatPlus n) Is (Difference a To (N27NatPlus nPlusA)))
add27 =
    add26 >> add1


{-| The `NNat` plus 28.


-}
add28 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N28NatPlus n) Is (Difference a To (N28NatPlus nPlusA)))
add28 =
    add27 >> add1


{-| The `NNat` plus 29.


-}
add29 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N29NatPlus n) Is (Difference a To (N29NatPlus nPlusA)))
add29 =
    add28 >> add1


{-| The `NNat` plus 30.


-}
add30 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N30NatPlus n) Is (Difference a To (N30NatPlus nPlusA)))
add30 =
    add29 >> add1


{-| The `NNat` plus 31.


-}
add31 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N31NatPlus n) Is (Difference a To (N31NatPlus nPlusA)))
add31 =
    add30 >> add1


{-| The `NNat` plus 32.


-}
add32 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N32NatPlus n) Is (Difference a To (N32NatPlus nPlusA)))
add32 =
    add31 >> add1


{-| The `NNat` plus 33.


-}
add33 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N33NatPlus n) Is (Difference a To (N33NatPlus nPlusA)))
add33 =
    add32 >> add1


{-| The `NNat` plus 34.


-}
add34 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N34NatPlus n) Is (Difference a To (N34NatPlus nPlusA)))
add34 =
    add33 >> add1


{-| The `NNat` plus 35.


-}
add35 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N35NatPlus n) Is (Difference a To (N35NatPlus nPlusA)))
add35 =
    add34 >> add1


{-| The `NNat` plus 36.


-}
add36 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N36NatPlus n) Is (Difference a To (N36NatPlus nPlusA)))
add36 =
    add35 >> add1


{-| The `NNat` plus 37.


-}
add37 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N37NatPlus n) Is (Difference a To (N37NatPlus nPlusA)))
add37 =
    add36 >> add1


{-| The `NNat` plus 38.


-}
add38 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N38NatPlus n) Is (Difference a To (N38NatPlus nPlusA)))
add38 =
    add37 >> add1


{-| The `NNat` plus 39.


-}
add39 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N39NatPlus n) Is (Difference a To (N39NatPlus nPlusA)))
add39 =
    add38 >> add1


{-| The `NNat` plus 40.


-}
add40 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N40NatPlus n) Is (Difference a To (N40NatPlus nPlusA)))
add40 =
    add39 >> add1


{-| The `NNat` plus 41.


-}
add41 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N41NatPlus n) Is (Difference a To (N41NatPlus nPlusA)))
add41 =
    add40 >> add1


{-| The `NNat` plus 42.


-}
add42 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N42NatPlus n) Is (Difference a To (N42NatPlus nPlusA)))
add42 =
    add41 >> add1


{-| The `NNat` plus 43.


-}
add43 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N43NatPlus n) Is (Difference a To (N43NatPlus nPlusA)))
add43 =
    add42 >> add1


{-| The `NNat` plus 44.


-}
add44 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N44NatPlus n) Is (Difference a To (N44NatPlus nPlusA)))
add44 =
    add43 >> add1


{-| The `NNat` plus 45.


-}
add45 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N45NatPlus n) Is (Difference a To (N45NatPlus nPlusA)))
add45 =
    add44 >> add1


{-| The `NNat` plus 46.


-}
add46 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N46NatPlus n) Is (Difference a To (N46NatPlus nPlusA)))
add46 =
    add45 >> add1


{-| The `NNat` plus 47.


-}
add47 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N47NatPlus n) Is (Difference a To (N47NatPlus nPlusA)))
add47 =
    add46 >> add1


{-| The `NNat` plus 48.


-}
add48 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N48NatPlus n) Is (Difference a To (N48NatPlus nPlusA)))
add48 =
    add47 >> add1


{-| The `NNat` plus 49.


-}
add49 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N49NatPlus n) Is (Difference a To (N49NatPlus nPlusA)))
add49 =
    add48 >> add1


{-| The `NNat` plus 50.


-}
add50 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N50NatPlus n) Is (Difference a To (N50NatPlus nPlusA)))
add50 =
    add49 >> add1


{-| The `NNat` plus 51.


-}
add51 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N51NatPlus n) Is (Difference a To (N51NatPlus nPlusA)))
add51 =
    add50 >> add1


{-| The `NNat` plus 52.


-}
add52 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N52NatPlus n) Is (Difference a To (N52NatPlus nPlusA)))
add52 =
    add51 >> add1


{-| The `NNat` plus 53.


-}
add53 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N53NatPlus n) Is (Difference a To (N53NatPlus nPlusA)))
add53 =
    add52 >> add1


{-| The `NNat` plus 54.


-}
add54 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N54NatPlus n) Is (Difference a To (N54NatPlus nPlusA)))
add54 =
    add53 >> add1


{-| The `NNat` plus 55.


-}
add55 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N55NatPlus n) Is (Difference a To (N55NatPlus nPlusA)))
add55 =
    add54 >> add1


{-| The `NNat` plus 56.


-}
add56 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N56NatPlus n) Is (Difference a To (N56NatPlus nPlusA)))
add56 =
    add55 >> add1


{-| The `NNat` plus 57.


-}
add57 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N57NatPlus n) Is (Difference a To (N57NatPlus nPlusA)))
add57 =
    add56 >> add1


{-| The `NNat` plus 58.


-}
add58 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N58NatPlus n) Is (Difference a To (N58NatPlus nPlusA)))
add58 =
    add57 >> add1


{-| The `NNat` plus 59.


-}
add59 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N59NatPlus n) Is (Difference a To (N59NatPlus nPlusA)))
add59 =
    add58 >> add1


{-| The `NNat` plus 60.


-}
add60 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N60NatPlus n) Is (Difference a To (N60NatPlus nPlusA)))
add60 =
    add59 >> add1


{-| The `NNat` plus 61.


-}
add61 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N61NatPlus n) Is (Difference a To (N61NatPlus nPlusA)))
add61 =
    add60 >> add1


{-| The `NNat` plus 62.


-}
add62 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N62NatPlus n) Is (Difference a To (N62NatPlus nPlusA)))
add62 =
    add61 >> add1


{-| The `NNat` plus 63.


-}
add63 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N63NatPlus n) Is (Difference a To (N63NatPlus nPlusA)))
add63 =
    add62 >> add1


{-| The `NNat` plus 64.


-}
add64 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N64NatPlus n) Is (Difference a To (N64NatPlus nPlusA)))
add64 =
    add63 >> add1


{-| The `NNat` plus 65.


-}
add65 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N65NatPlus n) Is (Difference a To (N65NatPlus nPlusA)))
add65 =
    add64 >> add1


{-| The `NNat` plus 66.


-}
add66 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N66NatPlus n) Is (Difference a To (N66NatPlus nPlusA)))
add66 =
    add65 >> add1


{-| The `NNat` plus 67.


-}
add67 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N67NatPlus n) Is (Difference a To (N67NatPlus nPlusA)))
add67 =
    add66 >> add1


{-| The `NNat` plus 68.


-}
add68 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N68NatPlus n) Is (Difference a To (N68NatPlus nPlusA)))
add68 =
    add67 >> add1


{-| The `NNat` plus 69.


-}
add69 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N69NatPlus n) Is (Difference a To (N69NatPlus nPlusA)))
add69 =
    add68 >> add1


{-| The `NNat` plus 70.


-}
add70 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N70NatPlus n) Is (Difference a To (N70NatPlus nPlusA)))
add70 =
    add69 >> add1


{-| The `NNat` plus 71.


-}
add71 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N71NatPlus n) Is (Difference a To (N71NatPlus nPlusA)))
add71 =
    add70 >> add1


{-| The `NNat` plus 72.


-}
add72 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N72NatPlus n) Is (Difference a To (N72NatPlus nPlusA)))
add72 =
    add71 >> add1


{-| The `NNat` plus 73.


-}
add73 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N73NatPlus n) Is (Difference a To (N73NatPlus nPlusA)))
add73 =
    add72 >> add1


{-| The `NNat` plus 74.


-}
add74 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N74NatPlus n) Is (Difference a To (N74NatPlus nPlusA)))
add74 =
    add73 >> add1


{-| The `NNat` plus 75.


-}
add75 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N75NatPlus n) Is (Difference a To (N75NatPlus nPlusA)))
add75 =
    add74 >> add1


{-| The `NNat` plus 76.


-}
add76 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N76NatPlus n) Is (Difference a To (N76NatPlus nPlusA)))
add76 =
    add75 >> add1


{-| The `NNat` plus 77.


-}
add77 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N77NatPlus n) Is (Difference a To (N77NatPlus nPlusA)))
add77 =
    add76 >> add1


{-| The `NNat` plus 78.


-}
add78 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N78NatPlus n) Is (Difference a To (N78NatPlus nPlusA)))
add78 =
    add77 >> add1


{-| The `NNat` plus 79.


-}
add79 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N79NatPlus n) Is (Difference a To (N79NatPlus nPlusA)))
add79 =
    add78 >> add1


{-| The `NNat` plus 80.


-}
add80 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N80NatPlus n) Is (Difference a To (N80NatPlus nPlusA)))
add80 =
    add79 >> add1


{-| The `NNat` plus 81.


-}
add81 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N81NatPlus n) Is (Difference a To (N81NatPlus nPlusA)))
add81 =
    add80 >> add1


{-| The `NNat` plus 82.


-}
add82 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N82NatPlus n) Is (Difference a To (N82NatPlus nPlusA)))
add82 =
    add81 >> add1


{-| The `NNat` plus 83.


-}
add83 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N83NatPlus n) Is (Difference a To (N83NatPlus nPlusA)))
add83 =
    add82 >> add1


{-| The `NNat` plus 84.


-}
add84 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N84NatPlus n) Is (Difference a To (N84NatPlus nPlusA)))
add84 =
    add83 >> add1


{-| The `NNat` plus 85.


-}
add85 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N85NatPlus n) Is (Difference a To (N85NatPlus nPlusA)))
add85 =
    add84 >> add1


{-| The `NNat` plus 86.


-}
add86 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N86NatPlus n) Is (Difference a To (N86NatPlus nPlusA)))
add86 =
    add85 >> add1


{-| The `NNat` plus 87.


-}
add87 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N87NatPlus n) Is (Difference a To (N87NatPlus nPlusA)))
add87 =
    add86 >> add1


{-| The `NNat` plus 88.


-}
add88 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N88NatPlus n) Is (Difference a To (N88NatPlus nPlusA)))
add88 =
    add87 >> add1


{-| The `NNat` plus 89.


-}
add89 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N89NatPlus n) Is (Difference a To (N89NatPlus nPlusA)))
add89 =
    add88 >> add1


{-| The `NNat` plus 90.


-}
add90 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N90NatPlus n) Is (Difference a To (N90NatPlus nPlusA)))
add90 =
    add89 >> add1


{-| The `NNat` plus 91.


-}
add91 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N91NatPlus n) Is (Difference a To (N91NatPlus nPlusA)))
add91 =
    add90 >> add1


{-| The `NNat` plus 92.


-}
add92 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N92NatPlus n) Is (Difference a To (N92NatPlus nPlusA)))
add92 =
    add91 >> add1


{-| The `NNat` plus 93.


-}
add93 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N93NatPlus n) Is (Difference a To (N93NatPlus nPlusA)))
add93 =
    add92 >> add1


{-| The `NNat` plus 94.


-}
add94 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N94NatPlus n) Is (Difference a To (N94NatPlus nPlusA)))
add94 =
    add93 >> add1


{-| The `NNat` plus 95.


-}
add95 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N95NatPlus n) Is (Difference a To (N95NatPlus nPlusA)))
add95 =
    add94 >> add1


{-| The `NNat` plus 96.


-}
add96 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N96NatPlus n) Is (Difference a To (N96NatPlus nPlusA)))
add96 =
    add95 >> add1


{-| The `NNat` plus 97.


-}
add97 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N97NatPlus n) Is (Difference a To (N97NatPlus nPlusA)))
add97 =
    add96 >> add1


{-| The `NNat` plus 98.


-}
add98 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N98NatPlus n) Is (Difference a To (N98NatPlus nPlusA)))
add98 =
    add97 >> add1


{-| The `NNat` plus 99.


-}
add99 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N99NatPlus n) Is (Difference a To (N99NatPlus nPlusA)))
add99 =
    add98 >> add1


{-| The `NNat` plus 100.


-}
add100 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N100NatPlus n) Is (Difference a To (N100NatPlus nPlusA)))
add100 =
    add99 >> add1


{-| The `NNat` plus 101.


-}
add101 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N101NatPlus n) Is (Difference a To (N101NatPlus nPlusA)))
add101 =
    add100 >> add1


{-| The `NNat` plus 102.


-}
add102 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N102NatPlus n) Is (Difference a To (N102NatPlus nPlusA)))
add102 =
    add101 >> add1


{-| The `NNat` plus 103.


-}
add103 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N103NatPlus n) Is (Difference a To (N103NatPlus nPlusA)))
add103 =
    add102 >> add1


{-| The `NNat` plus 104.


-}
add104 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N104NatPlus n) Is (Difference a To (N104NatPlus nPlusA)))
add104 =
    add103 >> add1


{-| The `NNat` plus 105.


-}
add105 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N105NatPlus n) Is (Difference a To (N105NatPlus nPlusA)))
add105 =
    add104 >> add1


{-| The `NNat` plus 106.


-}
add106 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N106NatPlus n) Is (Difference a To (N106NatPlus nPlusA)))
add106 =
    add105 >> add1


{-| The `NNat` plus 107.


-}
add107 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N107NatPlus n) Is (Difference a To (N107NatPlus nPlusA)))
add107 =
    add106 >> add1


{-| The `NNat` plus 108.


-}
add108 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N108NatPlus n) Is (Difference a To (N108NatPlus nPlusA)))
add108 =
    add107 >> add1


{-| The `NNat` plus 109.


-}
add109 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N109NatPlus n) Is (Difference a To (N109NatPlus nPlusA)))
add109 =
    add108 >> add1


{-| The `NNat` plus 110.


-}
add110 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N110NatPlus n) Is (Difference a To (N110NatPlus nPlusA)))
add110 =
    add109 >> add1


{-| The `NNat` plus 111.


-}
add111 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N111NatPlus n) Is (Difference a To (N111NatPlus nPlusA)))
add111 =
    add110 >> add1


{-| The `NNat` plus 112.


-}
add112 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N112NatPlus n) Is (Difference a To (N112NatPlus nPlusA)))
add112 =
    add111 >> add1


{-| The `NNat` plus 113.


-}
add113 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N113NatPlus n) Is (Difference a To (N113NatPlus nPlusA)))
add113 =
    add112 >> add1


{-| The `NNat` plus 114.


-}
add114 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N114NatPlus n) Is (Difference a To (N114NatPlus nPlusA)))
add114 =
    add113 >> add1


{-| The `NNat` plus 115.


-}
add115 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N115NatPlus n) Is (Difference a To (N115NatPlus nPlusA)))
add115 =
    add114 >> add1


{-| The `NNat` plus 116.


-}
add116 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N116NatPlus n) Is (Difference a To (N116NatPlus nPlusA)))
add116 =
    add115 >> add1


{-| The `NNat` plus 117.


-}
add117 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N117NatPlus n) Is (Difference a To (N117NatPlus nPlusA)))
add117 =
    add116 >> add1


{-| The `NNat` plus 118.


-}
add118 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N118NatPlus n) Is (Difference a To (N118NatPlus nPlusA)))
add118 =
    add117 >> add1


{-| The `NNat` plus 119.


-}
add119 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N119NatPlus n) Is (Difference a To (N119NatPlus nPlusA)))
add119 =
    add118 >> add1


{-| The `NNat` plus 120.


-}
add120 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N120NatPlus n) Is (Difference a To (N120NatPlus nPlusA)))
add120 =
    add119 >> add1


{-| The `NNat` plus 121.


-}
add121 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N121NatPlus n) Is (Difference a To (N121NatPlus nPlusA)))
add121 =
    add120 >> add1


{-| The `NNat` plus 122.


-}
add122 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N122NatPlus n) Is (Difference a To (N122NatPlus nPlusA)))
add122 =
    add121 >> add1


{-| The `NNat` plus 123.


-}
add123 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N123NatPlus n) Is (Difference a To (N123NatPlus nPlusA)))
add123 =
    add122 >> add1


{-| The `NNat` plus 124.


-}
add124 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N124NatPlus n) Is (Difference a To (N124NatPlus nPlusA)))
add124 =
    add123 >> add1


{-| The `NNat` plus 125.


-}
add125 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N125NatPlus n) Is (Difference a To (N125NatPlus nPlusA)))
add125 =
    add124 >> add1


{-| The `NNat` plus 126.


-}
add126 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N126NatPlus n) Is (Difference a To (N126NatPlus nPlusA)))
add126 =
    add125 >> add1


{-| The `NNat` plus 127.


-}
add127 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N127NatPlus n) Is (Difference a To (N127NatPlus nPlusA)))
add127 =
    add126 >> add1


{-| The `NNat` plus 128.


-}
add128 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N128NatPlus n) Is (Difference a To (N128NatPlus nPlusA)))
add128 =
    add127 >> add1


{-| The `NNat` plus 129.


-}
add129 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N129NatPlus n) Is (Difference a To (N129NatPlus nPlusA)))
add129 =
    add128 >> add1


{-| The `NNat` plus 130.


-}
add130 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N130NatPlus n) Is (Difference a To (N130NatPlus nPlusA)))
add130 =
    add129 >> add1


{-| The `NNat` plus 131.


-}
add131 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N131NatPlus n) Is (Difference a To (N131NatPlus nPlusA)))
add131 =
    add130 >> add1


{-| The `NNat` plus 132.


-}
add132 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N132NatPlus n) Is (Difference a To (N132NatPlus nPlusA)))
add132 =
    add131 >> add1


{-| The `NNat` plus 133.


-}
add133 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N133NatPlus n) Is (Difference a To (N133NatPlus nPlusA)))
add133 =
    add132 >> add1


{-| The `NNat` plus 134.


-}
add134 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N134NatPlus n) Is (Difference a To (N134NatPlus nPlusA)))
add134 =
    add133 >> add1


{-| The `NNat` plus 135.


-}
add135 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N135NatPlus n) Is (Difference a To (N135NatPlus nPlusA)))
add135 =
    add134 >> add1


{-| The `NNat` plus 136.


-}
add136 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N136NatPlus n) Is (Difference a To (N136NatPlus nPlusA)))
add136 =
    add135 >> add1


{-| The `NNat` plus 137.


-}
add137 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N137NatPlus n) Is (Difference a To (N137NatPlus nPlusA)))
add137 =
    add136 >> add1


{-| The `NNat` plus 138.


-}
add138 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N138NatPlus n) Is (Difference a To (N138NatPlus nPlusA)))
add138 =
    add137 >> add1


{-| The `NNat` plus 139.


-}
add139 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N139NatPlus n) Is (Difference a To (N139NatPlus nPlusA)))
add139 =
    add138 >> add1


{-| The `NNat` plus 140.


-}
add140 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N140NatPlus n) Is (Difference a To (N140NatPlus nPlusA)))
add140 =
    add139 >> add1


{-| The `NNat` plus 141.


-}
add141 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N141NatPlus n) Is (Difference a To (N141NatPlus nPlusA)))
add141 =
    add140 >> add1


{-| The `NNat` plus 142.


-}
add142 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N142NatPlus n) Is (Difference a To (N142NatPlus nPlusA)))
add142 =
    add141 >> add1


{-| The `NNat` plus 143.


-}
add143 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N143NatPlus n) Is (Difference a To (N143NatPlus nPlusA)))
add143 =
    add142 >> add1


{-| The `NNat` plus 144.


-}
add144 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N144NatPlus n) Is (Difference a To (N144NatPlus nPlusA)))
add144 =
    add143 >> add1


{-| The `NNat` plus 145.


-}
add145 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N145NatPlus n) Is (Difference a To (N145NatPlus nPlusA)))
add145 =
    add144 >> add1


{-| The `NNat` plus 146.


-}
add146 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N146NatPlus n) Is (Difference a To (N146NatPlus nPlusA)))
add146 =
    add145 >> add1


{-| The `NNat` plus 147.


-}
add147 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N147NatPlus n) Is (Difference a To (N147NatPlus nPlusA)))
add147 =
    add146 >> add1


{-| The `NNat` plus 148.


-}
add148 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N148NatPlus n) Is (Difference a To (N148NatPlus nPlusA)))
add148 =
    add147 >> add1


{-| The `NNat` plus 149.


-}
add149 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N149NatPlus n) Is (Difference a To (N149NatPlus nPlusA)))
add149 =
    add148 >> add1


{-| The `NNat` plus 150.


-}
add150 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N150NatPlus n) Is (Difference a To (N150NatPlus nPlusA)))
add150 =
    add149 >> add1


{-| The `NNat` plus 151.


-}
add151 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N151NatPlus n) Is (Difference a To (N151NatPlus nPlusA)))
add151 =
    add150 >> add1


{-| The `NNat` plus 152.


-}
add152 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N152NatPlus n) Is (Difference a To (N152NatPlus nPlusA)))
add152 =
    add151 >> add1


{-| The `NNat` plus 153.


-}
add153 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N153NatPlus n) Is (Difference a To (N153NatPlus nPlusA)))
add153 =
    add152 >> add1


{-| The `NNat` plus 154.


-}
add154 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N154NatPlus n) Is (Difference a To (N154NatPlus nPlusA)))
add154 =
    add153 >> add1


{-| The `NNat` plus 155.


-}
add155 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N155NatPlus n) Is (Difference a To (N155NatPlus nPlusA)))
add155 =
    add154 >> add1


{-| The `NNat` plus 156.


-}
add156 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N156NatPlus n) Is (Difference a To (N156NatPlus nPlusA)))
add156 =
    add155 >> add1


{-| The `NNat` plus 157.


-}
add157 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N157NatPlus n) Is (Difference a To (N157NatPlus nPlusA)))
add157 =
    add156 >> add1


{-| The `NNat` plus 158.


-}
add158 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N158NatPlus n) Is (Difference a To (N158NatPlus nPlusA)))
add158 =
    add157 >> add1


{-| The `NNat` plus 159.


-}
add159 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N159NatPlus n) Is (Difference a To (N159NatPlus nPlusA)))
add159 =
    add158 >> add1


{-| The `NNat` plus 160.


-}
add160 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N160NatPlus n) Is (Difference a To (N160NatPlus nPlusA)))
add160 =
    add159 >> add1


{-| The `NNat` plus 161.


-}
add161 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N161NatPlus n) Is (Difference a To (N161NatPlus nPlusA)))
add161 =
    add160 >> add1


{-| The `NNat` plus 162.


-}
add162 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N162NatPlus n) Is (Difference a To (N162NatPlus nPlusA)))
add162 =
    add161 >> add1


{-| The `NNat` plus 163.


-}
add163 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N163NatPlus n) Is (Difference a To (N163NatPlus nPlusA)))
add163 =
    add162 >> add1


{-| The `NNat` plus 164.


-}
add164 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N164NatPlus n) Is (Difference a To (N164NatPlus nPlusA)))
add164 =
    add163 >> add1


{-| The `NNat` plus 165.


-}
add165 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N165NatPlus n) Is (Difference a To (N165NatPlus nPlusA)))
add165 =
    add164 >> add1


{-| The `NNat` plus 166.


-}
add166 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N166NatPlus n) Is (Difference a To (N166NatPlus nPlusA)))
add166 =
    add165 >> add1


{-| The `NNat` plus 167.


-}
add167 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N167NatPlus n) Is (Difference a To (N167NatPlus nPlusA)))
add167 =
    add166 >> add1


{-| The `NNat` plus 168.


-}
add168 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N168NatPlus n) Is (Difference a To (N168NatPlus nPlusA)))
add168 =
    add167 >> add1


{-| The `NNat` plus 169.


-}
add169 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N169NatPlus n) Is (Difference a To (N169NatPlus nPlusA)))
add169 =
    add168 >> add1


{-| The `NNat` plus 170.


-}
add170 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N170NatPlus n) Is (Difference a To (N170NatPlus nPlusA)))
add170 =
    add169 >> add1


{-| The `NNat` plus 171.


-}
add171 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N171NatPlus n) Is (Difference a To (N171NatPlus nPlusA)))
add171 =
    add170 >> add1


{-| The `NNat` plus 172.


-}
add172 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N172NatPlus n) Is (Difference a To (N172NatPlus nPlusA)))
add172 =
    add171 >> add1


{-| The `NNat` plus 173.


-}
add173 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N173NatPlus n) Is (Difference a To (N173NatPlus nPlusA)))
add173 =
    add172 >> add1


{-| The `NNat` plus 174.


-}
add174 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N174NatPlus n) Is (Difference a To (N174NatPlus nPlusA)))
add174 =
    add173 >> add1


{-| The `NNat` plus 175.


-}
add175 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N175NatPlus n) Is (Difference a To (N175NatPlus nPlusA)))
add175 =
    add174 >> add1


{-| The `NNat` plus 176.


-}
add176 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N176NatPlus n) Is (Difference a To (N176NatPlus nPlusA)))
add176 =
    add175 >> add1


{-| The `NNat` plus 177.


-}
add177 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N177NatPlus n) Is (Difference a To (N177NatPlus nPlusA)))
add177 =
    add176 >> add1


{-| The `NNat` plus 178.


-}
add178 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N178NatPlus n) Is (Difference a To (N178NatPlus nPlusA)))
add178 =
    add177 >> add1


{-| The `NNat` plus 179.


-}
add179 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N179NatPlus n) Is (Difference a To (N179NatPlus nPlusA)))
add179 =
    add178 >> add1


{-| The `NNat` plus 180.


-}
add180 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N180NatPlus n) Is (Difference a To (N180NatPlus nPlusA)))
add180 =
    add179 >> add1


{-| The `NNat` plus 181.


-}
add181 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N181NatPlus n) Is (Difference a To (N181NatPlus nPlusA)))
add181 =
    add180 >> add1


{-| The `NNat` plus 182.


-}
add182 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N182NatPlus n) Is (Difference a To (N182NatPlus nPlusA)))
add182 =
    add181 >> add1


{-| The `NNat` plus 183.


-}
add183 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N183NatPlus n) Is (Difference a To (N183NatPlus nPlusA)))
add183 =
    add182 >> add1


{-| The `NNat` plus 184.


-}
add184 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N184NatPlus n) Is (Difference a To (N184NatPlus nPlusA)))
add184 =
    add183 >> add1


{-| The `NNat` plus 185.


-}
add185 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N185NatPlus n) Is (Difference a To (N185NatPlus nPlusA)))
add185 =
    add184 >> add1


{-| The `NNat` plus 186.


-}
add186 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N186NatPlus n) Is (Difference a To (N186NatPlus nPlusA)))
add186 =
    add185 >> add1


{-| The `NNat` plus 187.


-}
add187 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N187NatPlus n) Is (Difference a To (N187NatPlus nPlusA)))
add187 =
    add186 >> add1


{-| The `NNat` plus 188.


-}
add188 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N188NatPlus n) Is (Difference a To (N188NatPlus nPlusA)))
add188 =
    add187 >> add1


{-| The `NNat` plus 189.


-}
add189 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N189NatPlus n) Is (Difference a To (N189NatPlus nPlusA)))
add189 =
    add188 >> add1


{-| The `NNat` plus 190.


-}
add190 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N190NatPlus n) Is (Difference a To (N190NatPlus nPlusA)))
add190 =
    add189 >> add1


{-| The `NNat` plus 191.


-}
add191 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N191NatPlus n) Is (Difference a To (N191NatPlus nPlusA)))
add191 =
    add190 >> add1


{-| The `NNat` plus 192.


-}
add192 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N192NatPlus n) Is (Difference a To (N192NatPlus nPlusA)))
add192 =
    add191 >> add1


{-| The `NNat` plus 193.


-}
add193 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N193NatPlus n) Is (Difference a To (N193NatPlus nPlusA)))
add193 =
    add192 >> add1


{-| The `NNat` plus 194.


-}
add194 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N194NatPlus n) Is (Difference a To (N194NatPlus nPlusA)))
add194 =
    add193 >> add1


{-| The `NNat` plus 195.


-}
add195 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N195NatPlus n) Is (Difference a To (N195NatPlus nPlusA)))
add195 =
    add194 >> add1


{-| The `NNat` plus 196.


-}
add196 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N196NatPlus n) Is (Difference a To (N196NatPlus nPlusA)))
add196 =
    add195 >> add1


{-| The `NNat` plus 197.


-}
add197 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N197NatPlus n) Is (Difference a To (N197NatPlus nPlusA)))
add197 =
    add196 >> add1


{-| The `NNat` plus 198.


-}
add198 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N198NatPlus n) Is (Difference a To (N198NatPlus nPlusA)))
add198 =
    add197 >> add1


{-| The `NNat` plus 199.


-}
add199 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N199NatPlus n) Is (Difference a To (N199NatPlus nPlusA)))
add199 =
    add198 >> add1


{-| The `NNat` plus 200.


-}
add200 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N200NatPlus n) Is (Difference a To (N200NatPlus nPlusA)))
add200 =
    add199 >> add1


{-| The `NNat` plus 201.


-}
add201 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N201NatPlus n) Is (Difference a To (N201NatPlus nPlusA)))
add201 =
    add200 >> add1


{-| The `NNat` plus 202.


-}
add202 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N202NatPlus n) Is (Difference a To (N202NatPlus nPlusA)))
add202 =
    add201 >> add1


{-| The `NNat` plus 203.


-}
add203 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N203NatPlus n) Is (Difference a To (N203NatPlus nPlusA)))
add203 =
    add202 >> add1


{-| The `NNat` plus 204.


-}
add204 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N204NatPlus n) Is (Difference a To (N204NatPlus nPlusA)))
add204 =
    add203 >> add1


{-| The `NNat` plus 205.


-}
add205 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N205NatPlus n) Is (Difference a To (N205NatPlus nPlusA)))
add205 =
    add204 >> add1


{-| The `NNat` plus 206.


-}
add206 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N206NatPlus n) Is (Difference a To (N206NatPlus nPlusA)))
add206 =
    add205 >> add1


{-| The `NNat` plus 207.


-}
add207 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N207NatPlus n) Is (Difference a To (N207NatPlus nPlusA)))
add207 =
    add206 >> add1


{-| The `NNat` plus 208.


-}
add208 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N208NatPlus n) Is (Difference a To (N208NatPlus nPlusA)))
add208 =
    add207 >> add1


{-| The `NNat` plus 209.


-}
add209 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N209NatPlus n) Is (Difference a To (N209NatPlus nPlusA)))
add209 =
    add208 >> add1


{-| The `NNat` plus 210.


-}
add210 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N210NatPlus n) Is (Difference a To (N210NatPlus nPlusA)))
add210 =
    add209 >> add1


{-| The `NNat` plus 211.


-}
add211 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N211NatPlus n) Is (Difference a To (N211NatPlus nPlusA)))
add211 =
    add210 >> add1


{-| The `NNat` plus 212.


-}
add212 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N212NatPlus n) Is (Difference a To (N212NatPlus nPlusA)))
add212 =
    add211 >> add1


{-| The `NNat` plus 213.


-}
add213 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N213NatPlus n) Is (Difference a To (N213NatPlus nPlusA)))
add213 =
    add212 >> add1


{-| The `NNat` plus 214.


-}
add214 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N214NatPlus n) Is (Difference a To (N214NatPlus nPlusA)))
add214 =
    add213 >> add1


{-| The `NNat` plus 215.


-}
add215 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N215NatPlus n) Is (Difference a To (N215NatPlus nPlusA)))
add215 =
    add214 >> add1


{-| The `NNat` plus 216.


-}
add216 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N216NatPlus n) Is (Difference a To (N216NatPlus nPlusA)))
add216 =
    add215 >> add1


{-| The `NNat` plus 217.


-}
add217 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N217NatPlus n) Is (Difference a To (N217NatPlus nPlusA)))
add217 =
    add216 >> add1


{-| The `NNat` plus 218.


-}
add218 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N218NatPlus n) Is (Difference a To (N218NatPlus nPlusA)))
add218 =
    add217 >> add1


{-| The `NNat` plus 219.


-}
add219 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N219NatPlus n) Is (Difference a To (N219NatPlus nPlusA)))
add219 =
    add218 >> add1


{-| The `NNat` plus 220.


-}
add220 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N220NatPlus n) Is (Difference a To (N220NatPlus nPlusA)))
add220 =
    add219 >> add1


{-| The `NNat` plus 221.


-}
add221 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N221NatPlus n) Is (Difference a To (N221NatPlus nPlusA)))
add221 =
    add220 >> add1


{-| The `NNat` plus 222.


-}
add222 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N222NatPlus n) Is (Difference a To (N222NatPlus nPlusA)))
add222 =
    add221 >> add1


{-| The `NNat` plus 223.


-}
add223 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N223NatPlus n) Is (Difference a To (N223NatPlus nPlusA)))
add223 =
    add222 >> add1


{-| The `NNat` plus 224.


-}
add224 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N224NatPlus n) Is (Difference a To (N224NatPlus nPlusA)))
add224 =
    add223 >> add1


{-| The `NNat` plus 225.


-}
add225 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N225NatPlus n) Is (Difference a To (N225NatPlus nPlusA)))
add225 =
    add224 >> add1


{-| The `NNat` plus 226.


-}
add226 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N226NatPlus n) Is (Difference a To (N226NatPlus nPlusA)))
add226 =
    add225 >> add1


{-| The `NNat` plus 227.


-}
add227 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N227NatPlus n) Is (Difference a To (N227NatPlus nPlusA)))
add227 =
    add226 >> add1


{-| The `NNat` plus 228.


-}
add228 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N228NatPlus n) Is (Difference a To (N228NatPlus nPlusA)))
add228 =
    add227 >> add1


{-| The `NNat` plus 229.


-}
add229 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N229NatPlus n) Is (Difference a To (N229NatPlus nPlusA)))
add229 =
    add228 >> add1


{-| The `NNat` plus 230.


-}
add230 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N230NatPlus n) Is (Difference a To (N230NatPlus nPlusA)))
add230 =
    add229 >> add1


{-| The `NNat` plus 231.


-}
add231 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N231NatPlus n) Is (Difference a To (N231NatPlus nPlusA)))
add231 =
    add230 >> add1


{-| The `NNat` plus 232.


-}
add232 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N232NatPlus n) Is (Difference a To (N232NatPlus nPlusA)))
add232 =
    add231 >> add1


{-| The `NNat` plus 233.


-}
add233 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N233NatPlus n) Is (Difference a To (N233NatPlus nPlusA)))
add233 =
    add232 >> add1


{-| The `NNat` plus 234.


-}
add234 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N234NatPlus n) Is (Difference a To (N234NatPlus nPlusA)))
add234 =
    add233 >> add1


{-| The `NNat` plus 235.


-}
add235 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N235NatPlus n) Is (Difference a To (N235NatPlus nPlusA)))
add235 =
    add234 >> add1


{-| The `NNat` plus 236.


-}
add236 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N236NatPlus n) Is (Difference a To (N236NatPlus nPlusA)))
add236 =
    add235 >> add1


{-| The `NNat` plus 237.


-}
add237 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N237NatPlus n) Is (Difference a To (N237NatPlus nPlusA)))
add237 =
    add236 >> add1


{-| The `NNat` plus 238.


-}
add238 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N238NatPlus n) Is (Difference a To (N238NatPlus nPlusA)))
add238 =
    add237 >> add1


{-| The `NNat` plus 239.


-}
add239 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N239NatPlus n) Is (Difference a To (N239NatPlus nPlusA)))
add239 =
    add238 >> add1


{-| The `NNat` plus 240.


-}
add240 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N240NatPlus n) Is (Difference a To (N240NatPlus nPlusA)))
add240 =
    add239 >> add1


{-| The `NNat` plus 241.


-}
add241 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N241NatPlus n) Is (Difference a To (N241NatPlus nPlusA)))
add241 =
    add240 >> add1


{-| The `NNat` plus 242.


-}
add242 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N242NatPlus n) Is (Difference a To (N242NatPlus nPlusA)))
add242 =
    add241 >> add1


{-| The `NNat` plus 243.


-}
add243 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N243NatPlus n) Is (Difference a To (N243NatPlus nPlusA)))
add243 =
    add242 >> add1


{-| The `NNat` plus 244.


-}
add244 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N244NatPlus n) Is (Difference a To (N244NatPlus nPlusA)))
add244 =
    add243 >> add1


{-| The `NNat` plus 245.


-}
add245 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N245NatPlus n) Is (Difference a To (N245NatPlus nPlusA)))
add245 =
    add244 >> add1


{-| The `NNat` plus 246.


-}
add246 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N246NatPlus n) Is (Difference a To (N246NatPlus nPlusA)))
add246 =
    add245 >> add1


{-| The `NNat` plus 247.


-}
add247 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N247NatPlus n) Is (Difference a To (N247NatPlus nPlusA)))
add247 =
    add246 >> add1


{-| The `NNat` plus 248.


-}
add248 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N248NatPlus n) Is (Difference a To (N248NatPlus nPlusA)))
add248 =
    add247 >> add1


{-| The `NNat` plus 249.


-}
add249 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N249NatPlus n) Is (Difference a To (N249NatPlus nPlusA)))
add249 =
    add248 >> add1


{-| The `NNat` plus 250.


-}
add250 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N250NatPlus n) Is (Difference a To (N250NatPlus nPlusA)))
add250 =
    add249 >> add1


{-| The `NNat` plus 251.


-}
add251 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N251NatPlus n) Is (Difference a To (N251NatPlus nPlusA)))
add251 =
    add250 >> add1


{-| The `NNat` plus 252.


-}
add252 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N252NatPlus n) Is (Difference a To (N252NatPlus nPlusA)))
add252 =
    add251 >> add1


{-| The `NNat` plus 253.


-}
add253 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N253NatPlus n) Is (Difference a To (N253NatPlus nPlusA)))
add253 =
    add252 >> add1


{-| The `NNat` plus 254.


-}
add254 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N254NatPlus n) Is (Difference a To (N254NatPlus nPlusA)))
add254 =
    add253 >> add1


{-| The `NNat` plus 255.


-}
add255 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N255NatPlus n) Is (Difference a To (N255NatPlus nPlusA)))
add255 =
    add254 >> add1


{-| The `NNat` plus 256.


-}
add256 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N256NatPlus n) Is (Difference a To (N256NatPlus nPlusA)))
add256 =
    add255 >> add1


{-| The `NNat` plus 257.


-}
add257 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N257NatPlus n) Is (Difference a To (N257NatPlus nPlusA)))
add257 =
    add256 >> add1


{-| The `NNat` plus 258.


-}
add258 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N258NatPlus n) Is (Difference a To (N258NatPlus nPlusA)))
add258 =
    add257 >> add1


{-| The `NNat` plus 259.


-}
add259 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N259NatPlus n) Is (Difference a To (N259NatPlus nPlusA)))
add259 =
    add258 >> add1


{-| The `NNat` plus 260.


-}
add260 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N260NatPlus n) Is (Difference a To (N260NatPlus nPlusA)))
add260 =
    add259 >> add1


{-| The `NNat` plus 261.


-}
add261 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N261NatPlus n) Is (Difference a To (N261NatPlus nPlusA)))
add261 =
    add260 >> add1


{-| The `NNat` plus 262.


-}
add262 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N262NatPlus n) Is (Difference a To (N262NatPlus nPlusA)))
add262 =
    add261 >> add1


{-| The `NNat` plus 263.


-}
add263 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N263NatPlus n) Is (Difference a To (N263NatPlus nPlusA)))
add263 =
    add262 >> add1


{-| The `NNat` plus 264.


-}
add264 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N264NatPlus n) Is (Difference a To (N264NatPlus nPlusA)))
add264 =
    add263 >> add1


{-| The `NNat` plus 265.


-}
add265 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N265NatPlus n) Is (Difference a To (N265NatPlus nPlusA)))
add265 =
    add264 >> add1


{-| The `NNat` plus 266.


-}
add266 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N266NatPlus n) Is (Difference a To (N266NatPlus nPlusA)))
add266 =
    add265 >> add1


{-| The `NNat` plus 267.


-}
add267 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N267NatPlus n) Is (Difference a To (N267NatPlus nPlusA)))
add267 =
    add266 >> add1


{-| The `NNat` plus 268.


-}
add268 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N268NatPlus n) Is (Difference a To (N268NatPlus nPlusA)))
add268 =
    add267 >> add1


{-| The `NNat` plus 269.


-}
add269 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N269NatPlus n) Is (Difference a To (N269NatPlus nPlusA)))
add269 =
    add268 >> add1


{-| The `NNat` plus 270.


-}
add270 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N270NatPlus n) Is (Difference a To (N270NatPlus nPlusA)))
add270 =
    add269 >> add1


{-| The `NNat` plus 271.


-}
add271 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N271NatPlus n) Is (Difference a To (N271NatPlus nPlusA)))
add271 =
    add270 >> add1


{-| The `NNat` plus 272.


-}
add272 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N272NatPlus n) Is (Difference a To (N272NatPlus nPlusA)))
add272 =
    add271 >> add1


{-| The `NNat` plus 273.


-}
add273 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N273NatPlus n) Is (Difference a To (N273NatPlus nPlusA)))
add273 =
    add272 >> add1


{-| The `NNat` plus 274.


-}
add274 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N274NatPlus n) Is (Difference a To (N274NatPlus nPlusA)))
add274 =
    add273 >> add1


{-| The `NNat` plus 275.


-}
add275 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N275NatPlus n) Is (Difference a To (N275NatPlus nPlusA)))
add275 =
    add274 >> add1


{-| The `NNat` plus 276.


-}
add276 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N276NatPlus n) Is (Difference a To (N276NatPlus nPlusA)))
add276 =
    add275 >> add1


{-| The `NNat` plus 277.


-}
add277 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N277NatPlus n) Is (Difference a To (N277NatPlus nPlusA)))
add277 =
    add276 >> add1


{-| The `NNat` plus 278.


-}
add278 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N278NatPlus n) Is (Difference a To (N278NatPlus nPlusA)))
add278 =
    add277 >> add1


{-| The `NNat` plus 279.


-}
add279 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N279NatPlus n) Is (Difference a To (N279NatPlus nPlusA)))
add279 =
    add278 >> add1


{-| The `NNat` plus 280.


-}
add280 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N280NatPlus n) Is (Difference a To (N280NatPlus nPlusA)))
add280 =
    add279 >> add1


{-| The `NNat` plus 281.


-}
add281 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N281NatPlus n) Is (Difference a To (N281NatPlus nPlusA)))
add281 =
    add280 >> add1


{-| The `NNat` plus 282.


-}
add282 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N282NatPlus n) Is (Difference a To (N282NatPlus nPlusA)))
add282 =
    add281 >> add1


{-| The `NNat` plus 283.


-}
add283 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N283NatPlus n) Is (Difference a To (N283NatPlus nPlusA)))
add283 =
    add282 >> add1


{-| The `NNat` plus 284.


-}
add284 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N284NatPlus n) Is (Difference a To (N284NatPlus nPlusA)))
add284 =
    add283 >> add1


{-| The `NNat` plus 285.


-}
add285 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N285NatPlus n) Is (Difference a To (N285NatPlus nPlusA)))
add285 =
    add284 >> add1


{-| The `NNat` plus 286.


-}
add286 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N286NatPlus n) Is (Difference a To (N286NatPlus nPlusA)))
add286 =
    add285 >> add1


{-| The `NNat` plus 287.


-}
add287 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N287NatPlus n) Is (Difference a To (N287NatPlus nPlusA)))
add287 =
    add286 >> add1


{-| The `NNat` plus 288.


-}
add288 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N288NatPlus n) Is (Difference a To (N288NatPlus nPlusA)))
add288 =
    add287 >> add1


{-| The `NNat` plus 289.


-}
add289 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N289NatPlus n) Is (Difference a To (N289NatPlus nPlusA)))
add289 =
    add288 >> add1


{-| The `NNat` plus 290.


-}
add290 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N290NatPlus n) Is (Difference a To (N290NatPlus nPlusA)))
add290 =
    add289 >> add1


{-| The `NNat` plus 291.


-}
add291 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N291NatPlus n) Is (Difference a To (N291NatPlus nPlusA)))
add291 =
    add290 >> add1


{-| The `NNat` plus 292.


-}
add292 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N292NatPlus n) Is (Difference a To (N292NatPlus nPlusA)))
add292 =
    add291 >> add1


{-| The `NNat` plus 293.


-}
add293 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N293NatPlus n) Is (Difference a To (N293NatPlus nPlusA)))
add293 =
    add292 >> add1


{-| The `NNat` plus 294.


-}
add294 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N294NatPlus n) Is (Difference a To (N294NatPlus nPlusA)))
add294 =
    add293 >> add1


{-| The `NNat` plus 295.


-}
add295 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N295NatPlus n) Is (Difference a To (N295NatPlus nPlusA)))
add295 =
    add294 >> add1


{-| The `NNat` plus 296.


-}
add296 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N296NatPlus n) Is (Difference a To (N296NatPlus nPlusA)))
add296 =
    add295 >> add1


{-| The `NNat` plus 297.


-}
add297 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N297NatPlus n) Is (Difference a To (N297NatPlus nPlusA)))
add297 =
    add296 >> add1


{-| The `NNat` plus 298.


-}
add298 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N298NatPlus n) Is (Difference a To (N298NatPlus nPlusA)))
add298 =
    add297 >> add1


{-| The `NNat` plus 299.


-}
add299 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N299NatPlus n) Is (Difference a To (N299NatPlus nPlusA)))
add299 =
    add298 >> add1


{-| The `NNat` plus 300.


-}
add300 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N300NatPlus n) Is (Difference a To (N300NatPlus nPlusA)))
add300 =
    add299 >> add1


{-| The `NNat` plus 301.


-}
add301 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N301NatPlus n) Is (Difference a To (N301NatPlus nPlusA)))
add301 =
    add300 >> add1


{-| The `NNat` plus 302.


-}
add302 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N302NatPlus n) Is (Difference a To (N302NatPlus nPlusA)))
add302 =
    add301 >> add1


{-| The `NNat` plus 303.


-}
add303 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N303NatPlus n) Is (Difference a To (N303NatPlus nPlusA)))
add303 =
    add302 >> add1


{-| The `NNat` plus 304.


-}
add304 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N304NatPlus n) Is (Difference a To (N304NatPlus nPlusA)))
add304 =
    add303 >> add1


{-| The `NNat` plus 305.


-}
add305 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N305NatPlus n) Is (Difference a To (N305NatPlus nPlusA)))
add305 =
    add304 >> add1


{-| The `NNat` plus 306.


-}
add306 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N306NatPlus n) Is (Difference a To (N306NatPlus nPlusA)))
add306 =
    add305 >> add1


{-| The `NNat` plus 307.


-}
add307 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N307NatPlus n) Is (Difference a To (N307NatPlus nPlusA)))
add307 =
    add306 >> add1


{-| The `NNat` plus 308.


-}
add308 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N308NatPlus n) Is (Difference a To (N308NatPlus nPlusA)))
add308 =
    add307 >> add1


{-| The `NNat` plus 309.


-}
add309 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N309NatPlus n) Is (Difference a To (N309NatPlus nPlusA)))
add309 =
    add308 >> add1


{-| The `NNat` plus 310.


-}
add310 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N310NatPlus n) Is (Difference a To (N310NatPlus nPlusA)))
add310 =
    add309 >> add1


{-| The `NNat` plus 311.


-}
add311 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N311NatPlus n) Is (Difference a To (N311NatPlus nPlusA)))
add311 =
    add310 >> add1


{-| The `NNat` plus 312.


-}
add312 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N312NatPlus n) Is (Difference a To (N312NatPlus nPlusA)))
add312 =
    add311 >> add1


{-| The `NNat` plus 313.


-}
add313 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N313NatPlus n) Is (Difference a To (N313NatPlus nPlusA)))
add313 =
    add312 >> add1


{-| The `NNat` plus 314.


-}
add314 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N314NatPlus n) Is (Difference a To (N314NatPlus nPlusA)))
add314 =
    add313 >> add1


{-| The `NNat` plus 315.


-}
add315 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N315NatPlus n) Is (Difference a To (N315NatPlus nPlusA)))
add315 =
    add314 >> add1


{-| The `NNat` plus 316.


-}
add316 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N316NatPlus n) Is (Difference a To (N316NatPlus nPlusA)))
add316 =
    add315 >> add1


{-| The `NNat` plus 317.


-}
add317 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N317NatPlus n) Is (Difference a To (N317NatPlus nPlusA)))
add317 =
    add316 >> add1


{-| The `NNat` plus 318.


-}
add318 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N318NatPlus n) Is (Difference a To (N318NatPlus nPlusA)))
add318 =
    add317 >> add1


{-| The `NNat` plus 319.


-}
add319 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N319NatPlus n) Is (Difference a To (N319NatPlus nPlusA)))
add319 =
    add318 >> add1


{-| The `NNat` plus 320.


-}
add320 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N320NatPlus n) Is (Difference a To (N320NatPlus nPlusA)))
add320 =
    add319 >> add1


{-| The `NNat` plus 321.


-}
add321 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N321NatPlus n) Is (Difference a To (N321NatPlus nPlusA)))
add321 =
    add320 >> add1


{-| The `NNat` plus 322.


-}
add322 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N322NatPlus n) Is (Difference a To (N322NatPlus nPlusA)))
add322 =
    add321 >> add1


{-| The `NNat` plus 323.


-}
add323 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N323NatPlus n) Is (Difference a To (N323NatPlus nPlusA)))
add323 =
    add322 >> add1


{-| The `NNat` plus 324.


-}
add324 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N324NatPlus n) Is (Difference a To (N324NatPlus nPlusA)))
add324 =
    add323 >> add1


{-| The `NNat` plus 325.


-}
add325 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N325NatPlus n) Is (Difference a To (N325NatPlus nPlusA)))
add325 =
    add324 >> add1


{-| The `NNat` plus 326.


-}
add326 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N326NatPlus n) Is (Difference a To (N326NatPlus nPlusA)))
add326 =
    add325 >> add1


{-| The `NNat` plus 327.


-}
add327 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N327NatPlus n) Is (Difference a To (N327NatPlus nPlusA)))
add327 =
    add326 >> add1


{-| The `NNat` plus 328.


-}
add328 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N328NatPlus n) Is (Difference a To (N328NatPlus nPlusA)))
add328 =
    add327 >> add1


{-| The `NNat` plus 329.


-}
add329 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N329NatPlus n) Is (Difference a To (N329NatPlus nPlusA)))
add329 =
    add328 >> add1


{-| The `NNat` plus 330.


-}
add330 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N330NatPlus n) Is (Difference a To (N330NatPlus nPlusA)))
add330 =
    add329 >> add1


{-| The `NNat` plus 331.


-}
add331 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N331NatPlus n) Is (Difference a To (N331NatPlus nPlusA)))
add331 =
    add330 >> add1


{-| The `NNat` plus 332.


-}
add332 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N332NatPlus n) Is (Difference a To (N332NatPlus nPlusA)))
add332 =
    add331 >> add1


{-| The `NNat` plus 333.


-}
add333 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N333NatPlus n) Is (Difference a To (N333NatPlus nPlusA)))
add333 =
    add332 >> add1


{-| The `NNat` plus 334.


-}
add334 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N334NatPlus n) Is (Difference a To (N334NatPlus nPlusA)))
add334 =
    add333 >> add1


{-| The `NNat` plus 335.


-}
add335 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N335NatPlus n) Is (Difference a To (N335NatPlus nPlusA)))
add335 =
    add334 >> add1


{-| The `NNat` plus 336.


-}
add336 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N336NatPlus n) Is (Difference a To (N336NatPlus nPlusA)))
add336 =
    add335 >> add1


{-| The `NNat` plus 337.


-}
add337 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N337NatPlus n) Is (Difference a To (N337NatPlus nPlusA)))
add337 =
    add336 >> add1


{-| The `NNat` plus 338.


-}
add338 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N338NatPlus n) Is (Difference a To (N338NatPlus nPlusA)))
add338 =
    add337 >> add1


{-| The `NNat` plus 339.


-}
add339 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N339NatPlus n) Is (Difference a To (N339NatPlus nPlusA)))
add339 =
    add338 >> add1


{-| The `NNat` plus 340.


-}
add340 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N340NatPlus n) Is (Difference a To (N340NatPlus nPlusA)))
add340 =
    add339 >> add1


{-| The `NNat` plus 341.


-}
add341 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N341NatPlus n) Is (Difference a To (N341NatPlus nPlusA)))
add341 =
    add340 >> add1


{-| The `NNat` plus 342.


-}
add342 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N342NatPlus n) Is (Difference a To (N342NatPlus nPlusA)))
add342 =
    add341 >> add1


{-| The `NNat` plus 343.


-}
add343 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N343NatPlus n) Is (Difference a To (N343NatPlus nPlusA)))
add343 =
    add342 >> add1


{-| The `NNat` plus 344.


-}
add344 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N344NatPlus n) Is (Difference a To (N344NatPlus nPlusA)))
add344 =
    add343 >> add1


{-| The `NNat` plus 345.


-}
add345 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N345NatPlus n) Is (Difference a To (N345NatPlus nPlusA)))
add345 =
    add344 >> add1


{-| The `NNat` plus 346.


-}
add346 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N346NatPlus n) Is (Difference a To (N346NatPlus nPlusA)))
add346 =
    add345 >> add1


{-| The `NNat` plus 347.


-}
add347 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N347NatPlus n) Is (Difference a To (N347NatPlus nPlusA)))
add347 =
    add346 >> add1


{-| The `NNat` plus 348.


-}
add348 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N348NatPlus n) Is (Difference a To (N348NatPlus nPlusA)))
add348 =
    add347 >> add1


{-| The `NNat` plus 349.


-}
add349 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N349NatPlus n) Is (Difference a To (N349NatPlus nPlusA)))
add349 =
    add348 >> add1


{-| The `NNat` plus 350.


-}
add350 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N350NatPlus n) Is (Difference a To (N350NatPlus nPlusA)))
add350 =
    add349 >> add1


{-| The `NNat` plus 351.


-}
add351 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N351NatPlus n) Is (Difference a To (N351NatPlus nPlusA)))
add351 =
    add350 >> add1


{-| The `NNat` plus 352.


-}
add352 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N352NatPlus n) Is (Difference a To (N352NatPlus nPlusA)))
add352 =
    add351 >> add1


{-| The `NNat` plus 353.


-}
add353 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N353NatPlus n) Is (Difference a To (N353NatPlus nPlusA)))
add353 =
    add352 >> add1


{-| The `NNat` plus 354.


-}
add354 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N354NatPlus n) Is (Difference a To (N354NatPlus nPlusA)))
add354 =
    add353 >> add1


{-| The `NNat` plus 355.


-}
add355 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N355NatPlus n) Is (Difference a To (N355NatPlus nPlusA)))
add355 =
    add354 >> add1


{-| The `NNat` plus 356.


-}
add356 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N356NatPlus n) Is (Difference a To (N356NatPlus nPlusA)))
add356 =
    add355 >> add1


{-| The `NNat` plus 357.


-}
add357 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N357NatPlus n) Is (Difference a To (N357NatPlus nPlusA)))
add357 =
    add356 >> add1


{-| The `NNat` plus 358.


-}
add358 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N358NatPlus n) Is (Difference a To (N358NatPlus nPlusA)))
add358 =
    add357 >> add1


{-| The `NNat` plus 359.


-}
add359 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N359NatPlus n) Is (Difference a To (N359NatPlus nPlusA)))
add359 =
    add358 >> add1


{-| The `NNat` plus 360.


-}
add360 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N360NatPlus n) Is (Difference a To (N360NatPlus nPlusA)))
add360 =
    add359 >> add1


{-| The `NNat` plus 361.


-}
add361 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N361NatPlus n) Is (Difference a To (N361NatPlus nPlusA)))
add361 =
    add360 >> add1


{-| The `NNat` plus 362.


-}
add362 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N362NatPlus n) Is (Difference a To (N362NatPlus nPlusA)))
add362 =
    add361 >> add1


{-| The `NNat` plus 363.


-}
add363 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N363NatPlus n) Is (Difference a To (N363NatPlus nPlusA)))
add363 =
    add362 >> add1


{-| The `NNat` plus 364.


-}
add364 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N364NatPlus n) Is (Difference a To (N364NatPlus nPlusA)))
add364 =
    add363 >> add1


{-| The `NNat` plus 365.


-}
add365 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N365NatPlus n) Is (Difference a To (N365NatPlus nPlusA)))
add365 =
    add364 >> add1


{-| The `NNat` plus 366.


-}
add366 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N366NatPlus n) Is (Difference a To (N366NatPlus nPlusA)))
add366 =
    add365 >> add1


{-| The `NNat` plus 367.


-}
add367 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N367NatPlus n) Is (Difference a To (N367NatPlus nPlusA)))
add367 =
    add366 >> add1


{-| The `NNat` plus 368.


-}
add368 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N368NatPlus n) Is (Difference a To (N368NatPlus nPlusA)))
add368 =
    add367 >> add1


{-| The `NNat` plus 369.


-}
add369 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N369NatPlus n) Is (Difference a To (N369NatPlus nPlusA)))
add369 =
    add368 >> add1


{-| The `NNat` plus 370.


-}
add370 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N370NatPlus n) Is (Difference a To (N370NatPlus nPlusA)))
add370 =
    add369 >> add1


{-| The `NNat` plus 371.


-}
add371 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N371NatPlus n) Is (Difference a To (N371NatPlus nPlusA)))
add371 =
    add370 >> add1


{-| The `NNat` plus 372.


-}
add372 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N372NatPlus n) Is (Difference a To (N372NatPlus nPlusA)))
add372 =
    add371 >> add1


{-| The `NNat` plus 373.


-}
add373 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N373NatPlus n) Is (Difference a To (N373NatPlus nPlusA)))
add373 =
    add372 >> add1


{-| The `NNat` plus 374.


-}
add374 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N374NatPlus n) Is (Difference a To (N374NatPlus nPlusA)))
add374 =
    add373 >> add1


{-| The `NNat` plus 375.


-}
add375 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N375NatPlus n) Is (Difference a To (N375NatPlus nPlusA)))
add375 =
    add374 >> add1


{-| The `NNat` plus 376.


-}
add376 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N376NatPlus n) Is (Difference a To (N376NatPlus nPlusA)))
add376 =
    add375 >> add1


{-| The `NNat` plus 377.


-}
add377 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N377NatPlus n) Is (Difference a To (N377NatPlus nPlusA)))
add377 =
    add376 >> add1


{-| The `NNat` plus 378.


-}
add378 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N378NatPlus n) Is (Difference a To (N378NatPlus nPlusA)))
add378 =
    add377 >> add1


{-| The `NNat` plus 379.


-}
add379 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N379NatPlus n) Is (Difference a To (N379NatPlus nPlusA)))
add379 =
    add378 >> add1


{-| The `NNat` plus 380.


-}
add380 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N380NatPlus n) Is (Difference a To (N380NatPlus nPlusA)))
add380 =
    add379 >> add1


{-| The `NNat` plus 381.


-}
add381 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N381NatPlus n) Is (Difference a To (N381NatPlus nPlusA)))
add381 =
    add380 >> add1


{-| The `NNat` plus 382.


-}
add382 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N382NatPlus n) Is (Difference a To (N382NatPlus nPlusA)))
add382 =
    add381 >> add1


{-| The `NNat` plus 383.


-}
add383 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N383NatPlus n) Is (Difference a To (N383NatPlus nPlusA)))
add383 =
    add382 >> add1


{-| The `NNat` plus 384.


-}
add384 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N384NatPlus n) Is (Difference a To (N384NatPlus nPlusA)))
add384 =
    add383 >> add1


{-| The `NNat` plus 385.


-}
add385 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N385NatPlus n) Is (Difference a To (N385NatPlus nPlusA)))
add385 =
    add384 >> add1


{-| The `NNat` plus 386.


-}
add386 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N386NatPlus n) Is (Difference a To (N386NatPlus nPlusA)))
add386 =
    add385 >> add1


{-| The `NNat` plus 387.


-}
add387 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N387NatPlus n) Is (Difference a To (N387NatPlus nPlusA)))
add387 =
    add386 >> add1


{-| The `NNat` plus 388.


-}
add388 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N388NatPlus n) Is (Difference a To (N388NatPlus nPlusA)))
add388 =
    add387 >> add1


{-| The `NNat` plus 389.


-}
add389 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N389NatPlus n) Is (Difference a To (N389NatPlus nPlusA)))
add389 =
    add388 >> add1


{-| The `NNat` plus 390.


-}
add390 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N390NatPlus n) Is (Difference a To (N390NatPlus nPlusA)))
add390 =
    add389 >> add1


{-| The `NNat` plus 391.


-}
add391 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N391NatPlus n) Is (Difference a To (N391NatPlus nPlusA)))
add391 =
    add390 >> add1


{-| The `NNat` plus 392.


-}
add392 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N392NatPlus n) Is (Difference a To (N392NatPlus nPlusA)))
add392 =
    add391 >> add1


{-| The `NNat` plus 393.


-}
add393 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N393NatPlus n) Is (Difference a To (N393NatPlus nPlusA)))
add393 =
    add392 >> add1


{-| The `NNat` plus 394.


-}
add394 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N394NatPlus n) Is (Difference a To (N394NatPlus nPlusA)))
add394 =
    add393 >> add1


{-| The `NNat` plus 395.


-}
add395 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N395NatPlus n) Is (Difference a To (N395NatPlus nPlusA)))
add395 =
    add394 >> add1


{-| The `NNat` plus 396.


-}
add396 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N396NatPlus n) Is (Difference a To (N396NatPlus nPlusA)))
add396 =
    add395 >> add1


{-| The `NNat` plus 397.


-}
add397 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N397NatPlus n) Is (Difference a To (N397NatPlus nPlusA)))
add397 =
    add396 >> add1


{-| The `NNat` plus 398.


-}
add398 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N398NatPlus n) Is (Difference a To (N398NatPlus nPlusA)))
add398 =
    add397 >> add1


{-| The `NNat` plus 399.


-}
add399 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N399NatPlus n) Is (Difference a To (N399NatPlus nPlusA)))
add399 =
    add398 >> add1


{-| The `NNat` plus 400.


-}
add400 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N400NatPlus n) Is (Difference a To (N400NatPlus nPlusA)))
add400 =
    add399 >> add1


{-| The `NNat` plus 401.


-}
add401 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N401NatPlus n) Is (Difference a To (N401NatPlus nPlusA)))
add401 =
    add400 >> add1


{-| The `NNat` plus 402.


-}
add402 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N402NatPlus n) Is (Difference a To (N402NatPlus nPlusA)))
add402 =
    add401 >> add1


{-| The `NNat` plus 403.


-}
add403 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N403NatPlus n) Is (Difference a To (N403NatPlus nPlusA)))
add403 =
    add402 >> add1


{-| The `NNat` plus 404.


-}
add404 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N404NatPlus n) Is (Difference a To (N404NatPlus nPlusA)))
add404 =
    add403 >> add1


{-| The `NNat` plus 405.


-}
add405 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N405NatPlus n) Is (Difference a To (N405NatPlus nPlusA)))
add405 =
    add404 >> add1


{-| The `NNat` plus 406.


-}
add406 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N406NatPlus n) Is (Difference a To (N406NatPlus nPlusA)))
add406 =
    add405 >> add1


{-| The `NNat` plus 407.


-}
add407 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N407NatPlus n) Is (Difference a To (N407NatPlus nPlusA)))
add407 =
    add406 >> add1


{-| The `NNat` plus 408.


-}
add408 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N408NatPlus n) Is (Difference a To (N408NatPlus nPlusA)))
add408 =
    add407 >> add1


{-| The `NNat` plus 409.


-}
add409 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N409NatPlus n) Is (Difference a To (N409NatPlus nPlusA)))
add409 =
    add408 >> add1


{-| The `NNat` plus 410.


-}
add410 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N410NatPlus n) Is (Difference a To (N410NatPlus nPlusA)))
add410 =
    add409 >> add1


{-| The `NNat` plus 411.


-}
add411 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N411NatPlus n) Is (Difference a To (N411NatPlus nPlusA)))
add411 =
    add410 >> add1


{-| The `NNat` plus 412.


-}
add412 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N412NatPlus n) Is (Difference a To (N412NatPlus nPlusA)))
add412 =
    add411 >> add1


{-| The `NNat` plus 413.


-}
add413 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N413NatPlus n) Is (Difference a To (N413NatPlus nPlusA)))
add413 =
    add412 >> add1


{-| The `NNat` plus 414.


-}
add414 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N414NatPlus n) Is (Difference a To (N414NatPlus nPlusA)))
add414 =
    add413 >> add1


{-| The `NNat` plus 415.


-}
add415 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N415NatPlus n) Is (Difference a To (N415NatPlus nPlusA)))
add415 =
    add414 >> add1


{-| The `NNat` plus 416.


-}
add416 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N416NatPlus n) Is (Difference a To (N416NatPlus nPlusA)))
add416 =
    add415 >> add1


{-| The `NNat` plus 417.


-}
add417 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N417NatPlus n) Is (Difference a To (N417NatPlus nPlusA)))
add417 =
    add416 >> add1


{-| The `NNat` plus 418.


-}
add418 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N418NatPlus n) Is (Difference a To (N418NatPlus nPlusA)))
add418 =
    add417 >> add1


{-| The `NNat` plus 419.


-}
add419 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N419NatPlus n) Is (Difference a To (N419NatPlus nPlusA)))
add419 =
    add418 >> add1


{-| The `NNat` plus 420.


-}
add420 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N420NatPlus n) Is (Difference a To (N420NatPlus nPlusA)))
add420 =
    add419 >> add1


{-| The `NNat` plus 421.


-}
add421 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N421NatPlus n) Is (Difference a To (N421NatPlus nPlusA)))
add421 =
    add420 >> add1


{-| The `NNat` plus 422.


-}
add422 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N422NatPlus n) Is (Difference a To (N422NatPlus nPlusA)))
add422 =
    add421 >> add1


{-| The `NNat` plus 423.


-}
add423 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N423NatPlus n) Is (Difference a To (N423NatPlus nPlusA)))
add423 =
    add422 >> add1


{-| The `NNat` plus 424.


-}
add424 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N424NatPlus n) Is (Difference a To (N424NatPlus nPlusA)))
add424 =
    add423 >> add1


{-| The `NNat` plus 425.


-}
add425 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N425NatPlus n) Is (Difference a To (N425NatPlus nPlusA)))
add425 =
    add424 >> add1


{-| The `NNat` plus 426.


-}
add426 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N426NatPlus n) Is (Difference a To (N426NatPlus nPlusA)))
add426 =
    add425 >> add1


{-| The `NNat` plus 427.


-}
add427 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N427NatPlus n) Is (Difference a To (N427NatPlus nPlusA)))
add427 =
    add426 >> add1


{-| The `NNat` plus 428.


-}
add428 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N428NatPlus n) Is (Difference a To (N428NatPlus nPlusA)))
add428 =
    add427 >> add1


{-| The `NNat` plus 429.


-}
add429 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N429NatPlus n) Is (Difference a To (N429NatPlus nPlusA)))
add429 =
    add428 >> add1


{-| The `NNat` plus 430.


-}
add430 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N430NatPlus n) Is (Difference a To (N430NatPlus nPlusA)))
add430 =
    add429 >> add1


{-| The `NNat` plus 431.


-}
add431 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N431NatPlus n) Is (Difference a To (N431NatPlus nPlusA)))
add431 =
    add430 >> add1


{-| The `NNat` plus 432.


-}
add432 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N432NatPlus n) Is (Difference a To (N432NatPlus nPlusA)))
add432 =
    add431 >> add1


{-| The `NNat` plus 433.


-}
add433 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N433NatPlus n) Is (Difference a To (N433NatPlus nPlusA)))
add433 =
    add432 >> add1


{-| The `NNat` plus 434.


-}
add434 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N434NatPlus n) Is (Difference a To (N434NatPlus nPlusA)))
add434 =
    add433 >> add1


{-| The `NNat` plus 435.


-}
add435 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N435NatPlus n) Is (Difference a To (N435NatPlus nPlusA)))
add435 =
    add434 >> add1


{-| The `NNat` plus 436.


-}
add436 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N436NatPlus n) Is (Difference a To (N436NatPlus nPlusA)))
add436 =
    add435 >> add1


{-| The `NNat` plus 437.


-}
add437 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N437NatPlus n) Is (Difference a To (N437NatPlus nPlusA)))
add437 =
    add436 >> add1


{-| The `NNat` plus 438.


-}
add438 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N438NatPlus n) Is (Difference a To (N438NatPlus nPlusA)))
add438 =
    add437 >> add1


{-| The `NNat` plus 439.


-}
add439 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N439NatPlus n) Is (Difference a To (N439NatPlus nPlusA)))
add439 =
    add438 >> add1


{-| The `NNat` plus 440.


-}
add440 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N440NatPlus n) Is (Difference a To (N440NatPlus nPlusA)))
add440 =
    add439 >> add1


{-| The `NNat` plus 441.


-}
add441 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N441NatPlus n) Is (Difference a To (N441NatPlus nPlusA)))
add441 =
    add440 >> add1


{-| The `NNat` plus 442.


-}
add442 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N442NatPlus n) Is (Difference a To (N442NatPlus nPlusA)))
add442 =
    add441 >> add1


{-| The `NNat` plus 443.


-}
add443 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N443NatPlus n) Is (Difference a To (N443NatPlus nPlusA)))
add443 =
    add442 >> add1


{-| The `NNat` plus 444.


-}
add444 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N444NatPlus n) Is (Difference a To (N444NatPlus nPlusA)))
add444 =
    add443 >> add1


{-| The `NNat` plus 445.


-}
add445 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N445NatPlus n) Is (Difference a To (N445NatPlus nPlusA)))
add445 =
    add444 >> add1


{-| The `NNat` plus 446.


-}
add446 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N446NatPlus n) Is (Difference a To (N446NatPlus nPlusA)))
add446 =
    add445 >> add1


{-| The `NNat` plus 447.


-}
add447 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N447NatPlus n) Is (Difference a To (N447NatPlus nPlusA)))
add447 =
    add446 >> add1


{-| The `NNat` plus 448.


-}
add448 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N448NatPlus n) Is (Difference a To (N448NatPlus nPlusA)))
add448 =
    add447 >> add1


{-| The `NNat` plus 449.


-}
add449 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N449NatPlus n) Is (Difference a To (N449NatPlus nPlusA)))
add449 =
    add448 >> add1


{-| The `NNat` plus 450.


-}
add450 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N450NatPlus n) Is (Difference a To (N450NatPlus nPlusA)))
add450 =
    add449 >> add1


{-| The `NNat` plus 451.


-}
add451 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N451NatPlus n) Is (Difference a To (N451NatPlus nPlusA)))
add451 =
    add450 >> add1


{-| The `NNat` plus 452.


-}
add452 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N452NatPlus n) Is (Difference a To (N452NatPlus nPlusA)))
add452 =
    add451 >> add1


{-| The `NNat` plus 453.


-}
add453 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N453NatPlus n) Is (Difference a To (N453NatPlus nPlusA)))
add453 =
    add452 >> add1


{-| The `NNat` plus 454.


-}
add454 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N454NatPlus n) Is (Difference a To (N454NatPlus nPlusA)))
add454 =
    add453 >> add1


{-| The `NNat` plus 455.


-}
add455 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N455NatPlus n) Is (Difference a To (N455NatPlus nPlusA)))
add455 =
    add454 >> add1


{-| The `NNat` plus 456.


-}
add456 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N456NatPlus n) Is (Difference a To (N456NatPlus nPlusA)))
add456 =
    add455 >> add1


{-| The `NNat` plus 457.


-}
add457 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N457NatPlus n) Is (Difference a To (N457NatPlus nPlusA)))
add457 =
    add456 >> add1


{-| The `NNat` plus 458.


-}
add458 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N458NatPlus n) Is (Difference a To (N458NatPlus nPlusA)))
add458 =
    add457 >> add1


{-| The `NNat` plus 459.


-}
add459 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N459NatPlus n) Is (Difference a To (N459NatPlus nPlusA)))
add459 =
    add458 >> add1


{-| The `NNat` plus 460.


-}
add460 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N460NatPlus n) Is (Difference a To (N460NatPlus nPlusA)))
add460 =
    add459 >> add1


{-| The `NNat` plus 461.


-}
add461 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N461NatPlus n) Is (Difference a To (N461NatPlus nPlusA)))
add461 =
    add460 >> add1


{-| The `NNat` plus 462.


-}
add462 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N462NatPlus n) Is (Difference a To (N462NatPlus nPlusA)))
add462 =
    add461 >> add1


{-| The `NNat` plus 463.


-}
add463 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N463NatPlus n) Is (Difference a To (N463NatPlus nPlusA)))
add463 =
    add462 >> add1


{-| The `NNat` plus 464.


-}
add464 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N464NatPlus n) Is (Difference a To (N464NatPlus nPlusA)))
add464 =
    add463 >> add1


{-| The `NNat` plus 465.


-}
add465 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N465NatPlus n) Is (Difference a To (N465NatPlus nPlusA)))
add465 =
    add464 >> add1


{-| The `NNat` plus 466.


-}
add466 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N466NatPlus n) Is (Difference a To (N466NatPlus nPlusA)))
add466 =
    add465 >> add1


{-| The `NNat` plus 467.


-}
add467 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N467NatPlus n) Is (Difference a To (N467NatPlus nPlusA)))
add467 =
    add466 >> add1


{-| The `NNat` plus 468.


-}
add468 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N468NatPlus n) Is (Difference a To (N468NatPlus nPlusA)))
add468 =
    add467 >> add1


{-| The `NNat` plus 469.


-}
add469 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N469NatPlus n) Is (Difference a To (N469NatPlus nPlusA)))
add469 =
    add468 >> add1


{-| The `NNat` plus 470.


-}
add470 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N470NatPlus n) Is (Difference a To (N470NatPlus nPlusA)))
add470 =
    add469 >> add1


{-| The `NNat` plus 471.


-}
add471 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N471NatPlus n) Is (Difference a To (N471NatPlus nPlusA)))
add471 =
    add470 >> add1


{-| The `NNat` plus 472.


-}
add472 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N472NatPlus n) Is (Difference a To (N472NatPlus nPlusA)))
add472 =
    add471 >> add1


{-| The `NNat` plus 473.


-}
add473 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N473NatPlus n) Is (Difference a To (N473NatPlus nPlusA)))
add473 =
    add472 >> add1


{-| The `NNat` plus 474.


-}
add474 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N474NatPlus n) Is (Difference a To (N474NatPlus nPlusA)))
add474 =
    add473 >> add1


{-| The `NNat` plus 475.


-}
add475 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N475NatPlus n) Is (Difference a To (N475NatPlus nPlusA)))
add475 =
    add474 >> add1


{-| The `NNat` plus 476.


-}
add476 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N476NatPlus n) Is (Difference a To (N476NatPlus nPlusA)))
add476 =
    add475 >> add1


{-| The `NNat` plus 477.


-}
add477 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N477NatPlus n) Is (Difference a To (N477NatPlus nPlusA)))
add477 =
    add476 >> add1


{-| The `NNat` plus 478.


-}
add478 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N478NatPlus n) Is (Difference a To (N478NatPlus nPlusA)))
add478 =
    add477 >> add1


{-| The `NNat` plus 479.


-}
add479 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N479NatPlus n) Is (Difference a To (N479NatPlus nPlusA)))
add479 =
    add478 >> add1


{-| The `NNat` plus 480.


-}
add480 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N480NatPlus n) Is (Difference a To (N480NatPlus nPlusA)))
add480 =
    add479 >> add1


{-| The `NNat` plus 481.


-}
add481 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N481NatPlus n) Is (Difference a To (N481NatPlus nPlusA)))
add481 =
    add480 >> add1


{-| The `NNat` plus 482.


-}
add482 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N482NatPlus n) Is (Difference a To (N482NatPlus nPlusA)))
add482 =
    add481 >> add1


{-| The `NNat` plus 483.


-}
add483 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N483NatPlus n) Is (Difference a To (N483NatPlus nPlusA)))
add483 =
    add482 >> add1


{-| The `NNat` plus 484.


-}
add484 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N484NatPlus n) Is (Difference a To (N484NatPlus nPlusA)))
add484 =
    add483 >> add1


{-| The `NNat` plus 485.


-}
add485 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N485NatPlus n) Is (Difference a To (N485NatPlus nPlusA)))
add485 =
    add484 >> add1


{-| The `NNat` plus 486.


-}
add486 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N486NatPlus n) Is (Difference a To (N486NatPlus nPlusA)))
add486 =
    add485 >> add1


{-| The `NNat` plus 487.


-}
add487 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N487NatPlus n) Is (Difference a To (N487NatPlus nPlusA)))
add487 =
    add486 >> add1


{-| The `NNat` plus 488.


-}
add488 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N488NatPlus n) Is (Difference a To (N488NatPlus nPlusA)))
add488 =
    add487 >> add1


{-| The `NNat` plus 489.


-}
add489 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N489NatPlus n) Is (Difference a To (N489NatPlus nPlusA)))
add489 =
    add488 >> add1


{-| The `NNat` plus 490.


-}
add490 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N490NatPlus n) Is (Difference a To (N490NatPlus nPlusA)))
add490 =
    add489 >> add1


{-| The `NNat` plus 491.


-}
add491 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N491NatPlus n) Is (Difference a To (N491NatPlus nPlusA)))
add491 =
    add490 >> add1


{-| The `NNat` plus 492.


-}
add492 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N492NatPlus n) Is (Difference a To (N492NatPlus nPlusA)))
add492 =
    add491 >> add1


{-| The `NNat` plus 493.


-}
add493 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N493NatPlus n) Is (Difference a To (N493NatPlus nPlusA)))
add493 =
    add492 >> add1


{-| The `NNat` plus 494.


-}
add494 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N494NatPlus n) Is (Difference a To (N494NatPlus nPlusA)))
add494 =
    add493 >> add1


{-| The `NNat` plus 495.


-}
add495 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N495NatPlus n) Is (Difference a To (N495NatPlus nPlusA)))
add495 =
    add494 >> add1


{-| The `NNat` plus 496.


-}
add496 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N496NatPlus n) Is (Difference a To (N496NatPlus nPlusA)))
add496 =
    add495 >> add1


{-| The `NNat` plus 497.


-}
add497 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N497NatPlus n) Is (Difference a To (N497NatPlus nPlusA)))
add497 =
    add496 >> add1


{-| The `NNat` plus 498.


-}
add498 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N498NatPlus n) Is (Difference a To (N498NatPlus nPlusA)))
add498 =
    add497 >> add1


{-| The `NNat` plus 499.


-}
add499 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N499NatPlus n) Is (Difference a To (N499NatPlus nPlusA)))
add499 =
    add498 >> add1


{-| The `NNat` plus 500.


-}
add500 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N500NatPlus n) Is (Difference a To (N500NatPlus nPlusA)))
add500 =
    add499 >> add1


{-| The `NNat` plus 501.


-}
add501 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N501NatPlus n) Is (Difference a To (N501NatPlus nPlusA)))
add501 =
    add500 >> add1


{-| The `NNat` plus 502.


-}
add502 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N502NatPlus n) Is (Difference a To (N502NatPlus nPlusA)))
add502 =
    add501 >> add1


{-| The `NNat` plus 503.


-}
add503 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N503NatPlus n) Is (Difference a To (N503NatPlus nPlusA)))
add503 =
    add502 >> add1


{-| The `NNat` plus 504.


-}
add504 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N504NatPlus n) Is (Difference a To (N504NatPlus nPlusA)))
add504 =
    add503 >> add1


{-| The `NNat` plus 505.


-}
add505 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N505NatPlus n) Is (Difference a To (N505NatPlus nPlusA)))
add505 =
    add504 >> add1


{-| The `NNat` plus 506.


-}
add506 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N506NatPlus n) Is (Difference a To (N506NatPlus nPlusA)))
add506 =
    add505 >> add1


{-| The `NNat` plus 507.


-}
add507 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N507NatPlus n) Is (Difference a To (N507NatPlus nPlusA)))
add507 =
    add506 >> add1


{-| The `NNat` plus 508.


-}
add508 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N508NatPlus n) Is (Difference a To (N508NatPlus nPlusA)))
add508 =
    add507 >> add1


{-| The `NNat` plus 509.


-}
add509 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N509NatPlus n) Is (Difference a To (N509NatPlus nPlusA)))
add509 =
    add508 >> add1


{-| The `NNat` plus 510.


-}
add510 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N510NatPlus n) Is (Difference a To (N510NatPlus nPlusA)))
add510 =
    add509 >> add1


{-| The `NNat` plus 511.


-}
add511 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N511NatPlus n) Is (Difference a To (N511NatPlus nPlusA)))
add511 =
    add510 >> add1


{-| The `NNat` plus 512.


-}
add512 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N512NatPlus n) Is (Difference a To (N512NatPlus nPlusA)))
add512 =
    add511 >> add1


{-| The `NNat` plus 513.


-}
add513 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N513NatPlus n) Is (Difference a To (N513NatPlus nPlusA)))
add513 =
    add512 >> add1


{-| The `NNat` plus 514.


-}
add514 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N514NatPlus n) Is (Difference a To (N514NatPlus nPlusA)))
add514 =
    add513 >> add1


{-| The `NNat` plus 515.


-}
add515 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N515NatPlus n) Is (Difference a To (N515NatPlus nPlusA)))
add515 =
    add514 >> add1


{-| The `NNat` plus 516.


-}
add516 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N516NatPlus n) Is (Difference a To (N516NatPlus nPlusA)))
add516 =
    add515 >> add1


{-| The `NNat` plus 517.


-}
add517 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N517NatPlus n) Is (Difference a To (N517NatPlus nPlusA)))
add517 =
    add516 >> add1


{-| The `NNat` plus 518.


-}
add518 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N518NatPlus n) Is (Difference a To (N518NatPlus nPlusA)))
add518 =
    add517 >> add1


{-| The `NNat` plus 519.


-}
add519 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N519NatPlus n) Is (Difference a To (N519NatPlus nPlusA)))
add519 =
    add518 >> add1


{-| The `NNat` plus 520.


-}
add520 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N520NatPlus n) Is (Difference a To (N520NatPlus nPlusA)))
add520 =
    add519 >> add1


{-| The `NNat` plus 521.


-}
add521 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N521NatPlus n) Is (Difference a To (N521NatPlus nPlusA)))
add521 =
    add520 >> add1


{-| The `NNat` plus 522.


-}
add522 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N522NatPlus n) Is (Difference a To (N522NatPlus nPlusA)))
add522 =
    add521 >> add1


{-| The `NNat` plus 523.


-}
add523 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N523NatPlus n) Is (Difference a To (N523NatPlus nPlusA)))
add523 =
    add522 >> add1


{-| The `NNat` plus 524.


-}
add524 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N524NatPlus n) Is (Difference a To (N524NatPlus nPlusA)))
add524 =
    add523 >> add1


{-| The `NNat` plus 525.


-}
add525 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N525NatPlus n) Is (Difference a To (N525NatPlus nPlusA)))
add525 =
    add524 >> add1


{-| The `NNat` plus 526.


-}
add526 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N526NatPlus n) Is (Difference a To (N526NatPlus nPlusA)))
add526 =
    add525 >> add1


{-| The `NNat` plus 527.


-}
add527 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N527NatPlus n) Is (Difference a To (N527NatPlus nPlusA)))
add527 =
    add526 >> add1


{-| The `NNat` plus 528.


-}
add528 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N528NatPlus n) Is (Difference a To (N528NatPlus nPlusA)))
add528 =
    add527 >> add1


{-| The `NNat` plus 529.


-}
add529 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N529NatPlus n) Is (Difference a To (N529NatPlus nPlusA)))
add529 =
    add528 >> add1


{-| The `NNat` plus 530.


-}
add530 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N530NatPlus n) Is (Difference a To (N530NatPlus nPlusA)))
add530 =
    add529 >> add1


{-| The `NNat` plus 531.


-}
add531 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N531NatPlus n) Is (Difference a To (N531NatPlus nPlusA)))
add531 =
    add530 >> add1


{-| The `NNat` plus 532.


-}
add532 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N532NatPlus n) Is (Difference a To (N532NatPlus nPlusA)))
add532 =
    add531 >> add1


{-| The `NNat` plus 533.


-}
add533 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N533NatPlus n) Is (Difference a To (N533NatPlus nPlusA)))
add533 =
    add532 >> add1


{-| The `NNat` plus 534.


-}
add534 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N534NatPlus n) Is (Difference a To (N534NatPlus nPlusA)))
add534 =
    add533 >> add1


{-| The `NNat` plus 535.


-}
add535 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N535NatPlus n) Is (Difference a To (N535NatPlus nPlusA)))
add535 =
    add534 >> add1


{-| The `NNat` plus 536.


-}
add536 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N536NatPlus n) Is (Difference a To (N536NatPlus nPlusA)))
add536 =
    add535 >> add1


{-| The `NNat` plus 537.


-}
add537 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N537NatPlus n) Is (Difference a To (N537NatPlus nPlusA)))
add537 =
    add536 >> add1


{-| The `NNat` plus 538.


-}
add538 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N538NatPlus n) Is (Difference a To (N538NatPlus nPlusA)))
add538 =
    add537 >> add1


{-| The `NNat` plus 539.


-}
add539 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N539NatPlus n) Is (Difference a To (N539NatPlus nPlusA)))
add539 =
    add538 >> add1


{-| The `NNat` plus 540.


-}
add540 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N540NatPlus n) Is (Difference a To (N540NatPlus nPlusA)))
add540 =
    add539 >> add1


{-| The `NNat` plus 541.


-}
add541 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N541NatPlus n) Is (Difference a To (N541NatPlus nPlusA)))
add541 =
    add540 >> add1


{-| The `NNat` plus 542.


-}
add542 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N542NatPlus n) Is (Difference a To (N542NatPlus nPlusA)))
add542 =
    add541 >> add1


{-| The `NNat` plus 543.


-}
add543 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N543NatPlus n) Is (Difference a To (N543NatPlus nPlusA)))
add543 =
    add542 >> add1


{-| The `NNat` plus 544.


-}
add544 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N544NatPlus n) Is (Difference a To (N544NatPlus nPlusA)))
add544 =
    add543 >> add1


{-| The `NNat` plus 545.


-}
add545 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N545NatPlus n) Is (Difference a To (N545NatPlus nPlusA)))
add545 =
    add544 >> add1


{-| The `NNat` plus 546.


-}
add546 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N546NatPlus n) Is (Difference a To (N546NatPlus nPlusA)))
add546 =
    add545 >> add1


{-| The `NNat` plus 547.


-}
add547 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N547NatPlus n) Is (Difference a To (N547NatPlus nPlusA)))
add547 =
    add546 >> add1


{-| The `NNat` plus 548.


-}
add548 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N548NatPlus n) Is (Difference a To (N548NatPlus nPlusA)))
add548 =
    add547 >> add1


{-| The `NNat` plus 549.


-}
add549 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N549NatPlus n) Is (Difference a To (N549NatPlus nPlusA)))
add549 =
    add548 >> add1


{-| The `NNat` plus 550.


-}
add550 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N550NatPlus n) Is (Difference a To (N550NatPlus nPlusA)))
add550 =
    add549 >> add1


{-| The `NNat` plus 551.


-}
add551 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N551NatPlus n) Is (Difference a To (N551NatPlus nPlusA)))
add551 =
    add550 >> add1


{-| The `NNat` plus 552.


-}
add552 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N552NatPlus n) Is (Difference a To (N552NatPlus nPlusA)))
add552 =
    add551 >> add1


{-| The `NNat` plus 553.


-}
add553 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N553NatPlus n) Is (Difference a To (N553NatPlus nPlusA)))
add553 =
    add552 >> add1


{-| The `NNat` plus 554.


-}
add554 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N554NatPlus n) Is (Difference a To (N554NatPlus nPlusA)))
add554 =
    add553 >> add1


{-| The `NNat` plus 555.


-}
add555 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N555NatPlus n) Is (Difference a To (N555NatPlus nPlusA)))
add555 =
    add554 >> add1


{-| The `NNat` plus 556.


-}
add556 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N556NatPlus n) Is (Difference a To (N556NatPlus nPlusA)))
add556 =
    add555 >> add1


{-| The `NNat` plus 557.


-}
add557 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N557NatPlus n) Is (Difference a To (N557NatPlus nPlusA)))
add557 =
    add556 >> add1


{-| The `NNat` plus 558.


-}
add558 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N558NatPlus n) Is (Difference a To (N558NatPlus nPlusA)))
add558 =
    add557 >> add1


{-| The `NNat` plus 559.


-}
add559 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N559NatPlus n) Is (Difference a To (N559NatPlus nPlusA)))
add559 =
    add558 >> add1


{-| The `NNat` plus 560.


-}
add560 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N560NatPlus n) Is (Difference a To (N560NatPlus nPlusA)))
add560 =
    add559 >> add1


{-| The `NNat` plus 561.


-}
add561 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N561NatPlus n) Is (Difference a To (N561NatPlus nPlusA)))
add561 =
    add560 >> add1


{-| The `NNat` plus 562.


-}
add562 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N562NatPlus n) Is (Difference a To (N562NatPlus nPlusA)))
add562 =
    add561 >> add1


{-| The `NNat` plus 563.


-}
add563 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N563NatPlus n) Is (Difference a To (N563NatPlus nPlusA)))
add563 =
    add562 >> add1


{-| The `NNat` plus 564.


-}
add564 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N564NatPlus n) Is (Difference a To (N564NatPlus nPlusA)))
add564 =
    add563 >> add1


{-| The `NNat` plus 565.


-}
add565 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N565NatPlus n) Is (Difference a To (N565NatPlus nPlusA)))
add565 =
    add564 >> add1


{-| The `NNat` plus 566.


-}
add566 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N566NatPlus n) Is (Difference a To (N566NatPlus nPlusA)))
add566 =
    add565 >> add1


{-| The `NNat` plus 567.


-}
add567 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N567NatPlus n) Is (Difference a To (N567NatPlus nPlusA)))
add567 =
    add566 >> add1


{-| The `NNat` plus 568.


-}
add568 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N568NatPlus n) Is (Difference a To (N568NatPlus nPlusA)))
add568 =
    add567 >> add1


{-| The `NNat` plus 569.


-}
add569 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N569NatPlus n) Is (Difference a To (N569NatPlus nPlusA)))
add569 =
    add568 >> add1


{-| The `NNat` plus 570.


-}
add570 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N570NatPlus n) Is (Difference a To (N570NatPlus nPlusA)))
add570 =
    add569 >> add1


{-| The `NNat` plus 571.


-}
add571 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N571NatPlus n) Is (Difference a To (N571NatPlus nPlusA)))
add571 =
    add570 >> add1


{-| The `NNat` plus 572.


-}
add572 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N572NatPlus n) Is (Difference a To (N572NatPlus nPlusA)))
add572 =
    add571 >> add1


{-| The `NNat` plus 573.


-}
add573 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N573NatPlus n) Is (Difference a To (N573NatPlus nPlusA)))
add573 =
    add572 >> add1


{-| The `NNat` plus 574.


-}
add574 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N574NatPlus n) Is (Difference a To (N574NatPlus nPlusA)))
add574 =
    add573 >> add1


{-| The `NNat` plus 575.


-}
add575 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N575NatPlus n) Is (Difference a To (N575NatPlus nPlusA)))
add575 =
    add574 >> add1


{-| The `NNat` plus 576.


-}
add576 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N576NatPlus n) Is (Difference a To (N576NatPlus nPlusA)))
add576 =
    add575 >> add1


{-| The `NNat` plus 577.


-}
add577 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N577NatPlus n) Is (Difference a To (N577NatPlus nPlusA)))
add577 =
    add576 >> add1


{-| The `NNat` plus 578.


-}
add578 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N578NatPlus n) Is (Difference a To (N578NatPlus nPlusA)))
add578 =
    add577 >> add1


{-| The `NNat` plus 579.


-}
add579 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N579NatPlus n) Is (Difference a To (N579NatPlus nPlusA)))
add579 =
    add578 >> add1


{-| The `NNat` plus 580.


-}
add580 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N580NatPlus n) Is (Difference a To (N580NatPlus nPlusA)))
add580 =
    add579 >> add1


{-| The `NNat` plus 581.


-}
add581 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N581NatPlus n) Is (Difference a To (N581NatPlus nPlusA)))
add581 =
    add580 >> add1


{-| The `NNat` plus 582.


-}
add582 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N582NatPlus n) Is (Difference a To (N582NatPlus nPlusA)))
add582 =
    add581 >> add1


{-| The `NNat` plus 583.


-}
add583 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N583NatPlus n) Is (Difference a To (N583NatPlus nPlusA)))
add583 =
    add582 >> add1


{-| The `NNat` plus 584.


-}
add584 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N584NatPlus n) Is (Difference a To (N584NatPlus nPlusA)))
add584 =
    add583 >> add1


{-| The `NNat` plus 585.


-}
add585 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N585NatPlus n) Is (Difference a To (N585NatPlus nPlusA)))
add585 =
    add584 >> add1


{-| The `NNat` plus 586.


-}
add586 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N586NatPlus n) Is (Difference a To (N586NatPlus nPlusA)))
add586 =
    add585 >> add1


{-| The `NNat` plus 587.


-}
add587 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N587NatPlus n) Is (Difference a To (N587NatPlus nPlusA)))
add587 =
    add586 >> add1


{-| The `NNat` plus 588.


-}
add588 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N588NatPlus n) Is (Difference a To (N588NatPlus nPlusA)))
add588 =
    add587 >> add1


{-| The `NNat` plus 589.


-}
add589 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N589NatPlus n) Is (Difference a To (N589NatPlus nPlusA)))
add589 =
    add588 >> add1


{-| The `NNat` plus 590.


-}
add590 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N590NatPlus n) Is (Difference a To (N590NatPlus nPlusA)))
add590 =
    add589 >> add1


{-| The `NNat` plus 591.


-}
add591 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N591NatPlus n) Is (Difference a To (N591NatPlus nPlusA)))
add591 =
    add590 >> add1


{-| The `NNat` plus 592.


-}
add592 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N592NatPlus n) Is (Difference a To (N592NatPlus nPlusA)))
add592 =
    add591 >> add1


{-| The `NNat` plus 593.


-}
add593 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N593NatPlus n) Is (Difference a To (N593NatPlus nPlusA)))
add593 =
    add592 >> add1


{-| The `NNat` plus 594.


-}
add594 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N594NatPlus n) Is (Difference a To (N594NatPlus nPlusA)))
add594 =
    add593 >> add1


{-| The `NNat` plus 595.


-}
add595 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N595NatPlus n) Is (Difference a To (N595NatPlus nPlusA)))
add595 =
    add594 >> add1


{-| The `NNat` plus 596.


-}
add596 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N596NatPlus n) Is (Difference a To (N596NatPlus nPlusA)))
add596 =
    add595 >> add1


{-| The `NNat` plus 597.


-}
add597 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N597NatPlus n) Is (Difference a To (N597NatPlus nPlusA)))
add597 =
    add596 >> add1


{-| The `NNat` plus 598.


-}
add598 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N598NatPlus n) Is (Difference a To (N598NatPlus nPlusA)))
add598 =
    add597 >> add1


{-| The `NNat` plus 599.


-}
add599 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N599NatPlus n) Is (Difference a To (N599NatPlus nPlusA)))
add599 =
    add598 >> add1


{-| The `NNat` plus 600.


-}
add600 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N600NatPlus n) Is (Difference a To (N600NatPlus nPlusA)))
add600 =
    add599 >> add1


{-| The `NNat` plus 601.


-}
add601 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N601NatPlus n) Is (Difference a To (N601NatPlus nPlusA)))
add601 =
    add600 >> add1


{-| The `NNat` plus 602.


-}
add602 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N602NatPlus n) Is (Difference a To (N602NatPlus nPlusA)))
add602 =
    add601 >> add1


{-| The `NNat` plus 603.


-}
add603 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N603NatPlus n) Is (Difference a To (N603NatPlus nPlusA)))
add603 =
    add602 >> add1


{-| The `NNat` plus 604.


-}
add604 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N604NatPlus n) Is (Difference a To (N604NatPlus nPlusA)))
add604 =
    add603 >> add1


{-| The `NNat` plus 605.


-}
add605 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N605NatPlus n) Is (Difference a To (N605NatPlus nPlusA)))
add605 =
    add604 >> add1


{-| The `NNat` plus 606.


-}
add606 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N606NatPlus n) Is (Difference a To (N606NatPlus nPlusA)))
add606 =
    add605 >> add1


{-| The `NNat` plus 607.


-}
add607 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N607NatPlus n) Is (Difference a To (N607NatPlus nPlusA)))
add607 =
    add606 >> add1


{-| The `NNat` plus 608.


-}
add608 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N608NatPlus n) Is (Difference a To (N608NatPlus nPlusA)))
add608 =
    add607 >> add1


{-| The `NNat` plus 609.


-}
add609 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N609NatPlus n) Is (Difference a To (N609NatPlus nPlusA)))
add609 =
    add608 >> add1


{-| The `NNat` plus 610.


-}
add610 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N610NatPlus n) Is (Difference a To (N610NatPlus nPlusA)))
add610 =
    add609 >> add1


{-| The `NNat` plus 611.


-}
add611 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N611NatPlus n) Is (Difference a To (N611NatPlus nPlusA)))
add611 =
    add610 >> add1


{-| The `NNat` plus 612.


-}
add612 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N612NatPlus n) Is (Difference a To (N612NatPlus nPlusA)))
add612 =
    add611 >> add1


{-| The `NNat` plus 613.


-}
add613 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N613NatPlus n) Is (Difference a To (N613NatPlus nPlusA)))
add613 =
    add612 >> add1


{-| The `NNat` plus 614.


-}
add614 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N614NatPlus n) Is (Difference a To (N614NatPlus nPlusA)))
add614 =
    add613 >> add1


{-| The `NNat` plus 615.


-}
add615 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N615NatPlus n) Is (Difference a To (N615NatPlus nPlusA)))
add615 =
    add614 >> add1


{-| The `NNat` plus 616.


-}
add616 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N616NatPlus n) Is (Difference a To (N616NatPlus nPlusA)))
add616 =
    add615 >> add1


{-| The `NNat` plus 617.


-}
add617 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N617NatPlus n) Is (Difference a To (N617NatPlus nPlusA)))
add617 =
    add616 >> add1


{-| The `NNat` plus 618.


-}
add618 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N618NatPlus n) Is (Difference a To (N618NatPlus nPlusA)))
add618 =
    add617 >> add1


{-| The `NNat` plus 619.


-}
add619 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N619NatPlus n) Is (Difference a To (N619NatPlus nPlusA)))
add619 =
    add618 >> add1


{-| The `NNat` plus 620.


-}
add620 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N620NatPlus n) Is (Difference a To (N620NatPlus nPlusA)))
add620 =
    add619 >> add1


{-| The `NNat` plus 621.


-}
add621 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N621NatPlus n) Is (Difference a To (N621NatPlus nPlusA)))
add621 =
    add620 >> add1


{-| The `NNat` plus 622.


-}
add622 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N622NatPlus n) Is (Difference a To (N622NatPlus nPlusA)))
add622 =
    add621 >> add1


{-| The `NNat` plus 623.


-}
add623 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N623NatPlus n) Is (Difference a To (N623NatPlus nPlusA)))
add623 =
    add622 >> add1


{-| The `NNat` plus 624.


-}
add624 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N624NatPlus n) Is (Difference a To (N624NatPlus nPlusA)))
add624 =
    add623 >> add1


{-| The `NNat` plus 625.


-}
add625 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N625NatPlus n) Is (Difference a To (N625NatPlus nPlusA)))
add625 =
    add624 >> add1


{-| The `NNat` plus 626.


-}
add626 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N626NatPlus n) Is (Difference a To (N626NatPlus nPlusA)))
add626 =
    add625 >> add1


{-| The `NNat` plus 627.


-}
add627 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N627NatPlus n) Is (Difference a To (N627NatPlus nPlusA)))
add627 =
    add626 >> add1


{-| The `NNat` plus 628.


-}
add628 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N628NatPlus n) Is (Difference a To (N628NatPlus nPlusA)))
add628 =
    add627 >> add1


{-| The `NNat` plus 629.


-}
add629 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N629NatPlus n) Is (Difference a To (N629NatPlus nPlusA)))
add629 =
    add628 >> add1


{-| The `NNat` plus 630.


-}
add630 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N630NatPlus n) Is (Difference a To (N630NatPlus nPlusA)))
add630 =
    add629 >> add1


{-| The `NNat` plus 631.


-}
add631 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N631NatPlus n) Is (Difference a To (N631NatPlus nPlusA)))
add631 =
    add630 >> add1


{-| The `NNat` plus 632.


-}
add632 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N632NatPlus n) Is (Difference a To (N632NatPlus nPlusA)))
add632 =
    add631 >> add1


{-| The `NNat` plus 633.


-}
add633 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N633NatPlus n) Is (Difference a To (N633NatPlus nPlusA)))
add633 =
    add632 >> add1


{-| The `NNat` plus 634.


-}
add634 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N634NatPlus n) Is (Difference a To (N634NatPlus nPlusA)))
add634 =
    add633 >> add1


{-| The `NNat` plus 635.


-}
add635 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N635NatPlus n) Is (Difference a To (N635NatPlus nPlusA)))
add635 =
    add634 >> add1


{-| The `NNat` plus 636.


-}
add636 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N636NatPlus n) Is (Difference a To (N636NatPlus nPlusA)))
add636 =
    add635 >> add1


{-| The `NNat` plus 637.


-}
add637 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N637NatPlus n) Is (Difference a To (N637NatPlus nPlusA)))
add637 =
    add636 >> add1


{-| The `NNat` plus 638.


-}
add638 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N638NatPlus n) Is (Difference a To (N638NatPlus nPlusA)))
add638 =
    add637 >> add1


{-| The `NNat` plus 639.


-}
add639 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N639NatPlus n) Is (Difference a To (N639NatPlus nPlusA)))
add639 =
    add638 >> add1


{-| The `NNat` plus 640.


-}
add640 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N640NatPlus n) Is (Difference a To (N640NatPlus nPlusA)))
add640 =
    add639 >> add1


{-| The `NNat` plus 641.


-}
add641 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N641NatPlus n) Is (Difference a To (N641NatPlus nPlusA)))
add641 =
    add640 >> add1


{-| The `NNat` plus 642.


-}
add642 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N642NatPlus n) Is (Difference a To (N642NatPlus nPlusA)))
add642 =
    add641 >> add1


{-| The `NNat` plus 643.


-}
add643 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N643NatPlus n) Is (Difference a To (N643NatPlus nPlusA)))
add643 =
    add642 >> add1


{-| The `NNat` plus 644.


-}
add644 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N644NatPlus n) Is (Difference a To (N644NatPlus nPlusA)))
add644 =
    add643 >> add1


{-| The `NNat` plus 645.


-}
add645 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N645NatPlus n) Is (Difference a To (N645NatPlus nPlusA)))
add645 =
    add644 >> add1


{-| The `NNat` plus 646.


-}
add646 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N646NatPlus n) Is (Difference a To (N646NatPlus nPlusA)))
add646 =
    add645 >> add1


{-| The `NNat` plus 647.


-}
add647 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N647NatPlus n) Is (Difference a To (N647NatPlus nPlusA)))
add647 =
    add646 >> add1


{-| The `NNat` plus 648.


-}
add648 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N648NatPlus n) Is (Difference a To (N648NatPlus nPlusA)))
add648 =
    add647 >> add1


{-| The `NNat` plus 649.


-}
add649 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N649NatPlus n) Is (Difference a To (N649NatPlus nPlusA)))
add649 =
    add648 >> add1


{-| The `NNat` plus 650.


-}
add650 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N650NatPlus n) Is (Difference a To (N650NatPlus nPlusA)))
add650 =
    add649 >> add1


{-| The `NNat` plus 651.


-}
add651 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N651NatPlus n) Is (Difference a To (N651NatPlus nPlusA)))
add651 =
    add650 >> add1


{-| The `NNat` plus 652.


-}
add652 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N652NatPlus n) Is (Difference a To (N652NatPlus nPlusA)))
add652 =
    add651 >> add1


{-| The `NNat` plus 653.


-}
add653 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N653NatPlus n) Is (Difference a To (N653NatPlus nPlusA)))
add653 =
    add652 >> add1


{-| The `NNat` plus 654.


-}
add654 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N654NatPlus n) Is (Difference a To (N654NatPlus nPlusA)))
add654 =
    add653 >> add1


{-| The `NNat` plus 655.


-}
add655 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N655NatPlus n) Is (Difference a To (N655NatPlus nPlusA)))
add655 =
    add654 >> add1


{-| The `NNat` plus 656.


-}
add656 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N656NatPlus n) Is (Difference a To (N656NatPlus nPlusA)))
add656 =
    add655 >> add1


{-| The `NNat` plus 657.


-}
add657 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N657NatPlus n) Is (Difference a To (N657NatPlus nPlusA)))
add657 =
    add656 >> add1


{-| The `NNat` plus 658.


-}
add658 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N658NatPlus n) Is (Difference a To (N658NatPlus nPlusA)))
add658 =
    add657 >> add1


{-| The `NNat` plus 659.


-}
add659 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N659NatPlus n) Is (Difference a To (N659NatPlus nPlusA)))
add659 =
    add658 >> add1


{-| The `NNat` plus 660.


-}
add660 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N660NatPlus n) Is (Difference a To (N660NatPlus nPlusA)))
add660 =
    add659 >> add1


{-| The `NNat` plus 661.


-}
add661 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N661NatPlus n) Is (Difference a To (N661NatPlus nPlusA)))
add661 =
    add660 >> add1


{-| The `NNat` plus 662.


-}
add662 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N662NatPlus n) Is (Difference a To (N662NatPlus nPlusA)))
add662 =
    add661 >> add1


{-| The `NNat` plus 663.


-}
add663 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N663NatPlus n) Is (Difference a To (N663NatPlus nPlusA)))
add663 =
    add662 >> add1


{-| The `NNat` plus 664.


-}
add664 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N664NatPlus n) Is (Difference a To (N664NatPlus nPlusA)))
add664 =
    add663 >> add1


{-| The `NNat` plus 665.


-}
add665 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N665NatPlus n) Is (Difference a To (N665NatPlus nPlusA)))
add665 =
    add664 >> add1


{-| The `NNat` plus 666.


-}
add666 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N666NatPlus n) Is (Difference a To (N666NatPlus nPlusA)))
add666 =
    add665 >> add1


{-| The `NNat` plus 667.


-}
add667 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N667NatPlus n) Is (Difference a To (N667NatPlus nPlusA)))
add667 =
    add666 >> add1


{-| The `NNat` plus 668.


-}
add668 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N668NatPlus n) Is (Difference a To (N668NatPlus nPlusA)))
add668 =
    add667 >> add1


{-| The `NNat` plus 669.


-}
add669 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N669NatPlus n) Is (Difference a To (N669NatPlus nPlusA)))
add669 =
    add668 >> add1


{-| The `NNat` plus 670.


-}
add670 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N670NatPlus n) Is (Difference a To (N670NatPlus nPlusA)))
add670 =
    add669 >> add1


{-| The `NNat` plus 671.


-}
add671 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N671NatPlus n) Is (Difference a To (N671NatPlus nPlusA)))
add671 =
    add670 >> add1


{-| The `NNat` plus 672.


-}
add672 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N672NatPlus n) Is (Difference a To (N672NatPlus nPlusA)))
add672 =
    add671 >> add1


{-| The `NNat` plus 673.


-}
add673 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N673NatPlus n) Is (Difference a To (N673NatPlus nPlusA)))
add673 =
    add672 >> add1


{-| The `NNat` plus 674.


-}
add674 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N674NatPlus n) Is (Difference a To (N674NatPlus nPlusA)))
add674 =
    add673 >> add1


{-| The `NNat` plus 675.


-}
add675 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N675NatPlus n) Is (Difference a To (N675NatPlus nPlusA)))
add675 =
    add674 >> add1


{-| The `NNat` plus 676.


-}
add676 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N676NatPlus n) Is (Difference a To (N676NatPlus nPlusA)))
add676 =
    add675 >> add1


{-| The `NNat` plus 677.


-}
add677 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N677NatPlus n) Is (Difference a To (N677NatPlus nPlusA)))
add677 =
    add676 >> add1


{-| The `NNat` plus 678.


-}
add678 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N678NatPlus n) Is (Difference a To (N678NatPlus nPlusA)))
add678 =
    add677 >> add1


{-| The `NNat` plus 679.


-}
add679 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N679NatPlus n) Is (Difference a To (N679NatPlus nPlusA)))
add679 =
    add678 >> add1


{-| The `NNat` plus 680.


-}
add680 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N680NatPlus n) Is (Difference a To (N680NatPlus nPlusA)))
add680 =
    add679 >> add1


{-| The `NNat` plus 681.


-}
add681 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N681NatPlus n) Is (Difference a To (N681NatPlus nPlusA)))
add681 =
    add680 >> add1


{-| The `NNat` plus 682.


-}
add682 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N682NatPlus n) Is (Difference a To (N682NatPlus nPlusA)))
add682 =
    add681 >> add1


{-| The `NNat` plus 683.


-}
add683 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N683NatPlus n) Is (Difference a To (N683NatPlus nPlusA)))
add683 =
    add682 >> add1


{-| The `NNat` plus 684.


-}
add684 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N684NatPlus n) Is (Difference a To (N684NatPlus nPlusA)))
add684 =
    add683 >> add1


{-| The `NNat` plus 685.


-}
add685 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N685NatPlus n) Is (Difference a To (N685NatPlus nPlusA)))
add685 =
    add684 >> add1


{-| The `NNat` plus 686.


-}
add686 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N686NatPlus n) Is (Difference a To (N686NatPlus nPlusA)))
add686 =
    add685 >> add1


{-| The `NNat` plus 687.


-}
add687 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N687NatPlus n) Is (Difference a To (N687NatPlus nPlusA)))
add687 =
    add686 >> add1


{-| The `NNat` plus 688.


-}
add688 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N688NatPlus n) Is (Difference a To (N688NatPlus nPlusA)))
add688 =
    add687 >> add1


{-| The `NNat` plus 689.


-}
add689 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N689NatPlus n) Is (Difference a To (N689NatPlus nPlusA)))
add689 =
    add688 >> add1


{-| The `NNat` plus 690.


-}
add690 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N690NatPlus n) Is (Difference a To (N690NatPlus nPlusA)))
add690 =
    add689 >> add1


{-| The `NNat` plus 691.


-}
add691 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N691NatPlus n) Is (Difference a To (N691NatPlus nPlusA)))
add691 =
    add690 >> add1


{-| The `NNat` plus 692.


-}
add692 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N692NatPlus n) Is (Difference a To (N692NatPlus nPlusA)))
add692 =
    add691 >> add1


{-| The `NNat` plus 693.


-}
add693 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N693NatPlus n) Is (Difference a To (N693NatPlus nPlusA)))
add693 =
    add692 >> add1


{-| The `NNat` plus 694.


-}
add694 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N694NatPlus n) Is (Difference a To (N694NatPlus nPlusA)))
add694 =
    add693 >> add1


{-| The `NNat` plus 695.


-}
add695 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N695NatPlus n) Is (Difference a To (N695NatPlus nPlusA)))
add695 =
    add694 >> add1


{-| The `NNat` plus 696.


-}
add696 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N696NatPlus n) Is (Difference a To (N696NatPlus nPlusA)))
add696 =
    add695 >> add1


{-| The `NNat` plus 697.


-}
add697 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N697NatPlus n) Is (Difference a To (N697NatPlus nPlusA)))
add697 =
    add696 >> add1


{-| The `NNat` plus 698.


-}
add698 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N698NatPlus n) Is (Difference a To (N698NatPlus nPlusA)))
add698 =
    add697 >> add1


{-| The `NNat` plus 699.


-}
add699 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N699NatPlus n) Is (Difference a To (N699NatPlus nPlusA)))
add699 =
    add698 >> add1


{-| The `NNat` plus 700.


-}
add700 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N700NatPlus n) Is (Difference a To (N700NatPlus nPlusA)))
add700 =
    add699 >> add1


{-| The `NNat` plus 701.


-}
add701 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N701NatPlus n) Is (Difference a To (N701NatPlus nPlusA)))
add701 =
    add700 >> add1


{-| The `NNat` plus 702.


-}
add702 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N702NatPlus n) Is (Difference a To (N702NatPlus nPlusA)))
add702 =
    add701 >> add1


{-| The `NNat` plus 703.


-}
add703 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N703NatPlus n) Is (Difference a To (N703NatPlus nPlusA)))
add703 =
    add702 >> add1


{-| The `NNat` plus 704.


-}
add704 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N704NatPlus n) Is (Difference a To (N704NatPlus nPlusA)))
add704 =
    add703 >> add1


{-| The `NNat` plus 705.


-}
add705 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N705NatPlus n) Is (Difference a To (N705NatPlus nPlusA)))
add705 =
    add704 >> add1


{-| The `NNat` plus 706.


-}
add706 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N706NatPlus n) Is (Difference a To (N706NatPlus nPlusA)))
add706 =
    add705 >> add1


{-| The `NNat` plus 707.


-}
add707 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N707NatPlus n) Is (Difference a To (N707NatPlus nPlusA)))
add707 =
    add706 >> add1


{-| The `NNat` plus 708.


-}
add708 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N708NatPlus n) Is (Difference a To (N708NatPlus nPlusA)))
add708 =
    add707 >> add1


{-| The `NNat` plus 709.


-}
add709 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N709NatPlus n) Is (Difference a To (N709NatPlus nPlusA)))
add709 =
    add708 >> add1


{-| The `NNat` plus 710.


-}
add710 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N710NatPlus n) Is (Difference a To (N710NatPlus nPlusA)))
add710 =
    add709 >> add1


{-| The `NNat` plus 711.


-}
add711 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N711NatPlus n) Is (Difference a To (N711NatPlus nPlusA)))
add711 =
    add710 >> add1


{-| The `NNat` plus 712.


-}
add712 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N712NatPlus n) Is (Difference a To (N712NatPlus nPlusA)))
add712 =
    add711 >> add1


{-| The `NNat` plus 713.


-}
add713 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N713NatPlus n) Is (Difference a To (N713NatPlus nPlusA)))
add713 =
    add712 >> add1


{-| The `NNat` plus 714.


-}
add714 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N714NatPlus n) Is (Difference a To (N714NatPlus nPlusA)))
add714 =
    add713 >> add1


{-| The `NNat` plus 715.


-}
add715 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N715NatPlus n) Is (Difference a To (N715NatPlus nPlusA)))
add715 =
    add714 >> add1


{-| The `NNat` plus 716.


-}
add716 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N716NatPlus n) Is (Difference a To (N716NatPlus nPlusA)))
add716 =
    add715 >> add1


{-| The `NNat` plus 717.


-}
add717 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N717NatPlus n) Is (Difference a To (N717NatPlus nPlusA)))
add717 =
    add716 >> add1


{-| The `NNat` plus 718.


-}
add718 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N718NatPlus n) Is (Difference a To (N718NatPlus nPlusA)))
add718 =
    add717 >> add1


{-| The `NNat` plus 719.


-}
add719 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N719NatPlus n) Is (Difference a To (N719NatPlus nPlusA)))
add719 =
    add718 >> add1


{-| The `NNat` plus 720.


-}
add720 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N720NatPlus n) Is (Difference a To (N720NatPlus nPlusA)))
add720 =
    add719 >> add1


{-| The `NNat` plus 721.


-}
add721 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N721NatPlus n) Is (Difference a To (N721NatPlus nPlusA)))
add721 =
    add720 >> add1


{-| The `NNat` plus 722.


-}
add722 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N722NatPlus n) Is (Difference a To (N722NatPlus nPlusA)))
add722 =
    add721 >> add1


{-| The `NNat` plus 723.


-}
add723 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N723NatPlus n) Is (Difference a To (N723NatPlus nPlusA)))
add723 =
    add722 >> add1


{-| The `NNat` plus 724.


-}
add724 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N724NatPlus n) Is (Difference a To (N724NatPlus nPlusA)))
add724 =
    add723 >> add1


{-| The `NNat` plus 725.


-}
add725 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N725NatPlus n) Is (Difference a To (N725NatPlus nPlusA)))
add725 =
    add724 >> add1


{-| The `NNat` plus 726.


-}
add726 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N726NatPlus n) Is (Difference a To (N726NatPlus nPlusA)))
add726 =
    add725 >> add1


{-| The `NNat` plus 727.


-}
add727 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N727NatPlus n) Is (Difference a To (N727NatPlus nPlusA)))
add727 =
    add726 >> add1


{-| The `NNat` plus 728.


-}
add728 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N728NatPlus n) Is (Difference a To (N728NatPlus nPlusA)))
add728 =
    add727 >> add1


{-| The `NNat` plus 729.


-}
add729 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N729NatPlus n) Is (Difference a To (N729NatPlus nPlusA)))
add729 =
    add728 >> add1


{-| The `NNat` plus 730.


-}
add730 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N730NatPlus n) Is (Difference a To (N730NatPlus nPlusA)))
add730 =
    add729 >> add1


{-| The `NNat` plus 731.


-}
add731 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N731NatPlus n) Is (Difference a To (N731NatPlus nPlusA)))
add731 =
    add730 >> add1


{-| The `NNat` plus 732.


-}
add732 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N732NatPlus n) Is (Difference a To (N732NatPlus nPlusA)))
add732 =
    add731 >> add1


{-| The `NNat` plus 733.


-}
add733 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N733NatPlus n) Is (Difference a To (N733NatPlus nPlusA)))
add733 =
    add732 >> add1


{-| The `NNat` plus 734.


-}
add734 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N734NatPlus n) Is (Difference a To (N734NatPlus nPlusA)))
add734 =
    add733 >> add1


{-| The `NNat` plus 735.


-}
add735 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N735NatPlus n) Is (Difference a To (N735NatPlus nPlusA)))
add735 =
    add734 >> add1


{-| The `NNat` plus 736.


-}
add736 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N736NatPlus n) Is (Difference a To (N736NatPlus nPlusA)))
add736 =
    add735 >> add1


{-| The `NNat` plus 737.


-}
add737 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N737NatPlus n) Is (Difference a To (N737NatPlus nPlusA)))
add737 =
    add736 >> add1


{-| The `NNat` plus 738.


-}
add738 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N738NatPlus n) Is (Difference a To (N738NatPlus nPlusA)))
add738 =
    add737 >> add1


{-| The `NNat` plus 739.


-}
add739 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N739NatPlus n) Is (Difference a To (N739NatPlus nPlusA)))
add739 =
    add738 >> add1


{-| The `NNat` plus 740.


-}
add740 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N740NatPlus n) Is (Difference a To (N740NatPlus nPlusA)))
add740 =
    add739 >> add1


{-| The `NNat` plus 741.


-}
add741 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N741NatPlus n) Is (Difference a To (N741NatPlus nPlusA)))
add741 =
    add740 >> add1


{-| The `NNat` plus 742.


-}
add742 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N742NatPlus n) Is (Difference a To (N742NatPlus nPlusA)))
add742 =
    add741 >> add1


{-| The `NNat` plus 743.


-}
add743 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N743NatPlus n) Is (Difference a To (N743NatPlus nPlusA)))
add743 =
    add742 >> add1


{-| The `NNat` plus 744.


-}
add744 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N744NatPlus n) Is (Difference a To (N744NatPlus nPlusA)))
add744 =
    add743 >> add1


{-| The `NNat` plus 745.


-}
add745 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N745NatPlus n) Is (Difference a To (N745NatPlus nPlusA)))
add745 =
    add744 >> add1


{-| The `NNat` plus 746.


-}
add746 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N746NatPlus n) Is (Difference a To (N746NatPlus nPlusA)))
add746 =
    add745 >> add1


{-| The `NNat` plus 747.


-}
add747 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N747NatPlus n) Is (Difference a To (N747NatPlus nPlusA)))
add747 =
    add746 >> add1


{-| The `NNat` plus 748.


-}
add748 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N748NatPlus n) Is (Difference a To (N748NatPlus nPlusA)))
add748 =
    add747 >> add1


{-| The `NNat` plus 749.


-}
add749 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N749NatPlus n) Is (Difference a To (N749NatPlus nPlusA)))
add749 =
    add748 >> add1


{-| The `NNat` plus 750.


-}
add750 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N750NatPlus n) Is (Difference a To (N750NatPlus nPlusA)))
add750 =
    add749 >> add1


{-| The `NNat` plus 751.


-}
add751 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N751NatPlus n) Is (Difference a To (N751NatPlus nPlusA)))
add751 =
    add750 >> add1


{-| The `NNat` plus 752.


-}
add752 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N752NatPlus n) Is (Difference a To (N752NatPlus nPlusA)))
add752 =
    add751 >> add1


{-| The `NNat` plus 753.


-}
add753 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N753NatPlus n) Is (Difference a To (N753NatPlus nPlusA)))
add753 =
    add752 >> add1


{-| The `NNat` plus 754.


-}
add754 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N754NatPlus n) Is (Difference a To (N754NatPlus nPlusA)))
add754 =
    add753 >> add1


{-| The `NNat` plus 755.


-}
add755 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N755NatPlus n) Is (Difference a To (N755NatPlus nPlusA)))
add755 =
    add754 >> add1


{-| The `NNat` plus 756.


-}
add756 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N756NatPlus n) Is (Difference a To (N756NatPlus nPlusA)))
add756 =
    add755 >> add1


{-| The `NNat` plus 757.


-}
add757 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N757NatPlus n) Is (Difference a To (N757NatPlus nPlusA)))
add757 =
    add756 >> add1


{-| The `NNat` plus 758.


-}
add758 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N758NatPlus n) Is (Difference a To (N758NatPlus nPlusA)))
add758 =
    add757 >> add1


{-| The `NNat` plus 759.


-}
add759 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N759NatPlus n) Is (Difference a To (N759NatPlus nPlusA)))
add759 =
    add758 >> add1


{-| The `NNat` plus 760.


-}
add760 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N760NatPlus n) Is (Difference a To (N760NatPlus nPlusA)))
add760 =
    add759 >> add1


{-| The `NNat` plus 761.


-}
add761 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N761NatPlus n) Is (Difference a To (N761NatPlus nPlusA)))
add761 =
    add760 >> add1


{-| The `NNat` plus 762.


-}
add762 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N762NatPlus n) Is (Difference a To (N762NatPlus nPlusA)))
add762 =
    add761 >> add1


{-| The `NNat` plus 763.


-}
add763 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N763NatPlus n) Is (Difference a To (N763NatPlus nPlusA)))
add763 =
    add762 >> add1


{-| The `NNat` plus 764.


-}
add764 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N764NatPlus n) Is (Difference a To (N764NatPlus nPlusA)))
add764 =
    add763 >> add1


{-| The `NNat` plus 765.


-}
add765 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N765NatPlus n) Is (Difference a To (N765NatPlus nPlusA)))
add765 =
    add764 >> add1


{-| The `NNat` plus 766.


-}
add766 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N766NatPlus n) Is (Difference a To (N766NatPlus nPlusA)))
add766 =
    add765 >> add1


{-| The `NNat` plus 767.


-}
add767 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N767NatPlus n) Is (Difference a To (N767NatPlus nPlusA)))
add767 =
    add766 >> add1


{-| The `NNat` plus 768.


-}
add768 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N768NatPlus n) Is (Difference a To (N768NatPlus nPlusA)))
add768 =
    add767 >> add1


{-| The `NNat` plus 769.


-}
add769 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N769NatPlus n) Is (Difference a To (N769NatPlus nPlusA)))
add769 =
    add768 >> add1


{-| The `NNat` plus 770.


-}
add770 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N770NatPlus n) Is (Difference a To (N770NatPlus nPlusA)))
add770 =
    add769 >> add1


{-| The `NNat` plus 771.


-}
add771 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N771NatPlus n) Is (Difference a To (N771NatPlus nPlusA)))
add771 =
    add770 >> add1


{-| The `NNat` plus 772.


-}
add772 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N772NatPlus n) Is (Difference a To (N772NatPlus nPlusA)))
add772 =
    add771 >> add1


{-| The `NNat` plus 773.


-}
add773 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N773NatPlus n) Is (Difference a To (N773NatPlus nPlusA)))
add773 =
    add772 >> add1


{-| The `NNat` plus 774.


-}
add774 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N774NatPlus n) Is (Difference a To (N774NatPlus nPlusA)))
add774 =
    add773 >> add1


{-| The `NNat` plus 775.


-}
add775 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N775NatPlus n) Is (Difference a To (N775NatPlus nPlusA)))
add775 =
    add774 >> add1


{-| The `NNat` plus 776.


-}
add776 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N776NatPlus n) Is (Difference a To (N776NatPlus nPlusA)))
add776 =
    add775 >> add1


{-| The `NNat` plus 777.


-}
add777 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N777NatPlus n) Is (Difference a To (N777NatPlus nPlusA)))
add777 =
    add776 >> add1


{-| The `NNat` plus 778.


-}
add778 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N778NatPlus n) Is (Difference a To (N778NatPlus nPlusA)))
add778 =
    add777 >> add1


{-| The `NNat` plus 779.


-}
add779 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N779NatPlus n) Is (Difference a To (N779NatPlus nPlusA)))
add779 =
    add778 >> add1


{-| The `NNat` plus 780.


-}
add780 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N780NatPlus n) Is (Difference a To (N780NatPlus nPlusA)))
add780 =
    add779 >> add1


{-| The `NNat` plus 781.


-}
add781 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N781NatPlus n) Is (Difference a To (N781NatPlus nPlusA)))
add781 =
    add780 >> add1


{-| The `NNat` plus 782.


-}
add782 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N782NatPlus n) Is (Difference a To (N782NatPlus nPlusA)))
add782 =
    add781 >> add1


{-| The `NNat` plus 783.


-}
add783 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N783NatPlus n) Is (Difference a To (N783NatPlus nPlusA)))
add783 =
    add782 >> add1


{-| The `NNat` plus 784.


-}
add784 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N784NatPlus n) Is (Difference a To (N784NatPlus nPlusA)))
add784 =
    add783 >> add1


{-| The `NNat` plus 785.


-}
add785 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N785NatPlus n) Is (Difference a To (N785NatPlus nPlusA)))
add785 =
    add784 >> add1


{-| The `NNat` plus 786.


-}
add786 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N786NatPlus n) Is (Difference a To (N786NatPlus nPlusA)))
add786 =
    add785 >> add1


{-| The `NNat` plus 787.


-}
add787 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N787NatPlus n) Is (Difference a To (N787NatPlus nPlusA)))
add787 =
    add786 >> add1


{-| The `NNat` plus 788.


-}
add788 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N788NatPlus n) Is (Difference a To (N788NatPlus nPlusA)))
add788 =
    add787 >> add1


{-| The `NNat` plus 789.


-}
add789 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N789NatPlus n) Is (Difference a To (N789NatPlus nPlusA)))
add789 =
    add788 >> add1


{-| The `NNat` plus 790.


-}
add790 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N790NatPlus n) Is (Difference a To (N790NatPlus nPlusA)))
add790 =
    add789 >> add1


{-| The `NNat` plus 791.


-}
add791 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N791NatPlus n) Is (Difference a To (N791NatPlus nPlusA)))
add791 =
    add790 >> add1


{-| The `NNat` plus 792.


-}
add792 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N792NatPlus n) Is (Difference a To (N792NatPlus nPlusA)))
add792 =
    add791 >> add1


{-| The `NNat` plus 793.


-}
add793 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N793NatPlus n) Is (Difference a To (N793NatPlus nPlusA)))
add793 =
    add792 >> add1


{-| The `NNat` plus 794.


-}
add794 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N794NatPlus n) Is (Difference a To (N794NatPlus nPlusA)))
add794 =
    add793 >> add1


{-| The `NNat` plus 795.


-}
add795 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N795NatPlus n) Is (Difference a To (N795NatPlus nPlusA)))
add795 =
    add794 >> add1


{-| The `NNat` plus 796.


-}
add796 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N796NatPlus n) Is (Difference a To (N796NatPlus nPlusA)))
add796 =
    add795 >> add1


{-| The `NNat` plus 797.


-}
add797 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N797NatPlus n) Is (Difference a To (N797NatPlus nPlusA)))
add797 =
    add796 >> add1


{-| The `NNat` plus 798.


-}
add798 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N798NatPlus n) Is (Difference a To (N798NatPlus nPlusA)))
add798 =
    add797 >> add1


{-| The `NNat` plus 799.


-}
add799 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N799NatPlus n) Is (Difference a To (N799NatPlus nPlusA)))
add799 =
    add798 >> add1


{-| The `NNat` plus 800.


-}
add800 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N800NatPlus n) Is (Difference a To (N800NatPlus nPlusA)))
add800 =
    add799 >> add1


{-| The `NNat` plus 801.


-}
add801 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N801NatPlus n) Is (Difference a To (N801NatPlus nPlusA)))
add801 =
    add800 >> add1


{-| The `NNat` plus 802.


-}
add802 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N802NatPlus n) Is (Difference a To (N802NatPlus nPlusA)))
add802 =
    add801 >> add1


{-| The `NNat` plus 803.


-}
add803 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N803NatPlus n) Is (Difference a To (N803NatPlus nPlusA)))
add803 =
    add802 >> add1


{-| The `NNat` plus 804.


-}
add804 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N804NatPlus n) Is (Difference a To (N804NatPlus nPlusA)))
add804 =
    add803 >> add1


{-| The `NNat` plus 805.


-}
add805 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N805NatPlus n) Is (Difference a To (N805NatPlus nPlusA)))
add805 =
    add804 >> add1


{-| The `NNat` plus 806.


-}
add806 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N806NatPlus n) Is (Difference a To (N806NatPlus nPlusA)))
add806 =
    add805 >> add1


{-| The `NNat` plus 807.


-}
add807 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N807NatPlus n) Is (Difference a To (N807NatPlus nPlusA)))
add807 =
    add806 >> add1


{-| The `NNat` plus 808.


-}
add808 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N808NatPlus n) Is (Difference a To (N808NatPlus nPlusA)))
add808 =
    add807 >> add1


{-| The `NNat` plus 809.


-}
add809 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N809NatPlus n) Is (Difference a To (N809NatPlus nPlusA)))
add809 =
    add808 >> add1


{-| The `NNat` plus 810.


-}
add810 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N810NatPlus n) Is (Difference a To (N810NatPlus nPlusA)))
add810 =
    add809 >> add1


{-| The `NNat` plus 811.


-}
add811 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N811NatPlus n) Is (Difference a To (N811NatPlus nPlusA)))
add811 =
    add810 >> add1


{-| The `NNat` plus 812.


-}
add812 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N812NatPlus n) Is (Difference a To (N812NatPlus nPlusA)))
add812 =
    add811 >> add1


{-| The `NNat` plus 813.


-}
add813 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N813NatPlus n) Is (Difference a To (N813NatPlus nPlusA)))
add813 =
    add812 >> add1


{-| The `NNat` plus 814.


-}
add814 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N814NatPlus n) Is (Difference a To (N814NatPlus nPlusA)))
add814 =
    add813 >> add1


{-| The `NNat` plus 815.


-}
add815 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N815NatPlus n) Is (Difference a To (N815NatPlus nPlusA)))
add815 =
    add814 >> add1


{-| The `NNat` plus 816.


-}
add816 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N816NatPlus n) Is (Difference a To (N816NatPlus nPlusA)))
add816 =
    add815 >> add1


{-| The `NNat` plus 817.


-}
add817 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N817NatPlus n) Is (Difference a To (N817NatPlus nPlusA)))
add817 =
    add816 >> add1


{-| The `NNat` plus 818.


-}
add818 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N818NatPlus n) Is (Difference a To (N818NatPlus nPlusA)))
add818 =
    add817 >> add1


{-| The `NNat` plus 819.


-}
add819 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N819NatPlus n) Is (Difference a To (N819NatPlus nPlusA)))
add819 =
    add818 >> add1


{-| The `NNat` plus 820.


-}
add820 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N820NatPlus n) Is (Difference a To (N820NatPlus nPlusA)))
add820 =
    add819 >> add1


{-| The `NNat` plus 821.


-}
add821 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N821NatPlus n) Is (Difference a To (N821NatPlus nPlusA)))
add821 =
    add820 >> add1


{-| The `NNat` plus 822.


-}
add822 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N822NatPlus n) Is (Difference a To (N822NatPlus nPlusA)))
add822 =
    add821 >> add1


{-| The `NNat` plus 823.


-}
add823 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N823NatPlus n) Is (Difference a To (N823NatPlus nPlusA)))
add823 =
    add822 >> add1


{-| The `NNat` plus 824.


-}
add824 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N824NatPlus n) Is (Difference a To (N824NatPlus nPlusA)))
add824 =
    add823 >> add1


{-| The `NNat` plus 825.


-}
add825 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N825NatPlus n) Is (Difference a To (N825NatPlus nPlusA)))
add825 =
    add824 >> add1


{-| The `NNat` plus 826.


-}
add826 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N826NatPlus n) Is (Difference a To (N826NatPlus nPlusA)))
add826 =
    add825 >> add1


{-| The `NNat` plus 827.


-}
add827 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N827NatPlus n) Is (Difference a To (N827NatPlus nPlusA)))
add827 =
    add826 >> add1


{-| The `NNat` plus 828.


-}
add828 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N828NatPlus n) Is (Difference a To (N828NatPlus nPlusA)))
add828 =
    add827 >> add1


{-| The `NNat` plus 829.


-}
add829 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N829NatPlus n) Is (Difference a To (N829NatPlus nPlusA)))
add829 =
    add828 >> add1


{-| The `NNat` plus 830.


-}
add830 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N830NatPlus n) Is (Difference a To (N830NatPlus nPlusA)))
add830 =
    add829 >> add1


{-| The `NNat` plus 831.


-}
add831 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N831NatPlus n) Is (Difference a To (N831NatPlus nPlusA)))
add831 =
    add830 >> add1


{-| The `NNat` plus 832.


-}
add832 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N832NatPlus n) Is (Difference a To (N832NatPlus nPlusA)))
add832 =
    add831 >> add1


{-| The `NNat` plus 833.


-}
add833 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N833NatPlus n) Is (Difference a To (N833NatPlus nPlusA)))
add833 =
    add832 >> add1


{-| The `NNat` plus 834.


-}
add834 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N834NatPlus n) Is (Difference a To (N834NatPlus nPlusA)))
add834 =
    add833 >> add1


{-| The `NNat` plus 835.


-}
add835 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N835NatPlus n) Is (Difference a To (N835NatPlus nPlusA)))
add835 =
    add834 >> add1


{-| The `NNat` plus 836.


-}
add836 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N836NatPlus n) Is (Difference a To (N836NatPlus nPlusA)))
add836 =
    add835 >> add1


{-| The `NNat` plus 837.


-}
add837 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N837NatPlus n) Is (Difference a To (N837NatPlus nPlusA)))
add837 =
    add836 >> add1


{-| The `NNat` plus 838.


-}
add838 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N838NatPlus n) Is (Difference a To (N838NatPlus nPlusA)))
add838 =
    add837 >> add1


{-| The `NNat` plus 839.


-}
add839 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N839NatPlus n) Is (Difference a To (N839NatPlus nPlusA)))
add839 =
    add838 >> add1


{-| The `NNat` plus 840.


-}
add840 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N840NatPlus n) Is (Difference a To (N840NatPlus nPlusA)))
add840 =
    add839 >> add1


{-| The `NNat` plus 841.


-}
add841 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N841NatPlus n) Is (Difference a To (N841NatPlus nPlusA)))
add841 =
    add840 >> add1


{-| The `NNat` plus 842.


-}
add842 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N842NatPlus n) Is (Difference a To (N842NatPlus nPlusA)))
add842 =
    add841 >> add1


{-| The `NNat` plus 843.


-}
add843 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N843NatPlus n) Is (Difference a To (N843NatPlus nPlusA)))
add843 =
    add842 >> add1


{-| The `NNat` plus 844.


-}
add844 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N844NatPlus n) Is (Difference a To (N844NatPlus nPlusA)))
add844 =
    add843 >> add1


{-| The `NNat` plus 845.


-}
add845 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N845NatPlus n) Is (Difference a To (N845NatPlus nPlusA)))
add845 =
    add844 >> add1


{-| The `NNat` plus 846.


-}
add846 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N846NatPlus n) Is (Difference a To (N846NatPlus nPlusA)))
add846 =
    add845 >> add1


{-| The `NNat` plus 847.


-}
add847 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N847NatPlus n) Is (Difference a To (N847NatPlus nPlusA)))
add847 =
    add846 >> add1


{-| The `NNat` plus 848.


-}
add848 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N848NatPlus n) Is (Difference a To (N848NatPlus nPlusA)))
add848 =
    add847 >> add1


{-| The `NNat` plus 849.


-}
add849 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N849NatPlus n) Is (Difference a To (N849NatPlus nPlusA)))
add849 =
    add848 >> add1


{-| The `NNat` plus 850.


-}
add850 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N850NatPlus n) Is (Difference a To (N850NatPlus nPlusA)))
add850 =
    add849 >> add1


{-| The `NNat` plus 851.


-}
add851 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N851NatPlus n) Is (Difference a To (N851NatPlus nPlusA)))
add851 =
    add850 >> add1


{-| The `NNat` plus 852.


-}
add852 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N852NatPlus n) Is (Difference a To (N852NatPlus nPlusA)))
add852 =
    add851 >> add1


{-| The `NNat` plus 853.


-}
add853 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N853NatPlus n) Is (Difference a To (N853NatPlus nPlusA)))
add853 =
    add852 >> add1


{-| The `NNat` plus 854.


-}
add854 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N854NatPlus n) Is (Difference a To (N854NatPlus nPlusA)))
add854 =
    add853 >> add1


{-| The `NNat` plus 855.


-}
add855 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N855NatPlus n) Is (Difference a To (N855NatPlus nPlusA)))
add855 =
    add854 >> add1


{-| The `NNat` plus 856.


-}
add856 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N856NatPlus n) Is (Difference a To (N856NatPlus nPlusA)))
add856 =
    add855 >> add1


{-| The `NNat` plus 857.


-}
add857 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N857NatPlus n) Is (Difference a To (N857NatPlus nPlusA)))
add857 =
    add856 >> add1


{-| The `NNat` plus 858.


-}
add858 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N858NatPlus n) Is (Difference a To (N858NatPlus nPlusA)))
add858 =
    add857 >> add1


{-| The `NNat` plus 859.


-}
add859 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N859NatPlus n) Is (Difference a To (N859NatPlus nPlusA)))
add859 =
    add858 >> add1


{-| The `NNat` plus 860.


-}
add860 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N860NatPlus n) Is (Difference a To (N860NatPlus nPlusA)))
add860 =
    add859 >> add1


{-| The `NNat` plus 861.


-}
add861 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N861NatPlus n) Is (Difference a To (N861NatPlus nPlusA)))
add861 =
    add860 >> add1


{-| The `NNat` plus 862.


-}
add862 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N862NatPlus n) Is (Difference a To (N862NatPlus nPlusA)))
add862 =
    add861 >> add1


{-| The `NNat` plus 863.


-}
add863 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N863NatPlus n) Is (Difference a To (N863NatPlus nPlusA)))
add863 =
    add862 >> add1


{-| The `NNat` plus 864.


-}
add864 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N864NatPlus n) Is (Difference a To (N864NatPlus nPlusA)))
add864 =
    add863 >> add1


{-| The `NNat` plus 865.


-}
add865 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N865NatPlus n) Is (Difference a To (N865NatPlus nPlusA)))
add865 =
    add864 >> add1


{-| The `NNat` plus 866.


-}
add866 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N866NatPlus n) Is (Difference a To (N866NatPlus nPlusA)))
add866 =
    add865 >> add1


{-| The `NNat` plus 867.


-}
add867 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N867NatPlus n) Is (Difference a To (N867NatPlus nPlusA)))
add867 =
    add866 >> add1


{-| The `NNat` plus 868.


-}
add868 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N868NatPlus n) Is (Difference a To (N868NatPlus nPlusA)))
add868 =
    add867 >> add1


{-| The `NNat` plus 869.


-}
add869 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N869NatPlus n) Is (Difference a To (N869NatPlus nPlusA)))
add869 =
    add868 >> add1


{-| The `NNat` plus 870.


-}
add870 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N870NatPlus n) Is (Difference a To (N870NatPlus nPlusA)))
add870 =
    add869 >> add1


{-| The `NNat` plus 871.


-}
add871 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N871NatPlus n) Is (Difference a To (N871NatPlus nPlusA)))
add871 =
    add870 >> add1


{-| The `NNat` plus 872.


-}
add872 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N872NatPlus n) Is (Difference a To (N872NatPlus nPlusA)))
add872 =
    add871 >> add1


{-| The `NNat` plus 873.


-}
add873 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N873NatPlus n) Is (Difference a To (N873NatPlus nPlusA)))
add873 =
    add872 >> add1


{-| The `NNat` plus 874.


-}
add874 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N874NatPlus n) Is (Difference a To (N874NatPlus nPlusA)))
add874 =
    add873 >> add1


{-| The `NNat` plus 875.


-}
add875 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N875NatPlus n) Is (Difference a To (N875NatPlus nPlusA)))
add875 =
    add874 >> add1


{-| The `NNat` plus 876.


-}
add876 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N876NatPlus n) Is (Difference a To (N876NatPlus nPlusA)))
add876 =
    add875 >> add1


{-| The `NNat` plus 877.


-}
add877 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N877NatPlus n) Is (Difference a To (N877NatPlus nPlusA)))
add877 =
    add876 >> add1


{-| The `NNat` plus 878.


-}
add878 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N878NatPlus n) Is (Difference a To (N878NatPlus nPlusA)))
add878 =
    add877 >> add1


{-| The `NNat` plus 879.


-}
add879 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N879NatPlus n) Is (Difference a To (N879NatPlus nPlusA)))
add879 =
    add878 >> add1


{-| The `NNat` plus 880.


-}
add880 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N880NatPlus n) Is (Difference a To (N880NatPlus nPlusA)))
add880 =
    add879 >> add1


{-| The `NNat` plus 881.


-}
add881 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N881NatPlus n) Is (Difference a To (N881NatPlus nPlusA)))
add881 =
    add880 >> add1


{-| The `NNat` plus 882.


-}
add882 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N882NatPlus n) Is (Difference a To (N882NatPlus nPlusA)))
add882 =
    add881 >> add1


{-| The `NNat` plus 883.


-}
add883 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N883NatPlus n) Is (Difference a To (N883NatPlus nPlusA)))
add883 =
    add882 >> add1


{-| The `NNat` plus 884.


-}
add884 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N884NatPlus n) Is (Difference a To (N884NatPlus nPlusA)))
add884 =
    add883 >> add1


{-| The `NNat` plus 885.


-}
add885 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N885NatPlus n) Is (Difference a To (N885NatPlus nPlusA)))
add885 =
    add884 >> add1


{-| The `NNat` plus 886.


-}
add886 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N886NatPlus n) Is (Difference a To (N886NatPlus nPlusA)))
add886 =
    add885 >> add1


{-| The `NNat` plus 887.


-}
add887 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N887NatPlus n) Is (Difference a To (N887NatPlus nPlusA)))
add887 =
    add886 >> add1


{-| The `NNat` plus 888.


-}
add888 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N888NatPlus n) Is (Difference a To (N888NatPlus nPlusA)))
add888 =
    add887 >> add1


{-| The `NNat` plus 889.


-}
add889 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N889NatPlus n) Is (Difference a To (N889NatPlus nPlusA)))
add889 =
    add888 >> add1


{-| The `NNat` plus 890.


-}
add890 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N890NatPlus n) Is (Difference a To (N890NatPlus nPlusA)))
add890 =
    add889 >> add1


{-| The `NNat` plus 891.


-}
add891 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N891NatPlus n) Is (Difference a To (N891NatPlus nPlusA)))
add891 =
    add890 >> add1


{-| The `NNat` plus 892.


-}
add892 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N892NatPlus n) Is (Difference a To (N892NatPlus nPlusA)))
add892 =
    add891 >> add1


{-| The `NNat` plus 893.


-}
add893 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N893NatPlus n) Is (Difference a To (N893NatPlus nPlusA)))
add893 =
    add892 >> add1


{-| The `NNat` plus 894.


-}
add894 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N894NatPlus n) Is (Difference a To (N894NatPlus nPlusA)))
add894 =
    add893 >> add1


{-| The `NNat` plus 895.


-}
add895 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N895NatPlus n) Is (Difference a To (N895NatPlus nPlusA)))
add895 =
    add894 >> add1


{-| The `NNat` plus 896.


-}
add896 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N896NatPlus n) Is (Difference a To (N896NatPlus nPlusA)))
add896 =
    add895 >> add1


{-| The `NNat` plus 897.


-}
add897 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N897NatPlus n) Is (Difference a To (N897NatPlus nPlusA)))
add897 =
    add896 >> add1


{-| The `NNat` plus 898.


-}
add898 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N898NatPlus n) Is (Difference a To (N898NatPlus nPlusA)))
add898 =
    add897 >> add1


{-| The `NNat` plus 899.


-}
add899 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N899NatPlus n) Is (Difference a To (N899NatPlus nPlusA)))
add899 =
    add898 >> add1


{-| The `NNat` plus 900.


-}
add900 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N900NatPlus n) Is (Difference a To (N900NatPlus nPlusA)))
add900 =
    add899 >> add1


{-| The `NNat` plus 901.


-}
add901 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N901NatPlus n) Is (Difference a To (N901NatPlus nPlusA)))
add901 =
    add900 >> add1


{-| The `NNat` plus 902.


-}
add902 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N902NatPlus n) Is (Difference a To (N902NatPlus nPlusA)))
add902 =
    add901 >> add1


{-| The `NNat` plus 903.


-}
add903 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N903NatPlus n) Is (Difference a To (N903NatPlus nPlusA)))
add903 =
    add902 >> add1


{-| The `NNat` plus 904.


-}
add904 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N904NatPlus n) Is (Difference a To (N904NatPlus nPlusA)))
add904 =
    add903 >> add1


{-| The `NNat` plus 905.


-}
add905 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N905NatPlus n) Is (Difference a To (N905NatPlus nPlusA)))
add905 =
    add904 >> add1


{-| The `NNat` plus 906.


-}
add906 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N906NatPlus n) Is (Difference a To (N906NatPlus nPlusA)))
add906 =
    add905 >> add1


{-| The `NNat` plus 907.


-}
add907 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N907NatPlus n) Is (Difference a To (N907NatPlus nPlusA)))
add907 =
    add906 >> add1


{-| The `NNat` plus 908.


-}
add908 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N908NatPlus n) Is (Difference a To (N908NatPlus nPlusA)))
add908 =
    add907 >> add1


{-| The `NNat` plus 909.


-}
add909 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N909NatPlus n) Is (Difference a To (N909NatPlus nPlusA)))
add909 =
    add908 >> add1


{-| The `NNat` plus 910.


-}
add910 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N910NatPlus n) Is (Difference a To (N910NatPlus nPlusA)))
add910 =
    add909 >> add1


{-| The `NNat` plus 911.


-}
add911 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N911NatPlus n) Is (Difference a To (N911NatPlus nPlusA)))
add911 =
    add910 >> add1


{-| The `NNat` plus 912.


-}
add912 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N912NatPlus n) Is (Difference a To (N912NatPlus nPlusA)))
add912 =
    add911 >> add1


{-| The `NNat` plus 913.


-}
add913 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N913NatPlus n) Is (Difference a To (N913NatPlus nPlusA)))
add913 =
    add912 >> add1


{-| The `NNat` plus 914.


-}
add914 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N914NatPlus n) Is (Difference a To (N914NatPlus nPlusA)))
add914 =
    add913 >> add1


{-| The `NNat` plus 915.


-}
add915 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N915NatPlus n) Is (Difference a To (N915NatPlus nPlusA)))
add915 =
    add914 >> add1


{-| The `NNat` plus 916.


-}
add916 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N916NatPlus n) Is (Difference a To (N916NatPlus nPlusA)))
add916 =
    add915 >> add1


{-| The `NNat` plus 917.


-}
add917 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N917NatPlus n) Is (Difference a To (N917NatPlus nPlusA)))
add917 =
    add916 >> add1


{-| The `NNat` plus 918.


-}
add918 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N918NatPlus n) Is (Difference a To (N918NatPlus nPlusA)))
add918 =
    add917 >> add1


{-| The `NNat` plus 919.


-}
add919 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N919NatPlus n) Is (Difference a To (N919NatPlus nPlusA)))
add919 =
    add918 >> add1


{-| The `NNat` plus 920.


-}
add920 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N920NatPlus n) Is (Difference a To (N920NatPlus nPlusA)))
add920 =
    add919 >> add1


{-| The `NNat` plus 921.


-}
add921 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N921NatPlus n) Is (Difference a To (N921NatPlus nPlusA)))
add921 =
    add920 >> add1


{-| The `NNat` plus 922.


-}
add922 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N922NatPlus n) Is (Difference a To (N922NatPlus nPlusA)))
add922 =
    add921 >> add1


{-| The `NNat` plus 923.


-}
add923 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N923NatPlus n) Is (Difference a To (N923NatPlus nPlusA)))
add923 =
    add922 >> add1


{-| The `NNat` plus 924.


-}
add924 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N924NatPlus n) Is (Difference a To (N924NatPlus nPlusA)))
add924 =
    add923 >> add1


{-| The `NNat` plus 925.


-}
add925 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N925NatPlus n) Is (Difference a To (N925NatPlus nPlusA)))
add925 =
    add924 >> add1


{-| The `NNat` plus 926.


-}
add926 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N926NatPlus n) Is (Difference a To (N926NatPlus nPlusA)))
add926 =
    add925 >> add1


{-| The `NNat` plus 927.


-}
add927 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N927NatPlus n) Is (Difference a To (N927NatPlus nPlusA)))
add927 =
    add926 >> add1


{-| The `NNat` plus 928.


-}
add928 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N928NatPlus n) Is (Difference a To (N928NatPlus nPlusA)))
add928 =
    add927 >> add1


{-| The `NNat` plus 929.


-}
add929 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N929NatPlus n) Is (Difference a To (N929NatPlus nPlusA)))
add929 =
    add928 >> add1


{-| The `NNat` plus 930.


-}
add930 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N930NatPlus n) Is (Difference a To (N930NatPlus nPlusA)))
add930 =
    add929 >> add1


{-| The `NNat` plus 931.


-}
add931 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N931NatPlus n) Is (Difference a To (N931NatPlus nPlusA)))
add931 =
    add930 >> add1


{-| The `NNat` plus 932.


-}
add932 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N932NatPlus n) Is (Difference a To (N932NatPlus nPlusA)))
add932 =
    add931 >> add1


{-| The `NNat` plus 933.


-}
add933 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N933NatPlus n) Is (Difference a To (N933NatPlus nPlusA)))
add933 =
    add932 >> add1


{-| The `NNat` plus 934.


-}
add934 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N934NatPlus n) Is (Difference a To (N934NatPlus nPlusA)))
add934 =
    add933 >> add1


{-| The `NNat` plus 935.


-}
add935 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N935NatPlus n) Is (Difference a To (N935NatPlus nPlusA)))
add935 =
    add934 >> add1


{-| The `NNat` plus 936.


-}
add936 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N936NatPlus n) Is (Difference a To (N936NatPlus nPlusA)))
add936 =
    add935 >> add1


{-| The `NNat` plus 937.


-}
add937 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N937NatPlus n) Is (Difference a To (N937NatPlus nPlusA)))
add937 =
    add936 >> add1


{-| The `NNat` plus 938.


-}
add938 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N938NatPlus n) Is (Difference a To (N938NatPlus nPlusA)))
add938 =
    add937 >> add1


{-| The `NNat` plus 939.


-}
add939 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N939NatPlus n) Is (Difference a To (N939NatPlus nPlusA)))
add939 =
    add938 >> add1


{-| The `NNat` plus 940.


-}
add940 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N940NatPlus n) Is (Difference a To (N940NatPlus nPlusA)))
add940 =
    add939 >> add1


{-| The `NNat` plus 941.


-}
add941 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N941NatPlus n) Is (Difference a To (N941NatPlus nPlusA)))
add941 =
    add940 >> add1


{-| The `NNat` plus 942.


-}
add942 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N942NatPlus n) Is (Difference a To (N942NatPlus nPlusA)))
add942 =
    add941 >> add1


{-| The `NNat` plus 943.


-}
add943 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N943NatPlus n) Is (Difference a To (N943NatPlus nPlusA)))
add943 =
    add942 >> add1


{-| The `NNat` plus 944.


-}
add944 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N944NatPlus n) Is (Difference a To (N944NatPlus nPlusA)))
add944 =
    add943 >> add1


{-| The `NNat` plus 945.


-}
add945 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N945NatPlus n) Is (Difference a To (N945NatPlus nPlusA)))
add945 =
    add944 >> add1


{-| The `NNat` plus 946.


-}
add946 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N946NatPlus n) Is (Difference a To (N946NatPlus nPlusA)))
add946 =
    add945 >> add1


{-| The `NNat` plus 947.


-}
add947 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N947NatPlus n) Is (Difference a To (N947NatPlus nPlusA)))
add947 =
    add946 >> add1


{-| The `NNat` plus 948.


-}
add948 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N948NatPlus n) Is (Difference a To (N948NatPlus nPlusA)))
add948 =
    add947 >> add1


{-| The `NNat` plus 949.


-}
add949 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N949NatPlus n) Is (Difference a To (N949NatPlus nPlusA)))
add949 =
    add948 >> add1


{-| The `NNat` plus 950.


-}
add950 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N950NatPlus n) Is (Difference a To (N950NatPlus nPlusA)))
add950 =
    add949 >> add1


{-| The `NNat` plus 951.


-}
add951 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N951NatPlus n) Is (Difference a To (N951NatPlus nPlusA)))
add951 =
    add950 >> add1


{-| The `NNat` plus 952.


-}
add952 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N952NatPlus n) Is (Difference a To (N952NatPlus nPlusA)))
add952 =
    add951 >> add1


{-| The `NNat` plus 953.


-}
add953 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N953NatPlus n) Is (Difference a To (N953NatPlus nPlusA)))
add953 =
    add952 >> add1


{-| The `NNat` plus 954.


-}
add954 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N954NatPlus n) Is (Difference a To (N954NatPlus nPlusA)))
add954 =
    add953 >> add1


{-| The `NNat` plus 955.


-}
add955 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N955NatPlus n) Is (Difference a To (N955NatPlus nPlusA)))
add955 =
    add954 >> add1


{-| The `NNat` plus 956.


-}
add956 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N956NatPlus n) Is (Difference a To (N956NatPlus nPlusA)))
add956 =
    add955 >> add1


{-| The `NNat` plus 957.


-}
add957 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N957NatPlus n) Is (Difference a To (N957NatPlus nPlusA)))
add957 =
    add956 >> add1


{-| The `NNat` plus 958.


-}
add958 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N958NatPlus n) Is (Difference a To (N958NatPlus nPlusA)))
add958 =
    add957 >> add1


{-| The `NNat` plus 959.


-}
add959 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N959NatPlus n) Is (Difference a To (N959NatPlus nPlusA)))
add959 =
    add958 >> add1


{-| The `NNat` plus 960.


-}
add960 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N960NatPlus n) Is (Difference a To (N960NatPlus nPlusA)))
add960 =
    add959 >> add1


{-| The `NNat` plus 961.


-}
add961 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N961NatPlus n) Is (Difference a To (N961NatPlus nPlusA)))
add961 =
    add960 >> add1


{-| The `NNat` plus 962.


-}
add962 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N962NatPlus n) Is (Difference a To (N962NatPlus nPlusA)))
add962 =
    add961 >> add1


{-| The `NNat` plus 963.


-}
add963 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N963NatPlus n) Is (Difference a To (N963NatPlus nPlusA)))
add963 =
    add962 >> add1


{-| The `NNat` plus 964.


-}
add964 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N964NatPlus n) Is (Difference a To (N964NatPlus nPlusA)))
add964 =
    add963 >> add1


{-| The `NNat` plus 965.


-}
add965 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N965NatPlus n) Is (Difference a To (N965NatPlus nPlusA)))
add965 =
    add964 >> add1


{-| The `NNat` plus 966.


-}
add966 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N966NatPlus n) Is (Difference a To (N966NatPlus nPlusA)))
add966 =
    add965 >> add1


{-| The `NNat` plus 967.


-}
add967 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N967NatPlus n) Is (Difference a To (N967NatPlus nPlusA)))
add967 =
    add966 >> add1


{-| The `NNat` plus 968.


-}
add968 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N968NatPlus n) Is (Difference a To (N968NatPlus nPlusA)))
add968 =
    add967 >> add1


{-| The `NNat` plus 969.


-}
add969 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N969NatPlus n) Is (Difference a To (N969NatPlus nPlusA)))
add969 =
    add968 >> add1


{-| The `NNat` plus 970.


-}
add970 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N970NatPlus n) Is (Difference a To (N970NatPlus nPlusA)))
add970 =
    add969 >> add1


{-| The `NNat` plus 971.


-}
add971 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N971NatPlus n) Is (Difference a To (N971NatPlus nPlusA)))
add971 =
    add970 >> add1


{-| The `NNat` plus 972.


-}
add972 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N972NatPlus n) Is (Difference a To (N972NatPlus nPlusA)))
add972 =
    add971 >> add1


{-| The `NNat` plus 973.


-}
add973 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N973NatPlus n) Is (Difference a To (N973NatPlus nPlusA)))
add973 =
    add972 >> add1


{-| The `NNat` plus 974.


-}
add974 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N974NatPlus n) Is (Difference a To (N974NatPlus nPlusA)))
add974 =
    add973 >> add1


{-| The `NNat` plus 975.


-}
add975 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N975NatPlus n) Is (Difference a To (N975NatPlus nPlusA)))
add975 =
    add974 >> add1


{-| The `NNat` plus 976.


-}
add976 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N976NatPlus n) Is (Difference a To (N976NatPlus nPlusA)))
add976 =
    add975 >> add1


{-| The `NNat` plus 977.


-}
add977 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N977NatPlus n) Is (Difference a To (N977NatPlus nPlusA)))
add977 =
    add976 >> add1


{-| The `NNat` plus 978.


-}
add978 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N978NatPlus n) Is (Difference a To (N978NatPlus nPlusA)))
add978 =
    add977 >> add1


{-| The `NNat` plus 979.


-}
add979 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N979NatPlus n) Is (Difference a To (N979NatPlus nPlusA)))
add979 =
    add978 >> add1


{-| The `NNat` plus 980.


-}
add980 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N980NatPlus n) Is (Difference a To (N980NatPlus nPlusA)))
add980 =
    add979 >> add1


{-| The `NNat` plus 981.


-}
add981 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N981NatPlus n) Is (Difference a To (N981NatPlus nPlusA)))
add981 =
    add980 >> add1


{-| The `NNat` plus 982.


-}
add982 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N982NatPlus n) Is (Difference a To (N982NatPlus nPlusA)))
add982 =
    add981 >> add1


{-| The `NNat` plus 983.


-}
add983 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N983NatPlus n) Is (Difference a To (N983NatPlus nPlusA)))
add983 =
    add982 >> add1


{-| The `NNat` plus 984.


-}
add984 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N984NatPlus n) Is (Difference a To (N984NatPlus nPlusA)))
add984 =
    add983 >> add1


{-| The `NNat` plus 985.


-}
add985 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N985NatPlus n) Is (Difference a To (N985NatPlus nPlusA)))
add985 =
    add984 >> add1


{-| The `NNat` plus 986.


-}
add986 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N986NatPlus n) Is (Difference a To (N986NatPlus nPlusA)))
add986 =
    add985 >> add1


{-| The `NNat` plus 987.


-}
add987 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N987NatPlus n) Is (Difference a To (N987NatPlus nPlusA)))
add987 =
    add986 >> add1


{-| The `NNat` plus 988.


-}
add988 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N988NatPlus n) Is (Difference a To (N988NatPlus nPlusA)))
add988 =
    add987 >> add1


{-| The `NNat` plus 989.


-}
add989 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N989NatPlus n) Is (Difference a To (N989NatPlus nPlusA)))
add989 =
    add988 >> add1


{-| The `NNat` plus 990.


-}
add990 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N990NatPlus n) Is (Difference a To (N990NatPlus nPlusA)))
add990 =
    add989 >> add1


{-| The `NNat` plus 991.


-}
add991 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N991NatPlus n) Is (Difference a To (N991NatPlus nPlusA)))
add991 =
    add990 >> add1


{-| The `NNat` plus 992.


-}
add992 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N992NatPlus n) Is (Difference a To (N992NatPlus nPlusA)))
add992 =
    add991 >> add1


{-| The `NNat` plus 993.


-}
add993 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N993NatPlus n) Is (Difference a To (N993NatPlus nPlusA)))
add993 =
    add992 >> add1


{-| The `NNat` plus 994.


-}
add994 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N994NatPlus n) Is (Difference a To (N994NatPlus nPlusA)))
add994 =
    add993 >> add1


{-| The `NNat` plus 995.


-}
add995 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N995NatPlus n) Is (Difference a To (N995NatPlus nPlusA)))
add995 =
    add994 >> add1


{-| The `NNat` plus 996.


-}
add996 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N996NatPlus n) Is (Difference a To (N996NatPlus nPlusA)))
add996 =
    add995 >> add1


{-| The `NNat` plus 997.


-}
add997 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N997NatPlus n) Is (Difference a To (N997NatPlus nPlusA)))
add997 =
    add996 >> add1


{-| The `NNat` plus 998.


-}
add998 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N998NatPlus n) Is (Difference a To (N998NatPlus nPlusA)))
add998 =
    add997 >> add1


{-| The `NNat` plus 999.


-}
add999 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N999NatPlus n) Is (Difference a To (N999NatPlus nPlusA)))
add999 =
    add998 >> add1


{-| The `NNat` plus 1000.


-}
add1000 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1000NatPlus n) Is (Difference a To (N1000NatPlus nPlusA)))
add1000 =
    add999 >> add1


{-| The `NNat` plus 1001.


-}
add1001 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1001NatPlus n) Is (Difference a To (N1001NatPlus nPlusA)))
add1001 =
    add1000 >> add1


{-| The `NNat` plus 1002.


-}
add1002 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1002NatPlus n) Is (Difference a To (N1002NatPlus nPlusA)))
add1002 =
    add1001 >> add1


{-| The `NNat` plus 1003.


-}
add1003 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1003NatPlus n) Is (Difference a To (N1003NatPlus nPlusA)))
add1003 =
    add1002 >> add1


{-| The `NNat` plus 1004.


-}
add1004 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1004NatPlus n) Is (Difference a To (N1004NatPlus nPlusA)))
add1004 =
    add1003 >> add1


{-| The `NNat` plus 1005.


-}
add1005 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1005NatPlus n) Is (Difference a To (N1005NatPlus nPlusA)))
add1005 =
    add1004 >> add1


{-| The `NNat` plus 1006.


-}
add1006 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1006NatPlus n) Is (Difference a To (N1006NatPlus nPlusA)))
add1006 =
    add1005 >> add1


{-| The `NNat` plus 1007.


-}
add1007 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1007NatPlus n) Is (Difference a To (N1007NatPlus nPlusA)))
add1007 =
    add1006 >> add1


{-| The `NNat` plus 1008.


-}
add1008 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1008NatPlus n) Is (Difference a To (N1008NatPlus nPlusA)))
add1008 =
    add1007 >> add1


{-| The `NNat` plus 1009.


-}
add1009 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1009NatPlus n) Is (Difference a To (N1009NatPlus nPlusA)))
add1009 =
    add1008 >> add1


{-| The `NNat` plus 1010.


-}
add1010 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1010NatPlus n) Is (Difference a To (N1010NatPlus nPlusA)))
add1010 =
    add1009 >> add1


{-| The `NNat` plus 1011.


-}
add1011 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1011NatPlus n) Is (Difference a To (N1011NatPlus nPlusA)))
add1011 =
    add1010 >> add1


{-| The `NNat` plus 1012.


-}
add1012 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1012NatPlus n) Is (Difference a To (N1012NatPlus nPlusA)))
add1012 =
    add1011 >> add1


{-| The `NNat` plus 1013.


-}
add1013 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1013NatPlus n) Is (Difference a To (N1013NatPlus nPlusA)))
add1013 =
    add1012 >> add1


{-| The `NNat` plus 1014.


-}
add1014 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1014NatPlus n) Is (Difference a To (N1014NatPlus nPlusA)))
add1014 =
    add1013 >> add1


{-| The `NNat` plus 1015.


-}
add1015 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1015NatPlus n) Is (Difference a To (N1015NatPlus nPlusA)))
add1015 =
    add1014 >> add1


{-| The `NNat` plus 1016.


-}
add1016 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1016NatPlus n) Is (Difference a To (N1016NatPlus nPlusA)))
add1016 =
    add1015 >> add1


{-| The `NNat` plus 1017.


-}
add1017 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1017NatPlus n) Is (Difference a To (N1017NatPlus nPlusA)))
add1017 =
    add1016 >> add1


{-| The `NNat` plus 1018.


-}
add1018 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1018NatPlus n) Is (Difference a To (N1018NatPlus nPlusA)))
add1018 =
    add1017 >> add1


{-| The `NNat` plus 1019.


-}
add1019 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1019NatPlus n) Is (Difference a To (N1019NatPlus nPlusA)))
add1019 =
    add1018 >> add1


{-| The `NNat` plus 1020.


-}
add1020 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1020NatPlus n) Is (Difference a To (N1020NatPlus nPlusA)))
add1020 =
    add1019 >> add1


{-| The `NNat` plus 1021.


-}
add1021 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1021NatPlus n) Is (Difference a To (N1021NatPlus nPlusA)))
add1021 =
    add1020 >> add1


{-| The `NNat` plus 1022.


-}
add1022 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1022NatPlus n) Is (Difference a To (N1022NatPlus nPlusA)))
add1022 =
    add1021 >> add1


{-| The `NNat` plus 1023.


-}
add1023 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1023NatPlus n) Is (Difference a To (N1023NatPlus nPlusA)))
add1023 =
    add1022 >> add1


{-| The `NNat` plus 1024.


-}
add1024 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1024NatPlus n) Is (Difference a To (N1024NatPlus nPlusA)))
add1024 =
    add1023 >> add1


{-| The NNat minus 1.


-}
sub1 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1NatPlus n) Is (Difference a To (N1NatPlus nPlusA)))
sub1 =
    Internal.sub1


{-| The NNat minus 2.


-}
sub2 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N2NatPlus n) Is (Difference a To (N2NatPlus nPlusA)))
sub2 =
    sub1 >> sub1


{-| The NNat minus 3.


-}
sub3 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N3NatPlus n) Is (Difference a To (N3NatPlus nPlusA)))
sub3 =
    sub2 >> sub1


{-| The NNat minus 4.


-}
sub4 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N4NatPlus n) Is (Difference a To (N4NatPlus nPlusA)))
sub4 =
    sub3 >> sub1


{-| The NNat minus 5.


-}
sub5 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N5NatPlus n) Is (Difference a To (N5NatPlus nPlusA)))
sub5 =
    sub4 >> sub1


{-| The NNat minus 6.


-}
sub6 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N6NatPlus n) Is (Difference a To (N6NatPlus nPlusA)))
sub6 =
    sub5 >> sub1


{-| The NNat minus 7.


-}
sub7 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N7NatPlus n) Is (Difference a To (N7NatPlus nPlusA)))
sub7 =
    sub6 >> sub1


{-| The NNat minus 8.


-}
sub8 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N8NatPlus n) Is (Difference a To (N8NatPlus nPlusA)))
sub8 =
    sub7 >> sub1


{-| The NNat minus 9.


-}
sub9 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N9NatPlus n) Is (Difference a To (N9NatPlus nPlusA)))
sub9 =
    sub8 >> sub1


{-| The NNat minus 10.


-}
sub10 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N10NatPlus n) Is (Difference a To (N10NatPlus nPlusA)))
sub10 =
    sub9 >> sub1


{-| The NNat minus 11.


-}
sub11 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N11NatPlus n) Is (Difference a To (N11NatPlus nPlusA)))
sub11 =
    sub10 >> sub1


{-| The NNat minus 12.


-}
sub12 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N12NatPlus n) Is (Difference a To (N12NatPlus nPlusA)))
sub12 =
    sub11 >> sub1


{-| The NNat minus 13.


-}
sub13 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N13NatPlus n) Is (Difference a To (N13NatPlus nPlusA)))
sub13 =
    sub12 >> sub1


{-| The NNat minus 14.


-}
sub14 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N14NatPlus n) Is (Difference a To (N14NatPlus nPlusA)))
sub14 =
    sub13 >> sub1


{-| The NNat minus 15.


-}
sub15 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N15NatPlus n) Is (Difference a To (N15NatPlus nPlusA)))
sub15 =
    sub14 >> sub1


{-| The NNat minus 16.


-}
sub16 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N16NatPlus n) Is (Difference a To (N16NatPlus nPlusA)))
sub16 =
    sub15 >> sub1


{-| The NNat minus 17.


-}
sub17 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N17NatPlus n) Is (Difference a To (N17NatPlus nPlusA)))
sub17 =
    sub16 >> sub1


{-| The NNat minus 18.


-}
sub18 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N18NatPlus n) Is (Difference a To (N18NatPlus nPlusA)))
sub18 =
    sub17 >> sub1


{-| The NNat minus 19.


-}
sub19 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N19NatPlus n) Is (Difference a To (N19NatPlus nPlusA)))
sub19 =
    sub18 >> sub1


{-| The NNat minus 20.


-}
sub20 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N20NatPlus n) Is (Difference a To (N20NatPlus nPlusA)))
sub20 =
    sub19 >> sub1


{-| The NNat minus 21.


-}
sub21 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N21NatPlus n) Is (Difference a To (N21NatPlus nPlusA)))
sub21 =
    sub20 >> sub1


{-| The NNat minus 22.


-}
sub22 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N22NatPlus n) Is (Difference a To (N22NatPlus nPlusA)))
sub22 =
    sub21 >> sub1


{-| The NNat minus 23.


-}
sub23 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N23NatPlus n) Is (Difference a To (N23NatPlus nPlusA)))
sub23 =
    sub22 >> sub1


{-| The NNat minus 24.


-}
sub24 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N24NatPlus n) Is (Difference a To (N24NatPlus nPlusA)))
sub24 =
    sub23 >> sub1


{-| The NNat minus 25.


-}
sub25 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N25NatPlus n) Is (Difference a To (N25NatPlus nPlusA)))
sub25 =
    sub24 >> sub1


{-| The NNat minus 26.


-}
sub26 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N26NatPlus n) Is (Difference a To (N26NatPlus nPlusA)))
sub26 =
    sub25 >> sub1


{-| The NNat minus 27.


-}
sub27 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N27NatPlus n) Is (Difference a To (N27NatPlus nPlusA)))
sub27 =
    sub26 >> sub1


{-| The NNat minus 28.


-}
sub28 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N28NatPlus n) Is (Difference a To (N28NatPlus nPlusA)))
sub28 =
    sub27 >> sub1


{-| The NNat minus 29.


-}
sub29 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N29NatPlus n) Is (Difference a To (N29NatPlus nPlusA)))
sub29 =
    sub28 >> sub1


{-| The NNat minus 30.


-}
sub30 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N30NatPlus n) Is (Difference a To (N30NatPlus nPlusA)))
sub30 =
    sub29 >> sub1


{-| The NNat minus 31.


-}
sub31 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N31NatPlus n) Is (Difference a To (N31NatPlus nPlusA)))
sub31 =
    sub30 >> sub1


{-| The NNat minus 32.


-}
sub32 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N32NatPlus n) Is (Difference a To (N32NatPlus nPlusA)))
sub32 =
    sub31 >> sub1


{-| The NNat minus 33.


-}
sub33 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N33NatPlus n) Is (Difference a To (N33NatPlus nPlusA)))
sub33 =
    sub32 >> sub1


{-| The NNat minus 34.


-}
sub34 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N34NatPlus n) Is (Difference a To (N34NatPlus nPlusA)))
sub34 =
    sub33 >> sub1


{-| The NNat minus 35.


-}
sub35 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N35NatPlus n) Is (Difference a To (N35NatPlus nPlusA)))
sub35 =
    sub34 >> sub1


{-| The NNat minus 36.


-}
sub36 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N36NatPlus n) Is (Difference a To (N36NatPlus nPlusA)))
sub36 =
    sub35 >> sub1


{-| The NNat minus 37.


-}
sub37 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N37NatPlus n) Is (Difference a To (N37NatPlus nPlusA)))
sub37 =
    sub36 >> sub1


{-| The NNat minus 38.


-}
sub38 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N38NatPlus n) Is (Difference a To (N38NatPlus nPlusA)))
sub38 =
    sub37 >> sub1


{-| The NNat minus 39.


-}
sub39 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N39NatPlus n) Is (Difference a To (N39NatPlus nPlusA)))
sub39 =
    sub38 >> sub1


{-| The NNat minus 40.


-}
sub40 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N40NatPlus n) Is (Difference a To (N40NatPlus nPlusA)))
sub40 =
    sub39 >> sub1


{-| The NNat minus 41.


-}
sub41 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N41NatPlus n) Is (Difference a To (N41NatPlus nPlusA)))
sub41 =
    sub40 >> sub1


{-| The NNat minus 42.


-}
sub42 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N42NatPlus n) Is (Difference a To (N42NatPlus nPlusA)))
sub42 =
    sub41 >> sub1


{-| The NNat minus 43.


-}
sub43 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N43NatPlus n) Is (Difference a To (N43NatPlus nPlusA)))
sub43 =
    sub42 >> sub1


{-| The NNat minus 44.


-}
sub44 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N44NatPlus n) Is (Difference a To (N44NatPlus nPlusA)))
sub44 =
    sub43 >> sub1


{-| The NNat minus 45.


-}
sub45 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N45NatPlus n) Is (Difference a To (N45NatPlus nPlusA)))
sub45 =
    sub44 >> sub1


{-| The NNat minus 46.


-}
sub46 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N46NatPlus n) Is (Difference a To (N46NatPlus nPlusA)))
sub46 =
    sub45 >> sub1


{-| The NNat minus 47.


-}
sub47 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N47NatPlus n) Is (Difference a To (N47NatPlus nPlusA)))
sub47 =
    sub46 >> sub1


{-| The NNat minus 48.


-}
sub48 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N48NatPlus n) Is (Difference a To (N48NatPlus nPlusA)))
sub48 =
    sub47 >> sub1


{-| The NNat minus 49.


-}
sub49 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N49NatPlus n) Is (Difference a To (N49NatPlus nPlusA)))
sub49 =
    sub48 >> sub1


{-| The NNat minus 50.


-}
sub50 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N50NatPlus n) Is (Difference a To (N50NatPlus nPlusA)))
sub50 =
    sub49 >> sub1


{-| The NNat minus 51.


-}
sub51 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N51NatPlus n) Is (Difference a To (N51NatPlus nPlusA)))
sub51 =
    sub50 >> sub1


{-| The NNat minus 52.


-}
sub52 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N52NatPlus n) Is (Difference a To (N52NatPlus nPlusA)))
sub52 =
    sub51 >> sub1


{-| The NNat minus 53.


-}
sub53 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N53NatPlus n) Is (Difference a To (N53NatPlus nPlusA)))
sub53 =
    sub52 >> sub1


{-| The NNat minus 54.


-}
sub54 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N54NatPlus n) Is (Difference a To (N54NatPlus nPlusA)))
sub54 =
    sub53 >> sub1


{-| The NNat minus 55.


-}
sub55 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N55NatPlus n) Is (Difference a To (N55NatPlus nPlusA)))
sub55 =
    sub54 >> sub1


{-| The NNat minus 56.


-}
sub56 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N56NatPlus n) Is (Difference a To (N56NatPlus nPlusA)))
sub56 =
    sub55 >> sub1


{-| The NNat minus 57.


-}
sub57 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N57NatPlus n) Is (Difference a To (N57NatPlus nPlusA)))
sub57 =
    sub56 >> sub1


{-| The NNat minus 58.


-}
sub58 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N58NatPlus n) Is (Difference a To (N58NatPlus nPlusA)))
sub58 =
    sub57 >> sub1


{-| The NNat minus 59.


-}
sub59 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N59NatPlus n) Is (Difference a To (N59NatPlus nPlusA)))
sub59 =
    sub58 >> sub1


{-| The NNat minus 60.


-}
sub60 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N60NatPlus n) Is (Difference a To (N60NatPlus nPlusA)))
sub60 =
    sub59 >> sub1


{-| The NNat minus 61.


-}
sub61 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N61NatPlus n) Is (Difference a To (N61NatPlus nPlusA)))
sub61 =
    sub60 >> sub1


{-| The NNat minus 62.


-}
sub62 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N62NatPlus n) Is (Difference a To (N62NatPlus nPlusA)))
sub62 =
    sub61 >> sub1


{-| The NNat minus 63.


-}
sub63 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N63NatPlus n) Is (Difference a To (N63NatPlus nPlusA)))
sub63 =
    sub62 >> sub1


{-| The NNat minus 64.


-}
sub64 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N64NatPlus n) Is (Difference a To (N64NatPlus nPlusA)))
sub64 =
    sub63 >> sub1


{-| The NNat minus 65.


-}
sub65 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N65NatPlus n) Is (Difference a To (N65NatPlus nPlusA)))
sub65 =
    sub64 >> sub1


{-| The NNat minus 66.


-}
sub66 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N66NatPlus n) Is (Difference a To (N66NatPlus nPlusA)))
sub66 =
    sub65 >> sub1


{-| The NNat minus 67.


-}
sub67 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N67NatPlus n) Is (Difference a To (N67NatPlus nPlusA)))
sub67 =
    sub66 >> sub1


{-| The NNat minus 68.


-}
sub68 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N68NatPlus n) Is (Difference a To (N68NatPlus nPlusA)))
sub68 =
    sub67 >> sub1


{-| The NNat minus 69.


-}
sub69 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N69NatPlus n) Is (Difference a To (N69NatPlus nPlusA)))
sub69 =
    sub68 >> sub1


{-| The NNat minus 70.


-}
sub70 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N70NatPlus n) Is (Difference a To (N70NatPlus nPlusA)))
sub70 =
    sub69 >> sub1


{-| The NNat minus 71.


-}
sub71 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N71NatPlus n) Is (Difference a To (N71NatPlus nPlusA)))
sub71 =
    sub70 >> sub1


{-| The NNat minus 72.


-}
sub72 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N72NatPlus n) Is (Difference a To (N72NatPlus nPlusA)))
sub72 =
    sub71 >> sub1


{-| The NNat minus 73.


-}
sub73 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N73NatPlus n) Is (Difference a To (N73NatPlus nPlusA)))
sub73 =
    sub72 >> sub1


{-| The NNat minus 74.


-}
sub74 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N74NatPlus n) Is (Difference a To (N74NatPlus nPlusA)))
sub74 =
    sub73 >> sub1


{-| The NNat minus 75.


-}
sub75 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N75NatPlus n) Is (Difference a To (N75NatPlus nPlusA)))
sub75 =
    sub74 >> sub1


{-| The NNat minus 76.


-}
sub76 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N76NatPlus n) Is (Difference a To (N76NatPlus nPlusA)))
sub76 =
    sub75 >> sub1


{-| The NNat minus 77.


-}
sub77 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N77NatPlus n) Is (Difference a To (N77NatPlus nPlusA)))
sub77 =
    sub76 >> sub1


{-| The NNat minus 78.


-}
sub78 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N78NatPlus n) Is (Difference a To (N78NatPlus nPlusA)))
sub78 =
    sub77 >> sub1


{-| The NNat minus 79.


-}
sub79 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N79NatPlus n) Is (Difference a To (N79NatPlus nPlusA)))
sub79 =
    sub78 >> sub1


{-| The NNat minus 80.


-}
sub80 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N80NatPlus n) Is (Difference a To (N80NatPlus nPlusA)))
sub80 =
    sub79 >> sub1


{-| The NNat minus 81.


-}
sub81 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N81NatPlus n) Is (Difference a To (N81NatPlus nPlusA)))
sub81 =
    sub80 >> sub1


{-| The NNat minus 82.


-}
sub82 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N82NatPlus n) Is (Difference a To (N82NatPlus nPlusA)))
sub82 =
    sub81 >> sub1


{-| The NNat minus 83.


-}
sub83 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N83NatPlus n) Is (Difference a To (N83NatPlus nPlusA)))
sub83 =
    sub82 >> sub1


{-| The NNat minus 84.


-}
sub84 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N84NatPlus n) Is (Difference a To (N84NatPlus nPlusA)))
sub84 =
    sub83 >> sub1


{-| The NNat minus 85.


-}
sub85 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N85NatPlus n) Is (Difference a To (N85NatPlus nPlusA)))
sub85 =
    sub84 >> sub1


{-| The NNat minus 86.


-}
sub86 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N86NatPlus n) Is (Difference a To (N86NatPlus nPlusA)))
sub86 =
    sub85 >> sub1


{-| The NNat minus 87.


-}
sub87 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N87NatPlus n) Is (Difference a To (N87NatPlus nPlusA)))
sub87 =
    sub86 >> sub1


{-| The NNat minus 88.


-}
sub88 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N88NatPlus n) Is (Difference a To (N88NatPlus nPlusA)))
sub88 =
    sub87 >> sub1


{-| The NNat minus 89.


-}
sub89 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N89NatPlus n) Is (Difference a To (N89NatPlus nPlusA)))
sub89 =
    sub88 >> sub1


{-| The NNat minus 90.


-}
sub90 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N90NatPlus n) Is (Difference a To (N90NatPlus nPlusA)))
sub90 =
    sub89 >> sub1


{-| The NNat minus 91.


-}
sub91 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N91NatPlus n) Is (Difference a To (N91NatPlus nPlusA)))
sub91 =
    sub90 >> sub1


{-| The NNat minus 92.


-}
sub92 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N92NatPlus n) Is (Difference a To (N92NatPlus nPlusA)))
sub92 =
    sub91 >> sub1


{-| The NNat minus 93.


-}
sub93 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N93NatPlus n) Is (Difference a To (N93NatPlus nPlusA)))
sub93 =
    sub92 >> sub1


{-| The NNat minus 94.


-}
sub94 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N94NatPlus n) Is (Difference a To (N94NatPlus nPlusA)))
sub94 =
    sub93 >> sub1


{-| The NNat minus 95.


-}
sub95 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N95NatPlus n) Is (Difference a To (N95NatPlus nPlusA)))
sub95 =
    sub94 >> sub1


{-| The NNat minus 96.


-}
sub96 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N96NatPlus n) Is (Difference a To (N96NatPlus nPlusA)))
sub96 =
    sub95 >> sub1


{-| The NNat minus 97.


-}
sub97 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N97NatPlus n) Is (Difference a To (N97NatPlus nPlusA)))
sub97 =
    sub96 >> sub1


{-| The NNat minus 98.


-}
sub98 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N98NatPlus n) Is (Difference a To (N98NatPlus nPlusA)))
sub98 =
    sub97 >> sub1


{-| The NNat minus 99.


-}
sub99 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N99NatPlus n) Is (Difference a To (N99NatPlus nPlusA)))
sub99 =
    sub98 >> sub1


{-| The NNat minus 100.


-}
sub100 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N100NatPlus n) Is (Difference a To (N100NatPlus nPlusA)))
sub100 =
    sub99 >> sub1


{-| The NNat minus 101.


-}
sub101 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N101NatPlus n) Is (Difference a To (N101NatPlus nPlusA)))
sub101 =
    sub100 >> sub1


{-| The NNat minus 102.


-}
sub102 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N102NatPlus n) Is (Difference a To (N102NatPlus nPlusA)))
sub102 =
    sub101 >> sub1


{-| The NNat minus 103.


-}
sub103 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N103NatPlus n) Is (Difference a To (N103NatPlus nPlusA)))
sub103 =
    sub102 >> sub1


{-| The NNat minus 104.


-}
sub104 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N104NatPlus n) Is (Difference a To (N104NatPlus nPlusA)))
sub104 =
    sub103 >> sub1


{-| The NNat minus 105.


-}
sub105 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N105NatPlus n) Is (Difference a To (N105NatPlus nPlusA)))
sub105 =
    sub104 >> sub1


{-| The NNat minus 106.


-}
sub106 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N106NatPlus n) Is (Difference a To (N106NatPlus nPlusA)))
sub106 =
    sub105 >> sub1


{-| The NNat minus 107.


-}
sub107 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N107NatPlus n) Is (Difference a To (N107NatPlus nPlusA)))
sub107 =
    sub106 >> sub1


{-| The NNat minus 108.


-}
sub108 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N108NatPlus n) Is (Difference a To (N108NatPlus nPlusA)))
sub108 =
    sub107 >> sub1


{-| The NNat minus 109.


-}
sub109 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N109NatPlus n) Is (Difference a To (N109NatPlus nPlusA)))
sub109 =
    sub108 >> sub1


{-| The NNat minus 110.


-}
sub110 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N110NatPlus n) Is (Difference a To (N110NatPlus nPlusA)))
sub110 =
    sub109 >> sub1


{-| The NNat minus 111.


-}
sub111 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N111NatPlus n) Is (Difference a To (N111NatPlus nPlusA)))
sub111 =
    sub110 >> sub1


{-| The NNat minus 112.


-}
sub112 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N112NatPlus n) Is (Difference a To (N112NatPlus nPlusA)))
sub112 =
    sub111 >> sub1


{-| The NNat minus 113.


-}
sub113 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N113NatPlus n) Is (Difference a To (N113NatPlus nPlusA)))
sub113 =
    sub112 >> sub1


{-| The NNat minus 114.


-}
sub114 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N114NatPlus n) Is (Difference a To (N114NatPlus nPlusA)))
sub114 =
    sub113 >> sub1


{-| The NNat minus 115.


-}
sub115 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N115NatPlus n) Is (Difference a To (N115NatPlus nPlusA)))
sub115 =
    sub114 >> sub1


{-| The NNat minus 116.


-}
sub116 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N116NatPlus n) Is (Difference a To (N116NatPlus nPlusA)))
sub116 =
    sub115 >> sub1


{-| The NNat minus 117.


-}
sub117 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N117NatPlus n) Is (Difference a To (N117NatPlus nPlusA)))
sub117 =
    sub116 >> sub1


{-| The NNat minus 118.


-}
sub118 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N118NatPlus n) Is (Difference a To (N118NatPlus nPlusA)))
sub118 =
    sub117 >> sub1


{-| The NNat minus 119.


-}
sub119 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N119NatPlus n) Is (Difference a To (N119NatPlus nPlusA)))
sub119 =
    sub118 >> sub1


{-| The NNat minus 120.


-}
sub120 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N120NatPlus n) Is (Difference a To (N120NatPlus nPlusA)))
sub120 =
    sub119 >> sub1


{-| The NNat minus 121.


-}
sub121 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N121NatPlus n) Is (Difference a To (N121NatPlus nPlusA)))
sub121 =
    sub120 >> sub1


{-| The NNat minus 122.


-}
sub122 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N122NatPlus n) Is (Difference a To (N122NatPlus nPlusA)))
sub122 =
    sub121 >> sub1


{-| The NNat minus 123.


-}
sub123 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N123NatPlus n) Is (Difference a To (N123NatPlus nPlusA)))
sub123 =
    sub122 >> sub1


{-| The NNat minus 124.


-}
sub124 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N124NatPlus n) Is (Difference a To (N124NatPlus nPlusA)))
sub124 =
    sub123 >> sub1


{-| The NNat minus 125.


-}
sub125 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N125NatPlus n) Is (Difference a To (N125NatPlus nPlusA)))
sub125 =
    sub124 >> sub1


{-| The NNat minus 126.


-}
sub126 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N126NatPlus n) Is (Difference a To (N126NatPlus nPlusA)))
sub126 =
    sub125 >> sub1


{-| The NNat minus 127.


-}
sub127 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N127NatPlus n) Is (Difference a To (N127NatPlus nPlusA)))
sub127 =
    sub126 >> sub1


{-| The NNat minus 128.


-}
sub128 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N128NatPlus n) Is (Difference a To (N128NatPlus nPlusA)))
sub128 =
    sub127 >> sub1


{-| The NNat minus 129.


-}
sub129 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N129NatPlus n) Is (Difference a To (N129NatPlus nPlusA)))
sub129 =
    sub128 >> sub1


{-| The NNat minus 130.


-}
sub130 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N130NatPlus n) Is (Difference a To (N130NatPlus nPlusA)))
sub130 =
    sub129 >> sub1


{-| The NNat minus 131.


-}
sub131 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N131NatPlus n) Is (Difference a To (N131NatPlus nPlusA)))
sub131 =
    sub130 >> sub1


{-| The NNat minus 132.


-}
sub132 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N132NatPlus n) Is (Difference a To (N132NatPlus nPlusA)))
sub132 =
    sub131 >> sub1


{-| The NNat minus 133.


-}
sub133 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N133NatPlus n) Is (Difference a To (N133NatPlus nPlusA)))
sub133 =
    sub132 >> sub1


{-| The NNat minus 134.


-}
sub134 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N134NatPlus n) Is (Difference a To (N134NatPlus nPlusA)))
sub134 =
    sub133 >> sub1


{-| The NNat minus 135.


-}
sub135 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N135NatPlus n) Is (Difference a To (N135NatPlus nPlusA)))
sub135 =
    sub134 >> sub1


{-| The NNat minus 136.


-}
sub136 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N136NatPlus n) Is (Difference a To (N136NatPlus nPlusA)))
sub136 =
    sub135 >> sub1


{-| The NNat minus 137.


-}
sub137 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N137NatPlus n) Is (Difference a To (N137NatPlus nPlusA)))
sub137 =
    sub136 >> sub1


{-| The NNat minus 138.


-}
sub138 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N138NatPlus n) Is (Difference a To (N138NatPlus nPlusA)))
sub138 =
    sub137 >> sub1


{-| The NNat minus 139.


-}
sub139 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N139NatPlus n) Is (Difference a To (N139NatPlus nPlusA)))
sub139 =
    sub138 >> sub1


{-| The NNat minus 140.


-}
sub140 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N140NatPlus n) Is (Difference a To (N140NatPlus nPlusA)))
sub140 =
    sub139 >> sub1


{-| The NNat minus 141.


-}
sub141 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N141NatPlus n) Is (Difference a To (N141NatPlus nPlusA)))
sub141 =
    sub140 >> sub1


{-| The NNat minus 142.


-}
sub142 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N142NatPlus n) Is (Difference a To (N142NatPlus nPlusA)))
sub142 =
    sub141 >> sub1


{-| The NNat minus 143.


-}
sub143 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N143NatPlus n) Is (Difference a To (N143NatPlus nPlusA)))
sub143 =
    sub142 >> sub1


{-| The NNat minus 144.


-}
sub144 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N144NatPlus n) Is (Difference a To (N144NatPlus nPlusA)))
sub144 =
    sub143 >> sub1


{-| The NNat minus 145.


-}
sub145 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N145NatPlus n) Is (Difference a To (N145NatPlus nPlusA)))
sub145 =
    sub144 >> sub1


{-| The NNat minus 146.


-}
sub146 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N146NatPlus n) Is (Difference a To (N146NatPlus nPlusA)))
sub146 =
    sub145 >> sub1


{-| The NNat minus 147.


-}
sub147 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N147NatPlus n) Is (Difference a To (N147NatPlus nPlusA)))
sub147 =
    sub146 >> sub1


{-| The NNat minus 148.


-}
sub148 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N148NatPlus n) Is (Difference a To (N148NatPlus nPlusA)))
sub148 =
    sub147 >> sub1


{-| The NNat minus 149.


-}
sub149 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N149NatPlus n) Is (Difference a To (N149NatPlus nPlusA)))
sub149 =
    sub148 >> sub1


{-| The NNat minus 150.


-}
sub150 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N150NatPlus n) Is (Difference a To (N150NatPlus nPlusA)))
sub150 =
    sub149 >> sub1


{-| The NNat minus 151.


-}
sub151 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N151NatPlus n) Is (Difference a To (N151NatPlus nPlusA)))
sub151 =
    sub150 >> sub1


{-| The NNat minus 152.


-}
sub152 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N152NatPlus n) Is (Difference a To (N152NatPlus nPlusA)))
sub152 =
    sub151 >> sub1


{-| The NNat minus 153.


-}
sub153 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N153NatPlus n) Is (Difference a To (N153NatPlus nPlusA)))
sub153 =
    sub152 >> sub1


{-| The NNat minus 154.


-}
sub154 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N154NatPlus n) Is (Difference a To (N154NatPlus nPlusA)))
sub154 =
    sub153 >> sub1


{-| The NNat minus 155.


-}
sub155 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N155NatPlus n) Is (Difference a To (N155NatPlus nPlusA)))
sub155 =
    sub154 >> sub1


{-| The NNat minus 156.


-}
sub156 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N156NatPlus n) Is (Difference a To (N156NatPlus nPlusA)))
sub156 =
    sub155 >> sub1


{-| The NNat minus 157.


-}
sub157 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N157NatPlus n) Is (Difference a To (N157NatPlus nPlusA)))
sub157 =
    sub156 >> sub1


{-| The NNat minus 158.


-}
sub158 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N158NatPlus n) Is (Difference a To (N158NatPlus nPlusA)))
sub158 =
    sub157 >> sub1


{-| The NNat minus 159.


-}
sub159 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N159NatPlus n) Is (Difference a To (N159NatPlus nPlusA)))
sub159 =
    sub158 >> sub1


{-| The NNat minus 160.


-}
sub160 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N160NatPlus n) Is (Difference a To (N160NatPlus nPlusA)))
sub160 =
    sub159 >> sub1


{-| The NNat minus 161.


-}
sub161 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N161NatPlus n) Is (Difference a To (N161NatPlus nPlusA)))
sub161 =
    sub160 >> sub1


{-| The NNat minus 162.


-}
sub162 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N162NatPlus n) Is (Difference a To (N162NatPlus nPlusA)))
sub162 =
    sub161 >> sub1


{-| The NNat minus 163.


-}
sub163 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N163NatPlus n) Is (Difference a To (N163NatPlus nPlusA)))
sub163 =
    sub162 >> sub1


{-| The NNat minus 164.


-}
sub164 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N164NatPlus n) Is (Difference a To (N164NatPlus nPlusA)))
sub164 =
    sub163 >> sub1


{-| The NNat minus 165.


-}
sub165 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N165NatPlus n) Is (Difference a To (N165NatPlus nPlusA)))
sub165 =
    sub164 >> sub1


{-| The NNat minus 166.


-}
sub166 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N166NatPlus n) Is (Difference a To (N166NatPlus nPlusA)))
sub166 =
    sub165 >> sub1


{-| The NNat minus 167.


-}
sub167 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N167NatPlus n) Is (Difference a To (N167NatPlus nPlusA)))
sub167 =
    sub166 >> sub1


{-| The NNat minus 168.


-}
sub168 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N168NatPlus n) Is (Difference a To (N168NatPlus nPlusA)))
sub168 =
    sub167 >> sub1


{-| The NNat minus 169.


-}
sub169 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N169NatPlus n) Is (Difference a To (N169NatPlus nPlusA)))
sub169 =
    sub168 >> sub1


{-| The NNat minus 170.


-}
sub170 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N170NatPlus n) Is (Difference a To (N170NatPlus nPlusA)))
sub170 =
    sub169 >> sub1


{-| The NNat minus 171.


-}
sub171 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N171NatPlus n) Is (Difference a To (N171NatPlus nPlusA)))
sub171 =
    sub170 >> sub1


{-| The NNat minus 172.


-}
sub172 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N172NatPlus n) Is (Difference a To (N172NatPlus nPlusA)))
sub172 =
    sub171 >> sub1


{-| The NNat minus 173.


-}
sub173 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N173NatPlus n) Is (Difference a To (N173NatPlus nPlusA)))
sub173 =
    sub172 >> sub1


{-| The NNat minus 174.


-}
sub174 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N174NatPlus n) Is (Difference a To (N174NatPlus nPlusA)))
sub174 =
    sub173 >> sub1


{-| The NNat minus 175.


-}
sub175 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N175NatPlus n) Is (Difference a To (N175NatPlus nPlusA)))
sub175 =
    sub174 >> sub1


{-| The NNat minus 176.


-}
sub176 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N176NatPlus n) Is (Difference a To (N176NatPlus nPlusA)))
sub176 =
    sub175 >> sub1


{-| The NNat minus 177.


-}
sub177 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N177NatPlus n) Is (Difference a To (N177NatPlus nPlusA)))
sub177 =
    sub176 >> sub1


{-| The NNat minus 178.


-}
sub178 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N178NatPlus n) Is (Difference a To (N178NatPlus nPlusA)))
sub178 =
    sub177 >> sub1


{-| The NNat minus 179.


-}
sub179 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N179NatPlus n) Is (Difference a To (N179NatPlus nPlusA)))
sub179 =
    sub178 >> sub1


{-| The NNat minus 180.


-}
sub180 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N180NatPlus n) Is (Difference a To (N180NatPlus nPlusA)))
sub180 =
    sub179 >> sub1


{-| The NNat minus 181.


-}
sub181 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N181NatPlus n) Is (Difference a To (N181NatPlus nPlusA)))
sub181 =
    sub180 >> sub1


{-| The NNat minus 182.


-}
sub182 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N182NatPlus n) Is (Difference a To (N182NatPlus nPlusA)))
sub182 =
    sub181 >> sub1


{-| The NNat minus 183.


-}
sub183 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N183NatPlus n) Is (Difference a To (N183NatPlus nPlusA)))
sub183 =
    sub182 >> sub1


{-| The NNat minus 184.


-}
sub184 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N184NatPlus n) Is (Difference a To (N184NatPlus nPlusA)))
sub184 =
    sub183 >> sub1


{-| The NNat minus 185.


-}
sub185 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N185NatPlus n) Is (Difference a To (N185NatPlus nPlusA)))
sub185 =
    sub184 >> sub1


{-| The NNat minus 186.


-}
sub186 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N186NatPlus n) Is (Difference a To (N186NatPlus nPlusA)))
sub186 =
    sub185 >> sub1


{-| The NNat minus 187.


-}
sub187 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N187NatPlus n) Is (Difference a To (N187NatPlus nPlusA)))
sub187 =
    sub186 >> sub1


{-| The NNat minus 188.


-}
sub188 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N188NatPlus n) Is (Difference a To (N188NatPlus nPlusA)))
sub188 =
    sub187 >> sub1


{-| The NNat minus 189.


-}
sub189 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N189NatPlus n) Is (Difference a To (N189NatPlus nPlusA)))
sub189 =
    sub188 >> sub1


{-| The NNat minus 190.


-}
sub190 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N190NatPlus n) Is (Difference a To (N190NatPlus nPlusA)))
sub190 =
    sub189 >> sub1


{-| The NNat minus 191.


-}
sub191 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N191NatPlus n) Is (Difference a To (N191NatPlus nPlusA)))
sub191 =
    sub190 >> sub1


{-| The NNat minus 192.


-}
sub192 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N192NatPlus n) Is (Difference a To (N192NatPlus nPlusA)))
sub192 =
    sub191 >> sub1


{-| The NNat minus 193.


-}
sub193 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N193NatPlus n) Is (Difference a To (N193NatPlus nPlusA)))
sub193 =
    sub192 >> sub1


{-| The NNat minus 194.


-}
sub194 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N194NatPlus n) Is (Difference a To (N194NatPlus nPlusA)))
sub194 =
    sub193 >> sub1


{-| The NNat minus 195.


-}
sub195 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N195NatPlus n) Is (Difference a To (N195NatPlus nPlusA)))
sub195 =
    sub194 >> sub1


{-| The NNat minus 196.


-}
sub196 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N196NatPlus n) Is (Difference a To (N196NatPlus nPlusA)))
sub196 =
    sub195 >> sub1


{-| The NNat minus 197.


-}
sub197 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N197NatPlus n) Is (Difference a To (N197NatPlus nPlusA)))
sub197 =
    sub196 >> sub1


{-| The NNat minus 198.


-}
sub198 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N198NatPlus n) Is (Difference a To (N198NatPlus nPlusA)))
sub198 =
    sub197 >> sub1


{-| The NNat minus 199.


-}
sub199 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N199NatPlus n) Is (Difference a To (N199NatPlus nPlusA)))
sub199 =
    sub198 >> sub1


{-| The NNat minus 200.


-}
sub200 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N200NatPlus n) Is (Difference a To (N200NatPlus nPlusA)))
sub200 =
    sub199 >> sub1


{-| The NNat minus 201.


-}
sub201 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N201NatPlus n) Is (Difference a To (N201NatPlus nPlusA)))
sub201 =
    sub200 >> sub1


{-| The NNat minus 202.


-}
sub202 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N202NatPlus n) Is (Difference a To (N202NatPlus nPlusA)))
sub202 =
    sub201 >> sub1


{-| The NNat minus 203.


-}
sub203 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N203NatPlus n) Is (Difference a To (N203NatPlus nPlusA)))
sub203 =
    sub202 >> sub1


{-| The NNat minus 204.


-}
sub204 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N204NatPlus n) Is (Difference a To (N204NatPlus nPlusA)))
sub204 =
    sub203 >> sub1


{-| The NNat minus 205.


-}
sub205 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N205NatPlus n) Is (Difference a To (N205NatPlus nPlusA)))
sub205 =
    sub204 >> sub1


{-| The NNat minus 206.


-}
sub206 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N206NatPlus n) Is (Difference a To (N206NatPlus nPlusA)))
sub206 =
    sub205 >> sub1


{-| The NNat minus 207.


-}
sub207 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N207NatPlus n) Is (Difference a To (N207NatPlus nPlusA)))
sub207 =
    sub206 >> sub1


{-| The NNat minus 208.


-}
sub208 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N208NatPlus n) Is (Difference a To (N208NatPlus nPlusA)))
sub208 =
    sub207 >> sub1


{-| The NNat minus 209.


-}
sub209 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N209NatPlus n) Is (Difference a To (N209NatPlus nPlusA)))
sub209 =
    sub208 >> sub1


{-| The NNat minus 210.


-}
sub210 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N210NatPlus n) Is (Difference a To (N210NatPlus nPlusA)))
sub210 =
    sub209 >> sub1


{-| The NNat minus 211.


-}
sub211 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N211NatPlus n) Is (Difference a To (N211NatPlus nPlusA)))
sub211 =
    sub210 >> sub1


{-| The NNat minus 212.


-}
sub212 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N212NatPlus n) Is (Difference a To (N212NatPlus nPlusA)))
sub212 =
    sub211 >> sub1


{-| The NNat minus 213.


-}
sub213 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N213NatPlus n) Is (Difference a To (N213NatPlus nPlusA)))
sub213 =
    sub212 >> sub1


{-| The NNat minus 214.


-}
sub214 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N214NatPlus n) Is (Difference a To (N214NatPlus nPlusA)))
sub214 =
    sub213 >> sub1


{-| The NNat minus 215.


-}
sub215 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N215NatPlus n) Is (Difference a To (N215NatPlus nPlusA)))
sub215 =
    sub214 >> sub1


{-| The NNat minus 216.


-}
sub216 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N216NatPlus n) Is (Difference a To (N216NatPlus nPlusA)))
sub216 =
    sub215 >> sub1


{-| The NNat minus 217.


-}
sub217 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N217NatPlus n) Is (Difference a To (N217NatPlus nPlusA)))
sub217 =
    sub216 >> sub1


{-| The NNat minus 218.


-}
sub218 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N218NatPlus n) Is (Difference a To (N218NatPlus nPlusA)))
sub218 =
    sub217 >> sub1


{-| The NNat minus 219.


-}
sub219 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N219NatPlus n) Is (Difference a To (N219NatPlus nPlusA)))
sub219 =
    sub218 >> sub1


{-| The NNat minus 220.


-}
sub220 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N220NatPlus n) Is (Difference a To (N220NatPlus nPlusA)))
sub220 =
    sub219 >> sub1


{-| The NNat minus 221.


-}
sub221 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N221NatPlus n) Is (Difference a To (N221NatPlus nPlusA)))
sub221 =
    sub220 >> sub1


{-| The NNat minus 222.


-}
sub222 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N222NatPlus n) Is (Difference a To (N222NatPlus nPlusA)))
sub222 =
    sub221 >> sub1


{-| The NNat minus 223.


-}
sub223 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N223NatPlus n) Is (Difference a To (N223NatPlus nPlusA)))
sub223 =
    sub222 >> sub1


{-| The NNat minus 224.


-}
sub224 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N224NatPlus n) Is (Difference a To (N224NatPlus nPlusA)))
sub224 =
    sub223 >> sub1


{-| The NNat minus 225.


-}
sub225 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N225NatPlus n) Is (Difference a To (N225NatPlus nPlusA)))
sub225 =
    sub224 >> sub1


{-| The NNat minus 226.


-}
sub226 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N226NatPlus n) Is (Difference a To (N226NatPlus nPlusA)))
sub226 =
    sub225 >> sub1


{-| The NNat minus 227.


-}
sub227 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N227NatPlus n) Is (Difference a To (N227NatPlus nPlusA)))
sub227 =
    sub226 >> sub1


{-| The NNat minus 228.


-}
sub228 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N228NatPlus n) Is (Difference a To (N228NatPlus nPlusA)))
sub228 =
    sub227 >> sub1


{-| The NNat minus 229.


-}
sub229 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N229NatPlus n) Is (Difference a To (N229NatPlus nPlusA)))
sub229 =
    sub228 >> sub1


{-| The NNat minus 230.


-}
sub230 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N230NatPlus n) Is (Difference a To (N230NatPlus nPlusA)))
sub230 =
    sub229 >> sub1


{-| The NNat minus 231.


-}
sub231 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N231NatPlus n) Is (Difference a To (N231NatPlus nPlusA)))
sub231 =
    sub230 >> sub1


{-| The NNat minus 232.


-}
sub232 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N232NatPlus n) Is (Difference a To (N232NatPlus nPlusA)))
sub232 =
    sub231 >> sub1


{-| The NNat minus 233.


-}
sub233 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N233NatPlus n) Is (Difference a To (N233NatPlus nPlusA)))
sub233 =
    sub232 >> sub1


{-| The NNat minus 234.


-}
sub234 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N234NatPlus n) Is (Difference a To (N234NatPlus nPlusA)))
sub234 =
    sub233 >> sub1


{-| The NNat minus 235.


-}
sub235 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N235NatPlus n) Is (Difference a To (N235NatPlus nPlusA)))
sub235 =
    sub234 >> sub1


{-| The NNat minus 236.


-}
sub236 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N236NatPlus n) Is (Difference a To (N236NatPlus nPlusA)))
sub236 =
    sub235 >> sub1


{-| The NNat minus 237.


-}
sub237 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N237NatPlus n) Is (Difference a To (N237NatPlus nPlusA)))
sub237 =
    sub236 >> sub1


{-| The NNat minus 238.


-}
sub238 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N238NatPlus n) Is (Difference a To (N238NatPlus nPlusA)))
sub238 =
    sub237 >> sub1


{-| The NNat minus 239.


-}
sub239 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N239NatPlus n) Is (Difference a To (N239NatPlus nPlusA)))
sub239 =
    sub238 >> sub1


{-| The NNat minus 240.


-}
sub240 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N240NatPlus n) Is (Difference a To (N240NatPlus nPlusA)))
sub240 =
    sub239 >> sub1


{-| The NNat minus 241.


-}
sub241 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N241NatPlus n) Is (Difference a To (N241NatPlus nPlusA)))
sub241 =
    sub240 >> sub1


{-| The NNat minus 242.


-}
sub242 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N242NatPlus n) Is (Difference a To (N242NatPlus nPlusA)))
sub242 =
    sub241 >> sub1


{-| The NNat minus 243.


-}
sub243 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N243NatPlus n) Is (Difference a To (N243NatPlus nPlusA)))
sub243 =
    sub242 >> sub1


{-| The NNat minus 244.


-}
sub244 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N244NatPlus n) Is (Difference a To (N244NatPlus nPlusA)))
sub244 =
    sub243 >> sub1


{-| The NNat minus 245.


-}
sub245 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N245NatPlus n) Is (Difference a To (N245NatPlus nPlusA)))
sub245 =
    sub244 >> sub1


{-| The NNat minus 246.


-}
sub246 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N246NatPlus n) Is (Difference a To (N246NatPlus nPlusA)))
sub246 =
    sub245 >> sub1


{-| The NNat minus 247.


-}
sub247 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N247NatPlus n) Is (Difference a To (N247NatPlus nPlusA)))
sub247 =
    sub246 >> sub1


{-| The NNat minus 248.


-}
sub248 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N248NatPlus n) Is (Difference a To (N248NatPlus nPlusA)))
sub248 =
    sub247 >> sub1


{-| The NNat minus 249.


-}
sub249 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N249NatPlus n) Is (Difference a To (N249NatPlus nPlusA)))
sub249 =
    sub248 >> sub1


{-| The NNat minus 250.


-}
sub250 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N250NatPlus n) Is (Difference a To (N250NatPlus nPlusA)))
sub250 =
    sub249 >> sub1


{-| The NNat minus 251.


-}
sub251 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N251NatPlus n) Is (Difference a To (N251NatPlus nPlusA)))
sub251 =
    sub250 >> sub1


{-| The NNat minus 252.


-}
sub252 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N252NatPlus n) Is (Difference a To (N252NatPlus nPlusA)))
sub252 =
    sub251 >> sub1


{-| The NNat minus 253.


-}
sub253 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N253NatPlus n) Is (Difference a To (N253NatPlus nPlusA)))
sub253 =
    sub252 >> sub1


{-| The NNat minus 254.


-}
sub254 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N254NatPlus n) Is (Difference a To (N254NatPlus nPlusA)))
sub254 =
    sub253 >> sub1


{-| The NNat minus 255.


-}
sub255 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N255NatPlus n) Is (Difference a To (N255NatPlus nPlusA)))
sub255 =
    sub254 >> sub1


{-| The NNat minus 256.


-}
sub256 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N256NatPlus n) Is (Difference a To (N256NatPlus nPlusA)))
sub256 =
    sub255 >> sub1


{-| The NNat minus 257.


-}
sub257 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N257NatPlus n) Is (Difference a To (N257NatPlus nPlusA)))
sub257 =
    sub256 >> sub1


{-| The NNat minus 258.


-}
sub258 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N258NatPlus n) Is (Difference a To (N258NatPlus nPlusA)))
sub258 =
    sub257 >> sub1


{-| The NNat minus 259.


-}
sub259 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N259NatPlus n) Is (Difference a To (N259NatPlus nPlusA)))
sub259 =
    sub258 >> sub1


{-| The NNat minus 260.


-}
sub260 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N260NatPlus n) Is (Difference a To (N260NatPlus nPlusA)))
sub260 =
    sub259 >> sub1


{-| The NNat minus 261.


-}
sub261 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N261NatPlus n) Is (Difference a To (N261NatPlus nPlusA)))
sub261 =
    sub260 >> sub1


{-| The NNat minus 262.


-}
sub262 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N262NatPlus n) Is (Difference a To (N262NatPlus nPlusA)))
sub262 =
    sub261 >> sub1


{-| The NNat minus 263.


-}
sub263 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N263NatPlus n) Is (Difference a To (N263NatPlus nPlusA)))
sub263 =
    sub262 >> sub1


{-| The NNat minus 264.


-}
sub264 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N264NatPlus n) Is (Difference a To (N264NatPlus nPlusA)))
sub264 =
    sub263 >> sub1


{-| The NNat minus 265.


-}
sub265 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N265NatPlus n) Is (Difference a To (N265NatPlus nPlusA)))
sub265 =
    sub264 >> sub1


{-| The NNat minus 266.


-}
sub266 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N266NatPlus n) Is (Difference a To (N266NatPlus nPlusA)))
sub266 =
    sub265 >> sub1


{-| The NNat minus 267.


-}
sub267 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N267NatPlus n) Is (Difference a To (N267NatPlus nPlusA)))
sub267 =
    sub266 >> sub1


{-| The NNat minus 268.


-}
sub268 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N268NatPlus n) Is (Difference a To (N268NatPlus nPlusA)))
sub268 =
    sub267 >> sub1


{-| The NNat minus 269.


-}
sub269 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N269NatPlus n) Is (Difference a To (N269NatPlus nPlusA)))
sub269 =
    sub268 >> sub1


{-| The NNat minus 270.


-}
sub270 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N270NatPlus n) Is (Difference a To (N270NatPlus nPlusA)))
sub270 =
    sub269 >> sub1


{-| The NNat minus 271.


-}
sub271 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N271NatPlus n) Is (Difference a To (N271NatPlus nPlusA)))
sub271 =
    sub270 >> sub1


{-| The NNat minus 272.


-}
sub272 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N272NatPlus n) Is (Difference a To (N272NatPlus nPlusA)))
sub272 =
    sub271 >> sub1


{-| The NNat minus 273.


-}
sub273 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N273NatPlus n) Is (Difference a To (N273NatPlus nPlusA)))
sub273 =
    sub272 >> sub1


{-| The NNat minus 274.


-}
sub274 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N274NatPlus n) Is (Difference a To (N274NatPlus nPlusA)))
sub274 =
    sub273 >> sub1


{-| The NNat minus 275.


-}
sub275 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N275NatPlus n) Is (Difference a To (N275NatPlus nPlusA)))
sub275 =
    sub274 >> sub1


{-| The NNat minus 276.


-}
sub276 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N276NatPlus n) Is (Difference a To (N276NatPlus nPlusA)))
sub276 =
    sub275 >> sub1


{-| The NNat minus 277.


-}
sub277 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N277NatPlus n) Is (Difference a To (N277NatPlus nPlusA)))
sub277 =
    sub276 >> sub1


{-| The NNat minus 278.


-}
sub278 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N278NatPlus n) Is (Difference a To (N278NatPlus nPlusA)))
sub278 =
    sub277 >> sub1


{-| The NNat minus 279.


-}
sub279 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N279NatPlus n) Is (Difference a To (N279NatPlus nPlusA)))
sub279 =
    sub278 >> sub1


{-| The NNat minus 280.


-}
sub280 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N280NatPlus n) Is (Difference a To (N280NatPlus nPlusA)))
sub280 =
    sub279 >> sub1


{-| The NNat minus 281.


-}
sub281 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N281NatPlus n) Is (Difference a To (N281NatPlus nPlusA)))
sub281 =
    sub280 >> sub1


{-| The NNat minus 282.


-}
sub282 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N282NatPlus n) Is (Difference a To (N282NatPlus nPlusA)))
sub282 =
    sub281 >> sub1


{-| The NNat minus 283.


-}
sub283 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N283NatPlus n) Is (Difference a To (N283NatPlus nPlusA)))
sub283 =
    sub282 >> sub1


{-| The NNat minus 284.


-}
sub284 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N284NatPlus n) Is (Difference a To (N284NatPlus nPlusA)))
sub284 =
    sub283 >> sub1


{-| The NNat minus 285.


-}
sub285 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N285NatPlus n) Is (Difference a To (N285NatPlus nPlusA)))
sub285 =
    sub284 >> sub1


{-| The NNat minus 286.


-}
sub286 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N286NatPlus n) Is (Difference a To (N286NatPlus nPlusA)))
sub286 =
    sub285 >> sub1


{-| The NNat minus 287.


-}
sub287 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N287NatPlus n) Is (Difference a To (N287NatPlus nPlusA)))
sub287 =
    sub286 >> sub1


{-| The NNat minus 288.


-}
sub288 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N288NatPlus n) Is (Difference a To (N288NatPlus nPlusA)))
sub288 =
    sub287 >> sub1


{-| The NNat minus 289.


-}
sub289 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N289NatPlus n) Is (Difference a To (N289NatPlus nPlusA)))
sub289 =
    sub288 >> sub1


{-| The NNat minus 290.


-}
sub290 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N290NatPlus n) Is (Difference a To (N290NatPlus nPlusA)))
sub290 =
    sub289 >> sub1


{-| The NNat minus 291.


-}
sub291 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N291NatPlus n) Is (Difference a To (N291NatPlus nPlusA)))
sub291 =
    sub290 >> sub1


{-| The NNat minus 292.


-}
sub292 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N292NatPlus n) Is (Difference a To (N292NatPlus nPlusA)))
sub292 =
    sub291 >> sub1


{-| The NNat minus 293.


-}
sub293 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N293NatPlus n) Is (Difference a To (N293NatPlus nPlusA)))
sub293 =
    sub292 >> sub1


{-| The NNat minus 294.


-}
sub294 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N294NatPlus n) Is (Difference a To (N294NatPlus nPlusA)))
sub294 =
    sub293 >> sub1


{-| The NNat minus 295.


-}
sub295 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N295NatPlus n) Is (Difference a To (N295NatPlus nPlusA)))
sub295 =
    sub294 >> sub1


{-| The NNat minus 296.


-}
sub296 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N296NatPlus n) Is (Difference a To (N296NatPlus nPlusA)))
sub296 =
    sub295 >> sub1


{-| The NNat minus 297.


-}
sub297 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N297NatPlus n) Is (Difference a To (N297NatPlus nPlusA)))
sub297 =
    sub296 >> sub1


{-| The NNat minus 298.


-}
sub298 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N298NatPlus n) Is (Difference a To (N298NatPlus nPlusA)))
sub298 =
    sub297 >> sub1


{-| The NNat minus 299.


-}
sub299 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N299NatPlus n) Is (Difference a To (N299NatPlus nPlusA)))
sub299 =
    sub298 >> sub1


{-| The NNat minus 300.


-}
sub300 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N300NatPlus n) Is (Difference a To (N300NatPlus nPlusA)))
sub300 =
    sub299 >> sub1


{-| The NNat minus 301.


-}
sub301 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N301NatPlus n) Is (Difference a To (N301NatPlus nPlusA)))
sub301 =
    sub300 >> sub1


{-| The NNat minus 302.


-}
sub302 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N302NatPlus n) Is (Difference a To (N302NatPlus nPlusA)))
sub302 =
    sub301 >> sub1


{-| The NNat minus 303.


-}
sub303 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N303NatPlus n) Is (Difference a To (N303NatPlus nPlusA)))
sub303 =
    sub302 >> sub1


{-| The NNat minus 304.


-}
sub304 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N304NatPlus n) Is (Difference a To (N304NatPlus nPlusA)))
sub304 =
    sub303 >> sub1


{-| The NNat minus 305.


-}
sub305 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N305NatPlus n) Is (Difference a To (N305NatPlus nPlusA)))
sub305 =
    sub304 >> sub1


{-| The NNat minus 306.


-}
sub306 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N306NatPlus n) Is (Difference a To (N306NatPlus nPlusA)))
sub306 =
    sub305 >> sub1


{-| The NNat minus 307.


-}
sub307 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N307NatPlus n) Is (Difference a To (N307NatPlus nPlusA)))
sub307 =
    sub306 >> sub1


{-| The NNat minus 308.


-}
sub308 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N308NatPlus n) Is (Difference a To (N308NatPlus nPlusA)))
sub308 =
    sub307 >> sub1


{-| The NNat minus 309.


-}
sub309 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N309NatPlus n) Is (Difference a To (N309NatPlus nPlusA)))
sub309 =
    sub308 >> sub1


{-| The NNat minus 310.


-}
sub310 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N310NatPlus n) Is (Difference a To (N310NatPlus nPlusA)))
sub310 =
    sub309 >> sub1


{-| The NNat minus 311.


-}
sub311 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N311NatPlus n) Is (Difference a To (N311NatPlus nPlusA)))
sub311 =
    sub310 >> sub1


{-| The NNat minus 312.


-}
sub312 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N312NatPlus n) Is (Difference a To (N312NatPlus nPlusA)))
sub312 =
    sub311 >> sub1


{-| The NNat minus 313.


-}
sub313 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N313NatPlus n) Is (Difference a To (N313NatPlus nPlusA)))
sub313 =
    sub312 >> sub1


{-| The NNat minus 314.


-}
sub314 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N314NatPlus n) Is (Difference a To (N314NatPlus nPlusA)))
sub314 =
    sub313 >> sub1


{-| The NNat minus 315.


-}
sub315 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N315NatPlus n) Is (Difference a To (N315NatPlus nPlusA)))
sub315 =
    sub314 >> sub1


{-| The NNat minus 316.


-}
sub316 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N316NatPlus n) Is (Difference a To (N316NatPlus nPlusA)))
sub316 =
    sub315 >> sub1


{-| The NNat minus 317.


-}
sub317 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N317NatPlus n) Is (Difference a To (N317NatPlus nPlusA)))
sub317 =
    sub316 >> sub1


{-| The NNat minus 318.


-}
sub318 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N318NatPlus n) Is (Difference a To (N318NatPlus nPlusA)))
sub318 =
    sub317 >> sub1


{-| The NNat minus 319.


-}
sub319 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N319NatPlus n) Is (Difference a To (N319NatPlus nPlusA)))
sub319 =
    sub318 >> sub1


{-| The NNat minus 320.


-}
sub320 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N320NatPlus n) Is (Difference a To (N320NatPlus nPlusA)))
sub320 =
    sub319 >> sub1


{-| The NNat minus 321.


-}
sub321 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N321NatPlus n) Is (Difference a To (N321NatPlus nPlusA)))
sub321 =
    sub320 >> sub1


{-| The NNat minus 322.


-}
sub322 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N322NatPlus n) Is (Difference a To (N322NatPlus nPlusA)))
sub322 =
    sub321 >> sub1


{-| The NNat minus 323.


-}
sub323 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N323NatPlus n) Is (Difference a To (N323NatPlus nPlusA)))
sub323 =
    sub322 >> sub1


{-| The NNat minus 324.


-}
sub324 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N324NatPlus n) Is (Difference a To (N324NatPlus nPlusA)))
sub324 =
    sub323 >> sub1


{-| The NNat minus 325.


-}
sub325 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N325NatPlus n) Is (Difference a To (N325NatPlus nPlusA)))
sub325 =
    sub324 >> sub1


{-| The NNat minus 326.


-}
sub326 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N326NatPlus n) Is (Difference a To (N326NatPlus nPlusA)))
sub326 =
    sub325 >> sub1


{-| The NNat minus 327.


-}
sub327 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N327NatPlus n) Is (Difference a To (N327NatPlus nPlusA)))
sub327 =
    sub326 >> sub1


{-| The NNat minus 328.


-}
sub328 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N328NatPlus n) Is (Difference a To (N328NatPlus nPlusA)))
sub328 =
    sub327 >> sub1


{-| The NNat minus 329.


-}
sub329 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N329NatPlus n) Is (Difference a To (N329NatPlus nPlusA)))
sub329 =
    sub328 >> sub1


{-| The NNat minus 330.


-}
sub330 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N330NatPlus n) Is (Difference a To (N330NatPlus nPlusA)))
sub330 =
    sub329 >> sub1


{-| The NNat minus 331.


-}
sub331 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N331NatPlus n) Is (Difference a To (N331NatPlus nPlusA)))
sub331 =
    sub330 >> sub1


{-| The NNat minus 332.


-}
sub332 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N332NatPlus n) Is (Difference a To (N332NatPlus nPlusA)))
sub332 =
    sub331 >> sub1


{-| The NNat minus 333.


-}
sub333 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N333NatPlus n) Is (Difference a To (N333NatPlus nPlusA)))
sub333 =
    sub332 >> sub1


{-| The NNat minus 334.


-}
sub334 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N334NatPlus n) Is (Difference a To (N334NatPlus nPlusA)))
sub334 =
    sub333 >> sub1


{-| The NNat minus 335.


-}
sub335 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N335NatPlus n) Is (Difference a To (N335NatPlus nPlusA)))
sub335 =
    sub334 >> sub1


{-| The NNat minus 336.


-}
sub336 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N336NatPlus n) Is (Difference a To (N336NatPlus nPlusA)))
sub336 =
    sub335 >> sub1


{-| The NNat minus 337.


-}
sub337 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N337NatPlus n) Is (Difference a To (N337NatPlus nPlusA)))
sub337 =
    sub336 >> sub1


{-| The NNat minus 338.


-}
sub338 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N338NatPlus n) Is (Difference a To (N338NatPlus nPlusA)))
sub338 =
    sub337 >> sub1


{-| The NNat minus 339.


-}
sub339 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N339NatPlus n) Is (Difference a To (N339NatPlus nPlusA)))
sub339 =
    sub338 >> sub1


{-| The NNat minus 340.


-}
sub340 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N340NatPlus n) Is (Difference a To (N340NatPlus nPlusA)))
sub340 =
    sub339 >> sub1


{-| The NNat minus 341.


-}
sub341 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N341NatPlus n) Is (Difference a To (N341NatPlus nPlusA)))
sub341 =
    sub340 >> sub1


{-| The NNat minus 342.


-}
sub342 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N342NatPlus n) Is (Difference a To (N342NatPlus nPlusA)))
sub342 =
    sub341 >> sub1


{-| The NNat minus 343.


-}
sub343 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N343NatPlus n) Is (Difference a To (N343NatPlus nPlusA)))
sub343 =
    sub342 >> sub1


{-| The NNat minus 344.


-}
sub344 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N344NatPlus n) Is (Difference a To (N344NatPlus nPlusA)))
sub344 =
    sub343 >> sub1


{-| The NNat minus 345.


-}
sub345 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N345NatPlus n) Is (Difference a To (N345NatPlus nPlusA)))
sub345 =
    sub344 >> sub1


{-| The NNat minus 346.


-}
sub346 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N346NatPlus n) Is (Difference a To (N346NatPlus nPlusA)))
sub346 =
    sub345 >> sub1


{-| The NNat minus 347.


-}
sub347 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N347NatPlus n) Is (Difference a To (N347NatPlus nPlusA)))
sub347 =
    sub346 >> sub1


{-| The NNat minus 348.


-}
sub348 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N348NatPlus n) Is (Difference a To (N348NatPlus nPlusA)))
sub348 =
    sub347 >> sub1


{-| The NNat minus 349.


-}
sub349 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N349NatPlus n) Is (Difference a To (N349NatPlus nPlusA)))
sub349 =
    sub348 >> sub1


{-| The NNat minus 350.


-}
sub350 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N350NatPlus n) Is (Difference a To (N350NatPlus nPlusA)))
sub350 =
    sub349 >> sub1


{-| The NNat minus 351.


-}
sub351 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N351NatPlus n) Is (Difference a To (N351NatPlus nPlusA)))
sub351 =
    sub350 >> sub1


{-| The NNat minus 352.


-}
sub352 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N352NatPlus n) Is (Difference a To (N352NatPlus nPlusA)))
sub352 =
    sub351 >> sub1


{-| The NNat minus 353.


-}
sub353 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N353NatPlus n) Is (Difference a To (N353NatPlus nPlusA)))
sub353 =
    sub352 >> sub1


{-| The NNat minus 354.


-}
sub354 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N354NatPlus n) Is (Difference a To (N354NatPlus nPlusA)))
sub354 =
    sub353 >> sub1


{-| The NNat minus 355.


-}
sub355 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N355NatPlus n) Is (Difference a To (N355NatPlus nPlusA)))
sub355 =
    sub354 >> sub1


{-| The NNat minus 356.


-}
sub356 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N356NatPlus n) Is (Difference a To (N356NatPlus nPlusA)))
sub356 =
    sub355 >> sub1


{-| The NNat minus 357.


-}
sub357 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N357NatPlus n) Is (Difference a To (N357NatPlus nPlusA)))
sub357 =
    sub356 >> sub1


{-| The NNat minus 358.


-}
sub358 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N358NatPlus n) Is (Difference a To (N358NatPlus nPlusA)))
sub358 =
    sub357 >> sub1


{-| The NNat minus 359.


-}
sub359 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N359NatPlus n) Is (Difference a To (N359NatPlus nPlusA)))
sub359 =
    sub358 >> sub1


{-| The NNat minus 360.


-}
sub360 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N360NatPlus n) Is (Difference a To (N360NatPlus nPlusA)))
sub360 =
    sub359 >> sub1


{-| The NNat minus 361.


-}
sub361 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N361NatPlus n) Is (Difference a To (N361NatPlus nPlusA)))
sub361 =
    sub360 >> sub1


{-| The NNat minus 362.


-}
sub362 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N362NatPlus n) Is (Difference a To (N362NatPlus nPlusA)))
sub362 =
    sub361 >> sub1


{-| The NNat minus 363.


-}
sub363 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N363NatPlus n) Is (Difference a To (N363NatPlus nPlusA)))
sub363 =
    sub362 >> sub1


{-| The NNat minus 364.


-}
sub364 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N364NatPlus n) Is (Difference a To (N364NatPlus nPlusA)))
sub364 =
    sub363 >> sub1


{-| The NNat minus 365.


-}
sub365 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N365NatPlus n) Is (Difference a To (N365NatPlus nPlusA)))
sub365 =
    sub364 >> sub1


{-| The NNat minus 366.


-}
sub366 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N366NatPlus n) Is (Difference a To (N366NatPlus nPlusA)))
sub366 =
    sub365 >> sub1


{-| The NNat minus 367.


-}
sub367 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N367NatPlus n) Is (Difference a To (N367NatPlus nPlusA)))
sub367 =
    sub366 >> sub1


{-| The NNat minus 368.


-}
sub368 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N368NatPlus n) Is (Difference a To (N368NatPlus nPlusA)))
sub368 =
    sub367 >> sub1


{-| The NNat minus 369.


-}
sub369 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N369NatPlus n) Is (Difference a To (N369NatPlus nPlusA)))
sub369 =
    sub368 >> sub1


{-| The NNat minus 370.


-}
sub370 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N370NatPlus n) Is (Difference a To (N370NatPlus nPlusA)))
sub370 =
    sub369 >> sub1


{-| The NNat minus 371.


-}
sub371 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N371NatPlus n) Is (Difference a To (N371NatPlus nPlusA)))
sub371 =
    sub370 >> sub1


{-| The NNat minus 372.


-}
sub372 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N372NatPlus n) Is (Difference a To (N372NatPlus nPlusA)))
sub372 =
    sub371 >> sub1


{-| The NNat minus 373.


-}
sub373 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N373NatPlus n) Is (Difference a To (N373NatPlus nPlusA)))
sub373 =
    sub372 >> sub1


{-| The NNat minus 374.


-}
sub374 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N374NatPlus n) Is (Difference a To (N374NatPlus nPlusA)))
sub374 =
    sub373 >> sub1


{-| The NNat minus 375.


-}
sub375 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N375NatPlus n) Is (Difference a To (N375NatPlus nPlusA)))
sub375 =
    sub374 >> sub1


{-| The NNat minus 376.


-}
sub376 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N376NatPlus n) Is (Difference a To (N376NatPlus nPlusA)))
sub376 =
    sub375 >> sub1


{-| The NNat minus 377.


-}
sub377 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N377NatPlus n) Is (Difference a To (N377NatPlus nPlusA)))
sub377 =
    sub376 >> sub1


{-| The NNat minus 378.


-}
sub378 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N378NatPlus n) Is (Difference a To (N378NatPlus nPlusA)))
sub378 =
    sub377 >> sub1


{-| The NNat minus 379.


-}
sub379 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N379NatPlus n) Is (Difference a To (N379NatPlus nPlusA)))
sub379 =
    sub378 >> sub1


{-| The NNat minus 380.


-}
sub380 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N380NatPlus n) Is (Difference a To (N380NatPlus nPlusA)))
sub380 =
    sub379 >> sub1


{-| The NNat minus 381.


-}
sub381 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N381NatPlus n) Is (Difference a To (N381NatPlus nPlusA)))
sub381 =
    sub380 >> sub1


{-| The NNat minus 382.


-}
sub382 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N382NatPlus n) Is (Difference a To (N382NatPlus nPlusA)))
sub382 =
    sub381 >> sub1


{-| The NNat minus 383.


-}
sub383 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N383NatPlus n) Is (Difference a To (N383NatPlus nPlusA)))
sub383 =
    sub382 >> sub1


{-| The NNat minus 384.


-}
sub384 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N384NatPlus n) Is (Difference a To (N384NatPlus nPlusA)))
sub384 =
    sub383 >> sub1


{-| The NNat minus 385.


-}
sub385 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N385NatPlus n) Is (Difference a To (N385NatPlus nPlusA)))
sub385 =
    sub384 >> sub1


{-| The NNat minus 386.


-}
sub386 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N386NatPlus n) Is (Difference a To (N386NatPlus nPlusA)))
sub386 =
    sub385 >> sub1


{-| The NNat minus 387.


-}
sub387 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N387NatPlus n) Is (Difference a To (N387NatPlus nPlusA)))
sub387 =
    sub386 >> sub1


{-| The NNat minus 388.


-}
sub388 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N388NatPlus n) Is (Difference a To (N388NatPlus nPlusA)))
sub388 =
    sub387 >> sub1


{-| The NNat minus 389.


-}
sub389 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N389NatPlus n) Is (Difference a To (N389NatPlus nPlusA)))
sub389 =
    sub388 >> sub1


{-| The NNat minus 390.


-}
sub390 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N390NatPlus n) Is (Difference a To (N390NatPlus nPlusA)))
sub390 =
    sub389 >> sub1


{-| The NNat minus 391.


-}
sub391 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N391NatPlus n) Is (Difference a To (N391NatPlus nPlusA)))
sub391 =
    sub390 >> sub1


{-| The NNat minus 392.


-}
sub392 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N392NatPlus n) Is (Difference a To (N392NatPlus nPlusA)))
sub392 =
    sub391 >> sub1


{-| The NNat minus 393.


-}
sub393 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N393NatPlus n) Is (Difference a To (N393NatPlus nPlusA)))
sub393 =
    sub392 >> sub1


{-| The NNat minus 394.


-}
sub394 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N394NatPlus n) Is (Difference a To (N394NatPlus nPlusA)))
sub394 =
    sub393 >> sub1


{-| The NNat minus 395.


-}
sub395 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N395NatPlus n) Is (Difference a To (N395NatPlus nPlusA)))
sub395 =
    sub394 >> sub1


{-| The NNat minus 396.


-}
sub396 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N396NatPlus n) Is (Difference a To (N396NatPlus nPlusA)))
sub396 =
    sub395 >> sub1


{-| The NNat minus 397.


-}
sub397 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N397NatPlus n) Is (Difference a To (N397NatPlus nPlusA)))
sub397 =
    sub396 >> sub1


{-| The NNat minus 398.


-}
sub398 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N398NatPlus n) Is (Difference a To (N398NatPlus nPlusA)))
sub398 =
    sub397 >> sub1


{-| The NNat minus 399.


-}
sub399 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N399NatPlus n) Is (Difference a To (N399NatPlus nPlusA)))
sub399 =
    sub398 >> sub1


{-| The NNat minus 400.


-}
sub400 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N400NatPlus n) Is (Difference a To (N400NatPlus nPlusA)))
sub400 =
    sub399 >> sub1


{-| The NNat minus 401.


-}
sub401 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N401NatPlus n) Is (Difference a To (N401NatPlus nPlusA)))
sub401 =
    sub400 >> sub1


{-| The NNat minus 402.


-}
sub402 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N402NatPlus n) Is (Difference a To (N402NatPlus nPlusA)))
sub402 =
    sub401 >> sub1


{-| The NNat minus 403.


-}
sub403 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N403NatPlus n) Is (Difference a To (N403NatPlus nPlusA)))
sub403 =
    sub402 >> sub1


{-| The NNat minus 404.


-}
sub404 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N404NatPlus n) Is (Difference a To (N404NatPlus nPlusA)))
sub404 =
    sub403 >> sub1


{-| The NNat minus 405.


-}
sub405 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N405NatPlus n) Is (Difference a To (N405NatPlus nPlusA)))
sub405 =
    sub404 >> sub1


{-| The NNat minus 406.


-}
sub406 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N406NatPlus n) Is (Difference a To (N406NatPlus nPlusA)))
sub406 =
    sub405 >> sub1


{-| The NNat minus 407.


-}
sub407 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N407NatPlus n) Is (Difference a To (N407NatPlus nPlusA)))
sub407 =
    sub406 >> sub1


{-| The NNat minus 408.


-}
sub408 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N408NatPlus n) Is (Difference a To (N408NatPlus nPlusA)))
sub408 =
    sub407 >> sub1


{-| The NNat minus 409.


-}
sub409 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N409NatPlus n) Is (Difference a To (N409NatPlus nPlusA)))
sub409 =
    sub408 >> sub1


{-| The NNat minus 410.


-}
sub410 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N410NatPlus n) Is (Difference a To (N410NatPlus nPlusA)))
sub410 =
    sub409 >> sub1


{-| The NNat minus 411.


-}
sub411 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N411NatPlus n) Is (Difference a To (N411NatPlus nPlusA)))
sub411 =
    sub410 >> sub1


{-| The NNat minus 412.


-}
sub412 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N412NatPlus n) Is (Difference a To (N412NatPlus nPlusA)))
sub412 =
    sub411 >> sub1


{-| The NNat minus 413.


-}
sub413 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N413NatPlus n) Is (Difference a To (N413NatPlus nPlusA)))
sub413 =
    sub412 >> sub1


{-| The NNat minus 414.


-}
sub414 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N414NatPlus n) Is (Difference a To (N414NatPlus nPlusA)))
sub414 =
    sub413 >> sub1


{-| The NNat minus 415.


-}
sub415 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N415NatPlus n) Is (Difference a To (N415NatPlus nPlusA)))
sub415 =
    sub414 >> sub1


{-| The NNat minus 416.


-}
sub416 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N416NatPlus n) Is (Difference a To (N416NatPlus nPlusA)))
sub416 =
    sub415 >> sub1


{-| The NNat minus 417.


-}
sub417 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N417NatPlus n) Is (Difference a To (N417NatPlus nPlusA)))
sub417 =
    sub416 >> sub1


{-| The NNat minus 418.


-}
sub418 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N418NatPlus n) Is (Difference a To (N418NatPlus nPlusA)))
sub418 =
    sub417 >> sub1


{-| The NNat minus 419.


-}
sub419 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N419NatPlus n) Is (Difference a To (N419NatPlus nPlusA)))
sub419 =
    sub418 >> sub1


{-| The NNat minus 420.


-}
sub420 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N420NatPlus n) Is (Difference a To (N420NatPlus nPlusA)))
sub420 =
    sub419 >> sub1


{-| The NNat minus 421.


-}
sub421 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N421NatPlus n) Is (Difference a To (N421NatPlus nPlusA)))
sub421 =
    sub420 >> sub1


{-| The NNat minus 422.


-}
sub422 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N422NatPlus n) Is (Difference a To (N422NatPlus nPlusA)))
sub422 =
    sub421 >> sub1


{-| The NNat minus 423.


-}
sub423 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N423NatPlus n) Is (Difference a To (N423NatPlus nPlusA)))
sub423 =
    sub422 >> sub1


{-| The NNat minus 424.


-}
sub424 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N424NatPlus n) Is (Difference a To (N424NatPlus nPlusA)))
sub424 =
    sub423 >> sub1


{-| The NNat minus 425.


-}
sub425 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N425NatPlus n) Is (Difference a To (N425NatPlus nPlusA)))
sub425 =
    sub424 >> sub1


{-| The NNat minus 426.


-}
sub426 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N426NatPlus n) Is (Difference a To (N426NatPlus nPlusA)))
sub426 =
    sub425 >> sub1


{-| The NNat minus 427.


-}
sub427 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N427NatPlus n) Is (Difference a To (N427NatPlus nPlusA)))
sub427 =
    sub426 >> sub1


{-| The NNat minus 428.


-}
sub428 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N428NatPlus n) Is (Difference a To (N428NatPlus nPlusA)))
sub428 =
    sub427 >> sub1


{-| The NNat minus 429.


-}
sub429 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N429NatPlus n) Is (Difference a To (N429NatPlus nPlusA)))
sub429 =
    sub428 >> sub1


{-| The NNat minus 430.


-}
sub430 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N430NatPlus n) Is (Difference a To (N430NatPlus nPlusA)))
sub430 =
    sub429 >> sub1


{-| The NNat minus 431.


-}
sub431 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N431NatPlus n) Is (Difference a To (N431NatPlus nPlusA)))
sub431 =
    sub430 >> sub1


{-| The NNat minus 432.


-}
sub432 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N432NatPlus n) Is (Difference a To (N432NatPlus nPlusA)))
sub432 =
    sub431 >> sub1


{-| The NNat minus 433.


-}
sub433 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N433NatPlus n) Is (Difference a To (N433NatPlus nPlusA)))
sub433 =
    sub432 >> sub1


{-| The NNat minus 434.


-}
sub434 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N434NatPlus n) Is (Difference a To (N434NatPlus nPlusA)))
sub434 =
    sub433 >> sub1


{-| The NNat minus 435.


-}
sub435 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N435NatPlus n) Is (Difference a To (N435NatPlus nPlusA)))
sub435 =
    sub434 >> sub1


{-| The NNat minus 436.


-}
sub436 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N436NatPlus n) Is (Difference a To (N436NatPlus nPlusA)))
sub436 =
    sub435 >> sub1


{-| The NNat minus 437.


-}
sub437 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N437NatPlus n) Is (Difference a To (N437NatPlus nPlusA)))
sub437 =
    sub436 >> sub1


{-| The NNat minus 438.


-}
sub438 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N438NatPlus n) Is (Difference a To (N438NatPlus nPlusA)))
sub438 =
    sub437 >> sub1


{-| The NNat minus 439.


-}
sub439 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N439NatPlus n) Is (Difference a To (N439NatPlus nPlusA)))
sub439 =
    sub438 >> sub1


{-| The NNat minus 440.


-}
sub440 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N440NatPlus n) Is (Difference a To (N440NatPlus nPlusA)))
sub440 =
    sub439 >> sub1


{-| The NNat minus 441.


-}
sub441 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N441NatPlus n) Is (Difference a To (N441NatPlus nPlusA)))
sub441 =
    sub440 >> sub1


{-| The NNat minus 442.


-}
sub442 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N442NatPlus n) Is (Difference a To (N442NatPlus nPlusA)))
sub442 =
    sub441 >> sub1


{-| The NNat minus 443.


-}
sub443 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N443NatPlus n) Is (Difference a To (N443NatPlus nPlusA)))
sub443 =
    sub442 >> sub1


{-| The NNat minus 444.


-}
sub444 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N444NatPlus n) Is (Difference a To (N444NatPlus nPlusA)))
sub444 =
    sub443 >> sub1


{-| The NNat minus 445.


-}
sub445 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N445NatPlus n) Is (Difference a To (N445NatPlus nPlusA)))
sub445 =
    sub444 >> sub1


{-| The NNat minus 446.


-}
sub446 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N446NatPlus n) Is (Difference a To (N446NatPlus nPlusA)))
sub446 =
    sub445 >> sub1


{-| The NNat minus 447.


-}
sub447 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N447NatPlus n) Is (Difference a To (N447NatPlus nPlusA)))
sub447 =
    sub446 >> sub1


{-| The NNat minus 448.


-}
sub448 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N448NatPlus n) Is (Difference a To (N448NatPlus nPlusA)))
sub448 =
    sub447 >> sub1


{-| The NNat minus 449.


-}
sub449 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N449NatPlus n) Is (Difference a To (N449NatPlus nPlusA)))
sub449 =
    sub448 >> sub1


{-| The NNat minus 450.


-}
sub450 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N450NatPlus n) Is (Difference a To (N450NatPlus nPlusA)))
sub450 =
    sub449 >> sub1


{-| The NNat minus 451.


-}
sub451 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N451NatPlus n) Is (Difference a To (N451NatPlus nPlusA)))
sub451 =
    sub450 >> sub1


{-| The NNat minus 452.


-}
sub452 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N452NatPlus n) Is (Difference a To (N452NatPlus nPlusA)))
sub452 =
    sub451 >> sub1


{-| The NNat minus 453.


-}
sub453 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N453NatPlus n) Is (Difference a To (N453NatPlus nPlusA)))
sub453 =
    sub452 >> sub1


{-| The NNat minus 454.


-}
sub454 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N454NatPlus n) Is (Difference a To (N454NatPlus nPlusA)))
sub454 =
    sub453 >> sub1


{-| The NNat minus 455.


-}
sub455 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N455NatPlus n) Is (Difference a To (N455NatPlus nPlusA)))
sub455 =
    sub454 >> sub1


{-| The NNat minus 456.


-}
sub456 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N456NatPlus n) Is (Difference a To (N456NatPlus nPlusA)))
sub456 =
    sub455 >> sub1


{-| The NNat minus 457.


-}
sub457 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N457NatPlus n) Is (Difference a To (N457NatPlus nPlusA)))
sub457 =
    sub456 >> sub1


{-| The NNat minus 458.


-}
sub458 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N458NatPlus n) Is (Difference a To (N458NatPlus nPlusA)))
sub458 =
    sub457 >> sub1


{-| The NNat minus 459.


-}
sub459 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N459NatPlus n) Is (Difference a To (N459NatPlus nPlusA)))
sub459 =
    sub458 >> sub1


{-| The NNat minus 460.


-}
sub460 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N460NatPlus n) Is (Difference a To (N460NatPlus nPlusA)))
sub460 =
    sub459 >> sub1


{-| The NNat minus 461.


-}
sub461 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N461NatPlus n) Is (Difference a To (N461NatPlus nPlusA)))
sub461 =
    sub460 >> sub1


{-| The NNat minus 462.


-}
sub462 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N462NatPlus n) Is (Difference a To (N462NatPlus nPlusA)))
sub462 =
    sub461 >> sub1


{-| The NNat minus 463.


-}
sub463 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N463NatPlus n) Is (Difference a To (N463NatPlus nPlusA)))
sub463 =
    sub462 >> sub1


{-| The NNat minus 464.


-}
sub464 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N464NatPlus n) Is (Difference a To (N464NatPlus nPlusA)))
sub464 =
    sub463 >> sub1


{-| The NNat minus 465.


-}
sub465 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N465NatPlus n) Is (Difference a To (N465NatPlus nPlusA)))
sub465 =
    sub464 >> sub1


{-| The NNat minus 466.


-}
sub466 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N466NatPlus n) Is (Difference a To (N466NatPlus nPlusA)))
sub466 =
    sub465 >> sub1


{-| The NNat minus 467.


-}
sub467 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N467NatPlus n) Is (Difference a To (N467NatPlus nPlusA)))
sub467 =
    sub466 >> sub1


{-| The NNat minus 468.


-}
sub468 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N468NatPlus n) Is (Difference a To (N468NatPlus nPlusA)))
sub468 =
    sub467 >> sub1


{-| The NNat minus 469.


-}
sub469 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N469NatPlus n) Is (Difference a To (N469NatPlus nPlusA)))
sub469 =
    sub468 >> sub1


{-| The NNat minus 470.


-}
sub470 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N470NatPlus n) Is (Difference a To (N470NatPlus nPlusA)))
sub470 =
    sub469 >> sub1


{-| The NNat minus 471.


-}
sub471 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N471NatPlus n) Is (Difference a To (N471NatPlus nPlusA)))
sub471 =
    sub470 >> sub1


{-| The NNat minus 472.


-}
sub472 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N472NatPlus n) Is (Difference a To (N472NatPlus nPlusA)))
sub472 =
    sub471 >> sub1


{-| The NNat minus 473.


-}
sub473 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N473NatPlus n) Is (Difference a To (N473NatPlus nPlusA)))
sub473 =
    sub472 >> sub1


{-| The NNat minus 474.


-}
sub474 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N474NatPlus n) Is (Difference a To (N474NatPlus nPlusA)))
sub474 =
    sub473 >> sub1


{-| The NNat minus 475.


-}
sub475 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N475NatPlus n) Is (Difference a To (N475NatPlus nPlusA)))
sub475 =
    sub474 >> sub1


{-| The NNat minus 476.


-}
sub476 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N476NatPlus n) Is (Difference a To (N476NatPlus nPlusA)))
sub476 =
    sub475 >> sub1


{-| The NNat minus 477.


-}
sub477 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N477NatPlus n) Is (Difference a To (N477NatPlus nPlusA)))
sub477 =
    sub476 >> sub1


{-| The NNat minus 478.


-}
sub478 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N478NatPlus n) Is (Difference a To (N478NatPlus nPlusA)))
sub478 =
    sub477 >> sub1


{-| The NNat minus 479.


-}
sub479 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N479NatPlus n) Is (Difference a To (N479NatPlus nPlusA)))
sub479 =
    sub478 >> sub1


{-| The NNat minus 480.


-}
sub480 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N480NatPlus n) Is (Difference a To (N480NatPlus nPlusA)))
sub480 =
    sub479 >> sub1


{-| The NNat minus 481.


-}
sub481 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N481NatPlus n) Is (Difference a To (N481NatPlus nPlusA)))
sub481 =
    sub480 >> sub1


{-| The NNat minus 482.


-}
sub482 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N482NatPlus n) Is (Difference a To (N482NatPlus nPlusA)))
sub482 =
    sub481 >> sub1


{-| The NNat minus 483.


-}
sub483 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N483NatPlus n) Is (Difference a To (N483NatPlus nPlusA)))
sub483 =
    sub482 >> sub1


{-| The NNat minus 484.


-}
sub484 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N484NatPlus n) Is (Difference a To (N484NatPlus nPlusA)))
sub484 =
    sub483 >> sub1


{-| The NNat minus 485.


-}
sub485 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N485NatPlus n) Is (Difference a To (N485NatPlus nPlusA)))
sub485 =
    sub484 >> sub1


{-| The NNat minus 486.


-}
sub486 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N486NatPlus n) Is (Difference a To (N486NatPlus nPlusA)))
sub486 =
    sub485 >> sub1


{-| The NNat minus 487.


-}
sub487 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N487NatPlus n) Is (Difference a To (N487NatPlus nPlusA)))
sub487 =
    sub486 >> sub1


{-| The NNat minus 488.


-}
sub488 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N488NatPlus n) Is (Difference a To (N488NatPlus nPlusA)))
sub488 =
    sub487 >> sub1


{-| The NNat minus 489.


-}
sub489 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N489NatPlus n) Is (Difference a To (N489NatPlus nPlusA)))
sub489 =
    sub488 >> sub1


{-| The NNat minus 490.


-}
sub490 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N490NatPlus n) Is (Difference a To (N490NatPlus nPlusA)))
sub490 =
    sub489 >> sub1


{-| The NNat minus 491.


-}
sub491 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N491NatPlus n) Is (Difference a To (N491NatPlus nPlusA)))
sub491 =
    sub490 >> sub1


{-| The NNat minus 492.


-}
sub492 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N492NatPlus n) Is (Difference a To (N492NatPlus nPlusA)))
sub492 =
    sub491 >> sub1


{-| The NNat minus 493.


-}
sub493 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N493NatPlus n) Is (Difference a To (N493NatPlus nPlusA)))
sub493 =
    sub492 >> sub1


{-| The NNat minus 494.


-}
sub494 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N494NatPlus n) Is (Difference a To (N494NatPlus nPlusA)))
sub494 =
    sub493 >> sub1


{-| The NNat minus 495.


-}
sub495 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N495NatPlus n) Is (Difference a To (N495NatPlus nPlusA)))
sub495 =
    sub494 >> sub1


{-| The NNat minus 496.


-}
sub496 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N496NatPlus n) Is (Difference a To (N496NatPlus nPlusA)))
sub496 =
    sub495 >> sub1


{-| The NNat minus 497.


-}
sub497 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N497NatPlus n) Is (Difference a To (N497NatPlus nPlusA)))
sub497 =
    sub496 >> sub1


{-| The NNat minus 498.


-}
sub498 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N498NatPlus n) Is (Difference a To (N498NatPlus nPlusA)))
sub498 =
    sub497 >> sub1


{-| The NNat minus 499.


-}
sub499 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N499NatPlus n) Is (Difference a To (N499NatPlus nPlusA)))
sub499 =
    sub498 >> sub1


{-| The NNat minus 500.


-}
sub500 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N500NatPlus n) Is (Difference a To (N500NatPlus nPlusA)))
sub500 =
    sub499 >> sub1


{-| The NNat minus 501.


-}
sub501 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N501NatPlus n) Is (Difference a To (N501NatPlus nPlusA)))
sub501 =
    sub500 >> sub1


{-| The NNat minus 502.


-}
sub502 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N502NatPlus n) Is (Difference a To (N502NatPlus nPlusA)))
sub502 =
    sub501 >> sub1


{-| The NNat minus 503.


-}
sub503 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N503NatPlus n) Is (Difference a To (N503NatPlus nPlusA)))
sub503 =
    sub502 >> sub1


{-| The NNat minus 504.


-}
sub504 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N504NatPlus n) Is (Difference a To (N504NatPlus nPlusA)))
sub504 =
    sub503 >> sub1


{-| The NNat minus 505.


-}
sub505 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N505NatPlus n) Is (Difference a To (N505NatPlus nPlusA)))
sub505 =
    sub504 >> sub1


{-| The NNat minus 506.


-}
sub506 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N506NatPlus n) Is (Difference a To (N506NatPlus nPlusA)))
sub506 =
    sub505 >> sub1


{-| The NNat minus 507.


-}
sub507 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N507NatPlus n) Is (Difference a To (N507NatPlus nPlusA)))
sub507 =
    sub506 >> sub1


{-| The NNat minus 508.


-}
sub508 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N508NatPlus n) Is (Difference a To (N508NatPlus nPlusA)))
sub508 =
    sub507 >> sub1


{-| The NNat minus 509.


-}
sub509 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N509NatPlus n) Is (Difference a To (N509NatPlus nPlusA)))
sub509 =
    sub508 >> sub1


{-| The NNat minus 510.


-}
sub510 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N510NatPlus n) Is (Difference a To (N510NatPlus nPlusA)))
sub510 =
    sub509 >> sub1


{-| The NNat minus 511.


-}
sub511 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N511NatPlus n) Is (Difference a To (N511NatPlus nPlusA)))
sub511 =
    sub510 >> sub1


{-| The NNat minus 512.


-}
sub512 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N512NatPlus n) Is (Difference a To (N512NatPlus nPlusA)))
sub512 =
    sub511 >> sub1


{-| The NNat minus 513.


-}
sub513 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N513NatPlus n) Is (Difference a To (N513NatPlus nPlusA)))
sub513 =
    sub512 >> sub1


{-| The NNat minus 514.


-}
sub514 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N514NatPlus n) Is (Difference a To (N514NatPlus nPlusA)))
sub514 =
    sub513 >> sub1


{-| The NNat minus 515.


-}
sub515 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N515NatPlus n) Is (Difference a To (N515NatPlus nPlusA)))
sub515 =
    sub514 >> sub1


{-| The NNat minus 516.


-}
sub516 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N516NatPlus n) Is (Difference a To (N516NatPlus nPlusA)))
sub516 =
    sub515 >> sub1


{-| The NNat minus 517.


-}
sub517 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N517NatPlus n) Is (Difference a To (N517NatPlus nPlusA)))
sub517 =
    sub516 >> sub1


{-| The NNat minus 518.


-}
sub518 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N518NatPlus n) Is (Difference a To (N518NatPlus nPlusA)))
sub518 =
    sub517 >> sub1


{-| The NNat minus 519.


-}
sub519 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N519NatPlus n) Is (Difference a To (N519NatPlus nPlusA)))
sub519 =
    sub518 >> sub1


{-| The NNat minus 520.


-}
sub520 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N520NatPlus n) Is (Difference a To (N520NatPlus nPlusA)))
sub520 =
    sub519 >> sub1


{-| The NNat minus 521.


-}
sub521 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N521NatPlus n) Is (Difference a To (N521NatPlus nPlusA)))
sub521 =
    sub520 >> sub1


{-| The NNat minus 522.


-}
sub522 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N522NatPlus n) Is (Difference a To (N522NatPlus nPlusA)))
sub522 =
    sub521 >> sub1


{-| The NNat minus 523.


-}
sub523 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N523NatPlus n) Is (Difference a To (N523NatPlus nPlusA)))
sub523 =
    sub522 >> sub1


{-| The NNat minus 524.


-}
sub524 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N524NatPlus n) Is (Difference a To (N524NatPlus nPlusA)))
sub524 =
    sub523 >> sub1


{-| The NNat minus 525.


-}
sub525 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N525NatPlus n) Is (Difference a To (N525NatPlus nPlusA)))
sub525 =
    sub524 >> sub1


{-| The NNat minus 526.


-}
sub526 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N526NatPlus n) Is (Difference a To (N526NatPlus nPlusA)))
sub526 =
    sub525 >> sub1


{-| The NNat minus 527.


-}
sub527 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N527NatPlus n) Is (Difference a To (N527NatPlus nPlusA)))
sub527 =
    sub526 >> sub1


{-| The NNat minus 528.


-}
sub528 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N528NatPlus n) Is (Difference a To (N528NatPlus nPlusA)))
sub528 =
    sub527 >> sub1


{-| The NNat minus 529.


-}
sub529 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N529NatPlus n) Is (Difference a To (N529NatPlus nPlusA)))
sub529 =
    sub528 >> sub1


{-| The NNat minus 530.


-}
sub530 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N530NatPlus n) Is (Difference a To (N530NatPlus nPlusA)))
sub530 =
    sub529 >> sub1


{-| The NNat minus 531.


-}
sub531 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N531NatPlus n) Is (Difference a To (N531NatPlus nPlusA)))
sub531 =
    sub530 >> sub1


{-| The NNat minus 532.


-}
sub532 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N532NatPlus n) Is (Difference a To (N532NatPlus nPlusA)))
sub532 =
    sub531 >> sub1


{-| The NNat minus 533.


-}
sub533 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N533NatPlus n) Is (Difference a To (N533NatPlus nPlusA)))
sub533 =
    sub532 >> sub1


{-| The NNat minus 534.


-}
sub534 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N534NatPlus n) Is (Difference a To (N534NatPlus nPlusA)))
sub534 =
    sub533 >> sub1


{-| The NNat minus 535.


-}
sub535 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N535NatPlus n) Is (Difference a To (N535NatPlus nPlusA)))
sub535 =
    sub534 >> sub1


{-| The NNat minus 536.


-}
sub536 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N536NatPlus n) Is (Difference a To (N536NatPlus nPlusA)))
sub536 =
    sub535 >> sub1


{-| The NNat minus 537.


-}
sub537 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N537NatPlus n) Is (Difference a To (N537NatPlus nPlusA)))
sub537 =
    sub536 >> sub1


{-| The NNat minus 538.


-}
sub538 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N538NatPlus n) Is (Difference a To (N538NatPlus nPlusA)))
sub538 =
    sub537 >> sub1


{-| The NNat minus 539.


-}
sub539 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N539NatPlus n) Is (Difference a To (N539NatPlus nPlusA)))
sub539 =
    sub538 >> sub1


{-| The NNat minus 540.


-}
sub540 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N540NatPlus n) Is (Difference a To (N540NatPlus nPlusA)))
sub540 =
    sub539 >> sub1


{-| The NNat minus 541.


-}
sub541 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N541NatPlus n) Is (Difference a To (N541NatPlus nPlusA)))
sub541 =
    sub540 >> sub1


{-| The NNat minus 542.


-}
sub542 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N542NatPlus n) Is (Difference a To (N542NatPlus nPlusA)))
sub542 =
    sub541 >> sub1


{-| The NNat minus 543.


-}
sub543 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N543NatPlus n) Is (Difference a To (N543NatPlus nPlusA)))
sub543 =
    sub542 >> sub1


{-| The NNat minus 544.


-}
sub544 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N544NatPlus n) Is (Difference a To (N544NatPlus nPlusA)))
sub544 =
    sub543 >> sub1


{-| The NNat minus 545.


-}
sub545 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N545NatPlus n) Is (Difference a To (N545NatPlus nPlusA)))
sub545 =
    sub544 >> sub1


{-| The NNat minus 546.


-}
sub546 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N546NatPlus n) Is (Difference a To (N546NatPlus nPlusA)))
sub546 =
    sub545 >> sub1


{-| The NNat minus 547.


-}
sub547 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N547NatPlus n) Is (Difference a To (N547NatPlus nPlusA)))
sub547 =
    sub546 >> sub1


{-| The NNat minus 548.


-}
sub548 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N548NatPlus n) Is (Difference a To (N548NatPlus nPlusA)))
sub548 =
    sub547 >> sub1


{-| The NNat minus 549.


-}
sub549 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N549NatPlus n) Is (Difference a To (N549NatPlus nPlusA)))
sub549 =
    sub548 >> sub1


{-| The NNat minus 550.


-}
sub550 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N550NatPlus n) Is (Difference a To (N550NatPlus nPlusA)))
sub550 =
    sub549 >> sub1


{-| The NNat minus 551.


-}
sub551 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N551NatPlus n) Is (Difference a To (N551NatPlus nPlusA)))
sub551 =
    sub550 >> sub1


{-| The NNat minus 552.


-}
sub552 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N552NatPlus n) Is (Difference a To (N552NatPlus nPlusA)))
sub552 =
    sub551 >> sub1


{-| The NNat minus 553.


-}
sub553 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N553NatPlus n) Is (Difference a To (N553NatPlus nPlusA)))
sub553 =
    sub552 >> sub1


{-| The NNat minus 554.


-}
sub554 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N554NatPlus n) Is (Difference a To (N554NatPlus nPlusA)))
sub554 =
    sub553 >> sub1


{-| The NNat minus 555.


-}
sub555 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N555NatPlus n) Is (Difference a To (N555NatPlus nPlusA)))
sub555 =
    sub554 >> sub1


{-| The NNat minus 556.


-}
sub556 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N556NatPlus n) Is (Difference a To (N556NatPlus nPlusA)))
sub556 =
    sub555 >> sub1


{-| The NNat minus 557.


-}
sub557 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N557NatPlus n) Is (Difference a To (N557NatPlus nPlusA)))
sub557 =
    sub556 >> sub1


{-| The NNat minus 558.


-}
sub558 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N558NatPlus n) Is (Difference a To (N558NatPlus nPlusA)))
sub558 =
    sub557 >> sub1


{-| The NNat minus 559.


-}
sub559 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N559NatPlus n) Is (Difference a To (N559NatPlus nPlusA)))
sub559 =
    sub558 >> sub1


{-| The NNat minus 560.


-}
sub560 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N560NatPlus n) Is (Difference a To (N560NatPlus nPlusA)))
sub560 =
    sub559 >> sub1


{-| The NNat minus 561.


-}
sub561 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N561NatPlus n) Is (Difference a To (N561NatPlus nPlusA)))
sub561 =
    sub560 >> sub1


{-| The NNat minus 562.


-}
sub562 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N562NatPlus n) Is (Difference a To (N562NatPlus nPlusA)))
sub562 =
    sub561 >> sub1


{-| The NNat minus 563.


-}
sub563 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N563NatPlus n) Is (Difference a To (N563NatPlus nPlusA)))
sub563 =
    sub562 >> sub1


{-| The NNat minus 564.


-}
sub564 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N564NatPlus n) Is (Difference a To (N564NatPlus nPlusA)))
sub564 =
    sub563 >> sub1


{-| The NNat minus 565.


-}
sub565 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N565NatPlus n) Is (Difference a To (N565NatPlus nPlusA)))
sub565 =
    sub564 >> sub1


{-| The NNat minus 566.


-}
sub566 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N566NatPlus n) Is (Difference a To (N566NatPlus nPlusA)))
sub566 =
    sub565 >> sub1


{-| The NNat minus 567.


-}
sub567 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N567NatPlus n) Is (Difference a To (N567NatPlus nPlusA)))
sub567 =
    sub566 >> sub1


{-| The NNat minus 568.


-}
sub568 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N568NatPlus n) Is (Difference a To (N568NatPlus nPlusA)))
sub568 =
    sub567 >> sub1


{-| The NNat minus 569.


-}
sub569 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N569NatPlus n) Is (Difference a To (N569NatPlus nPlusA)))
sub569 =
    sub568 >> sub1


{-| The NNat minus 570.


-}
sub570 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N570NatPlus n) Is (Difference a To (N570NatPlus nPlusA)))
sub570 =
    sub569 >> sub1


{-| The NNat minus 571.


-}
sub571 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N571NatPlus n) Is (Difference a To (N571NatPlus nPlusA)))
sub571 =
    sub570 >> sub1


{-| The NNat minus 572.


-}
sub572 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N572NatPlus n) Is (Difference a To (N572NatPlus nPlusA)))
sub572 =
    sub571 >> sub1


{-| The NNat minus 573.


-}
sub573 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N573NatPlus n) Is (Difference a To (N573NatPlus nPlusA)))
sub573 =
    sub572 >> sub1


{-| The NNat minus 574.


-}
sub574 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N574NatPlus n) Is (Difference a To (N574NatPlus nPlusA)))
sub574 =
    sub573 >> sub1


{-| The NNat minus 575.


-}
sub575 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N575NatPlus n) Is (Difference a To (N575NatPlus nPlusA)))
sub575 =
    sub574 >> sub1


{-| The NNat minus 576.


-}
sub576 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N576NatPlus n) Is (Difference a To (N576NatPlus nPlusA)))
sub576 =
    sub575 >> sub1


{-| The NNat minus 577.


-}
sub577 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N577NatPlus n) Is (Difference a To (N577NatPlus nPlusA)))
sub577 =
    sub576 >> sub1


{-| The NNat minus 578.


-}
sub578 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N578NatPlus n) Is (Difference a To (N578NatPlus nPlusA)))
sub578 =
    sub577 >> sub1


{-| The NNat minus 579.


-}
sub579 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N579NatPlus n) Is (Difference a To (N579NatPlus nPlusA)))
sub579 =
    sub578 >> sub1


{-| The NNat minus 580.


-}
sub580 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N580NatPlus n) Is (Difference a To (N580NatPlus nPlusA)))
sub580 =
    sub579 >> sub1


{-| The NNat minus 581.


-}
sub581 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N581NatPlus n) Is (Difference a To (N581NatPlus nPlusA)))
sub581 =
    sub580 >> sub1


{-| The NNat minus 582.


-}
sub582 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N582NatPlus n) Is (Difference a To (N582NatPlus nPlusA)))
sub582 =
    sub581 >> sub1


{-| The NNat minus 583.


-}
sub583 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N583NatPlus n) Is (Difference a To (N583NatPlus nPlusA)))
sub583 =
    sub582 >> sub1


{-| The NNat minus 584.


-}
sub584 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N584NatPlus n) Is (Difference a To (N584NatPlus nPlusA)))
sub584 =
    sub583 >> sub1


{-| The NNat minus 585.


-}
sub585 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N585NatPlus n) Is (Difference a To (N585NatPlus nPlusA)))
sub585 =
    sub584 >> sub1


{-| The NNat minus 586.


-}
sub586 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N586NatPlus n) Is (Difference a To (N586NatPlus nPlusA)))
sub586 =
    sub585 >> sub1


{-| The NNat minus 587.


-}
sub587 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N587NatPlus n) Is (Difference a To (N587NatPlus nPlusA)))
sub587 =
    sub586 >> sub1


{-| The NNat minus 588.


-}
sub588 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N588NatPlus n) Is (Difference a To (N588NatPlus nPlusA)))
sub588 =
    sub587 >> sub1


{-| The NNat minus 589.


-}
sub589 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N589NatPlus n) Is (Difference a To (N589NatPlus nPlusA)))
sub589 =
    sub588 >> sub1


{-| The NNat minus 590.


-}
sub590 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N590NatPlus n) Is (Difference a To (N590NatPlus nPlusA)))
sub590 =
    sub589 >> sub1


{-| The NNat minus 591.


-}
sub591 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N591NatPlus n) Is (Difference a To (N591NatPlus nPlusA)))
sub591 =
    sub590 >> sub1


{-| The NNat minus 592.


-}
sub592 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N592NatPlus n) Is (Difference a To (N592NatPlus nPlusA)))
sub592 =
    sub591 >> sub1


{-| The NNat minus 593.


-}
sub593 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N593NatPlus n) Is (Difference a To (N593NatPlus nPlusA)))
sub593 =
    sub592 >> sub1


{-| The NNat minus 594.


-}
sub594 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N594NatPlus n) Is (Difference a To (N594NatPlus nPlusA)))
sub594 =
    sub593 >> sub1


{-| The NNat minus 595.


-}
sub595 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N595NatPlus n) Is (Difference a To (N595NatPlus nPlusA)))
sub595 =
    sub594 >> sub1


{-| The NNat minus 596.


-}
sub596 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N596NatPlus n) Is (Difference a To (N596NatPlus nPlusA)))
sub596 =
    sub595 >> sub1


{-| The NNat minus 597.


-}
sub597 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N597NatPlus n) Is (Difference a To (N597NatPlus nPlusA)))
sub597 =
    sub596 >> sub1


{-| The NNat minus 598.


-}
sub598 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N598NatPlus n) Is (Difference a To (N598NatPlus nPlusA)))
sub598 =
    sub597 >> sub1


{-| The NNat minus 599.


-}
sub599 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N599NatPlus n) Is (Difference a To (N599NatPlus nPlusA)))
sub599 =
    sub598 >> sub1


{-| The NNat minus 600.


-}
sub600 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N600NatPlus n) Is (Difference a To (N600NatPlus nPlusA)))
sub600 =
    sub599 >> sub1


{-| The NNat minus 601.


-}
sub601 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N601NatPlus n) Is (Difference a To (N601NatPlus nPlusA)))
sub601 =
    sub600 >> sub1


{-| The NNat minus 602.


-}
sub602 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N602NatPlus n) Is (Difference a To (N602NatPlus nPlusA)))
sub602 =
    sub601 >> sub1


{-| The NNat minus 603.


-}
sub603 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N603NatPlus n) Is (Difference a To (N603NatPlus nPlusA)))
sub603 =
    sub602 >> sub1


{-| The NNat minus 604.


-}
sub604 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N604NatPlus n) Is (Difference a To (N604NatPlus nPlusA)))
sub604 =
    sub603 >> sub1


{-| The NNat minus 605.


-}
sub605 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N605NatPlus n) Is (Difference a To (N605NatPlus nPlusA)))
sub605 =
    sub604 >> sub1


{-| The NNat minus 606.


-}
sub606 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N606NatPlus n) Is (Difference a To (N606NatPlus nPlusA)))
sub606 =
    sub605 >> sub1


{-| The NNat minus 607.


-}
sub607 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N607NatPlus n) Is (Difference a To (N607NatPlus nPlusA)))
sub607 =
    sub606 >> sub1


{-| The NNat minus 608.


-}
sub608 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N608NatPlus n) Is (Difference a To (N608NatPlus nPlusA)))
sub608 =
    sub607 >> sub1


{-| The NNat minus 609.


-}
sub609 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N609NatPlus n) Is (Difference a To (N609NatPlus nPlusA)))
sub609 =
    sub608 >> sub1


{-| The NNat minus 610.


-}
sub610 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N610NatPlus n) Is (Difference a To (N610NatPlus nPlusA)))
sub610 =
    sub609 >> sub1


{-| The NNat minus 611.


-}
sub611 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N611NatPlus n) Is (Difference a To (N611NatPlus nPlusA)))
sub611 =
    sub610 >> sub1


{-| The NNat minus 612.


-}
sub612 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N612NatPlus n) Is (Difference a To (N612NatPlus nPlusA)))
sub612 =
    sub611 >> sub1


{-| The NNat minus 613.


-}
sub613 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N613NatPlus n) Is (Difference a To (N613NatPlus nPlusA)))
sub613 =
    sub612 >> sub1


{-| The NNat minus 614.


-}
sub614 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N614NatPlus n) Is (Difference a To (N614NatPlus nPlusA)))
sub614 =
    sub613 >> sub1


{-| The NNat minus 615.


-}
sub615 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N615NatPlus n) Is (Difference a To (N615NatPlus nPlusA)))
sub615 =
    sub614 >> sub1


{-| The NNat minus 616.


-}
sub616 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N616NatPlus n) Is (Difference a To (N616NatPlus nPlusA)))
sub616 =
    sub615 >> sub1


{-| The NNat minus 617.


-}
sub617 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N617NatPlus n) Is (Difference a To (N617NatPlus nPlusA)))
sub617 =
    sub616 >> sub1


{-| The NNat minus 618.


-}
sub618 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N618NatPlus n) Is (Difference a To (N618NatPlus nPlusA)))
sub618 =
    sub617 >> sub1


{-| The NNat minus 619.


-}
sub619 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N619NatPlus n) Is (Difference a To (N619NatPlus nPlusA)))
sub619 =
    sub618 >> sub1


{-| The NNat minus 620.


-}
sub620 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N620NatPlus n) Is (Difference a To (N620NatPlus nPlusA)))
sub620 =
    sub619 >> sub1


{-| The NNat minus 621.


-}
sub621 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N621NatPlus n) Is (Difference a To (N621NatPlus nPlusA)))
sub621 =
    sub620 >> sub1


{-| The NNat minus 622.


-}
sub622 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N622NatPlus n) Is (Difference a To (N622NatPlus nPlusA)))
sub622 =
    sub621 >> sub1


{-| The NNat minus 623.


-}
sub623 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N623NatPlus n) Is (Difference a To (N623NatPlus nPlusA)))
sub623 =
    sub622 >> sub1


{-| The NNat minus 624.


-}
sub624 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N624NatPlus n) Is (Difference a To (N624NatPlus nPlusA)))
sub624 =
    sub623 >> sub1


{-| The NNat minus 625.


-}
sub625 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N625NatPlus n) Is (Difference a To (N625NatPlus nPlusA)))
sub625 =
    sub624 >> sub1


{-| The NNat minus 626.


-}
sub626 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N626NatPlus n) Is (Difference a To (N626NatPlus nPlusA)))
sub626 =
    sub625 >> sub1


{-| The NNat minus 627.


-}
sub627 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N627NatPlus n) Is (Difference a To (N627NatPlus nPlusA)))
sub627 =
    sub626 >> sub1


{-| The NNat minus 628.


-}
sub628 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N628NatPlus n) Is (Difference a To (N628NatPlus nPlusA)))
sub628 =
    sub627 >> sub1


{-| The NNat minus 629.


-}
sub629 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N629NatPlus n) Is (Difference a To (N629NatPlus nPlusA)))
sub629 =
    sub628 >> sub1


{-| The NNat minus 630.


-}
sub630 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N630NatPlus n) Is (Difference a To (N630NatPlus nPlusA)))
sub630 =
    sub629 >> sub1


{-| The NNat minus 631.


-}
sub631 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N631NatPlus n) Is (Difference a To (N631NatPlus nPlusA)))
sub631 =
    sub630 >> sub1


{-| The NNat minus 632.


-}
sub632 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N632NatPlus n) Is (Difference a To (N632NatPlus nPlusA)))
sub632 =
    sub631 >> sub1


{-| The NNat minus 633.


-}
sub633 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N633NatPlus n) Is (Difference a To (N633NatPlus nPlusA)))
sub633 =
    sub632 >> sub1


{-| The NNat minus 634.


-}
sub634 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N634NatPlus n) Is (Difference a To (N634NatPlus nPlusA)))
sub634 =
    sub633 >> sub1


{-| The NNat minus 635.


-}
sub635 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N635NatPlus n) Is (Difference a To (N635NatPlus nPlusA)))
sub635 =
    sub634 >> sub1


{-| The NNat minus 636.


-}
sub636 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N636NatPlus n) Is (Difference a To (N636NatPlus nPlusA)))
sub636 =
    sub635 >> sub1


{-| The NNat minus 637.


-}
sub637 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N637NatPlus n) Is (Difference a To (N637NatPlus nPlusA)))
sub637 =
    sub636 >> sub1


{-| The NNat minus 638.


-}
sub638 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N638NatPlus n) Is (Difference a To (N638NatPlus nPlusA)))
sub638 =
    sub637 >> sub1


{-| The NNat minus 639.


-}
sub639 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N639NatPlus n) Is (Difference a To (N639NatPlus nPlusA)))
sub639 =
    sub638 >> sub1


{-| The NNat minus 640.


-}
sub640 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N640NatPlus n) Is (Difference a To (N640NatPlus nPlusA)))
sub640 =
    sub639 >> sub1


{-| The NNat minus 641.


-}
sub641 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N641NatPlus n) Is (Difference a To (N641NatPlus nPlusA)))
sub641 =
    sub640 >> sub1


{-| The NNat minus 642.


-}
sub642 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N642NatPlus n) Is (Difference a To (N642NatPlus nPlusA)))
sub642 =
    sub641 >> sub1


{-| The NNat minus 643.


-}
sub643 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N643NatPlus n) Is (Difference a To (N643NatPlus nPlusA)))
sub643 =
    sub642 >> sub1


{-| The NNat minus 644.


-}
sub644 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N644NatPlus n) Is (Difference a To (N644NatPlus nPlusA)))
sub644 =
    sub643 >> sub1


{-| The NNat minus 645.


-}
sub645 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N645NatPlus n) Is (Difference a To (N645NatPlus nPlusA)))
sub645 =
    sub644 >> sub1


{-| The NNat minus 646.


-}
sub646 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N646NatPlus n) Is (Difference a To (N646NatPlus nPlusA)))
sub646 =
    sub645 >> sub1


{-| The NNat minus 647.


-}
sub647 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N647NatPlus n) Is (Difference a To (N647NatPlus nPlusA)))
sub647 =
    sub646 >> sub1


{-| The NNat minus 648.


-}
sub648 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N648NatPlus n) Is (Difference a To (N648NatPlus nPlusA)))
sub648 =
    sub647 >> sub1


{-| The NNat minus 649.


-}
sub649 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N649NatPlus n) Is (Difference a To (N649NatPlus nPlusA)))
sub649 =
    sub648 >> sub1


{-| The NNat minus 650.


-}
sub650 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N650NatPlus n) Is (Difference a To (N650NatPlus nPlusA)))
sub650 =
    sub649 >> sub1


{-| The NNat minus 651.


-}
sub651 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N651NatPlus n) Is (Difference a To (N651NatPlus nPlusA)))
sub651 =
    sub650 >> sub1


{-| The NNat minus 652.


-}
sub652 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N652NatPlus n) Is (Difference a To (N652NatPlus nPlusA)))
sub652 =
    sub651 >> sub1


{-| The NNat minus 653.


-}
sub653 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N653NatPlus n) Is (Difference a To (N653NatPlus nPlusA)))
sub653 =
    sub652 >> sub1


{-| The NNat minus 654.


-}
sub654 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N654NatPlus n) Is (Difference a To (N654NatPlus nPlusA)))
sub654 =
    sub653 >> sub1


{-| The NNat minus 655.


-}
sub655 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N655NatPlus n) Is (Difference a To (N655NatPlus nPlusA)))
sub655 =
    sub654 >> sub1


{-| The NNat minus 656.


-}
sub656 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N656NatPlus n) Is (Difference a To (N656NatPlus nPlusA)))
sub656 =
    sub655 >> sub1


{-| The NNat minus 657.


-}
sub657 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N657NatPlus n) Is (Difference a To (N657NatPlus nPlusA)))
sub657 =
    sub656 >> sub1


{-| The NNat minus 658.


-}
sub658 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N658NatPlus n) Is (Difference a To (N658NatPlus nPlusA)))
sub658 =
    sub657 >> sub1


{-| The NNat minus 659.


-}
sub659 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N659NatPlus n) Is (Difference a To (N659NatPlus nPlusA)))
sub659 =
    sub658 >> sub1


{-| The NNat minus 660.


-}
sub660 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N660NatPlus n) Is (Difference a To (N660NatPlus nPlusA)))
sub660 =
    sub659 >> sub1


{-| The NNat minus 661.


-}
sub661 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N661NatPlus n) Is (Difference a To (N661NatPlus nPlusA)))
sub661 =
    sub660 >> sub1


{-| The NNat minus 662.


-}
sub662 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N662NatPlus n) Is (Difference a To (N662NatPlus nPlusA)))
sub662 =
    sub661 >> sub1


{-| The NNat minus 663.


-}
sub663 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N663NatPlus n) Is (Difference a To (N663NatPlus nPlusA)))
sub663 =
    sub662 >> sub1


{-| The NNat minus 664.


-}
sub664 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N664NatPlus n) Is (Difference a To (N664NatPlus nPlusA)))
sub664 =
    sub663 >> sub1


{-| The NNat minus 665.


-}
sub665 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N665NatPlus n) Is (Difference a To (N665NatPlus nPlusA)))
sub665 =
    sub664 >> sub1


{-| The NNat minus 666.


-}
sub666 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N666NatPlus n) Is (Difference a To (N666NatPlus nPlusA)))
sub666 =
    sub665 >> sub1


{-| The NNat minus 667.


-}
sub667 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N667NatPlus n) Is (Difference a To (N667NatPlus nPlusA)))
sub667 =
    sub666 >> sub1


{-| The NNat minus 668.


-}
sub668 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N668NatPlus n) Is (Difference a To (N668NatPlus nPlusA)))
sub668 =
    sub667 >> sub1


{-| The NNat minus 669.


-}
sub669 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N669NatPlus n) Is (Difference a To (N669NatPlus nPlusA)))
sub669 =
    sub668 >> sub1


{-| The NNat minus 670.


-}
sub670 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N670NatPlus n) Is (Difference a To (N670NatPlus nPlusA)))
sub670 =
    sub669 >> sub1


{-| The NNat minus 671.


-}
sub671 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N671NatPlus n) Is (Difference a To (N671NatPlus nPlusA)))
sub671 =
    sub670 >> sub1


{-| The NNat minus 672.


-}
sub672 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N672NatPlus n) Is (Difference a To (N672NatPlus nPlusA)))
sub672 =
    sub671 >> sub1


{-| The NNat minus 673.


-}
sub673 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N673NatPlus n) Is (Difference a To (N673NatPlus nPlusA)))
sub673 =
    sub672 >> sub1


{-| The NNat minus 674.


-}
sub674 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N674NatPlus n) Is (Difference a To (N674NatPlus nPlusA)))
sub674 =
    sub673 >> sub1


{-| The NNat minus 675.


-}
sub675 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N675NatPlus n) Is (Difference a To (N675NatPlus nPlusA)))
sub675 =
    sub674 >> sub1


{-| The NNat minus 676.


-}
sub676 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N676NatPlus n) Is (Difference a To (N676NatPlus nPlusA)))
sub676 =
    sub675 >> sub1


{-| The NNat minus 677.


-}
sub677 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N677NatPlus n) Is (Difference a To (N677NatPlus nPlusA)))
sub677 =
    sub676 >> sub1


{-| The NNat minus 678.


-}
sub678 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N678NatPlus n) Is (Difference a To (N678NatPlus nPlusA)))
sub678 =
    sub677 >> sub1


{-| The NNat minus 679.


-}
sub679 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N679NatPlus n) Is (Difference a To (N679NatPlus nPlusA)))
sub679 =
    sub678 >> sub1


{-| The NNat minus 680.


-}
sub680 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N680NatPlus n) Is (Difference a To (N680NatPlus nPlusA)))
sub680 =
    sub679 >> sub1


{-| The NNat minus 681.


-}
sub681 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N681NatPlus n) Is (Difference a To (N681NatPlus nPlusA)))
sub681 =
    sub680 >> sub1


{-| The NNat minus 682.


-}
sub682 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N682NatPlus n) Is (Difference a To (N682NatPlus nPlusA)))
sub682 =
    sub681 >> sub1


{-| The NNat minus 683.


-}
sub683 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N683NatPlus n) Is (Difference a To (N683NatPlus nPlusA)))
sub683 =
    sub682 >> sub1


{-| The NNat minus 684.


-}
sub684 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N684NatPlus n) Is (Difference a To (N684NatPlus nPlusA)))
sub684 =
    sub683 >> sub1


{-| The NNat minus 685.


-}
sub685 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N685NatPlus n) Is (Difference a To (N685NatPlus nPlusA)))
sub685 =
    sub684 >> sub1


{-| The NNat minus 686.


-}
sub686 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N686NatPlus n) Is (Difference a To (N686NatPlus nPlusA)))
sub686 =
    sub685 >> sub1


{-| The NNat minus 687.


-}
sub687 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N687NatPlus n) Is (Difference a To (N687NatPlus nPlusA)))
sub687 =
    sub686 >> sub1


{-| The NNat minus 688.


-}
sub688 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N688NatPlus n) Is (Difference a To (N688NatPlus nPlusA)))
sub688 =
    sub687 >> sub1


{-| The NNat minus 689.


-}
sub689 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N689NatPlus n) Is (Difference a To (N689NatPlus nPlusA)))
sub689 =
    sub688 >> sub1


{-| The NNat minus 690.


-}
sub690 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N690NatPlus n) Is (Difference a To (N690NatPlus nPlusA)))
sub690 =
    sub689 >> sub1


{-| The NNat minus 691.


-}
sub691 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N691NatPlus n) Is (Difference a To (N691NatPlus nPlusA)))
sub691 =
    sub690 >> sub1


{-| The NNat minus 692.


-}
sub692 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N692NatPlus n) Is (Difference a To (N692NatPlus nPlusA)))
sub692 =
    sub691 >> sub1


{-| The NNat minus 693.


-}
sub693 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N693NatPlus n) Is (Difference a To (N693NatPlus nPlusA)))
sub693 =
    sub692 >> sub1


{-| The NNat minus 694.


-}
sub694 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N694NatPlus n) Is (Difference a To (N694NatPlus nPlusA)))
sub694 =
    sub693 >> sub1


{-| The NNat minus 695.


-}
sub695 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N695NatPlus n) Is (Difference a To (N695NatPlus nPlusA)))
sub695 =
    sub694 >> sub1


{-| The NNat minus 696.


-}
sub696 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N696NatPlus n) Is (Difference a To (N696NatPlus nPlusA)))
sub696 =
    sub695 >> sub1


{-| The NNat minus 697.


-}
sub697 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N697NatPlus n) Is (Difference a To (N697NatPlus nPlusA)))
sub697 =
    sub696 >> sub1


{-| The NNat minus 698.


-}
sub698 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N698NatPlus n) Is (Difference a To (N698NatPlus nPlusA)))
sub698 =
    sub697 >> sub1


{-| The NNat minus 699.


-}
sub699 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N699NatPlus n) Is (Difference a To (N699NatPlus nPlusA)))
sub699 =
    sub698 >> sub1


{-| The NNat minus 700.


-}
sub700 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N700NatPlus n) Is (Difference a To (N700NatPlus nPlusA)))
sub700 =
    sub699 >> sub1


{-| The NNat minus 701.


-}
sub701 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N701NatPlus n) Is (Difference a To (N701NatPlus nPlusA)))
sub701 =
    sub700 >> sub1


{-| The NNat minus 702.


-}
sub702 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N702NatPlus n) Is (Difference a To (N702NatPlus nPlusA)))
sub702 =
    sub701 >> sub1


{-| The NNat minus 703.


-}
sub703 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N703NatPlus n) Is (Difference a To (N703NatPlus nPlusA)))
sub703 =
    sub702 >> sub1


{-| The NNat minus 704.


-}
sub704 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N704NatPlus n) Is (Difference a To (N704NatPlus nPlusA)))
sub704 =
    sub703 >> sub1


{-| The NNat minus 705.


-}
sub705 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N705NatPlus n) Is (Difference a To (N705NatPlus nPlusA)))
sub705 =
    sub704 >> sub1


{-| The NNat minus 706.


-}
sub706 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N706NatPlus n) Is (Difference a To (N706NatPlus nPlusA)))
sub706 =
    sub705 >> sub1


{-| The NNat minus 707.


-}
sub707 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N707NatPlus n) Is (Difference a To (N707NatPlus nPlusA)))
sub707 =
    sub706 >> sub1


{-| The NNat minus 708.


-}
sub708 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N708NatPlus n) Is (Difference a To (N708NatPlus nPlusA)))
sub708 =
    sub707 >> sub1


{-| The NNat minus 709.


-}
sub709 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N709NatPlus n) Is (Difference a To (N709NatPlus nPlusA)))
sub709 =
    sub708 >> sub1


{-| The NNat minus 710.


-}
sub710 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N710NatPlus n) Is (Difference a To (N710NatPlus nPlusA)))
sub710 =
    sub709 >> sub1


{-| The NNat minus 711.


-}
sub711 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N711NatPlus n) Is (Difference a To (N711NatPlus nPlusA)))
sub711 =
    sub710 >> sub1


{-| The NNat minus 712.


-}
sub712 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N712NatPlus n) Is (Difference a To (N712NatPlus nPlusA)))
sub712 =
    sub711 >> sub1


{-| The NNat minus 713.


-}
sub713 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N713NatPlus n) Is (Difference a To (N713NatPlus nPlusA)))
sub713 =
    sub712 >> sub1


{-| The NNat minus 714.


-}
sub714 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N714NatPlus n) Is (Difference a To (N714NatPlus nPlusA)))
sub714 =
    sub713 >> sub1


{-| The NNat minus 715.


-}
sub715 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N715NatPlus n) Is (Difference a To (N715NatPlus nPlusA)))
sub715 =
    sub714 >> sub1


{-| The NNat minus 716.


-}
sub716 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N716NatPlus n) Is (Difference a To (N716NatPlus nPlusA)))
sub716 =
    sub715 >> sub1


{-| The NNat minus 717.


-}
sub717 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N717NatPlus n) Is (Difference a To (N717NatPlus nPlusA)))
sub717 =
    sub716 >> sub1


{-| The NNat minus 718.


-}
sub718 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N718NatPlus n) Is (Difference a To (N718NatPlus nPlusA)))
sub718 =
    sub717 >> sub1


{-| The NNat minus 719.


-}
sub719 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N719NatPlus n) Is (Difference a To (N719NatPlus nPlusA)))
sub719 =
    sub718 >> sub1


{-| The NNat minus 720.


-}
sub720 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N720NatPlus n) Is (Difference a To (N720NatPlus nPlusA)))
sub720 =
    sub719 >> sub1


{-| The NNat minus 721.


-}
sub721 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N721NatPlus n) Is (Difference a To (N721NatPlus nPlusA)))
sub721 =
    sub720 >> sub1


{-| The NNat minus 722.


-}
sub722 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N722NatPlus n) Is (Difference a To (N722NatPlus nPlusA)))
sub722 =
    sub721 >> sub1


{-| The NNat minus 723.


-}
sub723 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N723NatPlus n) Is (Difference a To (N723NatPlus nPlusA)))
sub723 =
    sub722 >> sub1


{-| The NNat minus 724.


-}
sub724 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N724NatPlus n) Is (Difference a To (N724NatPlus nPlusA)))
sub724 =
    sub723 >> sub1


{-| The NNat minus 725.


-}
sub725 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N725NatPlus n) Is (Difference a To (N725NatPlus nPlusA)))
sub725 =
    sub724 >> sub1


{-| The NNat minus 726.


-}
sub726 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N726NatPlus n) Is (Difference a To (N726NatPlus nPlusA)))
sub726 =
    sub725 >> sub1


{-| The NNat minus 727.


-}
sub727 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N727NatPlus n) Is (Difference a To (N727NatPlus nPlusA)))
sub727 =
    sub726 >> sub1


{-| The NNat minus 728.


-}
sub728 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N728NatPlus n) Is (Difference a To (N728NatPlus nPlusA)))
sub728 =
    sub727 >> sub1


{-| The NNat minus 729.


-}
sub729 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N729NatPlus n) Is (Difference a To (N729NatPlus nPlusA)))
sub729 =
    sub728 >> sub1


{-| The NNat minus 730.


-}
sub730 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N730NatPlus n) Is (Difference a To (N730NatPlus nPlusA)))
sub730 =
    sub729 >> sub1


{-| The NNat minus 731.


-}
sub731 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N731NatPlus n) Is (Difference a To (N731NatPlus nPlusA)))
sub731 =
    sub730 >> sub1


{-| The NNat minus 732.


-}
sub732 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N732NatPlus n) Is (Difference a To (N732NatPlus nPlusA)))
sub732 =
    sub731 >> sub1


{-| The NNat minus 733.


-}
sub733 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N733NatPlus n) Is (Difference a To (N733NatPlus nPlusA)))
sub733 =
    sub732 >> sub1


{-| The NNat minus 734.


-}
sub734 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N734NatPlus n) Is (Difference a To (N734NatPlus nPlusA)))
sub734 =
    sub733 >> sub1


{-| The NNat minus 735.


-}
sub735 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N735NatPlus n) Is (Difference a To (N735NatPlus nPlusA)))
sub735 =
    sub734 >> sub1


{-| The NNat minus 736.


-}
sub736 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N736NatPlus n) Is (Difference a To (N736NatPlus nPlusA)))
sub736 =
    sub735 >> sub1


{-| The NNat minus 737.


-}
sub737 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N737NatPlus n) Is (Difference a To (N737NatPlus nPlusA)))
sub737 =
    sub736 >> sub1


{-| The NNat minus 738.


-}
sub738 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N738NatPlus n) Is (Difference a To (N738NatPlus nPlusA)))
sub738 =
    sub737 >> sub1


{-| The NNat minus 739.


-}
sub739 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N739NatPlus n) Is (Difference a To (N739NatPlus nPlusA)))
sub739 =
    sub738 >> sub1


{-| The NNat minus 740.


-}
sub740 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N740NatPlus n) Is (Difference a To (N740NatPlus nPlusA)))
sub740 =
    sub739 >> sub1


{-| The NNat minus 741.


-}
sub741 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N741NatPlus n) Is (Difference a To (N741NatPlus nPlusA)))
sub741 =
    sub740 >> sub1


{-| The NNat minus 742.


-}
sub742 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N742NatPlus n) Is (Difference a To (N742NatPlus nPlusA)))
sub742 =
    sub741 >> sub1


{-| The NNat minus 743.


-}
sub743 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N743NatPlus n) Is (Difference a To (N743NatPlus nPlusA)))
sub743 =
    sub742 >> sub1


{-| The NNat minus 744.


-}
sub744 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N744NatPlus n) Is (Difference a To (N744NatPlus nPlusA)))
sub744 =
    sub743 >> sub1


{-| The NNat minus 745.


-}
sub745 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N745NatPlus n) Is (Difference a To (N745NatPlus nPlusA)))
sub745 =
    sub744 >> sub1


{-| The NNat minus 746.


-}
sub746 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N746NatPlus n) Is (Difference a To (N746NatPlus nPlusA)))
sub746 =
    sub745 >> sub1


{-| The NNat minus 747.


-}
sub747 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N747NatPlus n) Is (Difference a To (N747NatPlus nPlusA)))
sub747 =
    sub746 >> sub1


{-| The NNat minus 748.


-}
sub748 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N748NatPlus n) Is (Difference a To (N748NatPlus nPlusA)))
sub748 =
    sub747 >> sub1


{-| The NNat minus 749.


-}
sub749 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N749NatPlus n) Is (Difference a To (N749NatPlus nPlusA)))
sub749 =
    sub748 >> sub1


{-| The NNat minus 750.


-}
sub750 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N750NatPlus n) Is (Difference a To (N750NatPlus nPlusA)))
sub750 =
    sub749 >> sub1


{-| The NNat minus 751.


-}
sub751 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N751NatPlus n) Is (Difference a To (N751NatPlus nPlusA)))
sub751 =
    sub750 >> sub1


{-| The NNat minus 752.


-}
sub752 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N752NatPlus n) Is (Difference a To (N752NatPlus nPlusA)))
sub752 =
    sub751 >> sub1


{-| The NNat minus 753.


-}
sub753 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N753NatPlus n) Is (Difference a To (N753NatPlus nPlusA)))
sub753 =
    sub752 >> sub1


{-| The NNat minus 754.


-}
sub754 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N754NatPlus n) Is (Difference a To (N754NatPlus nPlusA)))
sub754 =
    sub753 >> sub1


{-| The NNat minus 755.


-}
sub755 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N755NatPlus n) Is (Difference a To (N755NatPlus nPlusA)))
sub755 =
    sub754 >> sub1


{-| The NNat minus 756.


-}
sub756 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N756NatPlus n) Is (Difference a To (N756NatPlus nPlusA)))
sub756 =
    sub755 >> sub1


{-| The NNat minus 757.


-}
sub757 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N757NatPlus n) Is (Difference a To (N757NatPlus nPlusA)))
sub757 =
    sub756 >> sub1


{-| The NNat minus 758.


-}
sub758 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N758NatPlus n) Is (Difference a To (N758NatPlus nPlusA)))
sub758 =
    sub757 >> sub1


{-| The NNat minus 759.


-}
sub759 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N759NatPlus n) Is (Difference a To (N759NatPlus nPlusA)))
sub759 =
    sub758 >> sub1


{-| The NNat minus 760.


-}
sub760 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N760NatPlus n) Is (Difference a To (N760NatPlus nPlusA)))
sub760 =
    sub759 >> sub1


{-| The NNat minus 761.


-}
sub761 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N761NatPlus n) Is (Difference a To (N761NatPlus nPlusA)))
sub761 =
    sub760 >> sub1


{-| The NNat minus 762.


-}
sub762 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N762NatPlus n) Is (Difference a To (N762NatPlus nPlusA)))
sub762 =
    sub761 >> sub1


{-| The NNat minus 763.


-}
sub763 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N763NatPlus n) Is (Difference a To (N763NatPlus nPlusA)))
sub763 =
    sub762 >> sub1


{-| The NNat minus 764.


-}
sub764 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N764NatPlus n) Is (Difference a To (N764NatPlus nPlusA)))
sub764 =
    sub763 >> sub1


{-| The NNat minus 765.


-}
sub765 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N765NatPlus n) Is (Difference a To (N765NatPlus nPlusA)))
sub765 =
    sub764 >> sub1


{-| The NNat minus 766.


-}
sub766 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N766NatPlus n) Is (Difference a To (N766NatPlus nPlusA)))
sub766 =
    sub765 >> sub1


{-| The NNat minus 767.


-}
sub767 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N767NatPlus n) Is (Difference a To (N767NatPlus nPlusA)))
sub767 =
    sub766 >> sub1


{-| The NNat minus 768.


-}
sub768 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N768NatPlus n) Is (Difference a To (N768NatPlus nPlusA)))
sub768 =
    sub767 >> sub1


{-| The NNat minus 769.


-}
sub769 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N769NatPlus n) Is (Difference a To (N769NatPlus nPlusA)))
sub769 =
    sub768 >> sub1


{-| The NNat minus 770.


-}
sub770 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N770NatPlus n) Is (Difference a To (N770NatPlus nPlusA)))
sub770 =
    sub769 >> sub1


{-| The NNat minus 771.


-}
sub771 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N771NatPlus n) Is (Difference a To (N771NatPlus nPlusA)))
sub771 =
    sub770 >> sub1


{-| The NNat minus 772.


-}
sub772 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N772NatPlus n) Is (Difference a To (N772NatPlus nPlusA)))
sub772 =
    sub771 >> sub1


{-| The NNat minus 773.


-}
sub773 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N773NatPlus n) Is (Difference a To (N773NatPlus nPlusA)))
sub773 =
    sub772 >> sub1


{-| The NNat minus 774.


-}
sub774 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N774NatPlus n) Is (Difference a To (N774NatPlus nPlusA)))
sub774 =
    sub773 >> sub1


{-| The NNat minus 775.


-}
sub775 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N775NatPlus n) Is (Difference a To (N775NatPlus nPlusA)))
sub775 =
    sub774 >> sub1


{-| The NNat minus 776.


-}
sub776 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N776NatPlus n) Is (Difference a To (N776NatPlus nPlusA)))
sub776 =
    sub775 >> sub1


{-| The NNat minus 777.


-}
sub777 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N777NatPlus n) Is (Difference a To (N777NatPlus nPlusA)))
sub777 =
    sub776 >> sub1


{-| The NNat minus 778.


-}
sub778 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N778NatPlus n) Is (Difference a To (N778NatPlus nPlusA)))
sub778 =
    sub777 >> sub1


{-| The NNat minus 779.


-}
sub779 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N779NatPlus n) Is (Difference a To (N779NatPlus nPlusA)))
sub779 =
    sub778 >> sub1


{-| The NNat minus 780.


-}
sub780 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N780NatPlus n) Is (Difference a To (N780NatPlus nPlusA)))
sub780 =
    sub779 >> sub1


{-| The NNat minus 781.


-}
sub781 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N781NatPlus n) Is (Difference a To (N781NatPlus nPlusA)))
sub781 =
    sub780 >> sub1


{-| The NNat minus 782.


-}
sub782 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N782NatPlus n) Is (Difference a To (N782NatPlus nPlusA)))
sub782 =
    sub781 >> sub1


{-| The NNat minus 783.


-}
sub783 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N783NatPlus n) Is (Difference a To (N783NatPlus nPlusA)))
sub783 =
    sub782 >> sub1


{-| The NNat minus 784.


-}
sub784 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N784NatPlus n) Is (Difference a To (N784NatPlus nPlusA)))
sub784 =
    sub783 >> sub1


{-| The NNat minus 785.


-}
sub785 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N785NatPlus n) Is (Difference a To (N785NatPlus nPlusA)))
sub785 =
    sub784 >> sub1


{-| The NNat minus 786.


-}
sub786 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N786NatPlus n) Is (Difference a To (N786NatPlus nPlusA)))
sub786 =
    sub785 >> sub1


{-| The NNat minus 787.


-}
sub787 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N787NatPlus n) Is (Difference a To (N787NatPlus nPlusA)))
sub787 =
    sub786 >> sub1


{-| The NNat minus 788.


-}
sub788 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N788NatPlus n) Is (Difference a To (N788NatPlus nPlusA)))
sub788 =
    sub787 >> sub1


{-| The NNat minus 789.


-}
sub789 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N789NatPlus n) Is (Difference a To (N789NatPlus nPlusA)))
sub789 =
    sub788 >> sub1


{-| The NNat minus 790.


-}
sub790 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N790NatPlus n) Is (Difference a To (N790NatPlus nPlusA)))
sub790 =
    sub789 >> sub1


{-| The NNat minus 791.


-}
sub791 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N791NatPlus n) Is (Difference a To (N791NatPlus nPlusA)))
sub791 =
    sub790 >> sub1


{-| The NNat minus 792.


-}
sub792 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N792NatPlus n) Is (Difference a To (N792NatPlus nPlusA)))
sub792 =
    sub791 >> sub1


{-| The NNat minus 793.


-}
sub793 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N793NatPlus n) Is (Difference a To (N793NatPlus nPlusA)))
sub793 =
    sub792 >> sub1


{-| The NNat minus 794.


-}
sub794 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N794NatPlus n) Is (Difference a To (N794NatPlus nPlusA)))
sub794 =
    sub793 >> sub1


{-| The NNat minus 795.


-}
sub795 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N795NatPlus n) Is (Difference a To (N795NatPlus nPlusA)))
sub795 =
    sub794 >> sub1


{-| The NNat minus 796.


-}
sub796 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N796NatPlus n) Is (Difference a To (N796NatPlus nPlusA)))
sub796 =
    sub795 >> sub1


{-| The NNat minus 797.


-}
sub797 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N797NatPlus n) Is (Difference a To (N797NatPlus nPlusA)))
sub797 =
    sub796 >> sub1


{-| The NNat minus 798.


-}
sub798 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N798NatPlus n) Is (Difference a To (N798NatPlus nPlusA)))
sub798 =
    sub797 >> sub1


{-| The NNat minus 799.


-}
sub799 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N799NatPlus n) Is (Difference a To (N799NatPlus nPlusA)))
sub799 =
    sub798 >> sub1


{-| The NNat minus 800.


-}
sub800 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N800NatPlus n) Is (Difference a To (N800NatPlus nPlusA)))
sub800 =
    sub799 >> sub1


{-| The NNat minus 801.


-}
sub801 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N801NatPlus n) Is (Difference a To (N801NatPlus nPlusA)))
sub801 =
    sub800 >> sub1


{-| The NNat minus 802.


-}
sub802 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N802NatPlus n) Is (Difference a To (N802NatPlus nPlusA)))
sub802 =
    sub801 >> sub1


{-| The NNat minus 803.


-}
sub803 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N803NatPlus n) Is (Difference a To (N803NatPlus nPlusA)))
sub803 =
    sub802 >> sub1


{-| The NNat minus 804.


-}
sub804 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N804NatPlus n) Is (Difference a To (N804NatPlus nPlusA)))
sub804 =
    sub803 >> sub1


{-| The NNat minus 805.


-}
sub805 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N805NatPlus n) Is (Difference a To (N805NatPlus nPlusA)))
sub805 =
    sub804 >> sub1


{-| The NNat minus 806.


-}
sub806 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N806NatPlus n) Is (Difference a To (N806NatPlus nPlusA)))
sub806 =
    sub805 >> sub1


{-| The NNat minus 807.


-}
sub807 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N807NatPlus n) Is (Difference a To (N807NatPlus nPlusA)))
sub807 =
    sub806 >> sub1


{-| The NNat minus 808.


-}
sub808 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N808NatPlus n) Is (Difference a To (N808NatPlus nPlusA)))
sub808 =
    sub807 >> sub1


{-| The NNat minus 809.


-}
sub809 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N809NatPlus n) Is (Difference a To (N809NatPlus nPlusA)))
sub809 =
    sub808 >> sub1


{-| The NNat minus 810.


-}
sub810 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N810NatPlus n) Is (Difference a To (N810NatPlus nPlusA)))
sub810 =
    sub809 >> sub1


{-| The NNat minus 811.


-}
sub811 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N811NatPlus n) Is (Difference a To (N811NatPlus nPlusA)))
sub811 =
    sub810 >> sub1


{-| The NNat minus 812.


-}
sub812 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N812NatPlus n) Is (Difference a To (N812NatPlus nPlusA)))
sub812 =
    sub811 >> sub1


{-| The NNat minus 813.


-}
sub813 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N813NatPlus n) Is (Difference a To (N813NatPlus nPlusA)))
sub813 =
    sub812 >> sub1


{-| The NNat minus 814.


-}
sub814 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N814NatPlus n) Is (Difference a To (N814NatPlus nPlusA)))
sub814 =
    sub813 >> sub1


{-| The NNat minus 815.


-}
sub815 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N815NatPlus n) Is (Difference a To (N815NatPlus nPlusA)))
sub815 =
    sub814 >> sub1


{-| The NNat minus 816.


-}
sub816 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N816NatPlus n) Is (Difference a To (N816NatPlus nPlusA)))
sub816 =
    sub815 >> sub1


{-| The NNat minus 817.


-}
sub817 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N817NatPlus n) Is (Difference a To (N817NatPlus nPlusA)))
sub817 =
    sub816 >> sub1


{-| The NNat minus 818.


-}
sub818 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N818NatPlus n) Is (Difference a To (N818NatPlus nPlusA)))
sub818 =
    sub817 >> sub1


{-| The NNat minus 819.


-}
sub819 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N819NatPlus n) Is (Difference a To (N819NatPlus nPlusA)))
sub819 =
    sub818 >> sub1


{-| The NNat minus 820.


-}
sub820 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N820NatPlus n) Is (Difference a To (N820NatPlus nPlusA)))
sub820 =
    sub819 >> sub1


{-| The NNat minus 821.


-}
sub821 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N821NatPlus n) Is (Difference a To (N821NatPlus nPlusA)))
sub821 =
    sub820 >> sub1


{-| The NNat minus 822.


-}
sub822 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N822NatPlus n) Is (Difference a To (N822NatPlus nPlusA)))
sub822 =
    sub821 >> sub1


{-| The NNat minus 823.


-}
sub823 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N823NatPlus n) Is (Difference a To (N823NatPlus nPlusA)))
sub823 =
    sub822 >> sub1


{-| The NNat minus 824.


-}
sub824 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N824NatPlus n) Is (Difference a To (N824NatPlus nPlusA)))
sub824 =
    sub823 >> sub1


{-| The NNat minus 825.


-}
sub825 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N825NatPlus n) Is (Difference a To (N825NatPlus nPlusA)))
sub825 =
    sub824 >> sub1


{-| The NNat minus 826.


-}
sub826 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N826NatPlus n) Is (Difference a To (N826NatPlus nPlusA)))
sub826 =
    sub825 >> sub1


{-| The NNat minus 827.


-}
sub827 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N827NatPlus n) Is (Difference a To (N827NatPlus nPlusA)))
sub827 =
    sub826 >> sub1


{-| The NNat minus 828.


-}
sub828 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N828NatPlus n) Is (Difference a To (N828NatPlus nPlusA)))
sub828 =
    sub827 >> sub1


{-| The NNat minus 829.


-}
sub829 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N829NatPlus n) Is (Difference a To (N829NatPlus nPlusA)))
sub829 =
    sub828 >> sub1


{-| The NNat minus 830.


-}
sub830 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N830NatPlus n) Is (Difference a To (N830NatPlus nPlusA)))
sub830 =
    sub829 >> sub1


{-| The NNat minus 831.


-}
sub831 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N831NatPlus n) Is (Difference a To (N831NatPlus nPlusA)))
sub831 =
    sub830 >> sub1


{-| The NNat minus 832.


-}
sub832 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N832NatPlus n) Is (Difference a To (N832NatPlus nPlusA)))
sub832 =
    sub831 >> sub1


{-| The NNat minus 833.


-}
sub833 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N833NatPlus n) Is (Difference a To (N833NatPlus nPlusA)))
sub833 =
    sub832 >> sub1


{-| The NNat minus 834.


-}
sub834 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N834NatPlus n) Is (Difference a To (N834NatPlus nPlusA)))
sub834 =
    sub833 >> sub1


{-| The NNat minus 835.


-}
sub835 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N835NatPlus n) Is (Difference a To (N835NatPlus nPlusA)))
sub835 =
    sub834 >> sub1


{-| The NNat minus 836.


-}
sub836 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N836NatPlus n) Is (Difference a To (N836NatPlus nPlusA)))
sub836 =
    sub835 >> sub1


{-| The NNat minus 837.


-}
sub837 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N837NatPlus n) Is (Difference a To (N837NatPlus nPlusA)))
sub837 =
    sub836 >> sub1


{-| The NNat minus 838.


-}
sub838 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N838NatPlus n) Is (Difference a To (N838NatPlus nPlusA)))
sub838 =
    sub837 >> sub1


{-| The NNat minus 839.


-}
sub839 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N839NatPlus n) Is (Difference a To (N839NatPlus nPlusA)))
sub839 =
    sub838 >> sub1


{-| The NNat minus 840.


-}
sub840 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N840NatPlus n) Is (Difference a To (N840NatPlus nPlusA)))
sub840 =
    sub839 >> sub1


{-| The NNat minus 841.


-}
sub841 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N841NatPlus n) Is (Difference a To (N841NatPlus nPlusA)))
sub841 =
    sub840 >> sub1


{-| The NNat minus 842.


-}
sub842 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N842NatPlus n) Is (Difference a To (N842NatPlus nPlusA)))
sub842 =
    sub841 >> sub1


{-| The NNat minus 843.


-}
sub843 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N843NatPlus n) Is (Difference a To (N843NatPlus nPlusA)))
sub843 =
    sub842 >> sub1


{-| The NNat minus 844.


-}
sub844 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N844NatPlus n) Is (Difference a To (N844NatPlus nPlusA)))
sub844 =
    sub843 >> sub1


{-| The NNat minus 845.


-}
sub845 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N845NatPlus n) Is (Difference a To (N845NatPlus nPlusA)))
sub845 =
    sub844 >> sub1


{-| The NNat minus 846.


-}
sub846 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N846NatPlus n) Is (Difference a To (N846NatPlus nPlusA)))
sub846 =
    sub845 >> sub1


{-| The NNat minus 847.


-}
sub847 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N847NatPlus n) Is (Difference a To (N847NatPlus nPlusA)))
sub847 =
    sub846 >> sub1


{-| The NNat minus 848.


-}
sub848 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N848NatPlus n) Is (Difference a To (N848NatPlus nPlusA)))
sub848 =
    sub847 >> sub1


{-| The NNat minus 849.


-}
sub849 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N849NatPlus n) Is (Difference a To (N849NatPlus nPlusA)))
sub849 =
    sub848 >> sub1


{-| The NNat minus 850.


-}
sub850 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N850NatPlus n) Is (Difference a To (N850NatPlus nPlusA)))
sub850 =
    sub849 >> sub1


{-| The NNat minus 851.


-}
sub851 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N851NatPlus n) Is (Difference a To (N851NatPlus nPlusA)))
sub851 =
    sub850 >> sub1


{-| The NNat minus 852.


-}
sub852 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N852NatPlus n) Is (Difference a To (N852NatPlus nPlusA)))
sub852 =
    sub851 >> sub1


{-| The NNat minus 853.


-}
sub853 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N853NatPlus n) Is (Difference a To (N853NatPlus nPlusA)))
sub853 =
    sub852 >> sub1


{-| The NNat minus 854.


-}
sub854 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N854NatPlus n) Is (Difference a To (N854NatPlus nPlusA)))
sub854 =
    sub853 >> sub1


{-| The NNat minus 855.


-}
sub855 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N855NatPlus n) Is (Difference a To (N855NatPlus nPlusA)))
sub855 =
    sub854 >> sub1


{-| The NNat minus 856.


-}
sub856 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N856NatPlus n) Is (Difference a To (N856NatPlus nPlusA)))
sub856 =
    sub855 >> sub1


{-| The NNat minus 857.


-}
sub857 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N857NatPlus n) Is (Difference a To (N857NatPlus nPlusA)))
sub857 =
    sub856 >> sub1


{-| The NNat minus 858.


-}
sub858 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N858NatPlus n) Is (Difference a To (N858NatPlus nPlusA)))
sub858 =
    sub857 >> sub1


{-| The NNat minus 859.


-}
sub859 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N859NatPlus n) Is (Difference a To (N859NatPlus nPlusA)))
sub859 =
    sub858 >> sub1


{-| The NNat minus 860.


-}
sub860 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N860NatPlus n) Is (Difference a To (N860NatPlus nPlusA)))
sub860 =
    sub859 >> sub1


{-| The NNat minus 861.


-}
sub861 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N861NatPlus n) Is (Difference a To (N861NatPlus nPlusA)))
sub861 =
    sub860 >> sub1


{-| The NNat minus 862.


-}
sub862 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N862NatPlus n) Is (Difference a To (N862NatPlus nPlusA)))
sub862 =
    sub861 >> sub1


{-| The NNat minus 863.


-}
sub863 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N863NatPlus n) Is (Difference a To (N863NatPlus nPlusA)))
sub863 =
    sub862 >> sub1


{-| The NNat minus 864.


-}
sub864 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N864NatPlus n) Is (Difference a To (N864NatPlus nPlusA)))
sub864 =
    sub863 >> sub1


{-| The NNat minus 865.


-}
sub865 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N865NatPlus n) Is (Difference a To (N865NatPlus nPlusA)))
sub865 =
    sub864 >> sub1


{-| The NNat minus 866.


-}
sub866 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N866NatPlus n) Is (Difference a To (N866NatPlus nPlusA)))
sub866 =
    sub865 >> sub1


{-| The NNat minus 867.


-}
sub867 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N867NatPlus n) Is (Difference a To (N867NatPlus nPlusA)))
sub867 =
    sub866 >> sub1


{-| The NNat minus 868.


-}
sub868 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N868NatPlus n) Is (Difference a To (N868NatPlus nPlusA)))
sub868 =
    sub867 >> sub1


{-| The NNat minus 869.


-}
sub869 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N869NatPlus n) Is (Difference a To (N869NatPlus nPlusA)))
sub869 =
    sub868 >> sub1


{-| The NNat minus 870.


-}
sub870 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N870NatPlus n) Is (Difference a To (N870NatPlus nPlusA)))
sub870 =
    sub869 >> sub1


{-| The NNat minus 871.


-}
sub871 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N871NatPlus n) Is (Difference a To (N871NatPlus nPlusA)))
sub871 =
    sub870 >> sub1


{-| The NNat minus 872.


-}
sub872 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N872NatPlus n) Is (Difference a To (N872NatPlus nPlusA)))
sub872 =
    sub871 >> sub1


{-| The NNat minus 873.


-}
sub873 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N873NatPlus n) Is (Difference a To (N873NatPlus nPlusA)))
sub873 =
    sub872 >> sub1


{-| The NNat minus 874.


-}
sub874 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N874NatPlus n) Is (Difference a To (N874NatPlus nPlusA)))
sub874 =
    sub873 >> sub1


{-| The NNat minus 875.


-}
sub875 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N875NatPlus n) Is (Difference a To (N875NatPlus nPlusA)))
sub875 =
    sub874 >> sub1


{-| The NNat minus 876.


-}
sub876 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N876NatPlus n) Is (Difference a To (N876NatPlus nPlusA)))
sub876 =
    sub875 >> sub1


{-| The NNat minus 877.


-}
sub877 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N877NatPlus n) Is (Difference a To (N877NatPlus nPlusA)))
sub877 =
    sub876 >> sub1


{-| The NNat minus 878.


-}
sub878 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N878NatPlus n) Is (Difference a To (N878NatPlus nPlusA)))
sub878 =
    sub877 >> sub1


{-| The NNat minus 879.


-}
sub879 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N879NatPlus n) Is (Difference a To (N879NatPlus nPlusA)))
sub879 =
    sub878 >> sub1


{-| The NNat minus 880.


-}
sub880 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N880NatPlus n) Is (Difference a To (N880NatPlus nPlusA)))
sub880 =
    sub879 >> sub1


{-| The NNat minus 881.


-}
sub881 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N881NatPlus n) Is (Difference a To (N881NatPlus nPlusA)))
sub881 =
    sub880 >> sub1


{-| The NNat minus 882.


-}
sub882 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N882NatPlus n) Is (Difference a To (N882NatPlus nPlusA)))
sub882 =
    sub881 >> sub1


{-| The NNat minus 883.


-}
sub883 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N883NatPlus n) Is (Difference a To (N883NatPlus nPlusA)))
sub883 =
    sub882 >> sub1


{-| The NNat minus 884.


-}
sub884 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N884NatPlus n) Is (Difference a To (N884NatPlus nPlusA)))
sub884 =
    sub883 >> sub1


{-| The NNat minus 885.


-}
sub885 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N885NatPlus n) Is (Difference a To (N885NatPlus nPlusA)))
sub885 =
    sub884 >> sub1


{-| The NNat minus 886.


-}
sub886 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N886NatPlus n) Is (Difference a To (N886NatPlus nPlusA)))
sub886 =
    sub885 >> sub1


{-| The NNat minus 887.


-}
sub887 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N887NatPlus n) Is (Difference a To (N887NatPlus nPlusA)))
sub887 =
    sub886 >> sub1


{-| The NNat minus 888.


-}
sub888 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N888NatPlus n) Is (Difference a To (N888NatPlus nPlusA)))
sub888 =
    sub887 >> sub1


{-| The NNat minus 889.


-}
sub889 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N889NatPlus n) Is (Difference a To (N889NatPlus nPlusA)))
sub889 =
    sub888 >> sub1


{-| The NNat minus 890.


-}
sub890 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N890NatPlus n) Is (Difference a To (N890NatPlus nPlusA)))
sub890 =
    sub889 >> sub1


{-| The NNat minus 891.


-}
sub891 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N891NatPlus n) Is (Difference a To (N891NatPlus nPlusA)))
sub891 =
    sub890 >> sub1


{-| The NNat minus 892.


-}
sub892 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N892NatPlus n) Is (Difference a To (N892NatPlus nPlusA)))
sub892 =
    sub891 >> sub1


{-| The NNat minus 893.


-}
sub893 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N893NatPlus n) Is (Difference a To (N893NatPlus nPlusA)))
sub893 =
    sub892 >> sub1


{-| The NNat minus 894.


-}
sub894 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N894NatPlus n) Is (Difference a To (N894NatPlus nPlusA)))
sub894 =
    sub893 >> sub1


{-| The NNat minus 895.


-}
sub895 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N895NatPlus n) Is (Difference a To (N895NatPlus nPlusA)))
sub895 =
    sub894 >> sub1


{-| The NNat minus 896.


-}
sub896 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N896NatPlus n) Is (Difference a To (N896NatPlus nPlusA)))
sub896 =
    sub895 >> sub1


{-| The NNat minus 897.


-}
sub897 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N897NatPlus n) Is (Difference a To (N897NatPlus nPlusA)))
sub897 =
    sub896 >> sub1


{-| The NNat minus 898.


-}
sub898 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N898NatPlus n) Is (Difference a To (N898NatPlus nPlusA)))
sub898 =
    sub897 >> sub1


{-| The NNat minus 899.


-}
sub899 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N899NatPlus n) Is (Difference a To (N899NatPlus nPlusA)))
sub899 =
    sub898 >> sub1


{-| The NNat minus 900.


-}
sub900 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N900NatPlus n) Is (Difference a To (N900NatPlus nPlusA)))
sub900 =
    sub899 >> sub1


{-| The NNat minus 901.


-}
sub901 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N901NatPlus n) Is (Difference a To (N901NatPlus nPlusA)))
sub901 =
    sub900 >> sub1


{-| The NNat minus 902.


-}
sub902 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N902NatPlus n) Is (Difference a To (N902NatPlus nPlusA)))
sub902 =
    sub901 >> sub1


{-| The NNat minus 903.


-}
sub903 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N903NatPlus n) Is (Difference a To (N903NatPlus nPlusA)))
sub903 =
    sub902 >> sub1


{-| The NNat minus 904.


-}
sub904 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N904NatPlus n) Is (Difference a To (N904NatPlus nPlusA)))
sub904 =
    sub903 >> sub1


{-| The NNat minus 905.


-}
sub905 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N905NatPlus n) Is (Difference a To (N905NatPlus nPlusA)))
sub905 =
    sub904 >> sub1


{-| The NNat minus 906.


-}
sub906 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N906NatPlus n) Is (Difference a To (N906NatPlus nPlusA)))
sub906 =
    sub905 >> sub1


{-| The NNat minus 907.


-}
sub907 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N907NatPlus n) Is (Difference a To (N907NatPlus nPlusA)))
sub907 =
    sub906 >> sub1


{-| The NNat minus 908.


-}
sub908 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N908NatPlus n) Is (Difference a To (N908NatPlus nPlusA)))
sub908 =
    sub907 >> sub1


{-| The NNat minus 909.


-}
sub909 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N909NatPlus n) Is (Difference a To (N909NatPlus nPlusA)))
sub909 =
    sub908 >> sub1


{-| The NNat minus 910.


-}
sub910 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N910NatPlus n) Is (Difference a To (N910NatPlus nPlusA)))
sub910 =
    sub909 >> sub1


{-| The NNat minus 911.


-}
sub911 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N911NatPlus n) Is (Difference a To (N911NatPlus nPlusA)))
sub911 =
    sub910 >> sub1


{-| The NNat minus 912.


-}
sub912 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N912NatPlus n) Is (Difference a To (N912NatPlus nPlusA)))
sub912 =
    sub911 >> sub1


{-| The NNat minus 913.


-}
sub913 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N913NatPlus n) Is (Difference a To (N913NatPlus nPlusA)))
sub913 =
    sub912 >> sub1


{-| The NNat minus 914.


-}
sub914 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N914NatPlus n) Is (Difference a To (N914NatPlus nPlusA)))
sub914 =
    sub913 >> sub1


{-| The NNat minus 915.


-}
sub915 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N915NatPlus n) Is (Difference a To (N915NatPlus nPlusA)))
sub915 =
    sub914 >> sub1


{-| The NNat minus 916.


-}
sub916 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N916NatPlus n) Is (Difference a To (N916NatPlus nPlusA)))
sub916 =
    sub915 >> sub1


{-| The NNat minus 917.


-}
sub917 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N917NatPlus n) Is (Difference a To (N917NatPlus nPlusA)))
sub917 =
    sub916 >> sub1


{-| The NNat minus 918.


-}
sub918 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N918NatPlus n) Is (Difference a To (N918NatPlus nPlusA)))
sub918 =
    sub917 >> sub1


{-| The NNat minus 919.


-}
sub919 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N919NatPlus n) Is (Difference a To (N919NatPlus nPlusA)))
sub919 =
    sub918 >> sub1


{-| The NNat minus 920.


-}
sub920 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N920NatPlus n) Is (Difference a To (N920NatPlus nPlusA)))
sub920 =
    sub919 >> sub1


{-| The NNat minus 921.


-}
sub921 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N921NatPlus n) Is (Difference a To (N921NatPlus nPlusA)))
sub921 =
    sub920 >> sub1


{-| The NNat minus 922.


-}
sub922 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N922NatPlus n) Is (Difference a To (N922NatPlus nPlusA)))
sub922 =
    sub921 >> sub1


{-| The NNat minus 923.


-}
sub923 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N923NatPlus n) Is (Difference a To (N923NatPlus nPlusA)))
sub923 =
    sub922 >> sub1


{-| The NNat minus 924.


-}
sub924 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N924NatPlus n) Is (Difference a To (N924NatPlus nPlusA)))
sub924 =
    sub923 >> sub1


{-| The NNat minus 925.


-}
sub925 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N925NatPlus n) Is (Difference a To (N925NatPlus nPlusA)))
sub925 =
    sub924 >> sub1


{-| The NNat minus 926.


-}
sub926 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N926NatPlus n) Is (Difference a To (N926NatPlus nPlusA)))
sub926 =
    sub925 >> sub1


{-| The NNat minus 927.


-}
sub927 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N927NatPlus n) Is (Difference a To (N927NatPlus nPlusA)))
sub927 =
    sub926 >> sub1


{-| The NNat minus 928.


-}
sub928 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N928NatPlus n) Is (Difference a To (N928NatPlus nPlusA)))
sub928 =
    sub927 >> sub1


{-| The NNat minus 929.


-}
sub929 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N929NatPlus n) Is (Difference a To (N929NatPlus nPlusA)))
sub929 =
    sub928 >> sub1


{-| The NNat minus 930.


-}
sub930 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N930NatPlus n) Is (Difference a To (N930NatPlus nPlusA)))
sub930 =
    sub929 >> sub1


{-| The NNat minus 931.


-}
sub931 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N931NatPlus n) Is (Difference a To (N931NatPlus nPlusA)))
sub931 =
    sub930 >> sub1


{-| The NNat minus 932.


-}
sub932 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N932NatPlus n) Is (Difference a To (N932NatPlus nPlusA)))
sub932 =
    sub931 >> sub1


{-| The NNat minus 933.


-}
sub933 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N933NatPlus n) Is (Difference a To (N933NatPlus nPlusA)))
sub933 =
    sub932 >> sub1


{-| The NNat minus 934.


-}
sub934 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N934NatPlus n) Is (Difference a To (N934NatPlus nPlusA)))
sub934 =
    sub933 >> sub1


{-| The NNat minus 935.


-}
sub935 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N935NatPlus n) Is (Difference a To (N935NatPlus nPlusA)))
sub935 =
    sub934 >> sub1


{-| The NNat minus 936.


-}
sub936 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N936NatPlus n) Is (Difference a To (N936NatPlus nPlusA)))
sub936 =
    sub935 >> sub1


{-| The NNat minus 937.


-}
sub937 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N937NatPlus n) Is (Difference a To (N937NatPlus nPlusA)))
sub937 =
    sub936 >> sub1


{-| The NNat minus 938.


-}
sub938 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N938NatPlus n) Is (Difference a To (N938NatPlus nPlusA)))
sub938 =
    sub937 >> sub1


{-| The NNat minus 939.


-}
sub939 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N939NatPlus n) Is (Difference a To (N939NatPlus nPlusA)))
sub939 =
    sub938 >> sub1


{-| The NNat minus 940.


-}
sub940 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N940NatPlus n) Is (Difference a To (N940NatPlus nPlusA)))
sub940 =
    sub939 >> sub1


{-| The NNat minus 941.


-}
sub941 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N941NatPlus n) Is (Difference a To (N941NatPlus nPlusA)))
sub941 =
    sub940 >> sub1


{-| The NNat minus 942.


-}
sub942 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N942NatPlus n) Is (Difference a To (N942NatPlus nPlusA)))
sub942 =
    sub941 >> sub1


{-| The NNat minus 943.


-}
sub943 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N943NatPlus n) Is (Difference a To (N943NatPlus nPlusA)))
sub943 =
    sub942 >> sub1


{-| The NNat minus 944.


-}
sub944 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N944NatPlus n) Is (Difference a To (N944NatPlus nPlusA)))
sub944 =
    sub943 >> sub1


{-| The NNat minus 945.


-}
sub945 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N945NatPlus n) Is (Difference a To (N945NatPlus nPlusA)))
sub945 =
    sub944 >> sub1


{-| The NNat minus 946.


-}
sub946 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N946NatPlus n) Is (Difference a To (N946NatPlus nPlusA)))
sub946 =
    sub945 >> sub1


{-| The NNat minus 947.


-}
sub947 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N947NatPlus n) Is (Difference a To (N947NatPlus nPlusA)))
sub947 =
    sub946 >> sub1


{-| The NNat minus 948.


-}
sub948 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N948NatPlus n) Is (Difference a To (N948NatPlus nPlusA)))
sub948 =
    sub947 >> sub1


{-| The NNat minus 949.


-}
sub949 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N949NatPlus n) Is (Difference a To (N949NatPlus nPlusA)))
sub949 =
    sub948 >> sub1


{-| The NNat minus 950.


-}
sub950 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N950NatPlus n) Is (Difference a To (N950NatPlus nPlusA)))
sub950 =
    sub949 >> sub1


{-| The NNat minus 951.


-}
sub951 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N951NatPlus n) Is (Difference a To (N951NatPlus nPlusA)))
sub951 =
    sub950 >> sub1


{-| The NNat minus 952.


-}
sub952 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N952NatPlus n) Is (Difference a To (N952NatPlus nPlusA)))
sub952 =
    sub951 >> sub1


{-| The NNat minus 953.


-}
sub953 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N953NatPlus n) Is (Difference a To (N953NatPlus nPlusA)))
sub953 =
    sub952 >> sub1


{-| The NNat minus 954.


-}
sub954 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N954NatPlus n) Is (Difference a To (N954NatPlus nPlusA)))
sub954 =
    sub953 >> sub1


{-| The NNat minus 955.


-}
sub955 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N955NatPlus n) Is (Difference a To (N955NatPlus nPlusA)))
sub955 =
    sub954 >> sub1


{-| The NNat minus 956.


-}
sub956 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N956NatPlus n) Is (Difference a To (N956NatPlus nPlusA)))
sub956 =
    sub955 >> sub1


{-| The NNat minus 957.


-}
sub957 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N957NatPlus n) Is (Difference a To (N957NatPlus nPlusA)))
sub957 =
    sub956 >> sub1


{-| The NNat minus 958.


-}
sub958 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N958NatPlus n) Is (Difference a To (N958NatPlus nPlusA)))
sub958 =
    sub957 >> sub1


{-| The NNat minus 959.


-}
sub959 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N959NatPlus n) Is (Difference a To (N959NatPlus nPlusA)))
sub959 =
    sub958 >> sub1


{-| The NNat minus 960.


-}
sub960 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N960NatPlus n) Is (Difference a To (N960NatPlus nPlusA)))
sub960 =
    sub959 >> sub1


{-| The NNat minus 961.


-}
sub961 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N961NatPlus n) Is (Difference a To (N961NatPlus nPlusA)))
sub961 =
    sub960 >> sub1


{-| The NNat minus 962.


-}
sub962 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N962NatPlus n) Is (Difference a To (N962NatPlus nPlusA)))
sub962 =
    sub961 >> sub1


{-| The NNat minus 963.


-}
sub963 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N963NatPlus n) Is (Difference a To (N963NatPlus nPlusA)))
sub963 =
    sub962 >> sub1


{-| The NNat minus 964.


-}
sub964 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N964NatPlus n) Is (Difference a To (N964NatPlus nPlusA)))
sub964 =
    sub963 >> sub1


{-| The NNat minus 965.


-}
sub965 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N965NatPlus n) Is (Difference a To (N965NatPlus nPlusA)))
sub965 =
    sub964 >> sub1


{-| The NNat minus 966.


-}
sub966 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N966NatPlus n) Is (Difference a To (N966NatPlus nPlusA)))
sub966 =
    sub965 >> sub1


{-| The NNat minus 967.


-}
sub967 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N967NatPlus n) Is (Difference a To (N967NatPlus nPlusA)))
sub967 =
    sub966 >> sub1


{-| The NNat minus 968.


-}
sub968 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N968NatPlus n) Is (Difference a To (N968NatPlus nPlusA)))
sub968 =
    sub967 >> sub1


{-| The NNat minus 969.


-}
sub969 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N969NatPlus n) Is (Difference a To (N969NatPlus nPlusA)))
sub969 =
    sub968 >> sub1


{-| The NNat minus 970.


-}
sub970 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N970NatPlus n) Is (Difference a To (N970NatPlus nPlusA)))
sub970 =
    sub969 >> sub1


{-| The NNat minus 971.


-}
sub971 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N971NatPlus n) Is (Difference a To (N971NatPlus nPlusA)))
sub971 =
    sub970 >> sub1


{-| The NNat minus 972.


-}
sub972 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N972NatPlus n) Is (Difference a To (N972NatPlus nPlusA)))
sub972 =
    sub971 >> sub1


{-| The NNat minus 973.


-}
sub973 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N973NatPlus n) Is (Difference a To (N973NatPlus nPlusA)))
sub973 =
    sub972 >> sub1


{-| The NNat minus 974.


-}
sub974 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N974NatPlus n) Is (Difference a To (N974NatPlus nPlusA)))
sub974 =
    sub973 >> sub1


{-| The NNat minus 975.


-}
sub975 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N975NatPlus n) Is (Difference a To (N975NatPlus nPlusA)))
sub975 =
    sub974 >> sub1


{-| The NNat minus 976.


-}
sub976 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N976NatPlus n) Is (Difference a To (N976NatPlus nPlusA)))
sub976 =
    sub975 >> sub1


{-| The NNat minus 977.


-}
sub977 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N977NatPlus n) Is (Difference a To (N977NatPlus nPlusA)))
sub977 =
    sub976 >> sub1


{-| The NNat minus 978.


-}
sub978 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N978NatPlus n) Is (Difference a To (N978NatPlus nPlusA)))
sub978 =
    sub977 >> sub1


{-| The NNat minus 979.


-}
sub979 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N979NatPlus n) Is (Difference a To (N979NatPlus nPlusA)))
sub979 =
    sub978 >> sub1


{-| The NNat minus 980.


-}
sub980 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N980NatPlus n) Is (Difference a To (N980NatPlus nPlusA)))
sub980 =
    sub979 >> sub1


{-| The NNat minus 981.


-}
sub981 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N981NatPlus n) Is (Difference a To (N981NatPlus nPlusA)))
sub981 =
    sub980 >> sub1


{-| The NNat minus 982.


-}
sub982 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N982NatPlus n) Is (Difference a To (N982NatPlus nPlusA)))
sub982 =
    sub981 >> sub1


{-| The NNat minus 983.


-}
sub983 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N983NatPlus n) Is (Difference a To (N983NatPlus nPlusA)))
sub983 =
    sub982 >> sub1


{-| The NNat minus 984.


-}
sub984 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N984NatPlus n) Is (Difference a To (N984NatPlus nPlusA)))
sub984 =
    sub983 >> sub1


{-| The NNat minus 985.


-}
sub985 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N985NatPlus n) Is (Difference a To (N985NatPlus nPlusA)))
sub985 =
    sub984 >> sub1


{-| The NNat minus 986.


-}
sub986 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N986NatPlus n) Is (Difference a To (N986NatPlus nPlusA)))
sub986 =
    sub985 >> sub1


{-| The NNat minus 987.


-}
sub987 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N987NatPlus n) Is (Difference a To (N987NatPlus nPlusA)))
sub987 =
    sub986 >> sub1


{-| The NNat minus 988.


-}
sub988 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N988NatPlus n) Is (Difference a To (N988NatPlus nPlusA)))
sub988 =
    sub987 >> sub1


{-| The NNat minus 989.


-}
sub989 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N989NatPlus n) Is (Difference a To (N989NatPlus nPlusA)))
sub989 =
    sub988 >> sub1


{-| The NNat minus 990.


-}
sub990 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N990NatPlus n) Is (Difference a To (N990NatPlus nPlusA)))
sub990 =
    sub989 >> sub1


{-| The NNat minus 991.


-}
sub991 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N991NatPlus n) Is (Difference a To (N991NatPlus nPlusA)))
sub991 =
    sub990 >> sub1


{-| The NNat minus 992.


-}
sub992 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N992NatPlus n) Is (Difference a To (N992NatPlus nPlusA)))
sub992 =
    sub991 >> sub1


{-| The NNat minus 993.


-}
sub993 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N993NatPlus n) Is (Difference a To (N993NatPlus nPlusA)))
sub993 =
    sub992 >> sub1


{-| The NNat minus 994.


-}
sub994 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N994NatPlus n) Is (Difference a To (N994NatPlus nPlusA)))
sub994 =
    sub993 >> sub1


{-| The NNat minus 995.


-}
sub995 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N995NatPlus n) Is (Difference a To (N995NatPlus nPlusA)))
sub995 =
    sub994 >> sub1


{-| The NNat minus 996.


-}
sub996 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N996NatPlus n) Is (Difference a To (N996NatPlus nPlusA)))
sub996 =
    sub995 >> sub1


{-| The NNat minus 997.


-}
sub997 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N997NatPlus n) Is (Difference a To (N997NatPlus nPlusA)))
sub997 =
    sub996 >> sub1


{-| The NNat minus 998.


-}
sub998 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N998NatPlus n) Is (Difference a To (N998NatPlus nPlusA)))
sub998 =
    sub997 >> sub1


{-| The NNat minus 999.


-}
sub999 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N999NatPlus n) Is (Difference a To (N999NatPlus nPlusA)))
sub999 =
    sub998 >> sub1


{-| The NNat minus 1000.


-}
sub1000 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1000NatPlus n) Is (Difference a To (N1000NatPlus nPlusA)))
sub1000 =
    sub999 >> sub1


{-| The NNat minus 1001.


-}
sub1001 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1001NatPlus n) Is (Difference a To (N1001NatPlus nPlusA)))
sub1001 =
    sub1000 >> sub1


{-| The NNat minus 1002.


-}
sub1002 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1002NatPlus n) Is (Difference a To (N1002NatPlus nPlusA)))
sub1002 =
    sub1001 >> sub1


{-| The NNat minus 1003.


-}
sub1003 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1003NatPlus n) Is (Difference a To (N1003NatPlus nPlusA)))
sub1003 =
    sub1002 >> sub1


{-| The NNat minus 1004.


-}
sub1004 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1004NatPlus n) Is (Difference a To (N1004NatPlus nPlusA)))
sub1004 =
    sub1003 >> sub1


{-| The NNat minus 1005.


-}
sub1005 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1005NatPlus n) Is (Difference a To (N1005NatPlus nPlusA)))
sub1005 =
    sub1004 >> sub1


{-| The NNat minus 1006.


-}
sub1006 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1006NatPlus n) Is (Difference a To (N1006NatPlus nPlusA)))
sub1006 =
    sub1005 >> sub1


{-| The NNat minus 1007.


-}
sub1007 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1007NatPlus n) Is (Difference a To (N1007NatPlus nPlusA)))
sub1007 =
    sub1006 >> sub1


{-| The NNat minus 1008.


-}
sub1008 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1008NatPlus n) Is (Difference a To (N1008NatPlus nPlusA)))
sub1008 =
    sub1007 >> sub1


{-| The NNat minus 1009.


-}
sub1009 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1009NatPlus n) Is (Difference a To (N1009NatPlus nPlusA)))
sub1009 =
    sub1008 >> sub1


{-| The NNat minus 1010.


-}
sub1010 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1010NatPlus n) Is (Difference a To (N1010NatPlus nPlusA)))
sub1010 =
    sub1009 >> sub1


{-| The NNat minus 1011.


-}
sub1011 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1011NatPlus n) Is (Difference a To (N1011NatPlus nPlusA)))
sub1011 =
    sub1010 >> sub1


{-| The NNat minus 1012.


-}
sub1012 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1012NatPlus n) Is (Difference a To (N1012NatPlus nPlusA)))
sub1012 =
    sub1011 >> sub1


{-| The NNat minus 1013.


-}
sub1013 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1013NatPlus n) Is (Difference a To (N1013NatPlus nPlusA)))
sub1013 =
    sub1012 >> sub1


{-| The NNat minus 1014.


-}
sub1014 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1014NatPlus n) Is (Difference a To (N1014NatPlus nPlusA)))
sub1014 =
    sub1013 >> sub1


{-| The NNat minus 1015.


-}
sub1015 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1015NatPlus n) Is (Difference a To (N1015NatPlus nPlusA)))
sub1015 =
    sub1014 >> sub1


{-| The NNat minus 1016.


-}
sub1016 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1016NatPlus n) Is (Difference a To (N1016NatPlus nPlusA)))
sub1016 =
    sub1015 >> sub1


{-| The NNat minus 1017.


-}
sub1017 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1017NatPlus n) Is (Difference a To (N1017NatPlus nPlusA)))
sub1017 =
    sub1016 >> sub1


{-| The NNat minus 1018.


-}
sub1018 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1018NatPlus n) Is (Difference a To (N1018NatPlus nPlusA)))
sub1018 =
    sub1017 >> sub1


{-| The NNat minus 1019.


-}
sub1019 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1019NatPlus n) Is (Difference a To (N1019NatPlus nPlusA)))
sub1019 =
    sub1018 >> sub1


{-| The NNat minus 1020.


-}
sub1020 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1020NatPlus n) Is (Difference a To (N1020NatPlus nPlusA)))
sub1020 =
    sub1019 >> sub1


{-| The NNat minus 1021.


-}
sub1021 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1021NatPlus n) Is (Difference a To (N1021NatPlus nPlusA)))
sub1021 =
    sub1020 >> sub1


{-| The NNat minus 1022.


-}
sub1022 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1022NatPlus n) Is (Difference a To (N1022NatPlus nPlusA)))
sub1022 =
    sub1021 >> sub1


{-| The NNat minus 1023.


-}
sub1023 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1023NatPlus n) Is (Difference a To (N1023NatPlus nPlusA)))
sub1023 =
    sub1022 >> sub1


{-| The NNat minus 1024.


-}
sub1024 :
    NNat (N n Is (Difference a To nPlusA))
    -> NNat (N (N1024NatPlus n) Is (Difference a To (N1024NatPlus nPlusA)))
sub1024 =
    sub1023 >> sub1
