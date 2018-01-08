{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 2646.0, 79.0, 839.0, 913.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 937.0, 553.0, 64.0, 22.0 ],
					"presentation_rect" : [ 937.0, 553.0, 64.0, 22.0 ],
					"style" : "",
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 1084.0, 652.044922, 398.0, 219.0 ],
					"presentation_rect" : [ 1084.0, 652.044922, 398.0, 219.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 937.0, 601.0, 166.0, 22.0 ],
					"presentation_rect" : [ 937.0, 601.0, 166.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"node" : "",
						"npm" : "",
						"running" : 0,
						"watch" : 1
					}
,
					"style" : "",
					"text" : "node.script vr-git.js @watch 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 1745.0, 79.0, 985.0, 876.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 729.0, 41.0, 348.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 67.0, 234.0, 574.0, 22.0 ],
									"style" : "",
									"text" : "\"git format-patch master --stdout --histogram --numstat --binary\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 748.0, 145.0, 30.0, 30.0 ],
									"presentation_rect" : [ 748.0, 145.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 1395,
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 478.0, 470.0, 396.0, 262.0 ],
									"presentation_rect" : [ 478.0, 470.0, 396.0, 262.0 ],
									"style" : "",
									"text" : "\"From 2e2681bd9122e197fe1f5c027937c8129332fd89 Mon Sep 17 00:00:00 2001\nFrom: michaelpalumbo <emailmichaelpalumbo@gmail.com>\nDate: Thu, 7 Dec 2017 20:56:29 -0500\nSubject: [PATCH 001/210] updates to the node script for gathering diffs and\n sending to max. vr-git_log now opens in presentation mode. should probably\n add some code to launch the vr-git.js script in a terminal from within max\n (using luke hall's script\n\n\n75\t1\tdiff_tester_a.maxpat\n18\t18\tvr-git.js\n217\t2359\tvr-git_log.maxpat\n\ndiff --git a/diff_tester_a.maxpat b/diff_tester_a.maxpat\nindex ac79847..293cd2f 100644\n--- a/diff_tester_a.maxpat\n+++ b/diff_tester_a.maxpat\n@@ -37,6 +37,58 @@\n \t\t\\\"style\\\" : \\\"\\\",\n \t\t\\\"subpatcher_template\\\" : \\\"\\\",\n \t\t\\\"boxes\\\" : [ \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-7\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"live.gain~\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 5,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"signal\\\", \\\"signal\\\", \\\"\\\", \\\"float\\\", \\\"list\\\" ],\n+\t\t\t\t\t\\\"parameter_enable\\\" : 1,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 217.0, 448.0, 48.0, 136.0 ],\n+\t\t\t\t\t\\\"saved_attribute_attributes\\\" : \t\t\t\t\t{\n+\t\t\t\t\t\t\\\"valueof\\\" : \t\t\t\t\t\t{\n+\t\t\t\t\t\t\t\\\"parameter_longname\\\" : \\\"live.gain~[1]\\\",\n+\t\t\t\t\t\t\t\\\"parameter_shortname\\\" : \\\"live.gain~[1]\\\",\n+\t\t\t\t\t\t\t\\\"parameter_type\\\" : 0,\n+\t\t\t\t\t\t\t\\\"parameter_mmin\\\" : -70.0,\n+\t\t\t\t\t\t\t\\\"parameter_mmax\\\" : 6.0,\n+\t\t\t\t\t\t\t\\\"parameter_initial\\\" : [ 0.0 ],\n+\t\t\t\t\t\t\t\\\"parameter_unitstyle\\\" : 4\n+\t\t\t\t\t\t}\n+\n+\t\t\t\t\t}\n+,\n+\t\t\t\t\t\\\"varname\\\" : \\\"live.gain~[1]\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-6\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"signal\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 290.0, 299.0, 65.0, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"cycle~ 0.5\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-5\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"signal\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 217.0, 384.0, 29.5, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"*~\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n \t\t\t\t\t\\\"id\\\" : \\\"obj-4\\\",\n \t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n@@ -116,6 +168,13 @@\n \t\t\t\t\t\\\"source\\\" : [ \\\"obj-1\\\", 0 ]\n \t\t\t\t}\n \n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"destination\\\" : [ \\\"obj-5\\\", 0 ],\n+\t\t\t\t\t\\\"source\\\" : [ \\\"obj-2\\\", 0 ]\n+\t\t\t\t}\n+\n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n@@ -123,10 +182,25 @@\n \t\t\t\t\t\\\"source\\\" : [ \\\"obj-4\\\", 0 ]\n \t\t\t\t}\n \n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"destination\\\" : [ \\\"obj-7\\\", 0 ],\n+\t\t\t\t\t\\\"source\\\" : [ \\\"obj-5\\\", 0 ]\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"destination\\\" : [ \\\"obj-5\\\", 1 ],\n+\t\t\t\t\t\\\"source\\\" : [ \\\"obj-6\\\", 0 ]\n+\t\t\t\t}\n+\n \t\t\t}\n  ],\n \t\t\\\"parameters\\\" : \t\t{\n-\t\t\t\\\"obj-2\\\" : [ \\\"live.gain~\\\", \\\"live.gain~\\\", 0 ]\n+\t\t\t\\\"obj-2\\\" : [ \\\"live.gain~\\\", \\\"live.gain~\\\", 0 ],\n+\t\t\t\\\"obj-7\\\" : [ \\\"live.gain~[1]\\\", \\\"live.gain~[1]\\\", 0 ]\n \t\t}\n ,\n \t\t\\\"dependency_cache\\\" : [  ],\ndiff --git a/vr-git.js b/vr-git.js\nindex dad05bd..3c6fc2e 100644\n--- a/vr-git.js\n+++ b/vr-git.js\n@@ -31,27 +31,27 @@ connection.onopen = function () {\n   \t//}\n };\n \n-   \n-\n-//DON'T DELETE BELOW, ITS A WORK IN-PROGRESS\n-/*//attempting to control this script from max's websocket. \n-connection.onmessage = function (e) {\n-    console.log('message from server', e.data);\n-    \tchild = exec(\\\"git diff \\\" + diff1 + \\\" \\\" + diff2, function (error, stdout, stderr) {\n-\t\tgit_log = JSON.stringify(stdout);\n-\t\tconnection.send(git_log);\n-\n-};\n-*/\n-\n \n connection.onmessage = function (a) {\n-\tconsole.log('message from max', 'git diff ' + a.data);\n-\t child2 = exec(\\\"git diff \\\" + a.data + \\\" | diff-so-fancy\\\", function (error, stdout, stderr) {\n+\t//ideally from max you specify the command to this script.\n+\n+\tif (a.data.includes(\\\"git diff \\\")) {\n+\t\t//so if you request a diff with filenames/hashes, then:\n+\t\tchild2 = exec(a.data + \\\" | diff-so-fancy\\\", function (error, stdout, stderr) {\n \t \t//git_log2 = JSON.stringify(stdout);\n-\t \tconnection.send(\\\"@@@@@@@@@@\\\" + stdout + \\\"@@@@@@@@@@\\\");\n+\t \tconnection.send(stdout);\n+\t \tconsole.log(\\\"git diff requested for: \\\" + a.data.slice(9));\n+\t });\n+\n+\t }\n+\t //if you typed some other git commands, then:\n+\telse {\n+\t\tconsole.log('message from max', a.data);\n+\t\tchild2 = exec(a.data + \\\" | diff-so-fancy\\\", function (error, stdout, stderr) {\n+\t \t//git_log2 = JSON.stringify(stdout);\n+\t \tconnection.send(stdout);\n \t \tconsole.log(stdout);\n \t });\n-};\n \n-//connection.send('hello from client');\n\\\\ No newline at end of file\n+\t }\n+};\ndiff --git a/vr-git_log.maxpat b/vr-git_log.maxpat\nindex 5ef3129..d9b504b 100644\n--- a/vr-git_log.maxpat\n+++ b/vr-git_log.maxpat\n@@ -9,9 +9,9 @@\n \t\t\t\\\"modernui\\\" : 1\n \t\t}\n ,\n-\t\t\\\"rect\\\" : [ 34.0, 79.0, 1507.0, 933.0 ],\n+\t\t\\\"rect\\\" : [ 172.0, 275.0, 1135.0, 737.0 ],\n \t\t\\\"bglocked\\\" : 0,\n-\t\t\\\"openinpresentation\\\" : 0,\n+\t\t\\\"openinpresentation\\\" : 1,\n \t\t\\\"default_fontsize\\\" : 12.0,\n \t\t\\\"default_fontface\\\" : 0,\n \t\t\\\"default_fontname\\\" : \\\"Arial\\\",\n@@ -38,54 +38,173 @@\n \t\t\\\"subpatcher_template\\\" : \\\"\\\",\n \t\t\\\"boxes\\\" : [ \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-46\\\",\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-93\\\",\n+\t\t\t\t\t\\\"linecount\\\" : 3,\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 247.0, 32.0, 150.0, 47.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_linecount\\\" : 3,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 14.0, 150.0, 47.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"First run 'node vr-git.js' in a terminal within /vr-in-vr directory\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-88\\\",\n+\t\t\t\t\t\\\"linecount\\\" : 5,\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 129.0, 247.0, 150.0, 74.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 301.0, 773.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Response from node vr-git.js Note: need to figure out how to properly stringify prior to sending over websotet\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-85\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 184.0, 305.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 197.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Some tested requests\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-77\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 512.0, 383.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 63.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Current Commit Count\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-72\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 61.0, 60.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 114.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Select 2 commits\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-70\\\",\n \t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n \t\t\t\t\t\\\"numinlets\\\" : 1,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"bang\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 659.0, 250.0, 65.0, 22.0 ],\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 666.0, 123.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"closebang\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"prepend new request\\\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-44\\\",\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 2,\n-\t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 659.0, 278.0, 37.0, 22.0 ],\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-69\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 697.0, 93.0, 22.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 164.0, 93.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"clear\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"print @popup 1\\\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-42\\\",\n-\t\t\t\t\t\\\"linecount\\\" : 2,\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 2,\n-\t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 867.0, 449.0, 50.0, 35.0 ],\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-59\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 2,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 586.0, 48.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"0000{aaaa\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"cycle 2\\\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-36\\\",\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-56\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 626.0, 160.0, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"sprintf symout git diff %s %s\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-55\\\",\n \t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n \t\t\t\t\t\\\"numinlets\\\" : 2,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 370.0, 113.0, 22.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 1216.0, 244.0, 51.0, 22.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 267.0, 51.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"0000{aaaaa{bbbbb\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"\\\\\\\"git diff\\\\\\\"\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-53\\\",\n+\t\t\t\t\t\\\"linecount\\\" : 5,\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 1142.0, 192.0, 121.0, 76.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 243.0, 452.0, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"\\\\\\\"git diff-tree f60795d7cb41e59a5e32e0cca65975962da5837b diff_tester_a.maxpat\\\\\\\"\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"fontname\\\" : \\\"Arial\\\",\n+\t\t\t\t\t\\\"fontsize\\\" : 11.595187,\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-49\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 5,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 810.0, 471.0, 374.0, 21.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"regexp --------------------------------------------------------------------------------(.*)\\\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -98,22 +217,9 @@\n \t\t\t\t\t\\\"numinlets\\\" : 1,\n \t\t\t\t\t\\\"numoutlets\\\" : 5,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 408.0, 84.0, 21.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 408.0, 374.0, 21.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"regexp w[^{]*$\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-21\\\",\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 5,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 958.0, 511.0, 61.0, 22.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"regexp\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"regexp --------------------------------------------------------------------------------(.*)\\\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -124,9 +230,11 @@\n \t\t\t\t\t\\\"numinlets\\\" : 2,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 936.0, 320.0, 363.0, 22.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 1085.0, 139.0, 428.0, 22.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 219.0, 428.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"\\\\\\\"0f6fed29195fd0c4fdd9168165d7c20763949fd9 vr-git_log.maxpat\\\\\\\"\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"\\\\\\\"git diff f60795d7cb41e59a5e32e0cca65975962da5837b diff_tester_a.maxpat\\\\\\\"\\\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -137,2180 +245,11 @@\n \t\t\t\t\t\\\"numinlets\\\" : 1,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1085.0, 567.0, 73.0, 22.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 370.0, 73.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n \t\t\t\t\t\\\"text\\\" : \\\"fromsymbol\\\"\n \t\t\t\t}\n \n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-47\\\",\n-\t\t\t\t\t\\\"linecount\\\" : 2,\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 0,\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1295.5, 171.5, 101.0, 33.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"send a big dict (as JSON)\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-86\\\",\n-\t\t\t\t\t\\\"linecount\\\" : 2,\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 0,\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1176.0, 171.5, 107.0, 33.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"send a small dict (as JSON)\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-41\\\",\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"button\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"bang\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1295.5, 207.0, 24.0, 24.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"data\\\" : \t\t\t\t\t{\n-\t\t\t\t\t\t\\\"var0\\\" : 0,\n-\t\t\t\t\t\t\\\"var1\\\" : 1,\n-\t\t\t\t\t\t\\\"var2\\\" : 2,\n-\t\t\t\t\t\t\\\"var3\\\" : 3,\n-\t\t\t\t\t\t\\\"var4\\\" : 4,\n-\t\t\t\t\t\t\\\"var5\\\" : 5,\n-\t\t\t\t\t\t\\\"var6\\\" : 6,\n-\t\t\t\t\t\t\\\"var7\\\" : 7,\n-\t\t\t\t\t\t\\\"var8\\\" : 8,\n-\t\t\t\t\t\t\\\"var9\\\" : 9,\n-\t\t\t\t\t\t\\\"var10\\\" : 10,\n-\t\t\t\t\t\t\\\"var11\\\" : 11,\n-\t\t\t\t\t\t\\\"var12\\\" : 12,\n-\t\t\t\t\t\t\\\"var13\\\" : 13,\n-\t\t\t\t\t\t\\\"var14\\\" : 14,\n-\t\t\t\t\t\t\\\"var15\\\" : 15,\n-\t\t\t\t\t\t\\\"var16\\\" : 16,\n-\t\t\t\t\t\t\\\"var17\\\" : 17,\n-\t\t\t\t\t\t\\\"var18\\\" : 18,\n-\t\t\t\t\t\t\\\"var19\\\" : 19,\n-\t\t\t\t\t\t\\\"var20\\\" : 20,\n-\t\t\t\t\t\t\\\"var21\\\" : 21,\n-\t\t\t\t\t\t\\\"var22\\\" : 22,\n-\t\t\t\t\t\t\\\"var23\\\" : 23,\n-\t\t\t\t\t\t\\\"var24\\\" : 24,\n-\t\t\t\t\t\t\\\"var25\\\" : 25,\n-\t\t\t\t\t\t\\\"var26\\\" : 26,\n-\t\t\t\t\t\t\\\"var27\\\" : 27,\n-\t\t\t\t\t\t\\\"var28\\\" : 28,\n-\t\t\t\t\t\t\\\"var29\\\" : 29,\n-\t\t\t\t\t\t\\\"var30\\\" : 30,\n-\t\t\t\t\t\t\\\"var31\\\" : 31,\n-\t\t\t\t\t\t\\\"var32\\\" : 32,\n-\t\t\t\t\t\t\\\"var33\\\" : 33,\n-\t\t\t\t\t\t\\\"var34\\\" : 34,\n-\t\t\t\t\t\t\\\"var35\\\" : 35,\n-\t\t\t\t\t\t\\\"var36\\\" : 36,\n-\t\t\t\t\t\t\\\"var37\\\" : 37,\n-\t\t\t\t\t\t\\\"var38\\\" : 38,\n-\t\t\t\t\t\t\\\"var39\\\" : 39,\n-\t\t\t\t\t\t\\\"var40\\\" : 40,\n-\t\t\t\t\t\t\\\"var41\\\" : 41,\n-\t\t\t\t\t\t\\\"var42\\\" : 42,\n-\t\t\t\t\t\t\\\"var43\\\" : 43,\n-\t\t\t\t\t\t\\\"var44\\\" : 44,\n-\t\t\t\t\t\t\\\"var45\\\" : 45,\n-\t\t\t\t\t\t\\\"var46\\\" : 46,\n-\t\t\t\t\t\t\\\"var47\\\" : 47,\n-\t\t\t\t\t\t\\\"var48\\\" : 48,\n-\t\t\t\t\t\t\\\"var49\\\" : 49,\n-\t\t\t\t\t\t\\\"var50\\\" : 50,\n-\t\t\t\t\t\t\\\"var51\\\" : 51,\n-\t\t\t\t\t\t\\\"var52\\\" : 52,\n-\t\t\t\t\t\t\\\"var53\\\" : 53,\n-\t\t\t\t\t\t\\\"var54\\\" : 54,\n-\t\t\t\t\t\t\\\"var55\\\" : 55,\n-\t\t\t\t\t\t\\\"var56\\\" : 56,\n-\t\t\t\t\t\t\\\"var57\\\" : 57,\n-\t\t\t\t\t\t\\\"var58\\\" : 58,\n-\t\t\t\t\t\t\\\"var59\\\" : 59,\n-\t\t\t\t\t\t\\\"var60\\\" : 60,\n-\t\t\t\t\t\t\\\"var61\\\" : 61,\n-\t\t\t\t\t\t\\\"var62\\\" : 62,\n-\t\t\t\t\t\t\\\"var63\\\" : 63,\n-\t\t\t\t\t\t\\\"var64\\\" : 64,\n-\t\t\t\t\t\t\\\"var65\\\" : 65,\n-\t\t\t\t\t\t\\\"var66\\\" : 66,\n-\t\t\t\t\t\t\\\"var67\\\" : 67,\n-\t\t\t\t\t\t\\\"var68\\\" : 68,\n-\t\t\t\t\t\t\\\"var69\\\" : 69,\n-\t\t\t\t\t\t\\\"var70\\\" : 70,\n-\t\t\t\t\t\t\\\"var71\\\" : 71,\n-\t\t\t\t\t\t\\\"var72\\\" : 72,\n-\t\t\t\t\t\t\\\"var73\\\" : 73,\n-\t\t\t\t\t\t\\\"var74\\\" : 74,\n-\t\t\t\t\t\t\\\"var75\\\" : 75,\n-\t\t\t\t\t\t\\\"var76\\\" : 76,\n-\t\t\t\t\t\t\\\"var77\\\" : 77,\n-\t\t\t\t\t\t\\\"var78\\\" : 78,\n-\t\t\t\t\t\t\\\"var79\\\" : 79,\n-\t\t\t\t\t\t\\\"var80\\\" : 80,\n-\t\t\t\t\t\t\\\"var81\\\" : 81,\n-\t\t\t\t\t\t\\\"var82\\\" : 82,\n-\t\t\t\t\t\t\\\"var83\\\" : 83,\n-\t\t\t\t\t\t\\\"var84\\\" : 84,\n-\t\t\t\t\t\t\\\"var85\\\" : 85,\n-\t\t\t\t\t\t\\\"var86\\\" : 86,\n-\t\t\t\t\t\t\\\"var87\\\" : 87,\n-\t\t\t\t\t\t\\\"var88\\\" : 88,\n-\t\t\t\t\t\t\\\"var89\\\" : 89,\n-\t\t\t\t\t\t\\\"var90\\\" : 90,\n-\t\t\t\t\t\t\\\"var91\\\" : 91,\n-\t\t\t\t\t\t\\\"var92\\\" : 92,\n-\t\t\t\t\t\t\\\"var93\\\" : 93,\n-\t\t\t\t\t\t\\\"var94\\\" : 94,\n-\t\t\t\t\t\t\\\"var95\\\" : 95,\n-\t\t\t\t\t\t\\\"var96\\\" : 96,\n-\t\t\t\t\t\t\\\"var97\\\" : 97,\n-\t\t\t\t\t\t\\\"var98\\\" : 98,\n-\t\t\t\t\t\t\\\"var99\\\" : 99,\n-\t\t\t\t\t\t\\\"var100\\\" : 100,\n-\t\t\t\t\t\t\\\"var101\\\" : 101,\n-\t\t\t\t\t\t\\\"var102\\\" : 102,\n-\t\t\t\t\t\t\\\"var103\\\" : 103,\n-\t\t\t\t\t\t\\\"var104\\\" : 104,\n-\t\t\t\t\t\t\\\"var105\\\" : 105,\n-\t\t\t\t\t\t\\\"var106\\\" : 106,\n-\t\t\t\t\t\t\\\"var107\\\" : 107,\n-\t\t\t\t\t\t\\\"var108\\\" : 108,\n-\t\t\t\t\t\t\\\"var109\\\" : 109,\n-\t\t\t\t\t\t\\\"var110\\\" : 110,\n-\t\t\t\t\t\t\\\"var111\\\" : 111,\n-\t\t\t\t\t\t\\\"var112\\\" : 112,\n-\t\t\t\t\t\t\\\"var113\\\" : 113,\n-\t\t\t\t\t\t\\\"var114\\\" : 114,\n-\t\t\t\t\t\t\\\"var115\\\" : 115,\n-\t\t\t\t\t\t\\\"var116\\\" : 116,\n-\t\t\t\t\t\t\\\"var117\\\" : 117,\n-\t\t\t\t\t\t\\\"var118\\\" : 118,\n-\t\t\t\t\t\t\\\"var119\\\" : 119,\n-\t\t\t\t\t\t\\\"var120\\\" : 120,\n-\t\t\t\t\t\t\\\"var121\\\" : 121,\n-\t\t\t\t\t\t\\\"var122\\\" : 122,\n-\t\t\t\t\t\t\\\"var123\\\" : 123,\n-\t\t\t\t\t\t\\\"var124\\\" : 124,\n-\t\t\t\t\t\t\\\"var125\\\" : 125,\n-\t\t\t\t\t\t\\\"var126\\\" : 126,\n-\t\t\t\t\t\t\\\"var127\\\" : 127,\n-\t\t\t\t\t\t\\\"var128\\\" : 128,\n-\t\t\t\t\t\t\\\"var129\\\" : 129,\n-\t\t\t\t\t\t\\\"var130\\\" : 130,\n-\t\t\t\t\t\t\\\"var131\\\" : 131,\n-\t\t\t\t\t\t\\\"var132\\\" : 132,\n-\t\t\t\t\t\t\\\"var133\\\" : 133,\n-\t\t\t\t\t\t\\\"var134\\\" : 134,\n-\t\t\t\t\t\t\\\"var135\\\" : 135,\n-\t\t\t\t\t\t\\\"var136\\\" : 136,\n-\t\t\t\t\t\t\\\"var137\\\" : 137,\n-\t\t\t\t\t\t\\\"var138\\\" : 138,\n-\t\t\t\t\t\t\\\"var139\\\" : 139,\n-\t\t\t\t\t\t\\\"var140\\\" : 140,\n-\t\t\t\t\t\t\\\"var141\\\" : 141,\n-\t\t\t\t\t\t\\\"var142\\\" : 142,\n-\t\t\t\t\t\t\\\"var143\\\" : 143,\n-\t\t\t\t\t\t\\\"var144\\\" : 144,\n-\t\t\t\t\t\t\\\"var145\\\" : 145,\n-\t\t\t\t\t\t\\\"var146\\\" : 146,\n-\t\t\t\t\t\t\\\"var147\\\" : 147,\n-\t\t\t\t\t\t\\\"var148\\\" : 148,\n-\t\t\t\t\t\t\\\"var149\\\" : 149,\n-\t\t\t\t\t\t\\\"var150\\\" : 150,\n-\t\t\t\t\t\t\\\"var151\\\" : 151,\n-\t\t\t\t\t\t\\\"var152\\\" : 152,\n-\t\t\t\t\t\t\\\"var153\\\" : 153,\n-\t\t\t\t\t\t\\\"var154\\\" : 154,\n-\t\t\t\t\t\t\\\"var155\\\" : 155,\n-\t\t\t\t\t\t\\\"var156\\\" : 156,\n-\t\t\t\t\t\t\\\"var157\\\" : 157,\n-\t\t\t\t\t\t\\\"var158\\\" : 158,\n-\t\t\t\t\t\t\\\"var159\\\" : 159,\n-\t\t\t\t\t\t\\\"var160\\\" : 160,\n-\t\t\t\t\t\t\\\"var161\\\" : 161,\n-\t\t\t\t\t\t\\\"var162\\\" : 162,\n-\t\t\t\t\t\t\\\"var163\\\" : 163,\n-\t\t\t\t\t\t\\\"var164\\\" : 164,\n-\t\t\t\t\t\t\\\"var165\\\" : 165,\n-\t\t\t\t\t\t\\\"var166\\\" : 166,\n-\t\t\t\t\t\t\\\"var167\\\" : 167,\n-\t\t\t\t\t\t\\\"var168\\\" : 168,\n-\t\t\t\t\t\t\\\"var169\\\" : 169,\n-\t\t\t\t\t\t\\\"var170\\\" : 170,\n-\t\t\t\t\t\t\\\"var171\\\" : 171,\n-\t\t\t\t\t\t\\\"var172\\\" : 172,\n-\t\t\t\t\t\t\\\"var173\\\" : 173,\n-\t\t\t\t\t\t\\\"var174\\\" : 174,\n-\t\t\t\t\t\t\\\"var175\\\" : 175,\n-\t\t\t\t\t\t\\\"var176\\\" : 176,\n-\t\t\t\t\t\t\\\"var177\\\" : 177,\n-\t\t\t\t\t\t\\\"var178\\\" : 178,\n-\t\t\t\t\t\t\\\"var179\\\" : 179,\n-\t\t\t\t\t\t\\\"var180\\\" : 180,\n-\t\t\t\t\t\t\\\"var181\\\" : 181,\n-\t\t\t\t\t\t\\\"var182\\\" : 182,\n-\t\t\t\t\t\t\\\"var183\\\" : 183,\n-\t\t\t\t\t\t\\\"var184\\\" : 184,\n-\t\t\t\t\t\t\\\"var185\\\" : 185,\n-\t\t\t\t\t\t\\\"var186\\\" : 186,\n-\t\t\t\t\t\t\\\"var187\\\" : 187,\n-\t\t\t\t\t\t\\\"var188\\\" : 188,\n-\t\t\t\t\t\t\\\"var189\\\" : 189,\n-\t\t\t\t\t\t\\\"var190\\\" : 190,\n-\t\t\t\t\t\t\\\"var191\\\" : 191,\n-\t\t\t\t\t\t\\\"var192\\\" : 192,\n-\t\t\t\t\t\t\\\"var193\\\" : 193,\n-\t\t\t\t\t\t\\\"var194\\\" : 194,\n-\t\t\t\t\t\t\\\"var195\\\" : 195,\n-\t\t\t\t\t\t\\\"var196\\\" : 196,\n-\t\t\t\t\t\t\\\"var197\\\" : 197,\n-\t\t\t\t\t\t\\\"var198\\\" : 198,\n-\t\t\t\t\t\t\\\"var199\\\" : 199,\n-\t\t\t\t\t\t\\\"var200\\\" : 200,\n-\t\t\t\t\t\t\\\"var201\\\" : 201,\n-\t\t\t\t\t\t\\\"var202\\\" : 202,\n-\t\t\t\t\t\t\\\"var203\\\" : 203,\n-\t\t\t\t\t\t\\\"var204\\\" : 204,\n-\t\t\t\t\t\t\\\"var205\\\" : 205,\n-\t\t\t\t\t\t\\\"var206\\\" : 206,\n-\t\t\t\t\t\t\\\"var207\\\" : 207,\n-\t\t\t\t\t\t\\\"var208\\\" : 208,\n-\t\t\t\t\t\t\\\"var209\\\" : 209,\n-\t\t\t\t\t\t\\\"var210\\\" : 210,\n-\t\t\t\t\t\t\\\"var211\\\" : 211,\n-\t\t\t\t\t\t\\\"var212\\\" : 212,\n-\t\t\t\t\t\t\\\"var213\\\" : 213,\n-\t\t\t\t\t\t\\\"var214\\\" : 214,\n-\t\t\t\t\t\t\\\"var215\\\" : 215,\n-\t\t\t\t\t\t\\\"var216\\\" : 216,\n-\t\t\t\t\t\t\\\"var217\\\" : 217,\n-\t\t\t\t\t\t\\\"var218\\\" : 218,\n-\t\t\t\t\t\t\\\"var219\\\" : 219,\n-\t\t\t\t\t\t\\\"var220\\\" : 220,\n-\t\t\t\t\t\t\\\"var221\\\" : 221,\n-\t\t\t\t\t\t\\\"var222\\\" : 222,\n-\t\t\t\t\t\t\\\"var223\\\" : 223,\n-\t\t\t\t\t\t\\\"var224\\\" : 224,\n-\t\t\t\t\t\t\\\"var225\\\" : 225,\n-\t\t\t\t\t\t\\\"var226\\\" : 226,\n-\t\t\t\t\t\t\\\"var227\\\" : 227,\n-\t\t\t\t\t\t\\\"var228\\\" : 228,\n-\t\t\t\t\t\t\\\"var229\\\" : 229,\n-\t\t\t\t\t\t\\\"var230\\\" : 230,\n-\t\t\t\t\t\t\\\"var231\\\" : 231,\n-\t\t\t\t\t\t\\\"var232\\\" : 232,\n-\t\t\t\t\t\t\\\"var233\\\" : 233,\n-\t\t\t\t\t\t\\\"var234\\\" : 234,\n-\t\t\t\t\t\t\\\"var235\\\" : 235,\n-\t\t\t\t\t\t\\\"var236\\\" : 236,\n-\t\t\t\t\t\t\\\"var237\\\" : 237,\n-\t\t\t\t\t\t\\\"var238\\\" : 238,\n-\t\t\t\t\t\t\\\"var239\\\" : 239,\n-\t\t\t\t\t\t\\\"var240\\\" : 240,\n-\t\t\t\t\t\t\\\"var241\\\" : 241,\n-\t\t\t\t\t\t\\\"var242\\\" : 242,\n-\t\t\t\t\t\t\\\"var243\\\" : 243,\n-\t\t\t\t\t\t\\\"var244\\\" : 244,\n-\t\t\t\t\t\t\\\"var245\\\" : 245,\n-\t\t\t\t\t\t\\\"var246\\\" : 246,\n-\t\t\t\t\t\t\\\"var247\\\" : 247,\n-\t\t\t\t\t\t\\\"var248\\\" : 248,\n-\t\t\t\t\t\t\\\"var249\\\" : 249,\n-\t\t\t\t\t\t\\\"var250\\\" : 250,\n-\t\t\t\t\t\t\\\"var251\\\" : 251,\n-\t\t\t\t\t\t\\\"var252\\\" : 252,\n-\t\t\t\t\t\t\\\"var253\\\" : 253,\n-\t\t\t\t\t\t\\\"var254\\\" : 254,\n-\t\t\t\t\t\t\\\"var255\\\" : 255,\n-\t\t\t\t\t\t\\\"var256\\\" : 256,\n-\t\t\t\t\t\t\\\"var257\\\" : 257,\n-\t\t\t\t\t\t\\\"var258\\\" : 258,\n-\t\t\t\t\t\t\\\"var259\\\" : 259,\n-\t\t\t\t\t\t\\\"var260\\\" : 260,\n-\t\t\t\t\t\t\\\"var261\\\" : 261,\n-\t\t\t\t\t\t\\\"var262\\\" : 262,\n-\t\t\t\t\t\t\\\"var263\\\" : 263,\n-\t\t\t\t\t\t\\\"var264\\\" : 264,\n-\t\t\t\t\t\t\\\"var265\\\" : 265,\n-\t\t\t\t\t\t\\\"var266\\\" : 266,\n-\t\t\t\t\t\t\\\"var267\\\" : 267,\n-\t\t\t\t\t\t\\\"var268\\\" : 268,\n-\t\t\t\t\t\t\\\"var269\\\" : 269,\n-\t\t\t\t\t\t\\\"var270\\\" : 270,\n-\t\t\t\t\t\t\\\"var271\\\" : 271,\n-\t\t\t\t\t\t\\\"var272\\\" : 272,\n-\t\t\t\t\t\t\\\"var273\\\" : 273,\n-\t\t\t\t\t\t\\\"var274\\\" : 274,\n-\t\t\t\t\t\t\\\"var275\\\" : 275,\n-\t\t\t\t\t\t\\\"var276\\\" : 276,\n-\t\t\t\t\t\t\\\"var277\\\" : 277,\n-\t\t\t\t\t\t\\\"var278\\\" : 278,\n-\t\t\t\t\t\t\\\"var279\\\" : 279,\n-\t\t\t\t\t\t\\\"var280\\\" : 280,\n-\t\t\t\t\t\t\\\"var281\\\" : 281,\n-\t\t\t\t\t\t\\\"var282\\\" : 282,\n-\t\t\t\t\t\t\\\"var283\\\" : 283,\n-\t\t\t\t\t\t\\\"var284\\\" : 284,\n-\t\t\t\t\t\t\\\"var285\\\" : 285,\n-\t\t\t\t\t\t\\\"var286\\\" : 286,\n-\t\t\t\t\t\t\\\"var287\\\" : 287,\n-\t\t\t\t\t\t\\\"var288\\\" : 288,\n-\t\t\t\t\t\t\\\"var289\\\" : 289,\n-\t\t\t\t\t\t\\\"var290\\\" : 290,\n-\t\t\t\t\t\t\\\"var291\\\" : 291,\n-\t\t\t\t\t\t\\\"var292\\\" : 292,\n-\t\t\t\t\t\t\\\"var293\\\" : 293,\n-\t\t\t\t\t\t\\\"var294\\\" : 294,\n-\t\t\t\t\t\t\\\"var295\\\" : 295,\n-\t\t\t\t\t\t\\\"var296\\\" : 296,\n-\t\t\t\t\t\t\\\"var297\\\" : 297,\n-\t\t\t\t\t\t\\\"var298\\\" : 298,\n-\t\t\t\t\t\t\\\"var299\\\" : 299,\n-\t\t\t\t\t\t\\\"var300\\\" : 300,\n-\t\t\t\t\t\t\\\"var301\\\" : 301,\n-\t\t\t\t\t\t\\\"var302\\\" : 302,\n-\t\t\t\t\t\t\\\"var303\\\" : 303,\n-\t\t\t\t\t\t\\\"var304\\\" : 304,\n-\t\t\t\t\t\t\\\"var305\\\" : 305,\n-\t\t\t\t\t\t\\\"var306\\\" : 306,\n-\t\t\t\t\t\t\\\"var307\\\" : 307,\n-\t\t\t\t\t\t\\\"var308\\\" : 308,\n-\t\t\t\t\t\t\\\"var309\\\" : 309,\n-\t\t\t\t\t\t\\\"var310\\\" : 310,\n-\t\t\t\t\t\t\\\"var311\\\" : 311,\n-\t\t\t\t\t\t\\\"var312\\\" : 312,\n-\t\t\t\t\t\t\\\"var313\\\" : 313,\n-\t\t\t\t\t\t\\\"var314\\\" : 314,\n-\t\t\t\t\t\t\\\"var315\\\" : 315,\n-\t\t\t\t\t\t\\\"var316\\\" : 316,\n-\t\t\t\t\t\t\\\"var317\\\" : 317,\n-\t\t\t\t\t\t\\\"var318\\\" : 318,\n-\t\t\t\t\t\t\\\"var319\\\" : 319,\n-\t\t\t\t\t\t\\\"var320\\\" : 320,\n-\t\t\t\t\t\t\\\"var321\\\" : 321,\n-\t\t\t\t\t\t\\\"var322\\\" : 322,\n-\t\t\t\t\t\t\\\"var323\\\" : 323,\n-\t\t\t\t\t\t\\\"var324\\\" : 324,\n-\t\t\t\t\t\t\\\"var325\\\" : 325,\n-\t\t\t\t\t\t\\\"var326\\\" : 326,\n-\t\t\t\t\t\t\\\"var327\\\" : 327,\n-\t\t\t\t\t\t\\\"var328\\\" : 328,\n-\t\t\t\t\t\t\\\"var329\\\" : 329,\n-\t\t\t\t\t\t\\\"var330\\\" : 330,\n-\t\t\t\t\t\t\\\"var331\\\" : 331,\n-\t\t\t\t\t\t\\\"var332\\\" : 332,\n-\t\t\t\t\t\t\\\"var333\\\" : 333,\n-\t\t\t\t\t\t\\\"var334\\\" : 334,\n-\t\t\t\t\t\t\\\"var335\\\" : 335,\n-\t\t\t\t\t\t\\\"var336\\\" : 336,\n-\t\t\t\t\t\t\\\"var337\\\" : 337,\n-\t\t\t\t\t\t\\\"var338\\\" : 338,\n-\t\t\t\t\t\t\\\"var339\\\" : 339,\n-\t\t\t\t\t\t\\\"var340\\\" : 340,\n-\t\t\t\t\t\t\\\"var341\\\" : 341,\n-\t\t\t\t\t\t\\\"var342\\\" : 342,\n-\t\t\t\t\t\t\\\"var343\\\" : 343,\n-\t\t\t\t\t\t\\\"var344\\\" : 344,\n-\t\t\t\t\t\t\\\"var345\\\" : 345,\n-\t\t\t\t\t\t\\\"var346\\\" : 346,\n-\t\t\t\t\t\t\\\"var347\\\" : 347,\n-\t\t\t\t\t\t\\\"var348\\\" : 348,\n-\t\t\t\t\t\t\\\"var349\\\" : 349,\n-\t\t\t\t\t\t\\\"var350\\\" : 350,\n-\t\t\t\t\t\t\\\"var351\\\" : 351,\n-\t\t\t\t\t\t\\\"var352\\\" : 352,\n-\t\t\t\t\t\t\\\"var353\\\" : 353,\n-\t\t\t\t\t\t\\\"var354\\\" : 354,\n-\t\t\t\t\t\t\\\"var355\\\" : 355,\n-\t\t\t\t\t\t\\\"var356\\\" : 356,\n-\t\t\t\t\t\t\\\"var357\\\" : 357,\n-\t\t\t\t\t\t\\\"var358\\\" : 358,\n-\t\t\t\t\t\t\\\"var359\\\" : 359,\n-\t\t\t\t\t\t\\\"var360\\\" : 360,\n-\t\t\t\t\t\t\\\"var361\\\" : 361,\n-\t\t\t\t\t\t\\\"var362\\\" : 362,\n-\t\t\t\t\t\t\\\"var363\\\" : 363,\n-\t\t\t\t\t\t\\\"var364\\\" : 364,\n-\t\t\t\t\t\t\\\"var365\\\" : 365,\n-\t\t\t\t\t\t\\\"var366\\\" : 366,\n-\t\t\t\t\t\t\\\"var367\\\" : 367,\n-\t\t\t\t\t\t\\\"var368\\\" : 368,\n-\t\t\t\t\t\t\\\"var369\\\" : 369,\n-\t\t\t\t\t\t\\\"var370\\\" : 370,\n-\t\t\t\t\t\t\\\"var371\\\" : 371,\n-\t\t\t\t\t\t\\\"var372\\\" : 372,\n-\t\t\t\t\t\t\\\"var373\\\" : 373,\n-\t\t\t\t\t\t\\\"var374\\\" : 374,\n-\t\t\t\t\t\t\\\"var375\\\" : 375,\n-\t\t\t\t\t\t\\\"var376\\\" : 376,\n-\t\t\t\t\t\t\\\"var377\\\" : 377,\n-\t\t\t\t\t\t\\\"var378\\\" : 378,\n-\t\t\t\t\t\t\\\"var379\\\" : 379,\n-\t\t\t\t\t\t\\\"var380\\\" : 380,\n-\t\t\t\t\t\t\\\"var381\\\" : 381,\n-\t\t\t\t\t\t\\\"var382\\\" : 382,\n-\t\t\t\t\t\t\\\"var383\\\" : 383,\n-\t\t\t\t\t\t\\\"var384\\\" : 384,\n-\t\t\t\t\t\t\\\"var385\\\" : 385,\n-\t\t\t\t\t\t\\\"var386\\\" : 386,\n-\t\t\t\t\t\t\\\"var387\\\" : 387,\n-\t\t\t\t\t\t\\\"var388\\\" : 388,\n-\t\t\t\t\t\t\\\"var389\\\" : 389,\n-\t\t\t\t\t\t\\\"var390\\\" : 390,\n-\t\t\t\t\t\t\\\"var391\\\" : 391,\n-\t\t\t\t\t\t\\\"var392\\\" : 392,\n-\t\t\t\t\t\t\\\"var393\\\" : 393,\n-\t\t\t\t\t\t\\\"var394\\\" : 394,\n-\t\t\t\t\t\t\\\"var395\\\" : 395,\n-\t\t\t\t\t\t\\\"var396\\\" : 396,\n-\t\t\t\t\t\t\\\"var397\\\" : 397,\n-\t\t\t\t\t\t\\\"var398\\\" : 398,\n-\t\t\t\t\t\t\\\"var399\\\" : 399,\n-\t\t\t\t\t\t\\\"var400\\\" : 400,\n-\t\t\t\t\t\t\\\"var401\\\" : 401,\n-\t\t\t\t\t\t\\\"var402\\\" : 402,\n-\t\t\t\t\t\t\\\"var403\\\" : 403,\n-\t\t\t\t\t\t\\\"var404\\\" : 404,\n-\t\t\t\t\t\t\\\"var405\\\" : 405,\n-\t\t\t\t\t\t\\\"var406\\\" : 406,\n-\t\t\t\t\t\t\\\"var407\\\" : 407,\n-\t\t\t\t\t\t\\\"var408\\\" : 408,\n-\t\t\t\t\t\t\\\"var409\\\" : 409,\n-\t\t\t\t\t\t\\\"var410\\\" : 410,\n-\t\t\t\t\t\t\\\"var411\\\" : 411,\n-\t\t\t\t\t\t\\\"var412\\\" : 412,\n-\t\t\t\t\t\t\\\"var413\\\" : 413,\n-\t\t\t\t\t\t\\\"var414\\\" : 414,\n-\t\t\t\t\t\t\\\"var415\\\" : 415,\n-\t\t\t\t\t\t\\\"var416\\\" : 416,\n-\t\t\t\t\t\t\\\"var417\\\" : 417,\n-\t\t\t\t\t\t\\\"var418\\\" : 418,\n-\t\t\t\t\t\t\\\"var419\\\" : 419,\n-\t\t\t\t\t\t\\\"var420\\\" : 420,\n-\t\t\t\t\t\t\\\"var421\\\" : 421,\n-\t\t\t\t\t\t\\\"var422\\\" : 422,\n-\t\t\t\t\t\t\\\"var423\\\" : 423,\n-\t\t\t\t\t\t\\\"var424\\\" : 424,\n-\t\t\t\t\t\t\\\"var425\\\" : 425,\n-\t\t\t\t\t\t\\\"var426\\\" : 426,\n-\t\t\t\t\t\t\\\"var427\\\" : 427,\n-\t\t\t\t\t\t\\\"var428\\\" : 428,\n-\t\t\t\t\t\t\\\"var429\\\" : 429,\n-\t\t\t\t\t\t\\\"var430\\\" : 430,\n-\t\t\t\t\t\t\\\"var431\\\" : 431,\n-\t\t\t\t\t\t\\\"var432\\\" : 432,\n-\t\t\t\t\t\t\\\"var433\\\" : 433,\n-\t\t\t\t\t\t\\\"var434\\\" : 434,\n-\t\t\t\t\t\t\\\"var435\\\" : 435,\n-\t\t\t\t\t\t\\\"var436\\\" : 436,\n-\t\t\t\t\t\t\\\"var437\\\" : 437,\n-\t\t\t\t\t\t\\\"var438\\\" : 438,\n-\t\t\t\t\t\t\\\"var439\\\" : 439,\n-\t\t\t\t\t\t\\\"var440\\\" : 440,\n-\t\t\t\t\t\t\\\"var441\\\" : 441,\n-\t\t\t\t\t\t\\\"var442\\\" : 442,\n-\t\t\t\t\t\t\\\"var443\\\" : 443,\n-\t\t\t\t\t\t\\\"var444\\\" : 444,\n-\t\t\t\t\t\t\\\"var445\\\" : 445,\n-\t\t\t\t\t\t\\\"var446\\\" : 446,\n-\t\t\t\t\t\t\\\"var447\\\" : 447,\n-\t\t\t\t\t\t\\\"var448\\\" : 448,\n-\t\t\t\t\t\t\\\"var449\\\" : 449,\n-\t\t\t\t\t\t\\\"var450\\\" : 450,\n-\t\t\t\t\t\t\\\"var451\\\" : 451,\n-\t\t\t\t\t\t\\\"var452\\\" : 452,\n-\t\t\t\t\t\t\\\"var453\\\" : 453,\n-\t\t\t\t\t\t\\\"var454\\\" : 454,\n-\t\t\t\t\t\t\\\"var455\\\" : 455,\n-\t\t\t\t\t\t\\\"var456\\\" : 456,\n-\t\t\t\t\t\t\\\"var457\\\" : 457,\n-\t\t\t\t\t\t\\\"var458\\\" : 458,\n-\t\t\t\t\t\t\\\"var459\\\" : 459,\n-\t\t\t\t\t\t\\\"var460\\\" : 460,\n-\t\t\t\t\t\t\\\"var461\\\" : 461,\n-\t\t\t\t\t\t\\\"var462\\\" : 462,\n-\t\t\t\t\t\t\\\"var463\\\" : 463,\n-\t\t\t\t\t\t\\\"var464\\\" : 464,\n-\t\t\t\t\t\t\\\"var465\\\" : 465,\n-\t\t\t\t\t\t\\\"var466\\\" : 466,\n-\t\t\t\t\t\t\\\"var467\\\" : 467,\n-\t\t\t\t\t\t\\\"var468\\\" : 468,\n-\t\t\t\t\t\t\\\"var469\\\" : 469,\n-\t\t\t\t\t\t\\\"var470\\\" : 470,\n-\t\t\t\t\t\t\\\"var471\\\" : 471,\n-\t\t\t\t\t\t\\\"var472\\\" : 472,\n-\t\t\t\t\t\t\\\"var473\\\" : 473,\n-\t\t\t\t\t\t\\\"var474\\\" : 474,\n-\t\t\t\t\t\t\\\"var475\\\" : 475,\n-\t\t\t\t\t\t\\\"var476\\\" : 476,\n-\t\t\t\t\t\t\\\"var477\\\" : 477,\n-\t\t\t\t\t\t\\\"var478\\\" : 478,\n-\t\t\t\t\t\t\\\"var479\\\" : 479,\n-\t\t\t\t\t\t\\\"var480\\\" : 480,\n-\t\t\t\t\t\t\\\"var481\\\" : 481,\n-\t\t\t\t\t\t\\\"var482\\\" : 482,\n-\t\t\t\t\t\t\\\"var483\\\" : 483,\n-\t\t\t\t\t\t\\\"var484\\\" : 484,\n-\t\t\t\t\t\t\\\"var485\\\" : 485,\n-\t\t\t\t\t\t\\\"var486\\\" : 486,\n-\t\t\t\t\t\t\\\"var487\\\" : 487,\n-\t\t\t\t\t\t\\\"var488\\\" : 488,\n-\t\t\t\t\t\t\\\"var489\\\" : 489,\n-\t\t\t\t\t\t\\\"var490\\\" : 490,\n-\t\t\t\t\t\t\\\"var491\\\" : 491,\n-\t\t\t\t\t\t\\\"var492\\\" : 492,\n-\t\t\t\t\t\t\\\"var493\\\" : 493,\n-\t\t\t\t\t\t\\\"var494\\\" : 494,\n-\t\t\t\t\t\t\\\"var495\\\" : 495,\n-\t\t\t\t\t\t\\\"var496\\\" : 496,\n-\t\t\t\t\t\t\\\"var497\\\" : 497,\n-\t\t\t\t\t\t\\\"var498\\\" : 498,\n-\t\t\t\t\t\t\\\"var499\\\" : 499,\n-\t\t\t\t\t\t\\\"var500\\\" : 500,\n-\t\t\t\t\t\t\\\"var501\\\" : 501,\n-\t\t\t\t\t\t\\\"var502\\\" : 502,\n-\t\t\t\t\t\t\\\"var503\\\" : 503,\n-\t\t\t\t\t\t\\\"var504\\\" : 504,\n-\t\t\t\t\t\t\\\"var505\\\" : 505,\n-\t\t\t\t\t\t\\\"var506\\\" : 506,\n-\t\t\t\t\t\t\\\"var507\\\" : 507,\n-\t\t\t\t\t\t\\\"var508\\\" : 508,\n-\t\t\t\t\t\t\\\"var509\\\" : 509,\n-\t\t\t\t\t\t\\\"var510\\\" : 510,\n-\t\t\t\t\t\t\\\"var511\\\" : 511,\n-\t\t\t\t\t\t\\\"var512\\\" : 512,\n-\t\t\t\t\t\t\\\"var513\\\" : 513,\n-\t\t\t\t\t\t\\\"var514\\\" : 514,\n-\t\t\t\t\t\t\\\"var515\\\" : 515,\n-\t\t\t\t\t\t\\\"var516\\\" : 516,\n-\t\t\t\t\t\t\\\"var517\\\" : 517,\n-\t\t\t\t\t\t\\\"var518\\\" : 518,\n-\t\t\t\t\t\t\\\"var519\\\" : 519,\n-\t\t\t\t\t\t\\\"var520\\\" : 520,\n-\t\t\t\t\t\t\\\"var521\\\" : 521,\n-\t\t\t\t\t\t\\\"var522\\\" : 522,\n-\t\t\t\t\t\t\\\"var523\\\" : 523,\n-\t\t\t\t\t\t\\\"var524\\\" : 524,\n-\t\t\t\t\t\t\\\"var525\\\" : 525,\n-\t\t\t\t\t\t\\\"var526\\\" : 526,\n-\t\t\t\t\t\t\\\"var527\\\" : 527,\n-\t\t\t\t\t\t\\\"var528\\\" : 528,\n-\t\t\t\t\t\t\\\"var529\\\" : 529,\n-\t\t\t\t\t\t\\\"var530\\\" : 530,\n-\t\t\t\t\t\t\\\"var531\\\" : 531,\n-\t\t\t\t\t\t\\\"var532\\\" : 532,\n-\t\t\t\t\t\t\\\"var533\\\" : 533,\n-\t\t\t\t\t\t\\\"var534\\\" : 534,\n-\t\t\t\t\t\t\\\"var535\\\" : 535,\n-\t\t\t\t\t\t\\\"var536\\\" : 536,\n-\t\t\t\t\t\t\\\"var537\\\" : 537,\n-\t\t\t\t\t\t\\\"var538\\\" : 538,\n-\t\t\t\t\t\t\\\"var539\\\" : 539,\n-\t\t\t\t\t\t\\\"var540\\\" : 540,\n-\t\t\t\t\t\t\\\"var541\\\" : 541,\n-\t\t\t\t\t\t\\\"var542\\\" : 542,\n-\t\t\t\t\t\t\\\"var543\\\" : 543,\n-\t\t\t\t\t\t\\\"var544\\\" : 544,\n-\t\t\t\t\t\t\\\"var545\\\" : 545,\n-\t\t\t\t\t\t\\\"var546\\\" : 546,\n-\t\t\t\t\t\t\\\"var547\\\" : 547,\n-\t\t\t\t\t\t\\\"var548\\\" : 548,\n-\t\t\t\t\t\t\\\"var549\\\" : 549,\n-\t\t\t\t\t\t\\\"var550\\\" : 550,\n-\t\t\t\t\t\t\\\"var551\\\" : 551,\n-\t\t\t\t\t\t\\\"var552\\\" : 552,\n-\t\t\t\t\t\t\\\"var553\\\" : 553,\n-\t\t\t\t\t\t\\\"var554\\\" : 554,\n-\t\t\t\t\t\t\\\"var555\\\" : 555,\n-\t\t\t\t\t\t\\\"var556\\\" : 556,\n-\t\t\t\t\t\t\\\"var557\\\" : 557,\n-\t\t\t\t\t\t\\\"var558\\\" : 558,\n-\t\t\t\t\t\t\\\"var559\\\" : 559,\n-\t\t\t\t\t\t\\\"var560\\\" : 560,\n-\t\t\t\t\t\t\\\"var561\\\" : 561,\n-\t\t\t\t\t\t\\\"var562\\\" : 562,\n-\t\t\t\t\t\t\\\"var563\\\" : 563,\n-\t\t\t\t\t\t\\\"var564\\\" : 564,\n-\t\t\t\t\t\t\\\"var565\\\" : 565,\n-\t\t\t\t\t\t\\\"var566\\\" : 566,\n-\t\t\t\t\t\t\\\"var567\\\" : 567,\n-\t\t\t\t\t\t\\\"var568\\\" : 568,\n-\t\t\t\t\t\t\\\"var569\\\" : 569,\n-\t\t\t\t\t\t\\\"var570\\\" : 570,\n-\t\t\t\t\t\t\\\"var571\\\" : 571,\n-\t\t\t\t\t\t\\\"var572\\\" : 572,\n-\t\t\t\t\t\t\\\"var573\\\" : 573,\n-\t\t\t\t\t\t\\\"var574\\\" : 574,\n-\t\t\t\t\t\t\\\"var575\\\" : 575,\n-\t\t\t\t\t\t\\\"var576\\\" : 576,\n-\t\t\t\t\t\t\\\"var577\\\" : 577,\n-\t\t\t\t\t\t\\\"var578\\\" : 578,\n-\t\t\t\t\t\t\\\"var579\\\" : 579,\n-\t\t\t\t\t\t\\\"var580\\\" : 580,\n-\t\t\t\t\t\t\\\"var581\\\" : 581,\n-\t\t\t\t\t\t\\\"var582\\\" : 582,\n-\t\t\t\t\t\t\\\"var583\\\" : 583,\n-\t\t\t\t\t\t\\\"var584\\\" : 584,\n-\t\t\t\t\t\t\\\"var585\\\" : 585,\n-\t\t\t\t\t\t\\\"var586\\\" : 586,\n-\t\t\t\t\t\t\\\"var587\\\" : 587,\n-\t\t\t\t\t\t\\\"var588\\\" : 588,\n-\t\t\t\t\t\t\\\"var589\\\" : 589,\n-\t\t\t\t\t\t\\\"var590\\\" : 590,\n-\t\t\t\t\t\t\\\"var591\\\" : 591,\n-\t\t\t\t\t\t\\\"var592\\\" : 592,\n-\t\t\t\t\t\t\\\"var593\\\" : 593,\n-\t\t\t\t\t\t\\\"var594\\\" : 594,\n-\t\t\t\t\t\t\\\"var595\\\" : 595,\n-\t\t\t\t\t\t\\\"var596\\\" : 596,\n-\t\t\t\t\t\t\\\"var597\\\" : 597,\n-\t\t\t\t\t\t\\\"var598\\\" : 598,\n-\t\t\t\t\t\t\\\"var599\\\" : 599,\n-\t\t\t\t\t\t\\\"var600\\\" : 600,\n-\t\t\t\t\t\t\\\"var601\\\" : 601,\n-\t\t\t\t\t\t\\\"var602\\\" : 602,\n-\t\t\t\t\t\t\\\"var603\\\" : 603,\n-\t\t\t\t\t\t\\\"var604\\\" : 604,\n-\t\t\t\t\t\t\\\"var605\\\" : 605,\n-\t\t\t\t\t\t\\\"var606\\\" : 606,\n-\t\t\t\t\t\t\\\"var607\\\" : 607,\n-\t\t\t\t\t\t\\\"var608\\\" : 608,\n-\t\t\t\t\t\t\\\"var609\\\" : 609,\n-\t\t\t\t\t\t\\\"var610\\\" : 610,\n-\t\t\t\t\t\t\\\"var611\\\" : 611,\n-\t\t\t\t\t\t\\\"var612\\\" : 612,\n-\t\t\t\t\t\t\\\"var613\\\" : 613,\n-\t\t\t\t\t\t\\\"var614\\\" : 614,\n-\t\t\t\t\t\t\\\"var615\\\" : 615,\n-\t\t\t\t\t\t\\\"var616\\\" : 616,\n-\t\t\t\t\t\t\\\"var617\\\" : 617,\n-\t\t\t\t\t\t\\\"var618\\\" : 618,\n-\t\t\t\t\t\t\\\"var619\\\" : 619,\n-\t\t\t\t\t\t\\\"var620\\\" : 620,\n-\t\t\t\t\t\t\\\"var621\\\" : 621,\n-\t\t\t\t\t\t\\\"var622\\\" : 622,\n-\t\t\t\t\t\t\\\"var623\\\" : 623,\n-\t\t\t\t\t\t\\\"var624\\\" : 624,\n-\t\t\t\t\t\t\\\"var625\\\" : 625,\n-\t\t\t\t\t\t\\\"var626\\\" : 626,\n-\t\t\t\t\t\t\\\"var627\\\" : 627,\n-\t\t\t\t\t\t\\\"var628\\\" : 628,\n-\t\t\t\t\t\t\\\"var629\\\" : 629,\n-\t\t\t\t\t\t\\\"var630\\\" : 630,\n-\t\t\t\t\t\t\\\"var631\\\" : 631,\n-\t\t\t\t\t\t\\\"var632\\\" : 632,\n-\t\t\t\t\t\t\\\"var633\\\" : 633,\n-\t\t\t\t\t\t\\\"var634\\\" : 634,\n-\t\t\t\t\t\t\\\"var635\\\" : 635,\n-\t\t\t\t\t\t\\\"var636\\\" : 636,\n-\t\t\t\t\t\t\\\"var637\\\" : 637,\n-\t\t\t\t\t\t\\\"var638\\\" : 638,\n-\t\t\t\t\t\t\\\"var639\\\" : 639,\n-\t\t\t\t\t\t\\\"var640\\\" : 640,\n-\t\t\t\t\t\t\\\"var641\\\" : 641,\n-\t\t\t\t\t\t\\\"var642\\\" : 642,\n-\t\t\t\t\t\t\\\"var643\\\" : 643,\n-\t\t\t\t\t\t\\\"var644\\\" : 644,\n-\t\t\t\t\t\t\\\"var645\\\" : 645,\n-\t\t\t\t\t\t\\\"var646\\\" : 646,\n-\t\t\t\t\t\t\\\"var647\\\" : 647,\n-\t\t\t\t\t\t\\\"var648\\\" : 648,\n-\t\t\t\t\t\t\\\"var649\\\" : 649,\n-\t\t\t\t\t\t\\\"var650\\\" : 650,\n-\t\t\t\t\t\t\\\"var651\\\" : 651,\n-\t\t\t\t\t\t\\\"var652\\\" : 652,\n-\t\t\t\t\t\t\\\"var653\\\" : 653,\n-\t\t\t\t\t\t\\\"var654\\\" : 654,\n-\t\t\t\t\t\t\\\"var655\\\" : 655,\n-\t\t\t\t\t\t\\\"var656\\\" : 656,\n-\t\t\t\t\t\t\\\"var657\\\" : 657,\n-\t\t\t\t\t\t\\\"var658\\\" : 658,\n-\t\t\t\t\t\t\\\"var659\\\" : 659,\n-\t\t\t\t\t\t\\\"var660\\\" : 660,\n-\t\t\t\t\t\t\\\"var661\\\" : 661,\n-\t\t\t\t\t\t\\\"var662\\\" : 662,\n-\t\t\t\t\t\t\\\"var663\\\" : 663,\n-\t\t\t\t\t\t\\\"var664\\\" : 664,\n-\t\t\t\t\t\t\\\"var665\\\" : 665,\n-\t\t\t\t\t\t\\\"var666\\\" : 666,\n-\t\t\t\t\t\t\\\"var667\\\" : 667,\n-\t\t\t\t\t\t\\\"var668\\\" : 668,\n-\t\t\t\t\t\t\\\"var669\\\" : 669,\n-\t\t\t\t\t\t\\\"var670\\\" : 670,\n-\t\t\t\t\t\t\\\"var671\\\" : 671,\n-\t\t\t\t\t\t\\\"var672\\\" : 672,\n-\t\t\t\t\t\t\\\"var673\\\" : 673,\n-\t\t\t\t\t\t\\\"var674\\\" : 674,\n-\t\t\t\t\t\t\\\"var675\\\" : 675,\n-\t\t\t\t\t\t\\\"var676\\\" : 676,\n-\t\t\t\t\t\t\\\"var677\\\" : 677,\n-\t\t\t\t\t\t\\\"var678\\\" : 678,\n-\t\t\t\t\t\t\\\"var679\\\" : 679,\n-\t\t\t\t\t\t\\\"var680\\\" : 680,\n-\t\t\t\t\t\t\\\"var681\\\" : 681,\n-\t\t\t\t\t\t\\\"var682\\\" : 682,\n-\t\t\t\t\t\t\\\"var683\\\" : 683,\n-\t\t\t\t\t\t\\\"var684\\\" : 684,\n-\t\t\t\t\t\t\\\"var685\\\" : 685,\n-\t\t\t\t\t\t\\\"var686\\\" : 686,\n-\t\t\t\t\t\t\\\"var687\\\" : 687,\n-\t\t\t\t\t\t\\\"var688\\\" : 688,\n-\t\t\t\t\t\t\\\"var689\\\" : 689,\n-\t\t\t\t\t\t\\\"var690\\\" : 690,\n-\t\t\t\t\t\t\\\"var691\\\" : 691,\n-\t\t\t\t\t\t\\\"var692\\\" : 692,\n-\t\t\t\t\t\t\\\"var693\\\" : 693,\n-\t\t\t\t\t\t\\\"var694\\\" : 694,\n-\t\t\t\t\t\t\\\"var695\\\" : 695,\n-\t\t\t\t\t\t\\\"var696\\\" : 696,\n-\t\t\t\t\t\t\\\"var697\\\" : 697,\n-\t\t\t\t\t\t\\\"var698\\\" : 698,\n-\t\t\t\t\t\t\\\"var699\\\" : 699,\n-\t\t\t\t\t\t\\\"var700\\\" : 700,\n-\t\t\t\t\t\t\\\"var701\\\" : 701,\n-\t\t\t\t\t\t\\\"var702\\\" : 702,\n-\t\t\t\t\t\t\\\"var703\\\" : 703,\n-\t\t\t\t\t\t\\\"var704\\\" : 704,\n-\t\t\t\t\t\t\\\"var705\\\" : 705,\n-\t\t\t\t\t\t\\\"var706\\\" : 706,\n-\t\t\t\t\t\t\\\"var707\\\" : 707,\n-\t\t\t\t\t\t\\\"var708\\\" : 708,\n-\t\t\t\t\t\t\\\"var709\\\" : 709,\n-\t\t\t\t\t\t\\\"var710\\\" : 710,\n-\t\t\t\t\t\t\\\"var711\\\" : 711,\n-\t\t\t\t\t\t\\\"var712\\\" : 712,\n-\t\t\t\t\t\t\\\"var713\\\" : 713,\n-\t\t\t\t\t\t\\\"var714\\\" : 714,\n-\t\t\t\t\t\t\\\"var715\\\" : 715,\n-\t\t\t\t\t\t\\\"var716\\\" : 716,\n-\t\t\t\t\t\t\\\"var717\\\" : 717,\n-\t\t\t\t\t\t\\\"var718\\\" : 718,\n-\t\t\t\t\t\t\\\"var719\\\" : 719,\n-\t\t\t\t\t\t\\\"var720\\\" : 720,\n-\t\t\t\t\t\t\\\"var721\\\" : 721,\n-\t\t\t\t\t\t\\\"var722\\\" : 722,\n-\t\t\t\t\t\t\\\"var723\\\" : 723,\n-\t\t\t\t\t\t\\\"var724\\\" : 724,\n-\t\t\t\t\t\t\\\"var725\\\" : 725,\n-\t\t\t\t\t\t\\\"var726\\\" : 726,\n-\t\t\t\t\t\t\\\"var727\\\" : 727,\n-\t\t\t\t\t\t\\\"var728\\\" : 728,\n-\t\t\t\t\t\t\\\"var729\\\" : 729,\n-\t\t\t\t\t\t\\\"var730\\\" : 730,\n-\t\t\t\t\t\t\\\"var731\\\" : 731,\n-\t\t\t\t\t\t\\\"var732\\\" : 732,\n-\t\t\t\t\t\t\\\"var733\\\" : 733,\n-\t\t\t\t\t\t\\\"var734\\\" : 734,\n-\t\t\t\t\t\t\\\"var735\\\" : 735,\n-\t\t\t\t\t\t\\\"var736\\\" : 736,\n-\t\t\t\t\t\t\\\"var737\\\" : 737,\n-\t\t\t\t\t\t\\\"var738\\\" : 738,\n-\t\t\t\t\t\t\\\"var739\\\" : 739,\n-\t\t\t\t\t\t\\\"var740\\\" : 740,\n-\t\t\t\t\t\t\\\"var741\\\" : 741,\n-\t\t\t\t\t\t\\\"var742\\\" : 742,\n-\t\t\t\t\t\t\\\"var743\\\" : 743,\n-\t\t\t\t\t\t\\\"var744\\\" : 744,\n-\t\t\t\t\t\t\\\"var745\\\" : 745,\n-\t\t\t\t\t\t\\\"var746\\\" : 746,\n-\t\t\t\t\t\t\\\"var747\\\" : 747,\n-\t\t\t\t\t\t\\\"var748\\\" : 748,\n-\t\t\t\t\t\t\\\"var749\\\" : 749,\n-\t\t\t\t\t\t\\\"var750\\\" : 750,\n-\t\t\t\t\t\t\\\"var751\\\" : 751,\n-\t\t\t\t\t\t\\\"var752\\\" : 752,\n-\t\t\t\t\t\t\\\"var753\\\" : 753,\n-\t\t\t\t\t\t\\\"var754\\\" : 754,\n-\t\t\t\t\t\t\\\"var755\\\" : 755,\n-\t\t\t\t\t\t\\\"var756\\\" : 756,\n-\t\t\t\t\t\t\\\"var757\\\" : 757,\n-\t\t\t\t\t\t\\\"var758\\\" : 758,\n-\t\t\t\t\t\t\\\"var759\\\" : 759,\n-\t\t\t\t\t\t\\\"var760\\\" : 760,\n-\t\t\t\t\t\t\\\"var761\\\" : 761,\n-\t\t\t\t\t\t\\\"var762\\\" : 762,\n-\t\t\t\t\t\t\\\"var763\\\" : 763,\n-\t\t\t\t\t\t\\\"var764\\\" : 764,\n-\t\t\t\t\t\t\\\"var765\\\" : 765,\n-\t\t\t\t\t\t\\\"var766\\\" : 766,\n-\t\t\t\t\t\t\\\"var767\\\" : 767,\n-\t\t\t\t\t\t\\\"var768\\\" : 768,\n-\t\t\t\t\t\t\\\"var769\\\" : 769,\n-\t\t\t\t\t\t\\\"var770\\\" : 770,\n-\t\t\t\t\t\t\\\"var771\\\" : 771,\n-\t\t\t\t\t\t\\\"var772\\\" : 772,\n-\t\t\t\t\t\t\\\"var773\\\" : 773,\n-\t\t\t\t\t\t\\\"var774\\\" : 774,\n-\t\t\t\t\t\t\\\"var775\\\" : 775,\n-\t\t\t\t\t\t\\\"var776\\\" : 776,\n-\t\t\t\t\t\t\\\"var777\\\" : 777,\n-\t\t\t\t\t\t\\\"var778\\\" : 778,\n-\t\t\t\t\t\t\\\"var779\\\" : 779,\n-\t\t\t\t\t\t\\\"var780\\\" : 780,\n-\t\t\t\t\t\t\\\"var781\\\" : 781,\n-\t\t\t\t\t\t\\\"var782\\\" : 782,\n-\t\t\t\t\t\t\\\"var783\\\" : 783,\n-\t\t\t\t\t\t\\\"var784\\\" : 784,\n-\t\t\t\t\t\t\\\"var785\\\" : 785,\n-\t\t\t\t\t\t\\\"var786\\\" : 786,\n-\t\t\t\t\t\t\\\"var787\\\" : 787,\n-\t\t\t\t\t\t\\\"var788\\\" : 788,\n-\t\t\t\t\t\t\\\"var789\\\" : 789,\n-\t\t\t\t\t\t\\\"var790\\\" : 790,\n-\t\t\t\t\t\t\\\"var791\\\" : 791,\n-\t\t\t\t\t\t\\\"var792\\\" : 792,\n-\t\t\t\t\t\t\\\"var793\\\" : 793,\n-\t\t\t\t\t\t\\\"var794\\\" : 794,\n-\t\t\t\t\t\t\\\"var795\\\" : 795,\n-\t\t\t\t\t\t\\\"var796\\\" : 796,\n-\t\t\t\t\t\t\\\"var797\\\" : 797,\n-\t\t\t\t\t\t\\\"var798\\\" : 798,\n-\t\t\t\t\t\t\\\"var799\\\" : 799,\n-\t\t\t\t\t\t\\\"var800\\\" : 800,\n-\t\t\t\t\t\t\\\"var801\\\" : 801,\n-\t\t\t\t\t\t\\\"var802\\\" : 802,\n-\t\t\t\t\t\t\\\"var803\\\" : 803,\n-\t\t\t\t\t\t\\\"var804\\\" : 804,\n-\t\t\t\t\t\t\\\"var805\\\" : 805,\n-\t\t\t\t\t\t\\\"var806\\\" : 806,\n-\t\t\t\t\t\t\\\"var807\\\" : 807,\n-\t\t\t\t\t\t\\\"var808\\\" : 808,\n-\t\t\t\t\t\t\\\"var809\\\" : 809,\n-\t\t\t\t\t\t\\\"var810\\\" : 810,\n-\t\t\t\t\t\t\\\"var811\\\" : 811,\n-\t\t\t\t\t\t\\\"var812\\\" : 812,\n-\t\t\t\t\t\t\\\"var813\\\" : 813,\n-\t\t\t\t\t\t\\\"var814\\\" : 814,\n-\t\t\t\t\t\t\\\"var815\\\" : 815,\n-\t\t\t\t\t\t\\\"var816\\\" : 816,\n-\t\t\t\t\t\t\\\"var817\\\" : 817,\n-\t\t\t\t\t\t\\\"var818\\\" : 818,\n-\t\t\t\t\t\t\\\"var819\\\" : 819,\n-\t\t\t\t\t\t\\\"var820\\\" : 820,\n-\t\t\t\t\t\t\\\"var821\\\" : 821,\n-\t\t\t\t\t\t\\\"var822\\\" : 822,\n-\t\t\t\t\t\t\\\"var823\\\" : 823,\n-\t\t\t\t\t\t\\\"var824\\\" : 824,\n-\t\t\t\t\t\t\\\"var825\\\" : 825,\n-\t\t\t\t\t\t\\\"var826\\\" : 826,\n-\t\t\t\t\t\t\\\"var827\\\" : 827,\n-\t\t\t\t\t\t\\\"var828\\\" : 828,\n-\t\t\t\t\t\t\\\"var829\\\" : 829,\n-\t\t\t\t\t\t\\\"var830\\\" : 830,\n-\t\t\t\t\t\t\\\"var831\\\" : 831,\n-\t\t\t\t\t\t\\\"var832\\\" : 832,\n-\t\t\t\t\t\t\\\"var833\\\" : 833,\n-\t\t\t\t\t\t\\\"var834\\\" : 834,\n-\t\t\t\t\t\t\\\"var835\\\" : 835,\n-\t\t\t\t\t\t\\\"var836\\\" : 836,\n-\t\t\t\t\t\t\\\"var837\\\" : 837,\n-\t\t\t\t\t\t\\\"var838\\\" : 838,\n-\t\t\t\t\t\t\\\"var839\\\" : 839,\n-\t\t\t\t\t\t\\\"var840\\\" : 840,\n-\t\t\t\t\t\t\\\"var841\\\" : 841,\n-\t\t\t\t\t\t\\\"var842\\\" : 842,\n-\t\t\t\t\t\t\\\"var843\\\" : 843,\n-\t\t\t\t\t\t\\\"var844\\\" : 844,\n-\t\t\t\t\t\t\\\"var845\\\" : 845,\n-\t\t\t\t\t\t\\\"var846\\\" : 846,\n-\t\t\t\t\t\t\\\"var847\\\" : 847,\n-\t\t\t\t\t\t\\\"var848\\\" : 848,\n-\t\t\t\t\t\t\\\"var849\\\" : 849,\n-\t\t\t\t\t\t\\\"var850\\\" : 850,\n-\t\t\t\t\t\t\\\"var851\\\" : 851,\n-\t\t\t\t\t\t\\\"var852\\\" : 852,\n-\t\t\t\t\t\t\\\"var853\\\" : 853,\n-\t\t\t\t\t\t\\\"var854\\\" : 854,\n-\t\t\t\t\t\t\\\"var855\\\" : 855,\n-\t\t\t\t\t\t\\\"var856\\\" : 856,\n-\t\t\t\t\t\t\\\"var857\\\" : 857,\n-\t\t\t\t\t\t\\\"var858\\\" : 858,\n-\t\t\t\t\t\t\\\"var859\\\" : 859,\n-\t\t\t\t\t\t\\\"var860\\\" : 860,\n-\t\t\t\t\t\t\\\"var861\\\" : 861,\n-\t\t\t\t\t\t\\\"var862\\\" : 862,\n-\t\t\t\t\t\t\\\"var863\\\" : 863,\n-\t\t\t\t\t\t\\\"var864\\\" : 864,\n-\t\t\t\t\t\t\\\"var865\\\" : 865,\n-\t\t\t\t\t\t\\\"var866\\\" : 866,\n-\t\t\t\t\t\t\\\"var867\\\" : 867,\n-\t\t\t\t\t\t\\\"var868\\\" : 868,\n-\t\t\t\t\t\t\\\"var869\\\" : 869,\n-\t\t\t\t\t\t\\\"var870\\\" : 870,\n-\t\t\t\t\t\t\\\"var871\\\" : 871,\n-\t\t\t\t\t\t\\\"var872\\\" : 872,\n-\t\t\t\t\t\t\\\"var873\\\" : 873,\n-\t\t\t\t\t\t\\\"var874\\\" : 874,\n-\t\t\t\t\t\t\\\"var875\\\" : 875,\n-\t\t\t\t\t\t\\\"var876\\\" : 876,\n-\t\t\t\t\t\t\\\"var877\\\" : 877,\n-\t\t\t\t\t\t\\\"var878\\\" : 878,\n-\t\t\t\t\t\t\\\"var879\\\" : 879,\n-\t\t\t\t\t\t\\\"var880\\\" : 880,\n-\t\t\t\t\t\t\\\"var881\\\" : 881,\n-\t\t\t\t\t\t\\\"var882\\\" : 882,\n-\t\t\t\t\t\t\\\"var883\\\" : 883,\n-\t\t\t\t\t\t\\\"var884\\\" : 884,\n-\t\t\t\t\t\t\\\"var885\\\" : 885,\n-\t\t\t\t\t\t\\\"var886\\\" : 886,\n-\t\t\t\t\t\t\\\"var887\\\" : 887,\n-\t\t\t\t\t\t\\\"var888\\\" : 888,\n-\t\t\t\t\t\t\\\"var889\\\" : 889,\n-\t\t\t\t\t\t\\\"var890\\\" : 890,\n-\t\t\t\t\t\t\\\"var891\\\" : 891,\n-\t\t\t\t\t\t\\\"var892\\\" : 892,\n-\t\t\t\t\t\t\\\"var893\\\" : 893,\n-\t\t\t\t\t\t\\\"var894\\\" : 894,\n-\t\t\t\t\t\t\\\"var895\\\" : 895,\n-\t\t\t\t\t\t\\\"var896\\\" : 896,\n-\t\t\t\t\t\t\\\"var897\\\" : 897,\n-\t\t\t\t\t\t\\\"var898\\\" : 898,\n-\t\t\t\t\t\t\\\"var899\\\" : 899,\n-\t\t\t\t\t\t\\\"var900\\\" : 900,\n-\t\t\t\t\t\t\\\"var901\\\" : 901,\n-\t\t\t\t\t\t\\\"var902\\\" : 902,\n-\t\t\t\t\t\t\\\"var903\\\" : 903,\n-\t\t\t\t\t\t\\\"var904\\\" : 904,\n-\t\t\t\t\t\t\\\"var905\\\" : 905,\n-\t\t\t\t\t\t\\\"var906\\\" : 906,\n-\t\t\t\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 1391,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 492.0, 299.0, 399.0, 18655.0 ],
									"presentation_rect" : [ 492.0, 299.0, 399.0, 18655.0 ],
									"style" : "",
									"text" : "From 2e2681bd9122e197fe1f5c027937c8129332fd89 Mon Sep 17 00:00:00 2001\nFrom: michaelpalumbo <emailmichaelpalumbo@gmail.com>\nDate: Thu, 7 Dec 2017 20:56:29 -0500\nSubject: [PATCH 001/210] updates to the node script for gathering diffs and\n sending to max. vr-git_log now opens in presentation mode. should probably\n add some code to launch the vr-git.js script in a terminal from within max\n (using luke hall's script\n\n\n75\t1\tdiff_tester_a.maxpat\n18\t18\tvr-git.js\n217\t2359\tvr-git_log.maxpat\n\ndiff --git a/diff_tester_a.maxpat b/diff_tester_a.maxpat\nindex ac79847..293cd2f 100644\n--- a/diff_tester_a.maxpat\n+++ b/diff_tester_a.maxpat\n@@ -37,6 +37,58 @@\n \t\t\"style\" : \"\",\n \t\t\"subpatcher_template\" : \"\",\n \t\t\"boxes\" : [ \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-7\",\n+\t\t\t\t\t\"maxclass\" : \"live.gain~\",\n+\t\t\t\t\t\"numinlets\" : 2,\n+\t\t\t\t\t\"numoutlets\" : 5,\n+\t\t\t\t\t\"outlettype\" : [ \"signal\", \"signal\", \"\", \"float\", \"list\" ],\n+\t\t\t\t\t\"parameter_enable\" : 1,\n+\t\t\t\t\t\"patching_rect\" : [ 217.0, 448.0, 48.0, 136.0 ],\n+\t\t\t\t\t\"saved_attribute_attributes\" : \t\t\t\t\t{\n+\t\t\t\t\t\t\"valueof\" : \t\t\t\t\t\t{\n+\t\t\t\t\t\t\t\"parameter_longname\" : \"live.gain~[1]\",\n+\t\t\t\t\t\t\t\"parameter_shortname\" : \"live.gain~[1]\",\n+\t\t\t\t\t\t\t\"parameter_type\" : 0,\n+\t\t\t\t\t\t\t\"parameter_mmin\" : -70.0,\n+\t\t\t\t\t\t\t\"parameter_mmax\" : 6.0,\n+\t\t\t\t\t\t\t\"parameter_initial\" : [ 0.0 ],\n+\t\t\t\t\t\t\t\"parameter_unitstyle\" : 4\n+\t\t\t\t\t\t}\n+\n+\t\t\t\t\t}\n+,\n+\t\t\t\t\t\"varname\" : \"live.gain~[1]\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-6\",\n+\t\t\t\t\t\"maxclass\" : \"newobj\",\n+\t\t\t\t\t\"numinlets\" : 2,\n+\t\t\t\t\t\"numoutlets\" : 1,\n+\t\t\t\t\t\"outlettype\" : [ \"signal\" ],\n+\t\t\t\t\t\"patching_rect\" : [ 290.0, 299.0, 65.0, 22.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"cycle~ 0.5\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-5\",\n+\t\t\t\t\t\"maxclass\" : \"newobj\",\n+\t\t\t\t\t\"numinlets\" : 2,\n+\t\t\t\t\t\"numoutlets\" : 1,\n+\t\t\t\t\t\"outlettype\" : [ \"signal\" ],\n+\t\t\t\t\t\"patching_rect\" : [ 217.0, 384.0, 29.5, 22.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"*~\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n \t\t\t\t\"box\" : \t\t\t\t{\n \t\t\t\t\t\"id\" : \"obj-4\",\n \t\t\t\t\t\"maxclass\" : \"newobj\",\n@@ -116,6 +168,13 @@\n \t\t\t\t\t\"source\" : [ \"obj-1\", 0 ]\n \t\t\t\t}\n \n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"patchline\" : \t\t\t\t{\n+\t\t\t\t\t\"destination\" : [ \"obj-5\", 0 ],\n+\t\t\t\t\t\"source\" : [ \"obj-2\", 0 ]\n+\t\t\t\t}\n+\n \t\t\t}\n , \t\t\t{\n \t\t\t\t\"patchline\" : \t\t\t\t{\n@@ -123,10 +182,25 @@\n \t\t\t\t\t\"source\" : [ \"obj-4\", 0 ]\n \t\t\t\t}\n \n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"patchline\" : \t\t\t\t{\n+\t\t\t\t\t\"destination\" : [ \"obj-7\", 0 ],\n+\t\t\t\t\t\"source\" : [ \"obj-5\", 0 ]\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"patchline\" : \t\t\t\t{\n+\t\t\t\t\t\"destination\" : [ \"obj-5\", 1 ],\n+\t\t\t\t\t\"source\" : [ \"obj-6\", 0 ]\n+\t\t\t\t}\n+\n \t\t\t}\n  ],\n \t\t\"parameters\" : \t\t{\n-\t\t\t\"obj-2\" : [ \"live.gain~\", \"live.gain~\", 0 ]\n+\t\t\t\"obj-2\" : [ \"live.gain~\", \"live.gain~\", 0 ],\n+\t\t\t\"obj-7\" : [ \"live.gain~[1]\", \"live.gain~[1]\", 0 ]\n \t\t}\n ,\n \t\t\"dependency_cache\" : [  ],\ndiff --git a/vr-git.js b/vr-git.js\nindex dad05bd..3c6fc2e 100644\n--- a/vr-git.js\n+++ b/vr-git.js\n@@ -31,27 +31,27 @@ connection.onopen = function () {\n   \t//}\n };\n \n-   \n-\n-//DON'T DELETE BELOW, ITS A WORK IN-PROGRESS\n-/*//attempting to control this script from max's websocket. \n-connection.onmessage = function (e) {\n-    console.log('message from server', e.data);\n-    \tchild = exec(\"git diff \" + diff1 + \" \" + diff2, function (error, stdout, stderr) {\n-\t\tgit_log = JSON.stringify(stdout);\n-\t\tconnection.send(git_log);\n-\n-};\n-*/\n-\n \n connection.onmessage = function (a) {\n-\tconsole.log('message from max', 'git diff ' + a.data);\n-\t child2 = exec(\"git diff \" + a.data + \" | diff-so-fancy\", function (error, stdout, stderr) {\n+\t//ideally from max you specify the command to this script.\n+\n+\tif (a.data.includes(\"git diff \")) {\n+\t\t//so if you request a diff with filenames/hashes, then:\n+\t\tchild2 = exec(a.data + \" | diff-so-fancy\", function (error, stdout, stderr) {\n \t \t//git_log2 = JSON.stringify(stdout);\n-\t \tconnection.send(\"@@@@@@@@@@\" + stdout + \"@@@@@@@@@@\");\n+\t \tconnection.send(stdout);\n+\t \tconsole.log(\"git diff requested for: \" + a.data.slice(9));\n+\t });\n+\n+\t }\n+\t //if you typed some other git commands, then:\n+\telse {\n+\t\tconsole.log('message from max', a.data);\n+\t\tchild2 = exec(a.data + \" | diff-so-fancy\", function (error, stdout, stderr) {\n+\t \t//git_log2 = JSON.stringify(stdout);\n+\t \tconnection.send(stdout);\n \t \tconsole.log(stdout);\n \t });\n-};\n \n-//connection.send('hello from client');\n\\ No newline at end of file\n+\t }\n+};\ndiff --git a/vr-git_log.maxpat b/vr-git_log.maxpat\nindex 5ef3129..d9b504b 100644\n--- a/vr-git_log.maxpat\n+++ b/vr-git_log.maxpat\n@@ -9,9 +9,9 @@\n \t\t\t\"modernui\" : 1\n \t\t}\n ,\n-\t\t\"rect\" : [ 34.0, 79.0, 1507.0, 933.0 ],\n+\t\t\"rect\" : [ 172.0, 275.0, 1135.0, 737.0 ],\n \t\t\"bglocked\" : 0,\n-\t\t\"openinpresentation\" : 0,\n+\t\t\"openinpresentation\" : 1,\n \t\t\"default_fontsize\" : 12.0,\n \t\t\"default_fontface\" : 0,\n \t\t\"default_fontname\" : \"Arial\",\n@@ -38,54 +38,173 @@\n \t\t\"subpatcher_template\" : \"\",\n \t\t\"boxes\" : [ \t\t\t{\n \t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-46\",\n+\t\t\t\t\t\"id\" : \"obj-93\",\n+\t\t\t\t\t\"linecount\" : 3,\n+\t\t\t\t\t\"maxclass\" : \"comment\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 0,\n+\t\t\t\t\t\"patching_rect\" : [ 247.0, 32.0, 150.0, 47.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_linecount\" : 3,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 14.0, 150.0, 47.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"First run 'node vr-git.js' in a terminal within /vr-in-vr directory\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-88\",\n+\t\t\t\t\t\"linecount\" : 5,\n+\t\t\t\t\t\"maxclass\" : \"comment\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 0,\n+\t\t\t\t\t\"patching_rect\" : [ 129.0, 247.0, 150.0, 74.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 301.0, 773.0, 20.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"Response from node vr-git.js Note: need to figure out how to properly stringify prior to sending over websotet\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-85\",\n+\t\t\t\t\t\"maxclass\" : \"comment\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 0,\n+\t\t\t\t\t\"patching_rect\" : [ 184.0, 305.0, 150.0, 20.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 197.0, 150.0, 20.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"Some tested requests\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-77\",\n+\t\t\t\t\t\"maxclass\" : \"comment\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 0,\n+\t\t\t\t\t\"patching_rect\" : [ 512.0, 383.0, 150.0, 20.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 63.0, 150.0, 20.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"Current Commit Count\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-72\",\n+\t\t\t\t\t\"maxclass\" : \"comment\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 0,\n+\t\t\t\t\t\"patching_rect\" : [ 61.0, 60.0, 150.0, 20.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 114.0, 150.0, 20.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"Select 2 commits\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-70\",\n \t\t\t\t\t\"maxclass\" : \"newobj\",\n \t\t\t\t\t\"numinlets\" : 1,\n \t\t\t\t\t\"numoutlets\" : 1,\n-\t\t\t\t\t\"outlettype\" : [ \"bang\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 659.0, 250.0, 65.0, 22.0 ],\n+\t\t\t\t\t\"outlettype\" : [ \"\" ],\n+\t\t\t\t\t\"patching_rect\" : [ 309.0, 666.0, 123.0, 22.0 ],\n \t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"closebang\"\n+\t\t\t\t\t\"text\" : \"prepend new request\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-44\",\n-\t\t\t\t\t\"maxclass\" : \"message\",\n-\t\t\t\t\t\"numinlets\" : 2,\n-\t\t\t\t\t\"numoutlets\" : 1,\n-\t\t\t\t\t\"outlettype\" : [ \"\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 659.0, 278.0, 37.0, 22.0 ],\n+\t\t\t\t\t\"id\" : \"obj-69\",\n+\t\t\t\t\t\"maxclass\" : \"newobj\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 0,\n+\t\t\t\t\t\"patching_rect\" : [ 309.0, 697.0, 93.0, 22.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 164.0, 93.0, 22.0 ],\n \t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"clear\"\n+\t\t\t\t\t\"text\" : \"print @popup 1\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-42\",\n-\t\t\t\t\t\"linecount\" : 2,\n-\t\t\t\t\t\"maxclass\" : \"message\",\n-\t\t\t\t\t\"numinlets\" : 2,\n-\t\t\t\t\t\"numoutlets\" : 1,\n-\t\t\t\t\t\"outlettype\" : [ \"\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 867.0, 449.0, 50.0, 35.0 ],\n+\t\t\t\t\t\"id\" : \"obj-59\",\n+\t\t\t\t\t\"maxclass\" : \"newobj\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 2,\n+\t\t\t\t\t\"outlettype\" : [ \"\", \"\" ],\n+\t\t\t\t\t\"patching_rect\" : [ 309.0, 586.0, 48.0, 22.0 ],\n \t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"0000{aaaa\"\n+\t\t\t\t\t\"text\" : \"cycle 2\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-36\",\n+\t\t\t\t\t\"id\" : \"obj-56\",\n+\t\t\t\t\t\"maxclass\" : \"newobj\",\n+\t\t\t\t\t\"numinlets\" : 2,\n+\t\t\t\t\t\"numoutlets\" : 1,\n+\t\t\t\t\t\"outlettype\" : [ \"\" ],\n+\t\t\t\t\t\"patching_rect\" : [ 309.0, 626.0, 160.0, 22.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"sprintf symout git diff %s %s\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-55\",\n \t\t\t\t\t\"maxclass\" : \"message\",\n \t\t\t\t\t\"numinlets\" : 2,\n \t\t\t\t\t\"numoutlets\" : 1,\n \t\t\t\t\t\"outlettype\" : [ \"\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 843.0, 370.0, 113.0, 22.0 ],\n+\t\t\t\t\t\"patching_rect\" : [ 1216.0, 244.0, 51.0, 22.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 267.0, 51.0, 22.0 ],\n \t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"0000{aaaaa{bbbbb\"\n+\t\t\t\t\t\"text\" : \"\\\"git diff\\\"\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"id\" : \"obj-53\",\n+\t\t\t\t\t\"linecount\" : 5,\n+\t\t\t\t\t\"maxclass\" : \"message\",\n+\t\t\t\t\t\"numinlets\" : 2,\n+\t\t\t\t\t\"numoutlets\" : 1,\n+\t\t\t\t\t\"outlettype\" : [ \"\" ],\n+\t\t\t\t\t\"patching_rect\" : [ 1142.0, 192.0, 121.0, 76.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 243.0, 452.0, 22.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"\\\"git diff-tree f60795d7cb41e59a5e32e0cca65975962da5837b diff_tester_a.maxpat\\\"\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\"box\" : \t\t\t\t{\n+\t\t\t\t\t\"fontname\" : \"Arial\",\n+\t\t\t\t\t\"fontsize\" : 11.595187,\n+\t\t\t\t\t\"id\" : \"obj-49\",\n+\t\t\t\t\t\"maxclass\" : \"newobj\",\n+\t\t\t\t\t\"numinlets\" : 1,\n+\t\t\t\t\t\"numoutlets\" : 5,\n+\t\t\t\t\t\"outlettype\" : [ \"\", \"\", \"\", \"\", \"\" ],\n+\t\t\t\t\t\"patching_rect\" : [ 810.0, 471.0, 374.0, 21.0 ],\n+\t\t\t\t\t\"style\" : \"\",\n+\t\t\t\t\t\"text\" : \"regexp --------------------------------------------------------------------------------(.*)\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -98,22 +217,9 @@\n \t\t\t\t\t\"numinlets\" : 1,\n \t\t\t\t\t\"numoutlets\" : 5,\n \t\t\t\t\t\"outlettype\" : [ \"\", \"\", \"\", \"\", \"\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 843.0, 408.0, 84.0, 21.0 ],\n+\t\t\t\t\t\"patching_rect\" : [ 843.0, 408.0, 374.0, 21.0 ],\n \t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"regexp w[^{]*$\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-21\",\n-\t\t\t\t\t\"maxclass\" : \"newobj\",\n-\t\t\t\t\t\"numinlets\" : 1,\n-\t\t\t\t\t\"numoutlets\" : 5,\n-\t\t\t\t\t\"outlettype\" : [ \"\", \"\", \"\", \"\", \"\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 958.0, 511.0, 61.0, 22.0 ],\n-\t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"regexp\"\n+\t\t\t\t\t\"text\" : \"regexp --------------------------------------------------------------------------------(.*)\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -124,9 +230,11 @@\n \t\t\t\t\t\"numinlets\" : 2,\n \t\t\t\t\t\"numoutlets\" : 1,\n \t\t\t\t\t\"outlettype\" : [ \"\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 936.0, 320.0, 363.0, 22.0 ],\n+\t\t\t\t\t\"patching_rect\" : [ 1085.0, 139.0, 428.0, 22.0 ],\n+\t\t\t\t\t\"presentation\" : 1,\n+\t\t\t\t\t\"presentation_rect\" : [ 52.0, 219.0, 428.0, 22.0 ],\n \t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"\\\"0f6fed29195fd0c4fdd9168165d7c20763949fd9 vr-git_log.maxpat\\\"\"\n+\t\t\t\t\t\"text\" : \"\\\"git diff f60795d7cb41e59a5e32e0cca65975962da5837b diff_tester_a.maxpat\\\"\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -137,2180 +245,11 @@\n \t\t\t\t\t\"numinlets\" : 1,\n \t\t\t\t\t\"numoutlets\" : 1,\n \t\t\t\t\t\"outlettype\" : [ \"\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 1085.0, 567.0, 73.0, 22.0 ],\n+\t\t\t\t\t\"patching_rect\" : [ 843.0, 370.0, 73.0, 22.0 ],\n \t\t\t\t\t\"style\" : \"\",\n \t\t\t\t\t\"text\" : \"fromsymbol\"\n \t\t\t\t}\n \n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-47\",\n-\t\t\t\t\t\"linecount\" : 2,\n-\t\t\t\t\t\"maxclass\" : \"comment\",\n-\t\t\t\t\t\"numinlets\" : 1,\n-\t\t\t\t\t\"numoutlets\" : 0,\n-\t\t\t\t\t\"patching_rect\" : [ 1295.5, 171.5, 101.0, 33.0 ],\n-\t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"send a big dict (as JSON)\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-86\",\n-\t\t\t\t\t\"linecount\" : 2,\n-\t\t\t\t\t\"maxclass\" : \"comment\",\n-\t\t\t\t\t\"numinlets\" : 1,\n-\t\t\t\t\t\"numoutlets\" : 0,\n-\t\t\t\t\t\"patching_rect\" : [ 1176.0, 171.5, 107.0, 33.0 ],\n-\t\t\t\t\t\"style\" : \"\",\n-\t\t\t\t\t\"text\" : \"send a small dict (as JSON)\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"id\" : \"obj-41\",\n-\t\t\t\t\t\"maxclass\" : \"button\",\n-\t\t\t\t\t\"numinlets\" : 1,\n-\t\t\t\t\t\"numoutlets\" : 1,\n-\t\t\t\t\t\"outlettype\" : [ \"bang\" ],\n-\t\t\t\t\t\"patching_rect\" : [ 1295.5, 207.0, 24.0, 24.0 ],\n-\t\t\t\t\t\"style\" : \"\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\"box\" : \t\t\t\t{\n-\t\t\t\t\t\"data\" : \t\t\t\t\t{\n-\t\t\t\t\t\t\"var0\" : 0,\n-\t\t\t\t\t\t\"var1\" : 1,\n-\t\t\t\t\t\t\"var2\" : 2,\n-\t\t\t\t\t\t\"var3\" : 3,\n-\t\t\t\t\t\t\"var4\" : 4,\n-\t\t\t\t\t\t\"var5\" : 5,\n-\t\t\t\t\t\t\"var6\" : 6,\n-\t\t\t\t\t\t\"var7\" : 7,\n-\t\t\t\t\t\t\"var8\" : 8,\n-\t\t\t\t\t\t\"var9\" : 9,\n-\t\t\t\t\t\t\"var10\" : 10,\n-\t\t\t\t\t\t\"var11\" : 11,\n-\t\t\t\t\t\t\"var12\" : 12,\n-\t\t\t\t\t\t\"var13\" : 13,\n-\t\t\t\t\t\t\"var14\" : 14,\n-\t\t\t\t\t\t\"var15\" : 15,\n-\t\t\t\t\t\t\"var16\" : 16,\n-\t\t\t\t\t\t\"var17\" : 17,\n-\t\t\t\t\t\t\"var18\" : 18,\n-\t\t\t\t\t\t\"var19\" : 19,\n-\t\t\t\t\t\t\"var20\" : 20,\n-\t\t\t\t\t\t\"var21\" : 21,\n-\t\t\t\t\t\t\"var22\" : 22,\n-\t\t\t\t\t\t\"var23\" : 23,\n-\t\t\t\t\t\t\"var24\" : 24,\n-\t\t\t\t\t\t\"var25\" : 25,\n-\t\t\t\t\t\t\"var26\" : 26,\n-\t\t\t\t\t\t\"var27\" : 27,\n-\t\t\t\t\t\t\"var28\" : 28,\n-\t\t\t\t\t\t\"var29\" : 29,\n-\t\t\t\t\t\t\"var30\" : 30,\n-\t\t\t\t\t\t\"var31\" : 31,\n-\t\t\t\t\t\t\"var32\" : 32,\n-\t\t\t\t\t\t\"var33\" : 33,\n-\t\t\t\t\t\t\"var34\" : 34,\n-\t\t\t\t\t\t\"var35\" : 35,\n-\t\t\t\t\t\t\"var36\" : 36,\n-\t\t\t\t\t\t\"var37\" : 37,\n-\t\t\t\t\t\t\"var38\" : 38,\n-\t\t\t\t\t\t\"var39\" : 39,\n-\t\t\t\t\t\t\"var40\" : 40,\n-\t\t\t\t\t\t\"var41\" : 41,\n-\t\t\t\t\t\t\"var42\" : 42,\n-\t\t\t\t\t\t\"var43\" : 43,\n-\t\t\t\t\t\t\"var44\" : 44,\n-\t\t\t\t\t\t\"var45\" : 45,\n-\t\t\t\t\t\t\"var46\" : 46,\n-\t\t\t\t\t\t\"var47\" : 47,\n-\t\t\t\t\t\t\"var48\" : 48,\n-\t\t\t\t\t\t\"var49\" : 49,\n-\t\t\t\t\t\t\"var50\" : 50,\n-\t\t\t\t\t\t\"var51\" : 51,\n-\t\t\t\t\t\t\"var52\" : 52,\n-\t\t\t\t\t\t\"var53\" : 53,\n-\t\t\t\t\t\t\"var54\" : 54,\n-\t\t\t\t\t\t\"var55\" : 55,\n-\t\t\t\t\t\t\"var56\" : 56,\n-\t\t\t\t\t\t\"var57\" : 57,\n-\t\t\t\t\t\t\"var58\" : 58,\n-\t\t\t\t\t\t\"var59\" : 59,\n-\t\t\t\t\t\t\"var60\" : 60,\n-\t\t\t\t\t\t\"var61\" : 61,\n-\t\t\t\t\t\t\"var62\" : 62,\n-\t\t\t\t\t\t\"var63\" : 63,\n-\t\t\t\t\t\t\"var64\" : 64,\n-\t\t\t\t\t\t\"var65\" : 65,\n-\t\t\t\t\t\t\"var66\" : 66,\n-\t\t\t\t\t\t\"var67\" : 67,\n-\t\t\t\t\t\t\"var68\" : 68,\n-\t\t\t\t\t\t\"var69\" : 69,\n-\t\t\t\t\t\t\"var70\" : 70,\n-\t\t\t\t\t\t\"var71\" : 71,\n-\t\t\t\t\t\t\"var72\" : 72,\n-\t\t\t\t\t\t\"var73\" : 73,\n-\t\t\t\t\t\t\"var74\" : 74,\n-\t\t\t\t\t\t\"var75\" : 75,\n-\t\t\t\t\t\t\"var76\" : 76,\n-\t\t\t\t\t\t\"var77\" : 77,\n-\t\t\t\t\t\t\"var78\" : 78,\n-\t\t\t\t\t\t\"var79\" : 79,\n-\t\t\t\t\t\t\"var80\" : 80,\n-\t\t\t\t\t\t\"var81\" : 81,\n-\t\t\t\t\t\t\"var82\" : 82,\n-\t\t\t\t\t\t\"var83\" : 83,\n-\t\t\t\t\t\t\"var84\" : 84,\n-\t\t\t\t\t\t\"var85\" : 85,\n-\t\t\t\t\t\t\"var86\" : 86,\n-\t\t\t\t\t\t\"var87\" : 87,\n-\t\t\t\t\t\t\"var88\" : 88,\n-\t\t\t\t\t\t\"var89\" : 89,\n-\t\t\t\t\t\t\"var90\" : 90,\n-\t\t\t\t\t\t\"var91\" : 91,\n-\t\t\t\t\t\t\"var92\" : 92,\n-\t\t\t\t\t\t\"var93\" : 93,\n-\t\t\t\t\t\t\"var94\" : 94,\n-\t\t\t\t\t\t\"var95\" : 95,\n-\t\t\t\t\t\t\"var96\" : 96,\n-\t\t\t\t\t\t\"var97\" : 97,\n-\t\t\t\t\t\t\"var98\" : 98,\n-\t\t\t\t\t\t\"var99\" : 99,\n-\t\t\t\t\t\t\"var100\" : 100,\n-\t\t\t\t\t\t\"var101\" : 101,\n-\t\t\t\t\t\t\"var102\" : 102,\n-\t\t\t\t\t\t\"var103\" : 103,\n-\t\t\t\t\t\t\"var104\" : 104,\n-\t\t\t\t\t\t\"var105\" : 105,\n-\t\t\t\t\t\t\"var106\" : 106,\n-\t\t\t\t\t\t\"var107\" : 107,\n-\t\t\t\t\t\t\"var108\" : 108,\n-\t\t\t\t\t\t\"var109\" : 109,\n-\t\t\t\t\t\t\"var110\" : 110,\n-\t\t\t\t\t\t\"var111\" : 111,\n-\t\t\t\t\t\t\"var112\" : 112,\n-\t\t\t\t\t\t\"var113\" : 113,\n-\t\t\t\t\t\t\"var114\" : 114,\n-\t\t\t\t\t\t\"var115\" : 115,\n-\t\t\t\t\t\t\"var116\" : 116,\n-\t\t\t\t\t\t\"var117\" : 117,\n-\t\t\t\t\t\t\"var118\" : 118,\n-\t\t\t\t\t\t\"var119\" : 119,\n-\t\t\t\t\t\t\"var120\" : 120,\n-\t\t\t\t\t\t\"var121\" : 121,\n-\t\t\t\t\t\t\"var122\" : 122,\n-\t\t\t\t\t\t\"var123\" : 123,\n-\t\t\t\t\t\t\"var124\" : 124,\n-\t\t\t\t\t\t\"var125\" : 125,\n-\t\t\t\t\t\t\"var126\" : 126,\n-\t\t\t\t\t\t\"var127\" : 127,\n-\t\t\t\t\t\t\"var128\" : 128,\n-\t\t\t\t\t\t\"var129\" : 129,\n-\t\t\t\t\t\t\"var130\" : 130,\n-\t\t\t\t\t\t\"var131\" : 131,\n-\t\t\t\t\t\t\"var132\" : 132,\n-\t\t\t\t\t\t\"var133\" : 133,\n-\t\t\t\t\t\t\"var134\" : 134,\n-\t\t\t\t\t\t\"var135\" : 135,\n-\t\t\t\t\t\t\"var136\" : 136,\n-\t\t\t\t\t\t\"var137\" : 137,\n-\t\t\t\t\t\t\"var138\" : 138,\n-\t\t\t\t\t\t\"var139\" : 139,\n-\t\t\t\t\t\t\"var140\" : 140,\n-\t\t\t\t\t\t\"var141\" : 141,\n-\t\t\t\t\t\t\"var142\" : 142,\n-\t\t\t\t\t\t\"var143\" : 143,\n-\t\t\t\t\t\t\"var144\" : 144,\n-\t\t\t\t\t\t\"var145\" : 145,\n-\t\t\t\t\t\t\"var146\" : 146,\n-\t\t\t\t\t\t\"var147\" : 147,\n-\t\t\t\t\t\t\"var148\" : 148,\n-\t\t\t\t\t\t\"var149\" : 149,\n-\t\t\t\t\t\t\"var150\" : 150,\n-\t\t\t\t\t\t\"var151\" : 151,\n-\t\t\t\t\t\t\"var152\" : 152,\n-\t\t\t\t\t\t\"var153\" : 153,\n-\t\t\t\t\t\t\"var154\" : 154,\n-\t\t\t\t\t\t\"var155\" : 155,\n-\t\t\t\t\t\t\"var156\" : 156,\n-\t\t\t\t\t\t\"var157\" : 157,\n-\t\t\t\t\t\t\"var158\" : 158,\n-\t\t\t\t\t\t\"var159\" : 159,\n-\t\t\t\t\t\t\"var160\" : 160,\n-\t\t\t\t\t\t\"var161\" : 161,\n-\t\t\t\t\t\t\"var162\" : 162,\n-\t\t\t\t\t\t\"var163\" : 163,\n-\t\t\t\t\t\t\"var164\" : 164,\n-\t\t\t\t\t\t\"var165\" : 165,\n-\t\t\t\t\t\t\"var166\" : 166,\n-\t\t\t\t\t\t\"var167\" : 167,\n-\t\t\t\t\t\t\"var168\" : 168,\n-\t\t\t\t\t\t\"var169\" : 169,\n-\t\t\t\t\t\t\"var170\" : 170,\n-\t\t\t\t\t\t\"var171\" : 171,\n-\t\t\t\t\t\t\"var172\" : 172,\n-\t\t\t\t\t\t\"var173\" : 173,\n-\t\t\t\t\t\t\"var174\" : 174,\n-\t\t\t\t\t\t\"var175\" : 175,\n-\t\t\t\t\t\t\"var176\" : 176,\n-\t\t\t\t\t\t\"var177\" : 177,\n-\t\t\t\t\t\t\"var178\" : 178,\n-\t\t\t\t\t\t\"var179\" : 179,\n-\t\t\t\t\t\t\"var180\" : 180,\n-\t\t\t\t\t\t\"var181\" : 181,\n-\t\t\t\t\t\t\"var182\" : 182,\n-\t\t\t\t\t\t\"var183\" : 183,\n-\t\t\t\t\t\t\"var184\" : 184,\n-\t\t\t\t\t\t\"var185\" : 185,\n-\t\t\t\t\t\t\"var186\" : 186,\n-\t\t\t\t\t\t\"var187\" : 187,\n-\t\t\t\t\t\t\"var188\" : 188,\n-\t\t\t\t\t\t\"var189\" : 189,\n-\t\t\t\t\t\t\"var190\" : 190,\n-\t\t\t\t\t\t\"var191\" : 191,\n-\t\t\t\t\t\t\"var192\" : 192,\n-\t\t\t\t\t\t\"var193\" : 193,\n-\t\t\t\t\t\t\"var194\" : 194,\n-\t\t\t\t\t\t\"var195\" : 195,\n-\t\t\t\t\t\t\"var196\" : 196,\n-\t\t\t\t\t\t\"var197\" : 197,\n-\t\t\t\t\t\t\"var198\" : 198,\n-\t\t\t\t\t\t\"var199\" : 199,\n-\t\t\t\t\t\t\"var200\" : 200,\n-\t\t\t\t\t\t\"var201\" : 201,\n-\t\t\t\t\t\t\"var202\" : 202,\n-\t\t\t\t\t\t\"var203\" : 203,\n-\t\t\t\t\t\t\"var204\" : 204,\n-\t\t\t\t\t\t\"var205\" : 205,\n-\t\t\t\t\t\t\"var206\" : 206,\n-\t\t\t\t\t\t\"var207\" : 207,\n-\t\t\t\t\t\t\"var208\" : 208,\n-\t\t\t\t\t\t\"var209\" : 209,\n-\t\t\t\t\t\t\"var210\" : 210,\n-\t\t\t\t\t\t\"var211\" : 211,\n-\t\t\t\t\t\t\"var212\" : 212,\n-\t\t\t\t\t\t\"var213\" : 213,\n-\t\t\t\t\t\t\"var214\" : 214,\n-\t\t\t\t\t\t\"var215\" : 215,\n-\t\t\t\t\t\t\"var216\" : 216,\n-\t\t\t\t\t\t\"var217\" : 217,\n-\t\t\t\t\t\t\"var218\" : 218,\n-\t\t\t\t\t\t\"var219\" : 219,\n-\t\t\t\t\t\t\"var220\" : 220,\n-\t\t\t\t\t\t\"var221\" : 221,\n-\t\t\t\t\t\t\"var222\" : 222,\n-\t\t\t\t\t\t\"var223\" : 223,\n-\t\t\t\t\t\t\"var224\" : 224,\n-\t\t\t\t\t\t\"var225\" : 225,\n-\t\t\t\t\t\t\"var226\" : 226,\n-\t\t\t\t\t\t\"var227\" : 227,\n-\t\t\t\t\t\t\"var228\" : 228,\n-\t\t\t\t\t\t\"var229\" : 229,\n-\t\t\t\t\t\t\"var230\" : 230,\n-\t\t\t\t\t\t\"var231\" : 231,\n-\t\t\t\t\t\t\"var232\" : 232,\n-\t\t\t\t\t\t\"var233\" : 233,\n-\t\t\t\t\t\t\"var234\" : 234,\n-\t\t\t\t\t\t\"var235\" : 235,\n-\t\t\t\t\t\t\"var236\" : 236,\n-\t\t\t\t\t\t\"var237\" : 237,\n-\t\t\t\t\t\t\"var238\" : 238,\n-\t\t\t\t\t\t\"var239\" : 239,\n-\t\t\t\t\t\t\"var240\" : 240,\n-\t\t\t\t\t\t\"var241\" : 241,\n-\t\t\t\t\t\t\"var242\" : 242,\n-\t\t\t\t\t\t\"var243\" : 243,\n-\t\t\t\t\t\t\"var244\" : 244,\n-\t\t\t\t\t\t\"var245\" : 245,\n-\t\t\t\t\t\t\"var246\" : 246,\n-\t\t\t\t\t\t\"var247\" : 247,\n-\t\t\t\t\t\t\"var248\" : 248,\n-\t\t\t\t\t\t\"var249\" : 249,\n-\t\t\t\t\t\t\"var250\" : 250,\n-\t\t\t\t\t\t\"var251\" : 251,\n-\t\t\t\t\t\t\"var252\" : 252,\n-\t\t\t\t\t\t\"var253\" : 253,\n-\t\t\t\t\t\t\"var254\" : 254,\n-\t\t\t\t\t\t\"var255\" : 255,\n-\t\t\t\t\t\t\"var256\" : 256,\n-\t\t\t\t\t\t\"var257\" : 257,\n-\t\t\t\t\t\t\"var258\" : 258,\n-\t\t\t\t\t\t\"var259\" : 259,\n-\t\t\t\t\t\t\"var260\" : 260,\n-\t\t\t\t\t\t\"var261\" : 261,\n-\t\t\t\t\t\t\"var262\" : 262,\n-\t\t\t\t\t\t\"var263\" : 263,\n-\t\t\t\t\t\t\"var264\" : 264,\n-\t\t\t\t\t\t\"var265\" : 265,\n-\t\t\t\t\t\t\"var266\" : 266,\n-\t\t\t\t\t\t\"var267\" : 267,\n-\t\t\t\t\t\t\"var268\" : 268,\n-\t\t\t\t\t\t\"var269\" : 269,\n-\t\t\t\t\t\t\"var270\" : 270,\n-\t\t\t\t\t\t\"var271\" : 271,\n-\t\t\t\t\t\t\"var272\" : 272,\n-\t\t\t\t\t\t\"var273\" : 273,\n-\t\t\t\t\t\t\"var274\" : 274,\n-\t\t\t\t\t\t\"var275\" : 275,\n-\t\t\t\t\t\t\"var276\" : 276,\n-\t\t\t\t\t\t\"var277\" : 277,\n-\t\t\t\t\t\t\"var278\" : 278,\n-\t\t\t\t\t\t\"var279\" : 279,\n-\t\t\t\t\t\t\"var280\" : 280,\n-\t\t\t\t\t\t\"var281\" : 281,\n-\t\t\t\t\t\t\"var282\" : 282,\n-\t\t\t\t\t\t\"var283\" : 283,\n-\t\t\t\t\t\t\"var284\" : 284,\n-\t\t\t\t\t\t\"var285\" : 285,\n-\t\t\t\t\t\t\"var286\" : 286,\n-\t\t\t\t\t\t\"var287\" : 287,\n-\t\t\t\t\t\t\"var288\" : 288,\n-\t\t\t\t\t\t\"var289\" : 289,\n-\t\t\t\t\t\t\"var290\" : 290,\n-\t\t\t\t\t\t\"var291\" : 291,\n-\t\t\t\t\t\t\"var292\" : 292,\n-\t\t\t\t\t\t\"var293\" : 293,\n-\t\t\t\t\t\t\"var294\" : 294,\n-\t\t\t\t\t\t\"var295\" : 295,\n-\t\t\t\t\t\t\"var296\" : 296,\n-\t\t\t\t\t\t\"var297\" : 297,\n-\t\t\t\t\t\t\"var298\" : 298,\n-\t\t\t\t\t\t\"var299\" : 299,\n-\t\t\t\t\t\t\"var300\" : 300,\n-\t\t\t\t\t\t\"var301\" : 301,\n-\t\t\t\t\t\t\"var302\" : 302,\n-\t\t\t\t\t\t\"var303\" : 303,\n-\t\t\t\t\t\t\"var304\" : 304,\n-\t\t\t\t\t\t\"var305\" : 305,\n-\t\t\t\t\t\t\"var306\" : 306,\n-\t\t\t\t\t\t\"var307\" : 307,\n-\t\t\t\t\t\t\"var308\" : 308,\n-\t\t\t\t\t\t\"var309\" : 309,\n-\t\t\t\t\t\t\"var310\" : 310,\n-\t\t\t\t\t\t\"var311\" : 311,\n-\t\t\t\t\t\t\"var312\" : 312,\n-\t\t\t\t\t\t\"var313\" : 313,\n-\t\t\t\t\t\t\"var314\" : 314,\n-\t\t\t\t\t\t\"var315\" : 315,\n-\t\t\t\t\t\t\"var316\" : 316,\n-\t\t\t\t\t\t\"var317\" : 317,\n-\t\t\t\t\t\t\"var318\" : 318,\n-\t\t\t\t\t\t\"var319\" : 319,\n-\t\t\t\t\t\t\"var320\" : 320,\n-\t\t\t\t\t\t\"var321\" : 321,\n-\t\t\t\t\t\t\"var322\" : 322,\n-\t\t\t\t\t\t\"var323\" : 323,\n-\t\t\t\t\t\t\"var324\" : 324,\n-\t\t\t\t\t\t\"var325\" : 325,\n-\t\t\t\t\t\t\"var326\" : 326,\n-\t\t\t\t\t\t\"var327\" : 327,\n-\t\t\t\t\t\t\"var328\" : 328,\n-\t\t\t\t\t\t\"var329\" : 329,\n-\t\t\t\t\t\t\"var330\" : 330,\n-\t\t\t\t\t\t\"var331\" : 331,\n-\t\t\t\t\t\t\"var332\" : 332,\n-\t\t\t\t\t\t\"var333\" : 333,\n-\t\t\t\t\t\t\"var334\" : 334,\n-\t\t\t\t\t\t\"var335\" : 335,\n-\t\t\t\t\t\t\"var336\" : 336,\n-\t\t\t\t\t\t\"var337\" : 337,\n-\t\t\t\t\t\t\"var338\" : 338,\n-\t\t\t\t\t\t\"var339\" : 339,\n-\t\t\t\t\t\t\"var340\" : 340,\n-\t\t\t\t\t\t\"var341\" : 341,\n-\t\t\t\t\t\t\"var342\" : 342,\n-\t\t\t\t\t\t\"var343\" : 343,\n-\t\t\t\t\t\t\"var344\" : 344,\n-\t\t\t\t\t\t\"var345\" : 345,\n-\t\t\t\t\t\t\"var346\" : 346,\n-\t\t\t\t\t\t\"var347\" : 347,\n-\t\t\t\t\t\t\"var348\" : 348,\n-\t\t\t\t\t\t\"var349\" : 349,\n-\t\t\t\t\t\t\"var350\" : 350,\n-\t\t\t\t\t\t\"var351\" : 351,\n-\t\t\t\t\t\t\"var352\" : 352,\n-\t\t\t\t\t\t\"var353\" : 353,\n-\t\t\t\t\t\t\"var354\" : 354,\n-\t\t\t\t\t\t\"var355\" : 355,\n-\t\t\t\t\t\t\"var356\" : 356,\n-\t\t\t\t\t\t\"var357\" : 357,\n-\t\t\t\t\t\t\"var358\" : 358,\n-\t\t\t\t\t\t\"var359\" : 359,\n-\t\t\t\t\t\t\"var360\" : 360,\n-\t\t\t\t\t\t\"var361\" : 361,\n-\t\t\t\t\t\t\"var362\" : 362,\n-\t\t\t\t\t\t\"var363\" : 363,\n-\t\t\t\t\t\t\"var364\" : 364,\n-\t\t\t\t\t\t\"var365\" : 365,\n-\t\t\t\t\t\t\"var366\" : 366,\n-\t\t\t\t\t\t\"var367\" : 367,\n-\t\t\t\t\t\t\"var368\" : 368,\n-\t\t\t\t\t\t\"var369\" : 369,\n-\t\t\t\t\t\t\"var370\" : 370,\n-\t\t\t\t\t\t\"var371\" : 371,\n-\t\t\t\t\t\t\"var372\" : 372,\n-\t\t\t\t\t\t\"var373\" : 373,\n-\t\t\t\t\t\t\"var374\" : 374,\n-\t\t\t\t\t\t\"var375\" : 375,\n-\t\t\t\t\t\t\"var376\" : 376,\n-\t\t\t\t\t\t\"var377\" : 377,\n-\t\t\t\t\t\t\"var378\" : 378,\n-\t\t\t\t\t\t\"var379\" : 379,\n-\t\t\t\t\t\t\"var380\" : 380,\n-\t\t\t\t\t\t\"var381\" : 381,\n-\t\t\t\t\t\t\"var382\" : 382,\n-\t\t\t\t\t\t\"var383\" : 383,\n-\t\t\t\t\t\t\"var384\" : 384,\n-\t\t\t\t\t\t\"var385\" : 385,\n-\t\t\t\t\t\t\"var386\" : 386,\n-\t\t\t\t\t\t\"var387\" : 387,\n-\t\t\t\t\t\t\"var388\" : 388,\n-\t\t\t\t\t\t\"var389\" : 389,\n-\t\t\t\t\t\t\"var390\" : 390,\n-\t\t\t\t\t\t\"var391\" : 391,\n-\t\t\t\t\t\t\"var392\" : 392,\n-\t\t\t\t\t\t\"var393\" : 393,\n-\t\t\t\t\t\t\"var394\" : 394,\n-\t\t\t\t\t\t\"var395\" : 395,\n-\t\t\t\t\t\t\"var396\" : 396,\n-\t\t\t\t\t\t\"var397\" : 397,\n-\t\t\t\t\t\t\"var398\" : 398,\n-\t\t\t\t\t\t\"var399\" : 399,\n-\t\t\t\t\t\t\"var400\" : 400,\n-\t\t\t\t\t\t\"var401\" : 401,\n-\t\t\t\t\t\t\"var402\" : 402,\n-\t\t\t\t\t\t\"var403\" : 403,\n-\t\t\t\t\t\t\"var404\" : 404,\n-\t\t\t\t\t\t\"var405\" : 405,\n-\t\t\t\t\t\t\"var406\" : 406,\n-\t\t\t\t\t\t\"var407\" : 407,\n-\t\t\t\t\t\t\"var408\" : 408,\n-\t\t\t\t\t\t\"var409\" : 409,\n-\t\t\t\t\t\t\"var410\" : 410,\n-\t\t\t\t\t\t\"var411\" : 411,\n-\t\t\t\t\t\t\"var412\" : 412,\n-\t\t\t\t\t\t\"var413\" : 413,\n-\t\t\t\t\t\t\"var414\" : 414,\n-\t\t\t\t\t\t\"var415\" : 415,\n-\t\t\t\t\t\t\"var416\" : 416,\n-\t\t\t\t\t\t\"var417\" : 417,\n-\t\t\t\t\t\t\"var418\" : 418,\n-\t\t\t\t\t\t\"var419\" : 419,\n-\t\t\t\t\t\t\"var420\" : 420,\n-\t\t\t\t\t\t\"var421\" : 421,\n-\t\t\t\t\t\t\"var422\" : 422,\n-\t\t\t\t\t\t\"var423\" : 423,\n-\t\t\t\t\t\t\"var424\" : 424,\n-\t\t\t\t\t\t\"var425\" : 425,\n-\t\t\t\t\t\t\"var426\" : 426,\n-\t\t\t\t\t\t\"var427\" : 427,\n-\t\t\t\t\t\t\"var428\" : 428,\n-\t\t\t\t\t\t\"var429\" : 429,\n-\t\t\t\t\t\t\"var430\" : 430,\n-\t\t\t\t\t\t\"var431\" : 431,\n-\t\t\t\t\t\t\"var432\" : 432,\n-\t\t\t\t\t\t\"var433\" : 433,\n-\t\t\t\t\t\t\"var434\" : 434,\n-\t\t\t\t\t\t\"var435\" : 435,\n-\t\t\t\t\t\t\"var436\" : 436,\n-\t\t\t\t\t\t\"var437\" : 437,\n-\t\t\t\t\t\t\"var438\" : 438,\n-\t\t\t\t\t\t\"var439\" : 439,\n-\t\t\t\t\t\t\"var440\" : 440,\n-\t\t\t\t\t\t\"var441\" : 441,\n-\t\t\t\t\t\t\"var442\" : 442,\n-\t\t\t\t\t\t\"var443\" : 443,\n-\t\t\t\t\t\t\"var444\" : 444,\n-\t\t\t\t\t\t\"var445\" : 445,\n-\t\t\t\t\t\t\"var446\" : 446,\n-\t\t\t\t\t\t\"var447\" : 447,\n-\t\t\t\t\t\t\"var448\" : 448,\n-\t\t\t\t\t\t\"var449\" : 449,\n-\t\t\t\t\t\t\"var450\" : 450,\n-\t\t\t\t\t\t\"var451\" : 451,\n-\t\t\t\t\t\t\"var452\" : 452,\n-\t\t\t\t\t\t\"var453\" : 453,\n-\t\t\t\t\t\t\"var454\" : 454,\n-\t\t\t\t\t\t\"var455\" : 455,\n-\t\t\t\t\t\t\"var456\" : 456,\n-\t\t\t\t\t\t\"var457\" : 457,\n-\t\t\t\t\t\t\"var458\" : 458,\n-\t\t\t\t\t\t\"var459\" : 459,\n-\t\t\t\t\t\t\"var460\" : 460,\n-\t\t\t\t\t\t\"var461\" : 461,\n-\t\t\t\t\t\t\"var462\" : 462,\n-\t\t\t\t\t\t\"var463\" : 463,\n-\t\t\t\t\t\t\"var464\" : 464,\n-\t\t\t\t\t\t\"var465\" : 465,\n-\t\t\t\t\t\t\"var466\" : 466,\n-\t\t\t\t\t\t\"var467\" : 467,\n-\t\t\t\t\t\t\"var468\" : 468,\n-\t\t\t\t\t\t\"var469\" : 469,\n-\t\t\t\t\t\t\"var470\" : 470,\n-\t\t\t\t\t\t\"var471\" : 471,\n-\t\t\t\t\t\t\"var472\" : 472,\n-\t\t\t\t\t\t\"var473\" : 473,\n-\t\t\t\t\t\t\"var474\" : 474,\n-\t\t\t\t\t\t\"var475\" : 475,\n-\t\t\t\t\t\t\"var476\" : 476,\n-\t\t\t\t\t\t\"var477\" : 477,\n-\t\t\t\t\t\t\"var478\" : 478,\n-\t\t\t\t\t\t\"var479\" : 479,\n-\t\t\t\t\t\t\"var480\" : 480,\n-\t\t\t\t\t\t\"var481\" : 481,\n-\t\t\t\t\t\t\"var482\" : 482,\n-\t\t\t\t\t\t\"var483\" : 483,\n-\t\t\t\t\t\t\"var484\" : 484,\n-\t\t\t\t\t\t\"var485\" : 485,\n-\t\t\t\t\t\t\"var486\" : 486,\n-\t\t\t\t\t\t\"var487\" : 487,\n-\t\t\t\t\t\t\"var488\" : 488,\n-\t\t\t\t\t\t\"var489\" : 489,\n-\t\t\t\t\t\t\"var490\" : 490,\n-\t\t\t\t\t\t\"var491\" : 491,\n-\t\t\t\t\t\t\"var492\" : 492,\n-\t\t\t\t\t\t\"var493\" : 493,\n-\t\t\t\t\t\t\"var494\" : 494,\n-\t\t\t\t\t\t\"var495\" : 495,\n-\t\t\t\t\t\t\"var496\" : 496,\n-\t\t\t\t\t\t\"var497\" : 497,\n-\t\t\t\t\t\t\"var498\" : 498,\n-\t\t\t\t\t\t\"var499\" : 499,\n-\t\t\t\t\t\t\"var500\" : 500,\n-\t\t\t\t\t\t\"var501\" : 501,\n-\t\t\t\t\t\t\"var502\" : 502,\n-\t\t\t\t\t\t\"var503\" : 503,\n-\t\t\t\t\t\t\"var504\" : 504,\n-\t\t\t\t\t\t\"var505\" : 505,\n-\t\t\t\t\t\t\"var506\" : 506,\n-\t\t\t\t\t\t\"var507\" : 507,\n-\t\t\t\t\t\t\"var508\" : 508,\n-\t\t\t\t\t\t\"var509\" : 509,\n-\t\t\t\t\t\t\"var510\" : 510,\n-\t\t\t\t\t\t\"var511\" : 511,\n-\t\t\t\t\t\t\"var512\" : 512,\n-\t\t\t\t\t\t\"var513\" : 513,\n-\t\t\t\t\t\t\"var514\" : 514,\n-\t\t\t\t\t\t\"var515\" : 515,\n-\t\t\t\t\t\t\"var516\" : 516,\n-\t\t\t\t\t\t\"var517\" : 517,\n-\t\t\t\t\t\t\"var518\" : 518,\n-\t\t\t\t\t\t\"var519\" : 519,\n-\t\t\t\t\t\t\"var520\" : 520,\n-\t\t\t\t\t\t\"var521\" : 521,\n-\t\t\t\t\t\t\"var522\" : 522,\n-\t\t\t\t\t\t\"var523\" : 523,\n-\t\t\t\t\t\t\"var524\" : 524,\n-\t\t\t\t\t\t\"var525\" : 525,\n-\t\t\t\t\t\t\"var526\" : 526,\n-\t\t\t\t\t\t\"var527\" : 527,\n-\t\t\t\t\t\t\"var528\" : 528,\n-\t\t\t\t\t\t\"var529\" : 529,\n-\t\t\t\t\t\t\"var530\" : 530,\n-\t\t\t\t\t\t\"var531\" : 531,\n-\t\t\t\t\t\t\"var532\" : 532,\n-\t\t\t\t\t\t\"var533\" : 533,\n-\t\t\t\t\t\t\"var534\" : 534,\n-\t\t\t\t\t\t\"var535\" : 535,\n-\t\t\t\t\t\t\"var536\" : 536,\n-\t\t\t\t\t\t\"var537\" : 537,\n-\t\t\t\t\t\t\"var538\" : 538,\n-\t\t\t\t\t\t\"var539\" : 539,\n-\t\t\t\t\t\t\"var540\" : 540,\n-\t\t\t\t\t\t\"var541\" : 541,\n-\t\t\t\t\t\t\"var542\" : 542,\n-\t\t\t\t\t\t\"var543\" : 543,\n-\t\t\t\t\t\t\"var544\" : 544,\n-\t\t\t\t\t\t\"var545\" : 545,\n-\t\t\t\t\t\t\"var546\" : 546,\n-\t\t\t\t\t\t\"var547\" : 547,\n-\t\t\t\t\t\t\"var548\" : 548,\n-\t\t\t\t\t\t\"var549\" : 549,\n-\t\t\t\t\t\t\"var550\" : 550,\n-\t\t\t\t\t\t\"var551\" : 551,\n-\t\t\t\t\t\t\"var552\" : 552,\n-\t\t\t\t\t\t\"var553\" : 553,\n-\t\t\t\t\t\t\"var554\" : 554,\n-\t\t\t\t\t\t\"var555\" : 555,\n-\t\t\t\t\t\t\"var556\" : 556,\n-\t\t\t\t\t\t\"var557\" : 557,\n-\t\t\t\t\t\t\"var558\" : 558,\n-\t\t\t\t\t\t\"var559\" : 559,\n-\t\t\t\t\t\t\"var560\" : 560,\n-\t\t\t\t\t\t\"var561\" : 561,\n-\t\t\t\t\t\t\"var562\" : 562,\n-\t\t\t\t\t\t\"var563\" : 563,\n-\t\t\t\t\t\t\"var564\" : 564,\n-\t\t\t\t\t\t\"var565\" : 565,\n-\t\t\t\t\t\t\"var566\" : 566,\n-\t\t\t\t\t\t\"var567\" : 567,\n-\t\t\t\t\t\t\"var568\" : 568,\n-\t\t\t\t\t\t\"var569\" : 569,\n-\t\t\t\t\t\t\"var570\" : 570,\n-\t\t\t\t\t\t\"var571\" : 571,\n-\t\t\t\t\t\t\"var572\" : 572,\n-\t\t\t\t\t\t\"var573\" : 573,\n-\t\t\t\t\t\t\"var574\" : 574,\n-\t\t\t\t\t\t\"var575\" : 575,\n-\t\t\t\t\t\t\"var576\" : 576,\n-\t\t\t\t\t\t\"var577\" : 577,\n-\t\t\t\t\t\t\"var578\" : 578,\n-\t\t\t\t\t\t\"var579\" : 579,\n-\t\t\t\t\t\t\"var580\" : 580,\n-\t\t\t\t\t\t\"var581\" : 581,\n-\t\t\t\t\t\t\"var582\" : 582,\n-\t\t\t\t\t\t\"var583\" : 583,\n-\t\t\t\t\t\t\"var584\" : 584,\n-\t\t\t\t\t\t\"var585\" : 585,\n-\t\t\t\t\t\t\"var586\" : 586,\n-\t\t\t\t\t\t\"var587\" : 587,\n-\t\t\t\t\t\t\"var588\" : 588,\n-\t\t\t\t\t\t\"var589\" : 589,\n-\t\t\t\t\t\t\"var590\" : 590,\n-\t\t\t\t\t\t\"var591\" : 591,\n-\t\t\t\t\t\t\"var592\" : 592,\n-\t\t\t\t\t\t\"var593\" : 593,\n-\t\t\t\t\t\t\"var594\" : 594,\n-\t\t\t\t\t\t\"var595\" : 595,\n-\t\t\t\t\t\t\"var596\" : 596,\n-\t\t\t\t\t\t\"var597\" : 597,\n-\t\t\t\t\t\t\"var598\" : 598,\n-\t\t\t\t\t\t\"var599\" : 599,\n-\t\t\t\t\t\t\"var600\" : 600,\n-\t\t\t\t\t\t\"var601\" : 601,\n-\t\t\t\t\t\t\"var602\" : 602,\n-\t\t\t\t\t\t\"var603\" : 603,\n-\t\t\t\t\t\t\"var604\" : 604,\n-\t\t\t\t\t\t\"var605\" : 605,\n-\t\t\t\t\t\t\"var606\" : 606,\n-\t\t\t\t\t\t\"var607\" : 607,\n-\t\t\t\t\t\t\"var608\" : 608,\n-\t\t\t\t\t\t\"var609\" : 609,\n-\t\t\t\t\t\t\"var610\" : 610,\n-\t\t\t\t\t\t\"var611\" : 611,\n-\t\t\t\t\t\t\"var612\" : 612,\n-\t\t\t\t\t\t\"var613\" : 613,\n-\t\t\t\t\t\t\"var614\" : 614,\n-\t\t\t\t\t\t\"var615\" : 615,\n-\t\t\t\t\t\t\"var616\" : 616,\n-\t\t\t\t\t\t\"var617\" : 617,\n-\t\t\t\t\t\t\"var618\" : 618,\n-\t\t\t\t\t\t\"var619\" : 619,\n-\t\t\t\t\t\t\"var620\" : 620,\n-\t\t\t\t\t\t\"var621\" : 621,\n-\t\t\t\t\t\t\"var622\" : 622,\n-\t\t\t\t\t\t\"var623\" : 623,\n-\t\t\t\t\t\t\"var624\" : 624,\n-\t\t\t\t\t\t\"var625\" : 625,\n-\t\t\t\t\t\t\"var626\" : 626,\n-\t\t\t\t\t\t\"var627\" : 627,\n-\t\t\t\t\t\t\"var628\" : 628,\n-\t\t\t\t\t\t\"var629\" : 629,\n-\t\t\t\t\t\t\"var630\" : 630,\n-\t\t\t\t\t\t\"var631\" : 631,\n-\t\t\t\t\t\t\"var632\" : 632,\n-\t\t\t\t\t\t\"var633\" : 633,\n-\t\t\t\t\t\t\"var634\" : 634,\n-\t\t\t\t\t\t\"var635\" : 635,\n-\t\t\t\t\t\t\"var636\" : 636,\n-\t\t\t\t\t\t\"var637\" : 637,\n-\t\t\t\t\t\t\"var638\" : 638,\n-\t\t\t\t\t\t\"var639\" : 639,\n-\t\t\t\t\t\t\"var640\" : 640,\n-\t\t\t\t\t\t\"var641\" : 641,\n-\t\t\t\t\t\t\"var642\" : 642,\n-\t\t\t\t\t\t\"var643\" : 643,\n-\t\t\t\t\t\t\"var644\" : 644,\n-\t\t\t\t\t\t\"var645\" : 645,\n-\t\t\t\t\t\t\"var646\" : 646,\n-\t\t\t\t\t\t\"var647\" : 647,\n-\t\t\t\t\t\t\"var648\" : 648,\n-\t\t\t\t\t\t\"var649\" : 649,\n-\t\t\t\t\t\t\"var650\" : 650,\n-\t\t\t\t\t\t\"var651\" : 651,\n-\t\t\t\t\t\t\"var652\" : 652,\n-\t\t\t\t\t\t\"var653\" : 653,\n-\t\t\t\t\t\t\"var654\" : 654,\n-\t\t\t\t\t\t\"var655\" : 655,\n-\t\t\t\t\t\t\"var656\" : 656,\n-\t\t\t\t\t\t\"var657\" : 657,\n-\t\t\t\t\t\t\"var658\" : 658,\n-\t\t\t\t\t\t\"var659\" : 659,\n-\t\t\t\t\t\t\"var660\" : 660,\n-\t\t\t\t\t\t\"var661\" : 661,\n-\t\t\t\t\t\t\"var662\" : 662,\n-\t\t\t\t\t\t\"var663\" : 663,\n-\t\t\t\t\t\t\"var664\" : 664,\n-\t\t\t\t\t\t\"var665\" : 665,\n-\t\t\t\t\t\t\"var666\" : 666,\n-\t\t\t\t\t\t\"var667\" : 667,\n-\t\t\t\t\t\t\"var668\" : 668,\n-\t\t\t\t\t\t\"var669\" : 669,\n-\t\t\t\t\t\t\"var670\" : 670,\n-\t\t\t\t\t\t\"var671\" : 671,\n-\t\t\t\t\t\t\"var672\" : 672,\n-\t\t\t\t\t\t\"var673\" : 673,\n-\t\t\t\t\t\t\"var674\" : 674,\n-\t\t\t\t\t\t\"var675\" : 675,\n-\t\t\t\t\t\t\"var676\" : 676,\n-\t\t\t\t\t\t\"var677\" : 677,\n-\t\t\t\t\t\t\"var678\" : 678,\n-\t\t\t\t\t\t\"var679\" : 679,\n-\t\t\t\t\t\t\"var680\" : 680,\n-\t\t\t\t\t\t\"var681\" : 681,\n-\t\t\t\t\t\t\"var682\" : 682,\n-\t\t\t\t\t\t\"var683\" : 683,\n-\t\t\t\t\t\t\"var684\" : 684,\n-\t\t\t\t\t\t\"var685\" : 685,\n-\t\t\t\t\t\t\"var686\" : 686,\n-\t\t\t\t\t\t\"var687\" : 687,\n-\t\t\t\t\t\t\"var688\" : 688,\n-\t\t\t\t\t\t\"var689\" : 689,\n-\t\t\t\t\t\t\"var690\" : 690,\n-\t\t\t\t\t\t\"var691\" : 691,\n-\t\t\t\t\t\t\"var692\" : 692,\n-\t\t\t\t\t\t\"var693\" : 693,\n-\t\t\t\t\t\t\"var694\" : 694,\n-\t\t\t\t\t\t\"var695\" : 695,\n-\t\t\t\t\t\t\"var696\" : 696,\n-\t\t\t\t\t\t\"var697\" : 697,\n-\t\t\t\t\t\t\"var698\" : 698,\n-\t\t\t\t\t\t\"var699\" : 699,\n-\t\t\t\t\t\t\"var700\" : 700,\n-\t\t\t\t\t\t\"var701\" : 701,\n-\t\t\t\t\t\t\"var702\" : 702,\n-\t\t\t\t\t\t\"var703\" : 703,\n-\t\t\t\t\t\t\"var704\" : 704,\n-\t\t\t\t\t\t\"var705\" : 705,\n-\t\t\t\t\t\t\"var706\" : 706,\n-\t\t\t\t\t\t\"var707\" : 707,\n-\t\t\t\t\t\t\"var708\" : 708,\n-\t\t\t\t\t\t\"var709\" : 709,\n-\t\t\t\t\t\t\"var710\" : 710,\n-\t\t\t\t\t\t\"var711\" : 711,\n-\t\t\t\t\t\t\"var712\" : 712,\n-\t\t\t\t\t\t\"var713\" : 713,\n-\t\t\t\t\t\t\"var714\" : 714,\n-\t\t\t\t\t\t\"var715\" : 715,\n-\t\t\t\t\t\t\"var716\" : 716,\n-\t\t\t\t\t\t\"var717\" : 717,\n-\t\t\t\t\t\t\"var718\" : 718,\n-\t\t\t\t\t\t\"var719\" : 719,\n-\t\t\t\t\t\t\"var720\" : 720,\n-\t\t\t\t\t\t\"var721\" : 721,\n-\t\t\t\t\t\t\"var722\" : 722,\n-\t\t\t\t\t\t\"var723\" : 723,\n-\t\t\t\t\t\t\"var724\" : 724,\n-\t\t\t\t\t\t\"var725\" : 725,\n-\t\t\t\t\t\t\"var726\" : 726,\n-\t\t\t\t\t\t\"var727\" : 727,\n-\t\t\t\t\t\t\"var728\" : 728,\n-\t\t\t\t\t\t\"var729\" : 729,\n-\t\t\t\t\t\t\"var730\" : 730,\n-\t\t\t\t\t\t\"var731\" : 731,\n-\t\t\t\t\t\t\"var732\" : 732,\n-\t\t\t\t\t\t\"var733\" : 733,\n-\t\t\t\t\t\t\"var734\" : 734,\n-\t\t\t\t\t\t\"var735\" : 735,\n-\t\t\t\t\t\t\"var736\" : 736,\n-\t\t\t\t\t\t\"var737\" : 737,\n-\t\t\t\t\t\t\"var738\" : 738,\n-\t\t\t\t\t\t\"var739\" : 739,\n-\t\t\t\t\t\t\"var740\" : 740,\n-\t\t\t\t\t\t\"var741\" : 741,\n-\t\t\t\t\t\t\"var742\" : 742,\n-\t\t\t\t\t\t\"var743\" : 743,\n-\t\t\t\t\t\t\"var744\" : 744,\n-\t\t\t\t\t\t\"var745\" : 745,\n-\t\t\t\t\t\t\"var746\" : 746,\n-\t\t\t\t\t\t\"var747\" : 747,\n-\t\t\t\t\t\t\"var748\" : 748,\n-\t\t\t\t\t\t\"var749\" : 749,\n-\t\t\t\t\t\t\"var750\" : 750,\n-\t\t\t\t\t\t\"var751\" : 751,\n-\t\t\t\t\t\t\"var752\" : 752,\n-\t\t\t\t\t\t\"var753\" : 753,\n-\t\t\t\t\t\t\"var754\" : 754,\n-\t\t\t\t\t\t\"var755\" : 755,\n-\t\t\t\t\t\t\"var756\" : 756,\n-\t\t\t\t\t\t\"var757\" : 757,\n-\t\t\t\t\t\t\"var758\" : 758,\n-\t\t\t\t\t\t\"var759\" : 759,\n-\t\t\t\t\t\t\"var760\" : 760,\n-\t\t\t\t\t\t\"var761\" : 761,\n-\t\t\t\t\t\t\"var762\" : 762,\n-\t\t\t\t\t\t\"var763\" : 763,\n-\t\t\t\t\t\t\"var764\" : 764,\n-\t\t\t\t\t\t\"var765\" : 765,\n-\t\t\t\t\t\t\"var766\" : 766,\n-\t\t\t\t\t\t\"var767\" : 767,\n-\t\t\t\t\t\t\"var768\" : 768,\n-\t\t\t\t\t\t\"var769\" : 769,\n-\t\t\t\t\t\t\"var770\" : 770,\n-\t\t\t\t\t\t\"var771\" : 771,\n-\t\t\t\t\t\t\"var772\" : 772,\n-\t\t\t\t\t\t\"var773\" : 773,\n-\t\t\t\t\t\t\"var774\" : 774,\n-\t\t\t\t\t\t\"var775\" : 775,\n-\t\t\t\t\t\t\"var776\" : 776,\n-\t\t\t\t\t\t\"var777\" : 777,\n-\t\t\t\t\t\t\"var778\" : 778,\n-\t\t\t\t\t\t\"var779\" : 779,\n-\t\t\t\t\t\t\"var780\" : 780,\n-\t\t\t\t\t\t\"var781\" : 781,\n-\t\t\t\t\t\t\"var782\" : 782,\n-\t\t\t\t\t\t\"var783\" : 783,\n-\t\t\t\t\t\t\"var784\" : 784,\n-\t\t\t\t\t\t\"var785\" : 785,\n-\t\t\t\t\t\t\"var786\" : 786,\n-\t\t\t\t\t\t\"var787\" : 787,\n-\t\t\t\t\t\t\"var788\" : 788,\n-\t\t\t\t\t\t\"var789\" : 789,\n-\t\t\t\t\t\t\"var790\" : 790,\n-\t\t\t\t\t\t\"var791\" : 791,\n-\t\t\t\t\t\t\"var792\" : 792,\n-\t\t\t\t\t\t\"var793\" : 793,\n-\t\t\t\t\t\t\"var794\" : 794,\n-\t\t\t\t\t\t\"var795\" : 795,\n-\t\t\t\t\t\t\"var796\" : 796,\n-\t\t\t\t\t\t\"var797\" : 797,\n-\t\t\t\t\t\t\"var798\" : 798,\n-\t\t\t\t\t\t\"var799\" : 799,\n-\t\t\t\t\t\t\"var800\" : 800,\n-\t\t\t\t\t\t\"var801\" : 801,\n-\t\t\t\t\t\t\"var802\" : 802,\n-\t\t\t\t\t\t\"var803\" : 803,\n-\t\t\t\t\t\t\"var804\" : 804,\n-\t\t\t\t\t\t\"var805\" : 805,\n-\t\t\t\t\t\t\"var806\" : 806,\n-\t\t\t\t\t\t\"var807\" : 807,\n-\t\t\t\t\t\t\"var808\" : 808,\n-\t\t\t\t\t\t\"var809\" : 809,\n-\t\t\t\t\t\t\"var810\" : 810,\n-\t\t\t\t\t\t\"var811\" : 811,\n-\t\t\t\t\t\t\"var812\" : 812,\n-\t\t\t\t\t\t\"var813\" : 813,\n-\t\t\t\t\t\t\"var814\" : 814,\n-\t\t\t\t\t\t\"var815\" : 815,\n-\t\t\t\t\t\t\"var816\" : 816,\n-\t\t\t\t\t\t\"var817\" : 817,\n-\t\t\t\t\t\t\"var818\" : 818,\n-\t\t\t\t\t\t\"var819\" : 819,\n-\t\t\t\t\t\t\"var820\" : 820,\n-\t\t\t\t\t\t\"var821\" : 821,\n-\t\t\t\t\t\t\"var822\" : 822,\n-\t\t\t\t\t\t\"var823\" : 823,\n-\t\t\t\t\t\t\"var824\" : 824,\n-\t\t\t\t\t\t\"var825\" : 825,\n-\t\t\t\t\t\t\"var826\" : 826,\n-\t\t\t\t\t\t\"var827\" : 827,\n-\t\t\t\t\t\t\"var828\" : 828,\n-\t\t\t\t\t\t\"var829\" : 829,\n-\t\t\t\t\t\t\"var830\" : 830,\n-\t\t\t\t\t\t\"var831\" : 831,\n-\t\t\t\t\t\t\"var832\" : 832,\n-\t\t\t\t\t\t\"var833\" : 833,\n-\t\t\t\t\t\t\"var834\" : 834,\n-\t\t\t\t\t\t\"var835\" : 835,\n-\t\t\t\t\t\t\"var836\" : 836,\n-\t\t\t\t\t\t\"var837\" : 837,\n-\t\t\t\t\t\t\"var838\" : 838,\n-\t\t\t\t\t\t\"var839\" : 839,\n-\t\t\t\t\t\t\"var840\" : 840,\n-\t\t\t\t\t\t\"var841\" : 841,\n-\t\t\t\t\t\t\"var842\" : 842,\n-\t\t\t\t\t\t\"var843\" : 843,\n-\t\t\t\t\t\t\"var844\" : 844,\n-\t\t\t\t\t\t\"var845\" : 845,\n-\t\t\t\t\t\t\"var846\" : 846,\n-\t\t\t\t\t\t\"var847\" : 847,\n-\t\t\t\t\t\t\"var848\" : 848,\n-\t\t\t\t\t\t\"var849\" : 849,\n-\t\t\t\t\t\t\"var850\" : 850,\n-\t\t\t\t\t\t\"var851\" : 851,\n-\t\t\t\t\t\t\"var852\" : 852,\n-\t\t\t\t\t\t\"var853\" : 853,\n-\t\t\t\t\t\t\"var854\" : 854,\n-\t\t\t\t\t\t\"var855\" : 855,\n-\t\t\t\t\t\t\"var856\" : 856,\n-\t\t\t\t\t\t\"var857\" : 857,\n-\t\t\t\t\t\t\"var858\" : 858,\n-\t\t\t\t\t\t\"var859\" : 859,\n-\t\t\t\t\t\t\"var860\" : 860,\n-\t\t\t\t\t\t\"var861\" : 861,\n-\t\t\t\t\t\t\"var862\" : 862,\n-\t\t\t\t\t\t\"var863\" : 863,\n-\t\t\t\t\t\t\"var864\" : 864,\n-\t\t\t\t\t\t\"var865\" : 865,\n-\t\t\t\t\t\t\"var866\" : 866,\n-\t\t\t\t\t\t\"var867\" : 867,\n-\t\t\t\t\t\t\"var868\" : 868,\n-\t\t\t\t\t\t\"var869\" : 869,\n-\t\t\t\t\t\t\"var870\" : 870,\n-\t\t\t\t\t\t\"var871\" : 871,\n-\t\t\t\t\t\t\"var872\" : 872,\n-\t\t\t\t\t\t\"var873\" : 873,\n-\t\t\t\t\t\t\"var874\" : 874,\n-\t\t\t\t\t\t\"var875\" : 875,\n-\t\t\t\t\t\t\"var876\" : 876,\n-\t\t\t\t\t\t\"var877\" : 877,\n-\t\t\t\t\t\t\"var878\" : 878,\n-\t\t\t\t\t\t\"var879\" : 879,\n-\t\t\t\t\t\t\"var880\" : 880,\n-\t\t\t\t\t\t\"var881\" : 881,\n-\t\t\t\t\t\t\"var882\" : 882,\n-\t\t\t\t\t\t\"var883\" : 883,\n-\t\t\t\t\t\t\"var884\" : 884,\n-\t\t\t\t\t\t\"var885\" : 885,\n-\t\t\t\t\t\t\"var886\" : 886,\n-\t\t\t\t\t\t\"var887\" : 887,\n-\t\t\t\t\t\t\"var888\" : 888,\n-\t\t\t\t\t\t\"var889\" : 889,\n-\t\t\t\t\t\t\"var890\" : 890,\n-\t\t\t\t\t\t\"var891\" : 891,\n-\t\t\t\t\t\t\"var892\" : 892,\n-\t\t\t\t\t\t\"var893\" : 893,\n-\t\t\t\t\t\t\"var894\" : 894,\n-\t\t\t\t\t\t\"var895\" : 895,\n-\t\t\t\t\t\t\"var896\" : 896,\n-\t\t\t\t\t\t\"var897\" : 897,\n-\t\t\t\t\t\t\"var898\" : 898,\n-\t\t\t\t\t\t\"var899\" : 899,\n-\t\t\t\t\t\t\"var900\" : 900,\n-\t\t\t\t\t\t\"var901\" : 901,\n-\t\t\t\t\t\t\"var902\" : 902,\n-\t\t\t\t\t\t\"var903\" : 903,\n-\t\t\t\t\t\t\"var904\" : 904,\n-\t\t\t\t\t\t\"var905\" : 905,\n-\t\t\t\t\t\t\"var906\" : 906,\n-\t\t\t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 478.0, 270.0, 74.0, 22.0 ],
									"presentation_rect" : [ 478.0, 270.0, 74.0, 22.0 ],
									"style" : "",
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 126.0, 89.0, 22.0 ],
									"presentation_rect" : [ 50.0, 126.0, 89.0, 22.0 ],
									"style" : "",
									"text" : "loadmess front"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 156.0, 69.0, 22.0 ],
									"presentation_rect" : [ 50.0, 156.0, 69.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"style" : "",
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 344.0, 75.0, 22.0 ],
									"presentation_rect" : [ 50.0, 344.0, 75.0, 22.0 ],
									"style" : "",
									"text" : "prepend par"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 379.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 115.0, 267.0, 87.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "parse_diff.js",
										"parameter_enable" : 0
									}
,
									"style" : "",
									"text" : "js parse_diff.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"linecount" : 1233,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 187.0, 417.0, 16538.0 ],
									"presentation" : 1,
									"presentation_linecount" : 1223,
									"presentation_rect" : [ 52.0, 325.0, 1059.0, 16404.0 ],
									"style" : "",
									"text" : "\"From 2e2681bd9122e197fe1f5c027937c8129332fd89 Mon Sep 17 00:00:00 2001\nFrom: michaelpalumbo <emailmichaelpalumbo@gmail.com>\nDate: Thu, 7 Dec 2017 20:56:29 -0500\nSubject: [PATCH 001/210] updates to the node script for gathering diffs and\n sending to max. vr-git_log now opens in presentation mode. should probably\n add some code to launch the vr-git.js script in a terminal from within max\n (using luke hall's script\n\n\n75\t1\tdiff_tester_a.maxpat\n18\t18\tvr-git.js\n217\t2359\tvr-git_log.maxpat\n\ndiff --git a/diff_tester_a.maxpat b/diff_tester_a.maxpat\nindex ac79847..293cd2f 100644\n--- a/diff_tester_a.maxpat\n+++ b/diff_tester_a.maxpat\n@@ -37,6 +37,58 @@\n \t\t\\\"style\\\" : \\\"\\\",\n \t\t\\\"subpatcher_template\\\" : \\\"\\\",\n \t\t\\\"boxes\\\" : [ \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-7\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"live.gain~\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 5,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"signal\\\", \\\"signal\\\", \\\"\\\", \\\"float\\\", \\\"list\\\" ],\n+\t\t\t\t\t\\\"parameter_enable\\\" : 1,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 217.0, 448.0, 48.0, 136.0 ],\n+\t\t\t\t\t\\\"saved_attribute_attributes\\\" : \t\t\t\t\t{\n+\t\t\t\t\t\t\\\"valueof\\\" : \t\t\t\t\t\t{\n+\t\t\t\t\t\t\t\\\"parameter_longname\\\" : \\\"live.gain~[1]\\\",\n+\t\t\t\t\t\t\t\\\"parameter_shortname\\\" : \\\"live.gain~[1]\\\",\n+\t\t\t\t\t\t\t\\\"parameter_type\\\" : 0,\n+\t\t\t\t\t\t\t\\\"parameter_mmin\\\" : -70.0,\n+\t\t\t\t\t\t\t\\\"parameter_mmax\\\" : 6.0,\n+\t\t\t\t\t\t\t\\\"parameter_initial\\\" : [ 0.0 ],\n+\t\t\t\t\t\t\t\\\"parameter_unitstyle\\\" : 4\n+\t\t\t\t\t\t}\n+\n+\t\t\t\t\t}\n+,\n+\t\t\t\t\t\\\"varname\\\" : \\\"live.gain~[1]\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-6\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"signal\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 290.0, 299.0, 65.0, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"cycle~ 0.5\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-5\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"signal\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 217.0, 384.0, 29.5, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"*~\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n \t\t\t\t\t\\\"id\\\" : \\\"obj-4\\\",\n \t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n@@ -116,6 +168,13 @@\n \t\t\t\t\t\\\"source\\\" : [ \\\"obj-1\\\", 0 ]\n \t\t\t\t}\n \n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"destination\\\" : [ \\\"obj-5\\\", 0 ],\n+\t\t\t\t\t\\\"source\\\" : [ \\\"obj-2\\\", 0 ]\n+\t\t\t\t}\n+\n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n@@ -123,10 +182,25 @@\n \t\t\t\t\t\\\"source\\\" : [ \\\"obj-4\\\", 0 ]\n \t\t\t\t}\n \n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"destination\\\" : [ \\\"obj-7\\\", 0 ],\n+\t\t\t\t\t\\\"source\\\" : [ \\\"obj-5\\\", 0 ]\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"patchline\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"destination\\\" : [ \\\"obj-5\\\", 1 ],\n+\t\t\t\t\t\\\"source\\\" : [ \\\"obj-6\\\", 0 ]\n+\t\t\t\t}\n+\n \t\t\t}\n  ],\n \t\t\\\"parameters\\\" : \t\t{\n-\t\t\t\\\"obj-2\\\" : [ \\\"live.gain~\\\", \\\"live.gain~\\\", 0 ]\n+\t\t\t\\\"obj-2\\\" : [ \\\"live.gain~\\\", \\\"live.gain~\\\", 0 ],\n+\t\t\t\\\"obj-7\\\" : [ \\\"live.gain~[1]\\\", \\\"live.gain~[1]\\\", 0 ]\n \t\t}\n ,\n \t\t\\\"dependency_cache\\\" : [  ],\ndiff --git a/vr-git.js b/vr-git.js\nindex dad05bd..3c6fc2e 100644\n--- a/vr-git.js\n+++ b/vr-git.js\n@@ -31,27 +31,27 @@ connection.onopen = function () {\n   \t//}\n };\n \n-   \n-\n-//DON'T DELETE BELOW, ITS A WORK IN-PROGRESS\n-/*//attempting to control this script from max's websocket. \n-connection.onmessage = function (e) {\n-    console.log('message from server', e.data);\n-    \tchild = exec(\\\"git diff \\\" + diff1 + \\\" \\\" + diff2, function (error, stdout, stderr) {\n-\t\tgit_log = JSON.stringify(stdout);\n-\t\tconnection.send(git_log);\n-\n-};\n-*/\n-\n \n connection.onmessage = function (a) {\n-\tconsole.log('message from max', 'git diff ' + a.data);\n-\t child2 = exec(\\\"git diff \\\" + a.data + \\\" | diff-so-fancy\\\", function (error, stdout, stderr) {\n+\t//ideally from max you specify the command to this script.\n+\n+\tif (a.data.includes(\\\"git diff \\\")) {\n+\t\t//so if you request a diff with filenames/hashes, then:\n+\t\tchild2 = exec(a.data + \\\" | diff-so-fancy\\\", function (error, stdout, stderr) {\n \t \t//git_log2 = JSON.stringify(stdout);\n-\t \tconnection.send(\\\"@@@@@@@@@@\\\" + stdout + \\\"@@@@@@@@@@\\\");\n+\t \tconnection.send(stdout);\n+\t \tconsole.log(\\\"git diff requested for: \\\" + a.data.slice(9));\n+\t });\n+\n+\t }\n+\t //if you typed some other git commands, then:\n+\telse {\n+\t\tconsole.log('message from max', a.data);\n+\t\tchild2 = exec(a.data + \\\" | diff-so-fancy\\\", function (error, stdout, stderr) {\n+\t \t//git_log2 = JSON.stringify(stdout);\n+\t \tconnection.send(stdout);\n \t \tconsole.log(stdout);\n \t });\n-};\n \n-//connection.send('hello from client');\n No newline at end of file\n+\t }\n+};\ndiff --git a/vr-git_log.maxpat b/vr-git_log.maxpat\nindex 5ef3129..d9b504b 100644\n--- a/vr-git_log.maxpat\n+++ b/vr-git_log.maxpat\n@@ -9,9 +9,9 @@\n \t\t\t\\\"modernui\\\" : 1\n \t\t}\n ,\n-\t\t\\\"rect\\\" : [ 34.0, 79.0, 1507.0, 933.0 ],\n+\t\t\\\"rect\\\" : [ 172.0, 275.0, 1135.0, 737.0 ],\n \t\t\\\"bglocked\\\" : 0,\n-\t\t\\\"openinpresentation\\\" : 0,\n+\t\t\\\"openinpresentation\\\" : 1,\n \t\t\\\"default_fontsize\\\" : 12.0,\n \t\t\\\"default_fontface\\\" : 0,\n \t\t\\\"default_fontname\\\" : \\\"Arial\\\",\n@@ -38,54 +38,173 @@\n \t\t\\\"subpatcher_template\\\" : \\\"\\\",\n \t\t\\\"boxes\\\" : [ \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-46\\\",\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-93\\\",\n+\t\t\t\t\t\\\"linecount\\\" : 3,\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 247.0, 32.0, 150.0, 47.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_linecount\\\" : 3,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 14.0, 150.0, 47.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"First run 'node vr-git.js' in a terminal within /vr-in-vr directory\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-88\\\",\n+\t\t\t\t\t\\\"linecount\\\" : 5,\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 129.0, 247.0, 150.0, 74.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 301.0, 773.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Response from node vr-git.js Note: need to figure out how to properly stringify prior to sending over websotet\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-85\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 184.0, 305.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 197.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Some tested requests\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-77\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 512.0, 383.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 63.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Current Commit Count\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-72\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 61.0, 60.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 114.0, 150.0, 20.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"Select 2 commits\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-70\\\",\n \t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n \t\t\t\t\t\\\"numinlets\\\" : 1,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"bang\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 659.0, 250.0, 65.0, 22.0 ],\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 666.0, 123.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"closebang\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"prepend new request\\\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-44\\\",\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 2,\n-\t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 659.0, 278.0, 37.0, 22.0 ],\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-69\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 0,\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 697.0, 93.0, 22.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 164.0, 93.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"clear\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"print @popup 1\\\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-42\\\",\n-\t\t\t\t\t\\\"linecount\\\" : 2,\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 2,\n-\t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 867.0, 449.0, 50.0, 35.0 ],\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-59\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 2,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 586.0, 48.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"0000{aaaa\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"cycle 2\\\"\n \t\t\t\t}\n \n \t\t\t}\n , \t\t\t{\n \t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-36\\\",\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-56\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 309.0, 626.0, 160.0, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"sprintf symout git diff %s %s\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-55\\\",\n \t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n \t\t\t\t\t\\\"numinlets\\\" : 2,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 370.0, 113.0, 22.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 1216.0, 244.0, 51.0, 22.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 267.0, 51.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"0000{aaaaa{bbbbb\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"\\\"git diff\\\"\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-53\\\",\n+\t\t\t\t\t\\\"linecount\\\" : 5,\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"message\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 2,\n+\t\t\t\t\t\\\"numoutlets\\\" : 1,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 1142.0, 192.0, 121.0, 76.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 243.0, 452.0, 22.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"\\\"git diff-tree f60795d7cb41e59a5e32e0cca65975962da5837b diff_tester_a.maxpat\\\"\\\"\n+\t\t\t\t}\n+\n+\t\t\t}\n+, \t\t\t{\n+\t\t\t\t\\\"box\\\" : \t\t\t\t{\n+\t\t\t\t\t\\\"fontname\\\" : \\\"Arial\\\",\n+\t\t\t\t\t\\\"fontsize\\\" : 11.595187,\n+\t\t\t\t\t\\\"id\\\" : \\\"obj-49\\\",\n+\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n+\t\t\t\t\t\\\"numinlets\\\" : 1,\n+\t\t\t\t\t\\\"numoutlets\\\" : 5,\n+\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\" ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 810.0, 471.0, 374.0, 21.0 ],\n+\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n+\t\t\t\t\t\\\"text\\\" : \\\"regexp --------------------------------------------------------------------------------(.*)\\\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -98,22 +217,9 @@\n \t\t\t\t\t\\\"numinlets\\\" : 1,\n \t\t\t\t\t\\\"numoutlets\\\" : 5,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 408.0, 84.0, 21.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 408.0, 374.0, 21.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"regexp w[^{]*$\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-21\\\",\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"newobj\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 5,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\", \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 958.0, 511.0, 61.0, 22.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"regexp\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"regexp --------------------------------------------------------------------------------(.*)\\\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -124,9 +230,11 @@\n \t\t\t\t\t\\\"numinlets\\\" : 2,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 936.0, 320.0, 363.0, 22.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 1085.0, 139.0, 428.0, 22.0 ],\n+\t\t\t\t\t\\\"presentation\\\" : 1,\n+\t\t\t\t\t\\\"presentation_rect\\\" : [ 52.0, 219.0, 428.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"\\\"0f6fed29195fd0c4fdd9168165d7c20763949fd9 vr-git_log.maxpat\\\"\\\"\n+\t\t\t\t\t\\\"text\\\" : \\\"\\\"git diff f60795d7cb41e59a5e32e0cca65975962da5837b diff_tester_a.maxpat\\\"\\\"\n \t\t\t\t}\n \n \t\t\t}\n@@ -137,2180 +245,11 @@\n \t\t\t\t\t\\\"numinlets\\\" : 1,\n \t\t\t\t\t\\\"numoutlets\\\" : 1,\n \t\t\t\t\t\\\"outlettype\\\" : [ \\\"\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1085.0, 567.0, 73.0, 22.0 ],\n+\t\t\t\t\t\\\"patching_rect\\\" : [ 843.0, 370.0, 73.0, 22.0 ],\n \t\t\t\t\t\\\"style\\\" : \\\"\\\",\n \t\t\t\t\t\\\"text\\\" : \\\"fromsymbol\\\"\n \t\t\t\t}\n \n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-47\\\",\n-\t\t\t\t\t\\\"linecount\\\" : 2,\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 0,\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1295.5, 171.5, 101.0, 33.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"send a big dict (as JSON)\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-86\\\",\n-\t\t\t\t\t\\\"linecount\\\" : 2,\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"comment\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 0,\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1176.0, 171.5, 107.0, 33.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\",\n-\t\t\t\t\t\\\"text\\\" : \\\"send a small dict (as JSON)\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"id\\\" : \\\"obj-41\\\",\n-\t\t\t\t\t\\\"maxclass\\\" : \\\"button\\\",\n-\t\t\t\t\t\\\"numinlets\\\" : 1,\n-\t\t\t\t\t\\\"numoutlets\\\" : 1,\n-\t\t\t\t\t\\\"outlettype\\\" : [ \\\"bang\\\" ],\n-\t\t\t\t\t\\\"patching_rect\\\" : [ 1295.5, 207.0, 24.0, 24.0 ],\n-\t\t\t\t\t\\\"style\\\" : \\\"\\\"\n-\t\t\t\t}\n-\n-\t\t\t}\n-, \t\t\t{\n-\t\t\t\t\\\"box\\\" : \t\t\t\t{\n-\t\t\t\t\t\\\"data\\\" : \t\t\t\t\t{\n-\t\t\t\t\t\t\\\"var0\\\" : 0,\n-\t\t\t\t\t\t\\\"var1\\\" : 1,\n-\t\t\t\t\t\t\\\"var2\\\" : 2,\n-\t\t\t\t\t\t\\\"var3\\\" : 3,\n-\t\t\t\t\t\t\\\"var4\\\" : 4,\n-\t\t\t\t\t\t\\\"var5\\\" : 5,\n-\t\t\t\t\t\t\\\"var6\\\" : 6,\n-\t\t\t\t\t\t\\\"var7\\\" : 7,\n-\t\t\t\t\t\t\\\"var8\\\" : 8,\n-\t\t\t\t\t\t\\\"var9\\\" : 9,\n-\t\t\t\t\t\t\\\"var10\\\" : 10,\n-\t\t\t\t\t\t\\\"var11\\\" : 11,\n-\t\t\t\t\t\t\\\"var12\\\" : 12,\n-\t\t\t\t\t\t\\\"var13\\\" : 13,\n-\t\t\t\t\t\t\\\"var14\\\" : 14,\n-\t\t\t\t\t\t\\\"var15\\\" : 15,\n-\t\t\t\t\t\t\\\"var16\\\" : 16,\n-\t\t\t\t\t\t\\\"var17\\\" : 17,\n-\t\t\t\t\t\t\\\"var18\\\" : 18,\n-\t\t\t\t\t\t\\\"var19\\\" : 19,\n-\t\t\t\t\t\t\\\"var20\\\" : 20,\n-\t\t\t\t\t\t\\\"var21\\\" : 21,\n-\t\t\t\t\t\t\\\"var22\\\" : 22,\n-\t\t\t\t\t\t\\\"var23\\\" : 23,\n-\t\t\t\t\t\t\\\"var24\\\" : 24,\n-\t\t\t\t\t\t\\\"var25\\\" : 25,\n-\t\t\t\t\t\t\\\"var26\\\" : 26,\n-\t\t\t\t\t\t\\\"var27\\\" : 27,\n-\t\t\t\t\t\t\\\"var28\\\" : 28,\n-\t\t\t\t\t\t\\\"var29\\\" : 29,\n-\t\t\t\t\t\t\\\"var30\\\" : 30,\n-\t\t\t\t\t\t\\\"var31\\\" : 31,\n-\t\t\t\t\t\t\\\"var32\\\" : 32,\n-\t\t\t\t\t\t\\\"var33\\\" : 33,\n-\t\t\t\t\t\t\\\"var34\\\" : 34,\n-\t\t\t\t\t\t\\\"var35\\\" : 35,\n-\t\t\t\t\t\t\\\"var36\\\" : 36,\n-\t\t\t\t\t\t\\\"var37\\\" : 37,\n-\t\t\t\t\t\t\\\"var38\\\" : 38,\n-\t\t\t\t\t\t\\\"var39\\\" : 39,\n-\t\t\t\t\t\t\\\"var40\\\" : 40,\n-\t\t\t\t\t\t\\\"var41\\\" : 41,\n-\t\t\t\t\t\t\\\"var42\\\" : 42,\n-\t\t\t\t\t\t\\\"var43\\\" : 43,\n-\t\t\t\t\t\t\\\"var44\\\" : 44,\n-\t\t\t\t\t\t\\\"var45\\\" : 45,\n-\t\t\t\t\t\t\\\"var46\\\" : 46,\n-\t\t\t\t\t\t\\\"var47\\\" : 47,\n-\t\t\t\t\t\t\\\"var48\\\" : 48,\n-\t\t\t\t\t\t\\\"var49\\\" : 49,\n-\t\t\t\t\t\t\\\"var50\\\" : 50,\n-\t\t\t\t\t\t\\\"var51\\\" : 51,\n-\t\t\t\t\t\t\\\"var52\\\" : 52,\n-\t\t\t\t\t\t\\\"var53\\\" : 53,\n-\t\t\t\t\t\t\\\"var54\\\" : 54,\n-\t\t\t\t\t\t\\\"var55\\\" : 55,\n-\t\t\t\t\t\t\\\"var56\\\" : 56,\n-\t\t\t\t\t\t\\\"var57\\\" : 57,\n-\t\t\t\t\t\t\\\"var58\\\" : 58,\n-\t\t\t\t\t\t\\\"var59\\\" : 59,\n-\t\t\t\t\t\t\\\"var60\\\" : 60,\n-\t\t\t\t\t\t\\\"var61\\\" : 61,\n-\t\t\t\t\t\t\\\"var62\\\" : 62,\n-\t\t\t\t\t\t\\\"var63\\\" : 63,\n-\t\t\t\t\t\t\\\"var64\\\" : 64,\n-\t\t\t\t\t\t\\\"var65\\\" : 65,\n-\t\t\t\t\t\t\\\"var66\\\" : 66,\n-\t\t\t\t\t\t\\\"var67\\\" : 67,\n-\t\t\t\t\t\t\\\"var68\\\" : 68,\n-\t\t\t\t\t\t\\\"var69\\\" : 69,\n-\t\t\t\t\t\t\\\"var70\\\" : 70,\n-\t\t\t\t\t\t\\\"var71\\\" : 71,\n-\t\t\t\t\t\t\\\"var72\\\" : 72,\n-\t\t\t\t\t\t\\\"var73\\\" : 73,\n-\t\t\t\t\t\t\\\"var74\\\" : 74,\n-\t\t\t\t\t\t\\\"var75\\\" : 75,\n-\t\t\t\t\t\t\\\"var76\\\" : 76,\n-\t\t\t\t\t\t\\\"var77\\\" : 77,\n-\t\t\t\t\t\t\\\"var78\\\" : 78,\n-\t\t\t\t\t\t\\\"var79\\\" : 79,\n-\t\t\t\t\t\t\\\"var80\\\" : 80,\n-\t\t\t\t\t\t\\\"var81\\\" : 81,\n-\t\t\t\t\t\t\\\"var82\\\" : 82,\n-\t\t\t\t\t\t\\\"var83\\\" : 83,\n-\t\t\t\t\t\t\\\"var84\\\" : 84,\n-\t\t\t\t\t\t\\\"var85\\\" : 85,\n-\t\t\t\t\t\t\\\"var86\\\" : 86,\n-\t\t\t\t\t\t\\\"var87\\\" : 87,\n-\t\t\t\t\t\t\\\"var88\\\" : 88,\n-\t\t\t\t\t\t\\\"var89\\\" : 89,\n-\t\t\t\t\t\t\\\"var90\\\" : 90,\n-\t\t\t\t\t\t\\\"var91\\\" : 91,\n-\t\t\t\t\t\t\\\"var92\\\" : 92,\n-\t\t\t\t\t\t\\\"var93\\\" : 93,\n-\t\t\t\t\t\t\\\"var94\\\" : 94,\n-\t\t\t\t\t\t\\\"var95\\\" : 95,\n-\t\t\t\t\t\t\\\"var96\\\" : 96,\n-\t\t\t\t\t\t\\\"var97\\\" : 97,\n-\t\t\t\t\t\t\\\"var98\\\" : 98,\n-\t\t\t\t\t\t\\\"var99\\\" : 99,\n-\t\t\t\t\t\t\\\"var100\\\" : 100,\n-\t\t\t\t\t\t\\\"var101\\\" : 101,\n-\t\t\t\t\t\t\\\"var102\\\" : 102,\n-\t\t\t\t\t\t\\\"var103\\\" : 103,\n-\t\t\t\t\t\t\\\"var104\\\" : 104,\n-\t\t\t\t\t\t\\\"var105\\\" : 105,\n-\t\t\t\t\t\t\\\"var106\\\" : 106,\n-\t\t\t\t\t\t\\\"var107\\\" : 107,\n-\t\t\t\t\t\t\\\"var108\\\" : 108,\n-\t\t\t\t\t\t\\\"var109\\\" : 109,\n-\t\t\t\t\t\t\\\"var110\\\" : 110,\n-\t\t\t\t\t\t\\\"var111\\\" : 111,\n-\t\t\t\t\t\t\\\"var112\\\" : 112,\n-\t\t\t\t\t\t\\\"var113\\\" : 113,\n-\t\t\t\t\t\t\\\"var114\\\" : 114,\n-\t\t\t\t\t\t\\\"var115\\\" : 115,\n-\t\t\t\t\t\t\\\"var116\\\" : 116,\n-\t\t\t\t\t\t\\\"var117\\\" : 117,\n-\t\t\t\t\t\t\\\"var118\\\" : 118,\n-\t\t\t\t\t\t\\\"var119\\\" : 119,\n-\t\t\t\t\t\t\\\"var120\\\" : 120,\n-\t\t\t\t\t\t\\\"var121\\\" : 121,\n-\t\t\t\t\t\t\\\"var122\\\" : 122,\n-\t\t\t\t\t\t\\\"var123\\\" : 123,\n-\t\t\t\t\t\t\\\"var124\\\" : 124,\n-\t\t\t\t\t\t\\\"var125\\\" : 125,\n-\t\t\t\t\t\t\\\"var126\\\" : 126,\n-\t\t\t\t\t\t\\\"var127\\\" : 127,\n-\t\t\t\t\t\t\\\"var128\\\" : 128,\n-\t\t\t\t\t\t\\\"var129\\\" : 129,\n-\t\t\t\t\t\t\\\"var130\\\" : 130,\n-\t\t\t\t\t\t\\\"var131\\\" : 131,\n-\t\t\t\t\t\t\\\"var132\\\" : 132,\n-\t\t\t\t\t\t\\\"var133\\\" : 133,\n-\t\t\t\t\t\t\\\"var134\\\" : 134,\n-\t\t\t\t\t\t\\\"var135\\\" : 135,\n-\t\t\t\t\t\t\\\"var136\\\" : 136,\n-\t\t\t\t\t\t\\\"var137\\\" : 137,\n-\t\t\t\t\t\t\\\"var138\\\" : 138,\n-\t\t\t\t\t\t\\\"var139\\\" : 139,\n-\t\t\t\t\t\t\\\"var140\\\" : 140,\n-\t\t\t\t\t\t\\\"var141\\\" : 141,\n-\t\t\t\t\t\t\\\"var142\\\" : 142,\n-\t\t\t\t\t\t\\\"var143\\\" : 143,\n-\t\t\t\t\t\t\\\"var144\\\" : 144,\n-\t\t\t\t\t\t\\\"var145\\\" : 145,\n-\t\t\t\t\t\t\\\"var146\\\" : 146,\n-\t\t\t\t\t\t\\\"var147\\\" : 147,\n-\t\t\t\t\t\t\\\"var148\\\" : 148,\n-\t\t\t\t\t\t\\\"var149\\\" : 149,\n-\t\t\t\t\t\t\\\"var150\\\" : 150,\n-\t\t\t\t\t\t\\\"var151\\\" : 151,\n-\t\t\t\t\t\t\\\"var152\\\" : 152,\n-\t\t\t\t\t\t\\\"var153\\\" : 153,\n-\t\t\t\t\t\t\\\"var154\\\" : 154,\n-\t\t\t\t\t\t\\\"var155\\\" : 155,\n-\t\t\t\t\t\t\\\"var156\\\" : 156,\n-\t\t\t\t\t\t\\\"var157\\\" : 157,\n-\t\t\t\t\t\t\\\"var158\\\" : 158,\n-\t\t\t\t\t\t\\\"var159\\\" : 159,\n-\t\t\t\t\t\t\\\"var160\\\" : 160,\n-\t\t\t\t\t\t\\\"var161\\\" : 161,\n-\t\t\t\t\t\t\\\"var162\\\" : 162,\n-\t\t\t\t\t\t\\\"var163\\\" : 163,\n-\t\t\t\t\t\t\\\"var164\\\" : 164,\n-\t\t\t\t\t\t\\\"var165\\\" : 165,\n-\t\t\t\t\t\t\\\"var166\\\" : 166,\n-\t\t\t\t\t\t\\\"var167\\\" : 167,\n-\t\t\t\t\t\t\\\"var168\\\" : 168,\n-\t\t\t\t\t\t\\\"var169\\\" : 169,\n-\t\t\t\t\t\t\\\"var170\\\" : 170,\n-\t\t\t\t\t\t\\\"var171\\\" : 171,\n-\t\t\t\t\t\t\\\"var172\\\" : 172,\n-\t\t\t\t\t\t\\\"var173\\\" : 173,\n-\t\t\t\t\t\t\\\"var174\\\" : 174,\n-\t\t\t\t\t\t\\\"var175\\\" : 175,\n-\t\t\t\t\t\t\\\"var176\\\" : 176,\n-\t\t\t\t\t\t\\\"var177\\\" : 177,\n-\t\t\t\t\t\t\\\"var178\\\" : 178,\n-\t\t\t\t\t\t\\\"var179\\\" : 179,\n-\t\t\t\t\t\t\\\"var180\\\" : 180,\n-\t\t\t\t\t\t\\\"var181\\\" : 181,\n-\t\t\t\t\t\t\\\"var182\\\" : 182,\n-\t\t\t\t\t\t\\\"var183\\\" : 183,\n-\t\t\t\t\t\t\\\"var184\\\" : 184,\n-\t\t\t\t\t\t\\\"var185\\\" : 185,\n-\t\t\t\t\t\t\\\"var186\\\" : 186,\n-\t\t\t\t\t\t\\\"var187\\\" : 187,\n-\t\t\t\t\t\t\\\"var188\\\" : 188,\n-\t\t\t\t\t\t\\\"var189\\\" : 189,\n-\t\t\t\t\t\t\\\"var190\\\" : 190,\n-\t\t\t\t\t\t\\\"var191\\\" : 191,\n-\t\t\t\t\t\t\\\"var192\\\" : 192,\n-\t\t\t\t\t\t\\\"var193\\\" : 193,\n-\t\t\t\t\t\t\\\"var194\\\" : 194,\n-\t\t\t\t\t\t\\\"var195\\\" : 195,\n-\t\t\t\t\t\t\\\"var196\\\" : 196,\n-\t\t\t\t\t\t\\\"var197\\\" : 197,\n-\t\t\t\t\t\t\\\"var198\\\" : 198,\n-\t\t\t\t\t\t\\\"var199\\\" : 199,\n-\t\t\t\t\t\t\\\"var200\\\" : 200,\n-\t\t\t\t\t\t\\\"var201\\\" : 201,\n-\t\t\t\t\t\t\\\"var202\\\" : 202,\n-\t\t\t\t\t\t\\\"var203\\\" : 203,\n-\t\t\t\t\t\t\\\"var204\\\" : 204,\n-\t\t\t\t\t\t\\\"var205\\\" : 205,\n-\t\t\t\t\t\t\\\"var206\\\" : 206,\n-\t\t\t\t\t\t\\\"var207\\\" : 207,\n-\t\t\t\t\t\t\\\"var208\\\" : 208,\n-\t\t\t\t\t\t\\\"var209\\\" : 209,\n-\t\t\t\t\t\t\\\"var210\\\" : 210,\n-\t\t\t\t\t\t\\\"var211\\\" : 211,\n-\t\t\t\t\t\t\\\"var212\\\" : 212,\n-\t\t\t\t\t\t\\\"var213\\\" : 213,\n-\t\t\t\t\t\t\\\"var214\\\" : 214,\n-\t\t\t\t\t\t\\\"var215\\\" : 215,\n-\t\t\t\t\t\t\\\"var216\\\" : 216,\n-\t\t\t\t\t\t\\\"var217\\\" : 217,\n-\t\t\t\t\t\t\\\"var218\\\" : 218,\n-\t\t\t\t\t\t\\\"var219\\\" : 219,\n-\t\t\t\t\t\t\\\"var220\\\" : 220,\n-\t\t\t\t\t\t\\\"var221\\\" : 221,\n-\t\t\t\t\t\t\\\"var222\\\" : 222,\n-\t\t\t\t\t\t\\\"var223\\\" : 223,\n-\t\t\t\t\t\t\\\"var224\\\" : 224,\n-\t\t\t\t\t\t\\\"var225\\\" : 225,\n-\t\t\t\t\t\t\\\"var226\\\" : 226,\n-\t\t\t\t\t\t\\\"var227\\\" : 227,\n-\t\t\t\t\t\t\\\"var228\\\" : 228,\n-\t\t\t\t\t\t\\\"var229\\\" : 229,\n-\t\t\t\t\t\t\\\"var230\\\" : 230,\n-\t\t\t\t\t\t\\\"var231\\\" : 231,\n-\t\t\t\t\t\t\\\"var232\\\" : 232,\n-\t\t\t\t\t\t\\\"var233\\\" : 233,\n-\t\t\t\t\t\t\\\"var234\\\" : 234,\n-\t\t\t\t\t\t\\\"var235\\\" : 235,\n-\t\t\t\t\t\t\\\"var236\\\" : 236,\n-\t\t\t\t\t\t\\\"var237\\\" : 237,\n-\t\t\t\t\t\t\\\"var238\\\" : 238,\n-\t\t\t\t\t\t\\\"var239\\\" : 239,\n-\t\t\t\t\t\t\\\"var240\\\" : 240,\n-\t\t\t\t\t\t\\\"var241\\\" : 241,\n-\t\t\t\t\t\t\\\"var242\\\" : 242,\n-\t\t\t\t\t\t\\\"var243\\\" : 243,\n-\t\t\t\t\t\t\\\"var244\\\" : 244,\n-\t\t\t\t\t\t\\\"var245\\\" : 245,\n-\t\t\t\t\t\t\\\"var246\\\" : 246,\n-\t\t\t\t\t\t\\\"var247\\\" : 247,\n-\t\t\t\t\t\t\\\"var248\\\" : 248,\n-\t\t\t\t\t\t\\\"var249\\\" : 249,\n-\t\t\t\t\t\t\\\"var250\\\" : 250,\n-\t\t\t\t\t\t\\\"var251\\\" : 251,\n-\t\t\t\t\t\t\\\"var252\\\" : 252,\n-\t\t\t\t\t\t\\\"var253\\\" : 253,\n-\t\t\t\t\t\t\\\"var254\\\" : 254,\n-\t\t\t\t\t\t\\\"var255\\\" : 255,\n-\t\t\t\t\t\t\\\"var256\\\" : 256,\n-\t\t\t\t\t\t\\\"var257\\\" : 257,\n-\t\t\t\t\t\t\\\"var258\\\" : 258,\n-\t\t\t\t\t\t\\\"var259\\\" : 259,\n-\t\t\t\t\t\t\\\"var260\\\" : 260,\n-\t\t\t\t\t\t\\\"var261\\\" : 261,\n-\t\t\t\t\t\t\\\"var262\\\" : 262,\n-\t\t\t\t\t\t\\\"var263\\\" : 263,\n-\t\t\t\t\t\t\\\"var264\\\" : 264,\n-\t\t\t\t\t\t\\\"var265\\\" : 265,\n-\t\t\t\t\t\t\\\"var266\\\" : 266,\n-\t\t\t\t\t\t\\\"var267\\\" : 267,\n-\t\t\t\t\t\t\\\"var268\\\" : 268,\n-\t\t\t\t\t\t\\\"var269\\\" : 269,\n-\t\t\t\t\t\t\\\"var270\\\" : 270,\n-\t\t\t\t\t\t\\\"var271\\\" : 271,\n-\t\t\t\t\t\t\\\"var272\\\" : 272,\n-\t\t\t\t\t\t\\\"var273\\\" : 273,\n-\t\t\t\t\t\t\\\"var274\\\" : 274,\n-\t\t\t\t\t\t\\\"var275\\\" : 275,\n-\t\t\t\t\t\t\\\"var276\\\" : 276,\n-\t\t\t\t\t\t\\\"var277\\\" : 277,\n-\t\t\t\t\t\t\\\"var278\\\" : 278,\n-\t\t\t\t\t\t\\\"var279\\\" : 279,\n-\t\t\t\t\t\t\\\"var280\\\" : 280,\n-\t\t\t\t\t\t\\\"var281\\\" : 281,\n-\t\t\t\t\t\t\\\"var282\\\" : 282,\n-\t\t\t\t\t\t\\\"var283\\\" : 283,\n-\t\t\t\t\t\t\\\"var284\\\" : 284,\n-\t\t\t\t\t\t\\\"var285\\\" : 285,\n-\t\t\t\t\t\t\\\"var286\\\" : 286,\n-\t\t\t\t\t\t\\\"var287\\\" : 287,\n-\t\t\t\t\t\t\\\"var288\\\" : 288,\n-\t\t\t\t\t\t\\\"var289\\\" : 289,\n-\t\t\t\t\t\t\\\"var290\\\" : 290,\n-\t\t\t\t\t\t\\\"var291\\\" : 291,\n-\t\t\t\t\t\t\\\"var292\\\" : 292,\n-\t\t\t\t\t\t\\\"var293\\\" : 293,\n-\t\t\t\t\t\t\\\"var294\\\" : 294,\n-\t\t\t\t\t\t\\\"var295\\\" : 295,\n-\t\t\t\t\t\t\\\"var296\\\" : 296,\n-\t\t\t\t\t\t\\\"var297\\\" : 297,\n-\t\t\t\t\t\t\\\"var298\\\" : 298,\n-\t\t\t\t\t\t\\\"var299\\\" : 299,\n-\t\t\t\t\t\t\\\"var300\\\" : 300,\n-\t\t\t\t\t\t\\\"var301\\\" : 301,\n-\t\t\t\t\t\t\\\"var302\\\" : 302,\n-\t\t\t\t\t\t\\\"var303\\\" : 303,\n-\t\t\t\t\t\t\\\"var304\\\" : 304,\n-\t\t\t\t\t\t\\\"var305\\\" : 305,\n-\t\t\t\t\t\t\\\"var306\\\" : 306,\n-\t\t\t\t\t\t\\\"var307\\\" : 307,\n-\t\t\t\t\t\t\\\"var308\\\" : 308,\n-\t\t\t\t\t\t\\\"var309\\\" : 309,\n-\t\t\t\t\t\t\\\"var310\\\" : 310,\n-\t\t\t\t\t\t\\\"var311\\\" : 311,\n-\t\t\t\t\t\t\\\"var312\\\" : 312,\n-\t\t\t\t\t\t\\\"var313\\\" : 313,\n-\t\t\t\t\t\t\\\"var314\\\" : 314,\n-\t\t\t\t\t\t\\\"var315\\\" : 315,\n-\t\t\t\t\t\t\\\"var316\\\" : 316,\n-\t\t\t\t\t\t\\\"var317\\\" : 317,\n-\t\t\t\t\t\t\\\"var318\\\" : 318,\n-\t\t\t\t\t\t\\\"var319\\\" : 319,\n-\t\t\t\t\t\t\\\"var320\\\" : 320,\n-\t\t\t\t\t\t\\\"var321\\\" : 321,\n-\t\t\t\t\t\t\\\"var322\\\" : 322,\n-\t\t\t\t\t\t\\\"var323\\\" : 323,\n-\t\t\t\t\t\t\\\"var324\\\" : 324,\n-\t\t\t\t\t\t\\\"var325\\\" : 325,\n-\t\t\t\t\t\t\\\"var326\\\" : 326,\n-\t\t\t\t\t\t\\\"var327\\\" : 327,\n-\t\t\t\t\t\t\\\"var328\\\" : 328,\n-\t\t\t\t\t\t\\\"var329\\\" : 329,\n-\t\t\t\t\t\t\\\"var330\\\" : 330,\n-\t\t\t\t\t\t\\\"var331\\\" : 331,\n-\t\t\t\t\t\t\\\"var332\\\" : 332,\n-\t\t\t\t\t\t\\\"var333\\\" : 333,\n-\t\t\t\t\t\t\\\"var334\\\" : 334,\n-\t\t\t\t\t\t\\\"var335\\\" : 335,\n-\t\t\t\t\t\t\\\"var336\\\" : 336,\n-\t\t\t\t\t\t\\\"var337\\\" : 337,\n-\t\t\t\t\t\t\\\"var338\\\" : 338,\n-\t\t\t\t\t\t\\\"var339\\\" : 339,\n-\t\t\t\t\t\t\\\"var340\\\" : 340,\n-\t\t\t\t\t\t\\\"var341\\\" : 341,\n-\t\t\t\t\t\t\\\"var342\\\" : 342,\n-\t\t\t\t\t\t\\\"var343\\\" : 343,\n-\t\t\t\t\t\t\\\"var344\\\" : 344,\n-\t\t\t\t\t\t\\\"var345\\\" : 345,\n-\t\t\t\t\t\t\\\"var346\\\" : 346,\n-\t\t\t\t\t\t\\\"var347\\\" : 347,\n-\t\t\t\t\t\t\\\"var348\\\" : 348,\n-\t\t\t\t\t\t\\\"var349\\\" : 349,\n-\t\t\t\t\t\t\\\"var350\\\" : 350,\n-\t\t\t\t\t\t\\\"var351\\\" : 351,\n-\t\t\t\t\t\t\\\"var352\\\" : 352,\n-\t\t\t\t\t\t\\\"var353\\\" : 353,\n-\t\t\t\t\t\t\\\"var354\\\" : 354,\n-\t\t\t\t\t\t\\\"var355\\\" : 355,\n-\t\t\t\t\t\t\\\"var356\\\" : 356,\n-\t\t\t\t\t\t\\\"var357\\\" : 357,\n-\t\t\t\t\t\t\\\"var358\\\" : 358,\n-\t\t\t\t\t\t\\\"var359\\\" : 359,\n-\t\t\t\t\t\t\\\"var360\\\" : 360,\n-\t\t\t\t\t\t\\\"var361\\\" : 361,\n-\t\t\t\t\t\t\\\"var362\\\" : 362,\n-\t\t\t\t\t\t\\\"var363\\\" : 363,\n-\t\t\t\t\t\t\\\"var364\\\" : 364,\n-\t\t\t\t\t\t\\\"var365\\\" : 365,\n-\t\t\t\t\t\t\\\"var366\\\" : 366,\n-\t\t\t\t\t\t\\\"var367\\\" : 367,\n-\t\t\t\t\t\t\\\"var368\\\" : 368,\n-\t\t\t\t\t\t\\\"var369\\\" : 369,\n-\t\t\t\t\t\t\\\"var370\\\" : 370,\n-\t\t\t\t\t\t\\\"var371\\\" : 371,\n-\t\t\t\t\t\t\\\"var372\\\" : 372,\n-\t\t\t\t\t\t\\\"var373\\\" : 373,\n-\t\t\t\t\t\t\\\"var374\\\" : 374,\n-\t\t\t\t\t\t\\\"var375\\\" : 375,\n-\t\t\t\t\t\t\\\"var376\\\" : 376,\n-\t\t\t\t\t\t\\\"var377\\\" : 377,\n-\t\t\t\t\t\t\\\"var378\\\" : 378,\n-\t\t\t\t\t\t\\\"var379\\\" : 379,\n-\t\t\t\t\t\t\\\"var380\\\" : 380,\n-\t\t\t\t\t\t\\\"var381\\\" : 381,\n-\t\t\t\t\t\t\\\"var382\\\" : 382,\n-\t\t\t\t\t\t\\\"var383\\\" : 383,\n-\t\t\t\t\t\t\\\"var384\\\" : 384,\n-\t\t\t\t\t\t\\\"var385\\\" : 385,\n-\t\t\t\t\t\t\\\"var386\\\" : 386,\n-\t\t\t\t\t\t\\\"var387\\\" : 387,\n-\t\t\t\t\t\t\\\"var388\\\" : 388,\n-\t\t\t\t\t\t\\\"var389\\\" : 389,\n-\t\t\t\t\t\t\\\"var390\\\" : 390,\n-\t\t\t\t\t\t\\\"var391\\\" : 391,\n-\t\t\t\t\t\t\\\"var392\\\" : 392,\n-\t\t\t\t\t\t\\\"var393\\\" : 393,\n-\t\t\t\t\t\t\\\"var394\\\" : 394,\n-\t\t\t\t\t\t\\\"var395\\\" : 395,\n-\t\t\t\t\t\t\\\"var396\\\" : 396,\n-\t\t\t\t\t\t\\\"var397\\\" : 397,\n-\t\t\t\t\t\t\\\"var398\\\" : 398,\n-\t\t\t\t\t\t\\\"var399\\\" : 399,\n-\t\t\t\t\t\t\\\"var400\\\" : 400,\n-\t\t\t\t\t\t\\\"var401\\\" : 401,\n-\t\t\t\t\t\t\\\"var402\\\" : 402,\n-\t\t\t\t\t\t\\\"var403\\\" : 403,\n-\t\t\t\t\t\t\\\"var404\\\" : 404,\n-\t\t\t\t\t\t\\\"var405\\\" : 405,\n-\t\t\t\t\t\t\\\"var406\\\" : 406,\n-\t\t\t\t\t\t\\\"var407\\\" : 407,\n-\t\t\t\t\t\t\\\"var408\\\" : 408,\n-\t\t\t\t\t\t\\\"var409\\\" : 409,\n-\t\t\t\t\t\t\\\"var410\\\" : 410,\n-\t\t\t\t\t\t\\\"var411\\\" : 411,\n-\t\t\t\t\t\t\\\"var412\\\" : 412,\n-\t\t\t\t\t\t\\\"var413\\\" : 413,\n-\t\t\t\t\t\t\\\"var414\\\" : 414,\n-\t\t\t\t\t\t\\\"var415\\\" : 415,\n-\t\t\t\t\t\t\\\"var416\\\" : 416,\n-\t\t\t\t\t\t\\\"var417\\\" : 417,\n-\t\t\t\t\t\t\\\"var418\\\" : 418,\n-\t\t\t\t\t\t\\\"var419\\\" : 419,\n-\t\t\t\t\t\t\\\"var420\\\" : 420,\n-\t\t\t\t\t\t\\\"var421\\\" : 421,\n-\t\t\t\t\t\t\\\"var422\\\" : 422,\n-\t\t\t\t\t\t\\\"var423\\\" : 423,\n-\t\t\t\t\t\t\\\"var424\\\" : 424,\n-\t\t\t\t\t\t\\\"var425\\\" : 425,\n-\t\t\t\t\t\t\\\"var426\\\" : 426,\n-\t\t\t\t\t\t\\\"var427\\\" : 427,\n-\t\t\t\t\t\t\\\"var428\\\" : 428,\n-\t\t\t\t\t\t\\\"var429\\\" : 429,\n-\t\t\t\t\t\t\\\"var430\\\" : 430,\n-\t\t\t\t\t\t\\\"var431\\\" : 431,\n-\t\t\t\t\t\t\\\"var432\\\" : 432,\n-\t\t\t\t\t\t\\\"var433\\\" : 433,\n-\t\t\t\t\t\t\\\"var434\\\" : 434,\n-\t\t\t\t\t\t\\\"var435\\\" : 435,\n-\t\t\t\t\t\t\\\"var436\\\" : 436,\n-\t\t\t\t\t\t\\\"var437\\\" : 437,\n-\t\t\t\t\t\t\\\"var438\\\" : 438,\n-\t\t\t\t\t\t\\\"var439\\\" : 439,\n-\t\t\t\t\t\t\\\"var440\\\" : 440,\n-\t\t\t\t\t\t\\\"var441\\\" : 441,\n-\t\t\t\t\t\t\\\"var442\\\" : 442,\n-\t\t\t\t\t\t\\\"var443\\\" : 443,\n-\t\t\t\t\t\t\\\"var444\\\" : 444,\n-\t\t\t\t\t\t\\\"var445\\\" : 445,\n-\t\t\t\t\t\t\\\"var446\\\" : 446,\n-\t\t\t\t\t\t\\\"var447\\\" : 447,\n-\t\t\t\t\t\t\\\"var448\\\" : 448,\n-\t\t\t\t\t\t\\\"var449\\\" : 449,\n-\t\t\t\t\t\t\\\"var450\\\" : 450,\n-\t\t\t\t\t\t\\\"var451\\\" : 451,\n-\t\t\t\t\t\t\\\"var452\\\" : 452,\n-\t\t\t\t\t\t\\\"var453\\\" : 453,\n-\t\t\t\t\t\t\\\"var454\\\" : 454,\n-\t\t\t\t\t\t\\\"var455\\\" : 455,\n-\t\t\t\t\t\t\\\"var456\\\" : 456,\n-\t\t\t\t\t\t\\\"var457\\\" : 457,\n-\t\t\t\t\t\t\\\"var458\\\" : 458,\n-\t\t\t\t\t\t\\\"var459\\\" : 459,\n-\t\t\t\t\t\t\\\"var460\\\" : 460,\n-\t\t\t\t\t\t\\\"var461\\\" : 461,\n-\t\t\t\t\t\t\\\"var462\\\" : 462,\n-\t\t\t\t\t\t\\\"var463\\\" : 463,\n-\t\t\t\t\t\t\\\"var464\\\" : 464,\n-\t\t\t\t\t\t\\\"var465\\\" : 465,\n-\t\t\t\t\t\t\\\"var466\\\" : 466,\n-\t\t\t\t\t\t\\\"var467\\\" : 467,\n-\t\t\t\t\t\t\\\"var468\\\" : 468,\n-\t\t\t\t\t\t\\\"var469\\\" : 469,\n-\t\t\t\t\t\t\\\"var470\\\" : 470,\n-\t\t\t\t\t\t\\\"var471\\\" : 471,\n-\t\t\t\t\t\t\\\"var472\\\" : 472,\n-\t\t\t\t\t\t\\\"var473\\\" : 473,\n-\t\t\t\t\t\t\\\"var474\\\" : 474,\n-\t\t\t\t\t\t\\\"var475\\\" : 475,\n-\t\t\t\t\t\t\\\"var476\\\" : 476,\n-\t\t\t\t\t\t\\\"var477\\\" : 477,\n-\t\t\t\t\t\t\\\"var478\\\" : 478,\n-\t\t\t\t\t\t\\\"var479\\\" : 479,\n-\t\t\t\t\t\t\\\"var480\\\" : 480,\n-\t\t\t\t\t\t\\\"var481\\\" : 481,\n-\t\t\t\t\t\t\\\"var482\\\" : 482,\n-\t\t\t\t\t\t\\\"var483\\\" : 483,\n-\t\t\t\t\t\t\\\"var484\\\" : 484,\n-\t\t\t\t\t\t\\\"var485\\\" : 485,\n-\t\t\t\t\t\t\\\"var486\\\" : 486,\n-\t\t\t\t\t\t\\\"var487\\\" : 487,\n-\t\t\t\t\t\t\\\"var488\\\" : 488,\n-\t\t\t\t\t\t\\\"var489\\\" : 489,\n-\t\t\t\t\t\t\\\"var490\\\" : 490,\n-\t\t\t\t\t\t\\\"var491\\\" : 491,\n-\t\t\t\t\t\t\\\"var492\\\" : 492,\n-\t\t\t\t\t\t\\\"var493\\\" : 493,\n-\t\t\t\t\t\t\\\"var494\\\" : 494,\n-\t\t\t\t\t\t\\\"var495\\\" : 495,\n-\t\t\t\t\t\t\\\"var496\\\" : 496,\n-\t\t\t\t\t\t\\\"var497\\\" : 497,\n-\t\t\t\t\t\t\\\"var498\\\" : 498,\n-\t\t\t\t\t\t\\\"var499\\\" : 499,\n-\t\t\t\t\t\t\\\"var500\\\" : 500,\n-\t\t\t\t\t\t\\\"var501\\\" : 501,\n-\t\t\t\t\t\t\\\"var502\\\" : 502,\n-\t\t\t\t\t\t\\\"var503\\\" : 503,\n-\t\t\t\t\t\t\\\"var504\\\" : 504,\n-\t\t\t\t\t\t\\\"var505\\\" : 505,\n-\t\t\t\t\t\t\\\"var506\\\" : 506,\n-\t\t\t\t\t\t\\\"var507\\\" : 507,\n-\t\t\t\t\t\t\\\"var508\\\" : 508,\n-\t\t\t\t\t\t\\\"var509\\\" : 509,\n-\t\t\t\t\t\t\\\"var510\\\" : 510,\n-\t\t\t\t\t\t\\\"var511\\\" : 511,\n-\t\t\t\t\t\t\\\"var512\\\" : 512,\n-\t\t\t\t\t\t\\\"var513\\\" : 513,\n-\t\t\t\t\t\t\\\"var514\\\" : 514,\n-\t\t\t\t\t\t\\\"var515\\\" : 515,\n-\t\t\t\t\t\t\\\"var516\\\" : 516,\n-\t\t\t\t\t\t\\\"var517\\\" : 517,\n-\t\t\t\t\t\t\\\"var518\\\" : 518,\n-\t\t\t\t\t\t\\\"var519\\\" : 519,\n-\t\t\t\t\t\t\\\"var520\\\" : 520,\n-\t\t\t\t\t\t\\\"var521\\\" : 521,\n-\t\t\t\t\t\t\\\"var522\\\" : 522,\n-\t\t\t\t\t\t\\\"var523\\\" : 523,\n-\t\t\t\t\t\t\\\"var524\\\" : 524,\n-\t\t\t\t\t\t\\\"var525\\\" : 525,\n-\t\t\t\t\t\t\\\"var526\\\" : 526,\n-\t\t\t\t\t\t\\\"var527\\\" : 527,\n-\t\t\t\t\t\t\\\"var528\\\" : 528,\n-\t\t\t\t\t\t\\\"var529\\\" : 529,\n-\t\t\t\t\t\t\\\"var530\\\" : 530,\n-\t\t\t\t\t\t\\\"var531\\\" : 531,\n-\t\t\t\t\t\t\\\"var532\\\" : 532,\n-\t\t\t\t\t\t\\\"var533\\\" : 533,\n-\t\t\t\t\t\t\\\"var534\\\" : 534,\n-\t\t\t\t\t\t\\\"var535\\\" : 535,\n-\t\t\t\t\t\t\\\"var536\\\" : 536,\n-\t\t\t\t\t\t\\\"var537\\\" : 537,\n-\t\t\t\t\t\t\\\"var538\\\" : 538,\n-\t\t\t\t\t\t\\\"var539\\\" : 539,\n-\t\t\t\t\t\t\\\"var540\\\" : 540,\n-\t\t\t\t\t\t\\\"var541\\\" : 541,\n-\t\t\t\t\t\t\\\"var542\\\" : 542,\n-\t\t\t\t\t\t\\\"var543\\\" : 543,\n-\t\t\t\t\t\t\\\"var544\\\" : 544,\n-\t\t\t\t\t\t\\\"var545\\\" : 545,\n-\t\t\t\t\t\t\\\"var546\\\" : 546,\n-\t\t\t\t\t\t\\\"var547\\\" : 547,\n-\t\t\t\t\t\t\\\"var548\\\" : 548,\n-\t\t\t\t\t\t\\\"var549\\\" : 549,\n-\t\t\t\t\t\t\\\"var550\\\" : 550,\n-\t\t\t\t\t\t\\\"var551\\\" : 551,\n-\t\t\t\t\t\t\\\"var552\\\" : 552,\n-\t\t\t\t\t\t\\\"var553\\\" : 553,\n-\t\t\t\t\t\t\\\"var554\\\" : 554,\n-\t\t\t\t\t\t\\\"var555\\\" : 555,\n-\t\t\t\t\t\t\\\"var556\\\" : 556,\n-\t\t\t\t\t\t\\\"var557\\\" : 557,\n-\t\t\t\t\t\t\\\"var558\\\" : 558,\n-\t\t\t\t\t\t\\\"var559\\\" : 559,\n-\t\t\t\t\t\t\\\"var560\\\" : 560,\n-\t\t\t\t\t\t\\\"var561\\\" : 561,\n-\t\t\t\t\t\t\\\"var562\\\" : 562,\n-\t\t\t\t\t\t\\\"var563\\\" : 563,\n-\t\t\t\t\t\t\\\"var564\\\" : 564,\n-\t\t\t\t\t\t\\\"var565\\\" : 565,\n-\t\t\t\t\t\t\\\"var566\\\" : 566,\n-\t\t\t\t\t\t\\\"var567\\\" : 567,\n-\t\t\t\t\t\t\\\"var568\\\" : 568,\n-\t\t\t\t\t\t\\\"var569\\\" : 569,\n-\t\t\t\t\t\t\\\"var570\\\" : 570,\n-\t\t\t\t\t\t\\\"var571\\\" : 571,\n-\t\t\t\t\t\t\\\"var572\\\" : 572,\n-\t\t\t\t\t\t\\\"var573\\\" : 573,\n-\t\t\t\t\t\t\\\"var574\\\" : 574,\n-\t\t\t\t\t\t\\\"var575\\\" : 575,\n-\t\t\t\t\t\t\\\"var576\\\" : 576,\n-\t\t\t\t\t\t\\\"var577\\\" : 577,\n-\t\t\t\t\t\t\\\"var578\\\" : 578,\n-\t\t\t\t\t\t\\\"var579\\\" : 579,\n-\t\t\t\t\t\t\\\"var580\\\" : 580,\n-\t\t\t\t\t\t\\\"var581\\\" : 581,\n-\t\t\t\t\t\t\\\"var582\\\" : 582,\n-\t\t\t\t\t\t\\\"var583\\\" : 583,\n-\t\t\t\t\t\t\\\"var584\\\" : 584,\n-\t\t\t\t\t\t\\\"var585\\\" : 585,\n-\t\t\t\t\t\t\\\"var586\\\" : 586,\n-\t\t\t\t\t\t\\\"var587\\\" : 587,\n-\t\t\t\t\t\t\\\"var588\\\" : 588,\n-\t\t\t\t\t\t\\\"var589\\\" : 589,\n-\t\t\t\t\t\t\\\"var590\\\" : 590,\n-\t\t\t\t\t\t\\\"var591\\\" : 591,\n-\t\t\t\t\t\t\\\"var592\\\" : 592,\n-\t\t\t\t\t\t\\\"var593\\\" : 593,\n-\t\t\t\t\t\t\\\"var594\\\" : 594,\n-\t\t\t\t\t\t\\\"var595\\\" : 595,\n-\t\t\t\t\t\t\\\"var596\\\" : 596,\n-\t\t\t\t\t\t\\\"var597\\\" : 597,\n-\t\t\t\t\t\t\\\"var598\\\" : 598,\n-\t\t\t\t\t\t\\\"var599\\\" : 599,\n-\t\t\t\t\t\t\\\"var600\\\" : 600,\n-\t\t\t\t\t\t\\\"var601\\\" : 601,\n-\t\t\t\t\t\t\\\"var602\\\" : 602,\n-\t\t\t\t\t\t\\\"var603\\\" : 603,\n-\t\t\t\t\t\t\\\"var604\\\" : 604,\n-\t\t\t\t\t\t\\\"var605\\\" : 605,\n-\t\t\t\t\t\t\\\"var606\\\" : 606,\n-\t\t\t\t\t\t\\\"var607\\\" : 607,\n-\t\t\t\t\t\t\\\"var608\\\" : 608,\n-\t\t\t\t\t\t\\\"var609\\\" : 609,\n-\t\t\t\t\t\t\\\"var610\\\" : 610,\n-\t\t\t\t\t\t\\\"var611\\\" : 611,\n-\t\t\t\t\t\t\\\"var612\\\" : 612,\n-\t\t\t\t\t\t\\\"var613\\\" : 613,\n-\t\t\t\t\t\t\\\"var614\\\" : 614,\n-\t\t\t\t\t\t\\\"var615\\\" : 615,\n-\t\t\t\t\t\t\\\"var616\\\" : 616,\n-\t\t\t\t\t\t\\\"var617\\\" : 617,\n-\t\t\t\t\t\t\\\"var618\\\" : 618,\n-\t\t\t\t\t\t\\\"var619\\\" : 619,\n-\t\t\t\t\t\t\\\"var620\\\" : 620,\n-\t\t\t\t\t\t\\\"var621\\\" : 621,\n-\t\t\t\t\t\t\\\"var622\\\" : 622,\n-\t\t\t\t\t\t\\\"var623\\\" : 623,\n-\t\t\t\t\t\t\\\"var624\\\" : 624,\n-\t\t\t\t\t\t\\\"var625\\\" : 625,\n-\t\t\t\t\t\t\\\"var626\\\" : 626,\n-\t\t\t\t\t\t\\\"var627\\\" : 627,\n-\t\t\t\t\t\t\\\"var628\\\" : 628,\n-\t\t\t\t\t\t\\\"var629\\\" : 629,\n-\t\t\t\t\t\t\\\"var630\\\" : 630,\n-\t\t\t\t\t\t\\\"var631\\\" : 631,\n-\t\t\t\t\t\t\\\"var632\\\" : 632,\n-\t\t\t\t\t\t\\\"var633\\\" : 633,\n-\t\t\t\t\t\t\\\"var634\\\" : 634,\n-\t\t\t\t\t\t\\\"var635\\\" : 635,\n-\t\t\t\t\t\t\\\"var636\\\" : 636,\n-\t\t\t\t\t\t\\\"var637\\\" : 637,\n-\t\t\t\t\t\t\\\"var638\\\" : 638,\n-\t\t\t\t\t\t\\\"var639\\\" : 639,\n-\t\t\t\t\t\t\\\"var640\\\" : 640,\n-\t\t\t\t\t\t\\\"var641\\\" : 641,\n-\t\t\t\t\t\t\\\"var642\\\" : 642,\n-\t\t\t\t\t\t\\\"var643\\\" : 643,\n-\t\t\t\t\t\t\\\"var644\\\" : 644,\n-\t\t\t\t\t\t\\\"var645\\\" : 645,\n-\t\t\t\t\t\t\\\"var646\\\" : 646,\n-\t\t\t\t\t\t\\\"var647\\\" : 647,\n-\t\t\t\t\t\t\\\"var648\\\" : 648,\n-\t\t\t\t\t\t\\\"var649\\\" : 649,\n-\t\t\t\t\t\t\\\"var650\\\" : 650,\n-\t\t\t\t\t\t\\\"var651\\\" : 651,\n-\t\t\t\t\t\t\\\"var652\\\" : 652,\n-\t\t\t\t\t\t\\\"var653\\\" : 653,\n-\t\t\t\t\t\t\\\"var654\\\" : 654,\n-\t\t\t\t\t\t\\\"var655\\\" : 655,\n-\t\t\t\t\t\t\\\"var656\\\" : 656,\n-\t\t\t\t\t\t\\\"var657\\\" : 657,\n-\t\t\t\t\t\t\\\"var658\\\" : 658,\n-\t\t\t\t\t\t\\\"var659\\\" : 659,\n-\t\t\t\t\t\t\\\"var660\\\" : 660,\n-\t\t\t\t\t\t\\\"var661\\\" : 661,\n-\t\t\t\t\t\t\\\"var662\\\" : 662,\n-\t\t\t\t\t\t\\\"var663\\\" : 663,\n-\t\t\t\t\t\t\\\"var664\\\" : 664,\n-\t\t\t\t\t\t\\\"var665\\\" : 665,\n-\t\t\t\t\t\t\\\"var666\\\" : 666,\n-\t\t\t\t\t\t\\\"var667\\\" : 667,\n-\t\t\t\t\t\t\\\"var668\\\" : 668,\n-\t\t\t\t\t\t\\\"var669\\\" : 669,\n-\t\t\t\t\t\t\\\"var670\\\" : 670,\n-\t\t\t\t\t\t\\\"var671\\\" : 671,\n-\t\t\t\t\t\t\\\"var672\\\" : 672,\n-\t\t\t\t\t\t\\\"var673\\\" : 673,\n-\t\t\t\t\t\t\\\"var674\\\" : 674,\n-\t\t\t\t\t\t\\\"var675\\\" : 675,\n-\t\t\t\t\t\t\\\"var676\\\" : 676,\n-\t\t\t\t\t\t\\\"var677\\\" : 677,\n-\t\t\t\t\t\t\\\"var678\\\" : 678,\n-\t\t\t\t\t\t\\\"var679\\\" : 679,\n-\t\t\t\t\t\t\\\"var680\\\" : 680,\n-\t\t\t\t\t\t\\\"var681\\\" : 681,\n-\t\t\t\t\t\t\\\"var682\\\" : 682,\n-\t\t\t\t\t\t\\\"var683\\\" : 683,\n-\t\t\t\t\t\t\\\"var684\\\" : 684,\n-\t\t\t\t\t\t\\\"var685\\\" : 685,\n-\t\t\t\t\t\t\\\"var686\\\" : 686,\n-\t\t\t\t\t\t\\\"var687\\\" : 687,\n-\t\t\t\t\t\t\\\"var688\\\" : 688,\n-\t\t\t\t\t\t\\\"var689\\\" : 689,\n-\t\t\t\t\t\t\\\"var690\\\" : 690,\n-\t\t\t\t\t\t\\\"var691\\\" : 691,\n-\t\t\t\t\t\t\\\"var692\\\" : 692,\n-\t\t\t\t\t\t\\\"var693\\\" : 693,\n-\t\t\t\t\t\t\\\"var694\\\" : 694,\n-\t\t\t\t\t\t\\\"var695\\\" : 695,\n-\t\t\t\t\t\t\\\"var696\\\" : 696,\n-\t\t\t\t\t\t\\\"var697\\\" : 697,\n-\t\t\t\t\t\t\\\"var698\\\" : 698,\n-\t\t\t\t\t\t\\\"var699\\\" : 699,\n-\t\t\t\t\t\t\\\"var700\\\" : 700,\n-\t\t\t\t\t\t\\\"var701\\\" : 701,\n-\t\t\t\t\t\t\\\"var702\\\" : 702,\n-\t\t\t\t\t\t\\\"var703\\\" : 703,\n-\t\t\t\t\t\t\\\"var704\\\" : 704,\n-\t\t\t\t\t\t\\\"var705\\\" : 705,\n-\t\t\t\t\t\t\\\"var706\\\" : 706,\n-\t\t\t\t\t\t\\\"var707\\\" : 707,\n-\t\t\t\t\t\t\\\"var708\\\" : 708,\n-\t\t\t\t\t\t\\\"var709\\\" : 709,\n-\t\t\t\t\t\t\\\"var710\\\" : 710,\n-\t\t\t\t\t\t\\\"var711\\\" : 711,\n-\t\t\t\t\t\t\\\"var712\\\" : 712,\n-\t\t\t\t\t\t\\\"var713\\\" : 713,\n-\t\t\t\t\t\t\\\"var714\\\" : 714,\n-\t\t\t\t\t\t\\\"var715\\\" : 715,\n-\t\t\t\t\t\t\\\"var716\\\" : 716,\n-\t\t\t\t\t\t\\\"var717\\\" : 717,\n-\t\t\t\t\t\t\\\"var718\\\" : 718,\n-\t\t\t\t\t\t\\\"var719\\\" : 719,\n-\t\t\t\t\t\t\\\"var720\\\" : 720,\n-\t\t\t\t\t\t\\\"var721\\\" : 721,\n-\t\t\t\t\t\t\\\"var722\\\" : 722,\n-\t\t\t\t\t\t\\\"var723\\\" : 723,\n-\t\t\t\t\t\t\\\"var724\\\" : 724,\n-\t\t\t\t\t\t\\\"var725\\\" : 725,\n-\t\t\t\t\t\t\\\"var726\\\" : 726,\n-\t\t\t\t\t\t\\\"var727\\\" : 727,\n-\t\t\t\t\t\t\\\"var728\\\" : 728,\n-\t\t\t\t\t\t\\\"var729\\\" : 729,\n-\t\t\t\t\t\t\\\"var730\\\" : 730,\n-\t\t\t\t\t\t\\\"var731\\\" : 731,\n-\t\t\t\t\t\t\\\"var732\\\" : 732,\n-\t\t\t\t\t\t\\\"var733\\\" : 733,\n-\t\t\t\t\t\t\\\"var734\\\" : 734,\n-\t\t\t\t\t\t\\\"var735\\\" : 735,\n-\t\t\t\t\t\t\\\"var736\\\" : 736,\n-\t\t\t\t\t\t\\\"var737\\\" : 737,\n-\t\t\t\t\t\t\\\"var738\\\" : 738,\n-\t\t\t\t\t\t\\\"var739\\\" : 739,\n-\t\t\t\t\t\t\\\"var740\\\" : 740,\n-\t\t\t\t\t\t\\\"var741\\\" : 741,\n-\t\t\t\t\t\t\\\"var742\\\" : 742,\n-\t\t\t\t\t\t\\\"var743\\\" : 743,\n-\t\t\t\t\t\t\\\"var744\\\" : 744,\n-\t\t\t\t\t\t\\\"var745\\\" : 745,\n-\t\t\t\t\t\t\\\"var746\\\" : 746,\n-\t\t\t\t\t\t\\\"var747\\\" : 747,\n-\t\t\t\t\t\t\\\"var748\\\" : 748,\n-\t\t\t\t\t\t\\\"var749\\\" : 749,\n-\t\t\t\t\t\t\\\"var750\\\" : 750,\n-\t\t\t\t\t\t\\\"var751\\\" : 75\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-29",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 617.0, 55.0, 30.0, 30.0 ],
									"presentation_rect" : [ 617.0, 55.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1085.0, 429.0, 78.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 323.0, 78.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p from_node"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.0, 144.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 144.0, 272.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecount" : 7,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 387.0, 105.0, 50.0, 102.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 387.0, 105.0, 272.0, 22.0 ],
					"style" : "",
					"text" : "3d98bfac57b45ab023ab15c797e0497de9c68ead"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1127.0, 71.0, 251.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 219.0, 574.0, 22.0 ],
					"style" : "",
					"text" : "\"git format-patch f60795d7cb41e59a5e32e0cca65975962da5837b --stdout --histogram --numstat --binary\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 247.0, 32.0, 150.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 52.0, 14.0, 150.0, 47.0 ],
					"style" : "",
					"text" : "First run 'node vr-git.js' in a terminal within /vr-in-vr directory"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 129.0, 247.0, 150.0, 74.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 301.0, 773.0, 20.0 ],
					"style" : "",
					"text" : "Response from node vr-git.js Note: need to figure out how to properly stringify prior to sending over websotet"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 184.0, 305.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 197.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "Some tested requests"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 512.0, 383.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 63.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "Current Commit Count"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 61.0, 60.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 114.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "Select 2 commits"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 309.0, 666.0, 123.0, 22.0 ],
					"presentation_rect" : [ 309.0, 666.0, 123.0, 22.0 ],
					"style" : "",
					"text" : "prepend new request"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 309.0, 697.0, 93.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 164.0, 93.0, 22.0 ],
					"style" : "",
					"text" : "print @popup 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 309.0, 586.0, 48.0, 22.0 ],
					"presentation_rect" : [ 309.0, 586.0, 48.0, 22.0 ],
					"style" : "",
					"text" : "cycle 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 309.0, 626.0, 160.0, 22.0 ],
					"presentation_rect" : [ 309.0, 626.0, 160.0, 22.0 ],
					"style" : "",
					"text" : "sprintf symout git diff %s %s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1278.0, 243.0, 51.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 267.0, 51.0, 22.0 ],
					"style" : "",
					"text" : "\"git diff\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1142.0, 192.0, 121.0, 76.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.0, 267.0, 452.0, 22.0 ],
					"style" : "",
					"text" : "\"git diff-tree f60795d7cb41e59a5e32e0cca65975962da5837b diff_tester_a.maxpat\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1085.0, 139.0, 428.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 243.0, 428.0, 22.0 ],
					"style" : "",
					"text" : "\"git diff 473f92aab161d4ddb5b4ad199d5fee1d211e9be5 git_test.txt\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 950.0, 171.5, 96.0, 60.0 ],
					"presentation_rect" : [ 950.0, 171.5, 96.0, 60.0 ],
					"style" : "",
					"text" : "Need to poll the server by sending frequent bangs:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 950.0, 243.0, 115.0, 22.0 ],
					"presentation_rect" : [ 950.0, 243.0, 115.0, 22.0 ],
					"style" : "",
					"text" : "metro 50 @active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1180.5, 376.0, 60.0, 22.0 ],
					"presentation_rect" : [ 1180.5, 376.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "print msg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1085.0, 376.0, 83.0, 22.0 ],
					"presentation_rect" : [ 1085.0, 376.0, 83.0, 22.0 ],
					"style" : "",
					"text" : "print received"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1085.0, 343.0, 91.0, 22.0 ],
					"presentation_rect" : [ 1085.0, 343.0, 91.0, 22.0 ],
					"style" : "",
					"text" : "ws @port 8080"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 348.0, 149.0, 154.0, 47.0 ],
					"presentation_rect" : [ 348.0, 149.0, 154.0, 47.0 ],
					"style" : "",
					"text" : "NOTE: logs now in~ /logs/ folder, but 'git log > log.txt' will put it in parent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 182.0, 28.0, 24.0, 24.0 ],
					"presentation_rect" : [ 182.0, 28.0, 24.0, 24.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 0,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-44",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 110.0, 168.0, 150.0, 33.0 ],
													"presentation_rect" : [ 110.0, 168.0, 150.0, 33.0 ],
													"style" : "",
													"text" : "removes errant 'append' symbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 168.0, 57.0, 22.0 ],
													"presentation_rect" : [ 50.0, 168.0, 57.0, 22.0 ],
													"style" : "",
													"text" : "zl.slice 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 57.0, 243.0, 636.0, 22.0 ],
													"presentation_rect" : [ 57.0, 243.0, 636.0, 22.0 ],
													"style" : "",
													"text" : "DOOGÅ"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 0,
															"revision" : 0,
															"architecture" : "x86",
															"modernui" : 1
														}
,
														"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 1,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 1,
														"objectsnaponopen" : 1,
														"statusbarvisible" : 2,
														"toolbarvisible" : 1,
														"lefttoolbarpinned" : 0,
														"toptoolbarpinned" : 0,
														"righttoolbarpinned" : 0,
														"bottomtoolbarpinned" : 0,
														"toolbars_unpinned_last_save" : 0,
														"tallnewobj" : 0,
														"boxanimatetime" : 200,
														"enablehscroll" : 1,
														"enablevscroll" : 1,
														"devicewidth" : 0.0,
														"description" : "",
														"digest" : "",
														"tags" : "",
														"style" : "",
														"subpatcher_template" : "",
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 62.0, 75.0, 19.0 ],
																	"presentation_rect" : [ 30.0, 62.0, 75.0, 19.0 ],
																	"style" : "",
																	"text" : "prepend append"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "reset (clear list)",
																	"id" : "obj-2",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 108.0, 33.0, 15.0, 15.0 ],
																	"presentation_rect" : [ 108.0, 33.0, 15.0, 15.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"comment" : "element",
																	"id" : "obj-3",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 30.0, 33.0, 15.0, 15.0 ],
																	"presentation_rect" : [ 30.0, 33.0, 15.0, 15.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"comment" : "list",
																	"id" : "obj-4",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 30.0, 96.0, 15.0, 15.0 ],
																	"presentation_rect" : [ 30.0, 96.0, 15.0, 15.0 ],
																	"style" : ""
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 108.0, 64.0, 22.0, 19.0 ],
																	"presentation_rect" : [ 108.0, 64.0, 22.0, 19.0 ],
																	"style" : "",
																	"text" : "set"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-6",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 49.0, 97.0, 142.0, 17.0 ],
																	"presentation_rect" : [ 49.0, 97.0, 142.0, 17.0 ],
																	"style" : "",
																	"text" : "1993-2004 by Karlheinz Essl"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 49.0, 111.0, 41.0, 17.0 ],
																	"presentation_rect" : [ 49.0, 111.0, 41.0, 17.0 ],
																	"style" : "",
																	"text" : "vs. 1.1"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-5", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"midpoints" : [ 117.5, 87.0, 39.0, 87.0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 88.0, 100.0, 55.0, 22.0 ],
													"presentation_rect" : [ 88.0, 100.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"style" : "",
														"tags" : ""
													}
