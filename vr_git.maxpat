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
		"rect" : [ 1850.0, 222.0, 1374.0, 785.0 ],
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
					"id" : "obj-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 942.5, 167.0, 65.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 171.0, 65.0, 22.0 ],
					"style" : "",
					"text" : "\"git status\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 685.5, 501.0, 102.0, 22.0 ],
					"presentation_rect" : [ 685.5, 501.0, 102.0, 22.0 ],
					"style" : "",
					"text" : "sprintf vrgit \\\"%s\\\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.5, 501.0, 91.0, 22.0 ],
					"presentation_rect" : [ 813.5, 501.0, 91.0, 22.0 ],
					"style" : "",
					"text" : "vrgit \"git status\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 682.0, 140.0, 251.0, 49.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 195.0, 574.0, 22.0 ],
					"style" : "",
					"text" : "\"git format-patch f60795d7cb41e59a5e32e0cca65975962da5837b --stdout --histogram --numstat --binary\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 409.5, 533.0, 119.0, 22.0 ],
					"presentation_rect" : [ 409.5, 533.0, 119.0, 22.0 ],
					"style" : "",
					"text" : "loadmess script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.5, 652.0, 72.0, 22.0 ],
					"presentation_rect" : [ 201.5, 652.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"linecount" : 24,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 201.5, 683.544922, 492.0, 154.0 ],
					"presentation" : 1,
					"presentation_linecount" : 24,
					"presentation_rect" : [ 52.0, 323.0, 773.0, 18494.0 ],
					"style" : "",
					"text" : "\"On branch master\nYour branch is ahead of 'origin/master' by 1 commit.\n  (use \\\"git push\\\" to publish your local commits)\n\nChanges not staged for commit:\n  (use \\\"git add <file>...\\\" to update what will be committed)\n  (use \\\"git checkout -- <file>...\\\" to discard changes in working directory)\n\n\tmodified:   atomic_commits.maxpat\n\tmodified:   git_patch_files/test.patch\n\tmodified:   vr-git.js\n\tmodified:   vr-git_log.maxpat\n\nUntracked files:\n  (use \\\"git add <file>...\\\" to include in what will be committed)\n\n\tarchived/vr-git_node.js\n\tatomic_commits.keyframe.yaml\n\tvr-git-node.js\n\tvr-git_ws.js\n\tvr_git.maxpat\n\nno changes added to commit (use \\\"git add\\\" and/or \\\"git commit -a\\\")\n\""
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
					"patching_rect" : [ 741.5, 626.044922, 398.0, 219.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 834.0, 323.044922, 398.0, 219.0 ],
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
					"patching_rect" : [ 409.5, 584.0, 197.0, 22.0 ],
					"presentation_rect" : [ 409.5, 584.0, 197.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"node" : "",
						"npm" : "",
						"running" : 1,
						"watch" : 1
					}
,
					"style" : "",
					"text" : "node.script vr-git-node.js @watch 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 619.0, 167.0, 51.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 243.0, 51.0, 22.0 ],
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
					"patching_rect" : [ 486.0, 113.0, 121.0, 76.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 267.0, 452.0, 22.0 ],
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
					"patching_rect" : [ 49.5, 167.0, 428.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 52.0, 219.0, 428.0, 22.0 ],
					"style" : "",
					"text" : "\"git diff 473f92aab161d4ddb5b4ad199d5fee1d211e9be5 git_test.txt\""
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
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
 ],
		"autosave" : 0
	}

}