,
													"style" : "",
													"text" : "p collect"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 207.0, 59.0, 22.0 ],
													"presentation_rect" : [ 88.0, 207.0, 59.0, 22.0 ],
													"style" : "",
													"text" : "tosymbol"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-46",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "set" ],
													"patching_rect" : [ 57.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 57.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-47",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 88.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-48",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 124.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 124.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-49",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 57.0, 325.0, 30.0, 30.0 ],
													"presentation_rect" : [ 57.0, 325.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 1 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-39", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 1 ],
													"source" : [ "obj-48", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 89.5, 100.0, 129.0, 22.0 ],
									"presentation_rect" : [ 89.5, 100.0, 129.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p collect_and_stringify"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 195.0, 258.0, 22.0 ],
									"presentation_rect" : [ 50.0, 195.0, 258.0, 22.0 ],
									"style" : "",
									"text" : "sprintf comment commits::%s::comment \\\"%s\\\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 0,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 118.0, 112.955078, 33.0, 22.0 ],
													"presentation_rect" : [ 118.0, 112.955078, 33.0, 22.0 ],
													"style" : "",
													"text" : "t b s"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"linecount" : 7,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 106.955078, 50.0, 102.0 ],
													"presentation_rect" : [ 50.0, 106.955078, 50.0, 102.0 ],
													"style" : "",
													"text" : "794b22ce209a017bc435e4fa3b928bdd89153c72"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 81.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 81.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-37",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 118.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 118.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-38",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 267.582031, 30.0, 30.0 ],
													"presentation_rect" : [ 50.0, 267.582031, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-39",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 129.0, 201.582031, 30.0, 30.0 ],
													"presentation_rect" : [ 129.0, 201.582031, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 55.5, 147.044922, 53.0, 22.0 ],
									"presentation_rect" : [ 55.5, 147.044922, 53.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p listreg"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-66",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.5, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 55.5, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-67",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "set" ],
									"patching_rect" : [ 89.5, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 89.5, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-68",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.5, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 144.5, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-69",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 199.5, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 199.5, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-72",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 277.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 277.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 1 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 2 ],
									"source" : [ "obj-69", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 788.0, 645.044922, 70.0, 22.0 ],
					"presentation_rect" : [ 788.0, 645.044922, 70.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p comment"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 0,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 118.0, 112.955078, 30.0, 22.0 ],
													"presentation_rect" : [ 118.0, 112.955078, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"linecount" : 7,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 106.955078, 50.0, 102.0 ],
													"presentation_rect" : [ 50.0, 106.955078, 50.0, 102.0 ],
													"style" : "",
													"text" : "794b22ce209a017bc435e4fa3b928bdd89153c72"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 81.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 81.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-37",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 118.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 118.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-38",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 267.582031, 30.0, 30.0 ],
													"presentation_rect" : [ 50.0, 267.582031, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-39",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 129.0, 201.582031, 30.0, 30.0 ],
													"presentation_rect" : [ 129.0, 201.582031, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 100.0, 53.0, 22.0 ],
									"presentation_rect" : [ 50.0, 100.0, 53.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p listreg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 147.955078, 265.0, 22.0 ],
									"presentation_rect" : [ 50.0, 147.955078, 265.0, 22.0 ],
									"style" : "",
									"text" : "sprintf date commits::%s::date %s %s %i %s %i"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-59",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-60",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.0, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 84.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-63",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 229.955078, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 229.955078, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 737.333313, 645.044922, 44.0, 22.0 ],
					"presentation_rect" : [ 737.333313, 645.044922, 44.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p date"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 0,
											"architecture" : "x86",
											"modernui" : 1
										}
,
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 118.0, 112.955078, 30.0, 22.0 ],
													"presentation_rect" : [ 118.0, 112.955078, 30.0, 22.0 ],
													"style" : "",
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"linecount" : 7,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 106.955078, 50.0, 22.0 ],
													"presentation_rect" : [ 50.0, 106.955078, 50.0, 22.0 ],
													"style" : "",
													"text" : "794b22ce209a017bc435e4fa3b928bdd89153c72"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 81.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 81.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-37",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 118.0, 40.0, 30.0, 30.0 ],
													"presentation_rect" : [ 118.0, 40.0, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-38",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 201.582031, 30.0, 30.0 ],
													"presentation_rect" : [ 50.0, 201.582031, 30.0, 30.0 ],
													"style" : ""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-39",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 129.0, 201.582031, 30.0, 30.0 ],
													"presentation_rect" : [ 129.0, 201.582031, 30.0, 30.0 ],
													"style" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-34", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 140.044922, 53.0, 22.0 ],
									"presentation_rect" : [ 50.0, 140.044922, 53.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"style" : "",
										"tags" : ""
									}
,
									"style" : "",
									"text" : "p listreg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 195.0, 253.0, 22.0 ],
									"presentation_rect" : [ 50.0, 195.0, 253.0, 22.0 ],
									"style" : "",
									"text" : "sprintf author commits::%s::author %s %s %s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 145.0, 100.0, 49.0, 22.0 ],
									"presentation_rect" : [ 145.0, 100.0, 49.0, 22.0 ],
									"style" : "",
									"text" : "zl.nth 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 145.0, 140.044922, 163.0, 22.0 ],
									"presentation_rect" : [ 145.0, 140.044922, 163.0, 22.0 ],
									"style" : "",
									"text" : "regexp (>|<) @substitute %0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-55",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-56",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 145.0, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 145.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-57",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 277.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 277.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 3 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"source" : [ "obj-90", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 673.0, 645.044922, 55.0, 22.0 ],
					"presentation_rect" : [ 673.0, 645.044922, 55.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p author"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "set", "", "bang", "bang" ],
					"patching_rect" : [ 565.0, 564.0, 63.0, 22.0 ],
					"presentation_rect" : [ 565.0, 564.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "t set s b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "clear" ],
					"patching_rect" : [ 521.0, 283.0, 63.0, 22.0 ],
					"presentation_rect" : [ 521.0, 283.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "t b b clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 565.0, 466.0, 153.0, 22.0 ],
					"presentation_rect" : [ 565.0, 466.0, 153.0, 22.0 ],
					"style" : "",
					"text" : "route commit Author: Date:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 565.0, 391.0, 73.0, 22.0 ],
					"presentation_rect" : [ 565.0, 391.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "fromsymbol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 543.0, 722.0, 99.0, 23.0 ],
					"presentation_rect" : [ 543.0, 722.0, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"filename" : "log_to_dict.js",
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "js log_to_dict.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 565.0, 325.0, 68.0, 22.0 ],
					"presentation_rect" : [ 565.0, 325.0, 68.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"style" : "",
					"text" : "dict git_log"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 517.0, 51.0, 150.0, 20.0 ],
					"presentation_rect" : [ 517.0, 51.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "View git project!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 517.0, 73.0, 275.0, 49.0 ],
					"presentation_rect" : [ 517.0, 73.0, 275.0, 49.0 ],
					"style" : "",
					"text" : ";\rmax launchbrowser https://github.com/worldmaking/vr-in-vr/projects/1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 304.0, 512.0, 80.0, 22.0 ],
					"presentation_rect" : [ 304.0, 512.0, 80.0, 22.0 ],
					"style" : "",
					"text" : "route commit"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 124.0, 73.0, 22.0 ],
									"presentation_rect" : [ 50.0, 124.0, 73.0, 22.0 ],
									"style" : "",
									"text" : "fromsymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 79.0, 22.0 ],
									"presentation_rect" : [ 50.0, 100.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-71",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-72",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 235.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 235.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 304.0, 465.0, 169.0, 35.0 ],
					"presentation_rect" : [ 304.0, 465.0, 169.0, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p \"remove 'symbol' and blank space before commit\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 304.0, 544.0, 34.0, 22.0 ],
					"presentation_rect" : [ 304.0, 544.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 304.0, 438.0, 71.0, 21.0 ],
					"presentation_rect" : [ 304.0, 438.0, 71.0, 21.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"style" : "",
					"text" : "coll commits"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 304.0, 407.0, 29.5, 22.0 ],
					"presentation_rect" : [ 304.0, 407.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "* 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 153.0, 59.0, 22.0 ],
									"presentation_rect" : [ 50.0, 153.0, 59.0, 22.0 ],
									"style" : "",
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 124.0, 73.0, 22.0 ],
									"presentation_rect" : [ 50.0, 124.0, 73.0, 22.0 ],
									"style" : "",
									"text" : "fromsymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 79.0, 22.0 ],
									"presentation_rect" : [ 50.0, 100.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-71",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-72",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 235.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 235.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 304.0, 304.0, 169.0, 35.0 ],
					"presentation_rect" : [ 304.0, 304.0, 169.0, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p \"remove 'symbol' and blank space before commit\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.0, 345.0, 98.0, 22.0 ],
					"presentation_rect" : [ 304.0, 345.0, 98.0, 22.0 ],
					"style" : "",
					"text" : "prepend append"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"items" : [ "Create README.md", ",", "ab sketches", ",", "for oculus", ",", "phys play", ",", "lab works", ",", "phys playground", ",", "phys", ",", "patcher scripting work", ",", "ontogenesis", ",", "comments", ",", "Update README.md", ",", "tidying", ",", "palumbo: added something to watch for updated git log files to provide user with versions of previous work from within vr.", ",", "Adam Siska's toxine object can be used for xml files. i'm going to give this a try towards parsing our git logs", ",", "sadam library doesn't initialize for 64-bit max so removing it from dependencies.", ",", "using jasch objects for xml so added it as a dependency", ",", "testing the jasch xml object 'toxine'", ",", "the git log is adding an odd line to the end of its xml files '<Cb=YC'. not sure why but i'm going to for now write something into max that ignores this.", ",", "I think that bug I described in last commit of the '<Cb=YC' being appended to log.xml might actually have been caused by a bad usage of 'toxine.mxo' on my part. we need to clear the 'idx.mxo' each time we load a new log.xml into the patch", ",", "gixed xml parsing", ",", "vr-git_log is working now as proof-of-concept for what I set out to do today. please see https://github.com/worldmaking/vr-in-vr/projects/1 to view progress and to-do list", ",", "added creating & deleting objects", ",", "cleanup & comment", ",", "first pass at a vr max objects", ",", "intiial work on a scripting-based editor. still need the reverse lookup from scripting name to the underlying jitter object" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 304.0, 377.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 136.0, 236.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.666656, 210.0, 56.0, 22.0 ],
									"presentation_rect" : [ 164.666656, 210.0, 56.0, 22.0 ],
									"style" : "",
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 164.666656, 183.0, 29.5, 22.0 ],
									"presentation_rect" : [ 164.666656, 183.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "+ 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 164.666656, 129.0, 50.0, 22.0 ],
									"presentation_rect" : [ 164.666656, 129.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 164.666656, 157.0, 29.5, 22.0 ],
									"presentation_rect" : [ 164.666656, 157.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "* 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 29.5, 22.0 ],
									"presentation_rect" : [ 50.0, 100.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "/ 4"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-58",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 40.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-59",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 292.0, 30.0, 30.0 ],
									"presentation_rect" : [ 50.0, 292.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-60",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.666656, 292.0, 30.0, 30.0 ],
									"presentation_rect" : [ 164.666656, 292.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 48.333344, 375.0, 144.0, 22.0 ],
					"presentation_rect" : [ 48.333344, 375.0, 144.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p get_commit_messages"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.333313, 404.0, 57.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.999969, 85.0, 57.0, 20.0 ],
					"style" : "",
					"text" : "Commits"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 48.333344, 404.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 85.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "clear", "int", "bang" ],
					"patching_rect" : [ 34.0, 189.0, 73.0, 22.0 ],
					"presentation_rect" : [ 34.0, 189.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "t s clear 4 b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 358.0, 47.0, 150.0, 33.0 ],
					"presentation_rect" : [ 358.0, 47.0, 150.0, 33.0 ],
					"style" : "",
					"text" : "Make sure log file is read from local repo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 317.0, 82.0, 22.0 ],
					"presentation_rect" : [ 34.0, 317.0, 82.0, 22.0 ],
					"style" : "",
					"text" : "prepend read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 149.0, 302.0, 22.0 ],
					"presentation_rect" : [ 34.0, 149.0, 302.0, 22.0 ],
					"style" : "",
					"text" : "\"Macintosh HD:/Users/mp/vr-in-vr/logs/log.xml\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 317.0, 99.0, 169.0, 22.0 ],
					"presentation_rect" : [ 317.0, 99.0, 169.0, 22.0 ],
					"style" : "",
					"text" : "sprintf symout %slogs/log.xml"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 267.0, 47.0, 89.0, 22.0 ],
					"presentation_rect" : [ 267.0, 47.0, 89.0, 22.0 ],
					"style" : "",
					"text" : "loadmess path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 267.0, 73.0, 69.0, 22.0 ],
					"presentation_rect" : [ 267.0, 73.0, 69.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"style" : "",
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 101.0, 271.0, 71.0, 21.0 ],
					"presentation_rect" : [ 101.0, 271.0, 71.0, 21.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0
					}
,
					"style" : "",
					"text" : "coll commits"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "int", "list" ],
					"patching_rect" : [ 101.0, 237.0, 32.0, 21.0 ],
					"presentation_rect" : [ 101.0, 237.0, 32.0, 21.0 ],
					"style" : "",
					"text" : "idx"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "int", "int" ],
					"patching_rect" : [ 34.0, 347.0, 53.0, 21.0 ],
					"presentation_rect" : [ 34.0, 347.0, 53.0, 21.0 ],
					"style" : "",
					"text" : "toxine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 14.0, 72.0, 22.0 ],
					"presentation_rect" : [ 34.0, 14.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 34.0, 47.0, 99.0, 22.0 ],
					"presentation_rect" : [ 34.0, 47.0, 99.0, 22.0 ],
					"style" : "",
					"text" : "filewatch log.xml"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 43.5, 370.0, 23.0, 370.0, 23.0, 231.0, 109.0, 231.0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 43.5, 573.0, 526.0, 573.0, 526.0, 383.0, 574.5, 383.0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 110.5, 298.0, 127.0, 298.0, 127.0, 298.0, 313.5, 298.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-22", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 326.5, 136.0, 346.0, 136.0, 346.0, 180.0, 88.0, 180.0, 88.0, 180.0, 43.5, 180.0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"midpoints" : [ 1094.5, 461.0, 1047.5, 461.0, 1047.5, 332.0, 1094.5, 332.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 2,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"order" : 1,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"source" : [ "obj-32", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 3 ],
					"source" : [ "obj-32", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"order" : 0,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"source" : [ "obj-51", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 2 ],
					"source" : [ "obj-51", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 182.833344, 400.0, 199.0, 400.0, 199.0, 262.0, 110.5, 262.0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"order" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"order" : 1,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 61.5, 224.0, 109.0, 224.0 ],
					"order" : 2,
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 61.5, 265.0, 110.5, 265.0 ],
					"order" : 1,
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 97.5, 217.0, 530.5, 217.0 ],
					"source" : [ "obj-9", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 61.5, 224.0, 289.0, 224.0, 289.0, 370.0, 313.5, 370.0 ],
					"order" : 0,
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-92", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 0,
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"order" : 1,
					"source" : [ "obj-92", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "log_to_dict.js",
				"bootpath" : "~/vr-in-vr",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "~/Documents/Max/Max 8/Packages/Node For Max/patchers/debug-monitor",
				"patcherrelativepath" : "../Documents/Max/Max 8/Packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.fileurl.js",
				"bootpath" : "~/Documents/Max/Max 8/Packages/Node For Max/patchers/debug-monitor",
				"patcherrelativepath" : "../Documents/Max/Max 8/Packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "toxine.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "idx.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ws.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
