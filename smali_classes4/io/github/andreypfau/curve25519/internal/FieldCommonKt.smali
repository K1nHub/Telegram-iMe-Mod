.class public final Lio/github/andreypfau/curve25519/internal/FieldCommonKt;
.super Ljava/lang/Object;
.source "fieldCommon.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nfieldCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 fieldCommon.kt\nio/github/andreypfau/curve25519/internal/FieldCommonKt\n+ 2 math.kt\nio/github/andreypfau/curve25519/internal/MathKt\n*L\n1#1,347:1\n8#1:348\n7#1:349\n38#1:356\n8#1:357\n7#1:358\n7#1:359\n8#1:363\n8#1:367\n7#1:368\n11#1,5:369\n18#1,2:374\n8#1:376\n20#1:377\n7#1:378\n21#1,2:379\n23#1,4:384\n18#1,2:388\n8#1:390\n20#1:391\n7#1:392\n21#1,2:393\n23#1,4:398\n18#1,2:402\n8#1:404\n20#1:405\n7#1:406\n21#1,2:407\n23#1,4:412\n18#1,2:416\n8#1:418\n20#1:419\n7#1:420\n21#1,2:421\n23#1,4:426\n11#1,5:430\n18#1,2:435\n8#1:437\n20#1:438\n7#1:439\n21#1,2:440\n23#1,4:445\n18#1,2:449\n8#1:451\n20#1:452\n7#1:453\n21#1,2:454\n23#1,4:459\n18#1,2:463\n8#1:465\n20#1:466\n7#1:467\n21#1,2:468\n23#1,4:473\n18#1,2:477\n8#1:479\n20#1:480\n7#1:481\n21#1,2:482\n23#1,4:487\n11#1,5:491\n18#1,2:496\n8#1:498\n20#1:499\n7#1:500\n21#1,2:501\n23#1,4:506\n18#1,2:510\n8#1:512\n20#1:513\n7#1:514\n21#1,2:515\n23#1,4:520\n18#1,2:524\n8#1:526\n20#1:527\n7#1:528\n21#1,2:529\n23#1,4:534\n18#1,2:538\n8#1:540\n20#1:541\n7#1:542\n21#1,2:543\n23#1,4:548\n11#1,5:552\n18#1,2:557\n8#1:559\n20#1:560\n7#1:561\n21#1,2:562\n23#1,4:567\n18#1,2:571\n8#1:573\n20#1:574\n7#1:575\n21#1,2:576\n23#1,4:581\n18#1,2:585\n8#1:587\n20#1:588\n7#1:589\n21#1,2:590\n23#1,4:595\n18#1,2:599\n8#1:601\n20#1:602\n7#1:603\n21#1,2:604\n23#1,4:609\n11#1,5:613\n18#1,2:618\n8#1:620\n20#1:621\n7#1:622\n21#1,2:623\n23#1,4:628\n18#1,2:632\n8#1:634\n20#1:635\n7#1:636\n21#1,2:637\n23#1,4:642\n18#1,2:646\n8#1:648\n20#1:649\n7#1:650\n21#1,2:651\n23#1,4:656\n18#1,2:660\n8#1:662\n20#1:663\n7#1:664\n21#1,2:665\n23#1,4:670\n38#1:674\n8#1:675\n7#1:676\n38#1:677\n8#1:678\n7#1:679\n38#1:680\n8#1:681\n7#1:682\n38#1:683\n8#1:684\n7#1:685\n38#1:686\n8#1:687\n7#1:688\n7#1:689\n7#1:690\n7#1:691\n7#1:692\n7#1:693\n260#1,14:694\n11#1,5:708\n18#1,2:713\n8#1:715\n20#1:716\n7#1:717\n21#1,2:718\n23#1,4:723\n18#1,2:727\n8#1:729\n20#1:730\n7#1:731\n21#1,2:732\n23#1,4:737\n11#1,5:741\n18#1,2:746\n8#1:748\n20#1:749\n7#1:750\n21#1,2:751\n23#1,4:756\n18#1,2:760\n8#1:762\n20#1:763\n7#1:764\n21#1,2:765\n23#1,4:770\n11#1,5:774\n18#1,2:779\n8#1:781\n20#1:782\n7#1:783\n21#1,2:784\n23#1,4:789\n18#1,2:793\n8#1:795\n20#1:796\n7#1:797\n21#1,2:798\n23#1,4:803\n11#1,5:807\n18#1,2:812\n8#1:814\n20#1:815\n7#1:816\n21#1,2:817\n23#1,4:822\n18#1,2:826\n8#1:828\n20#1:829\n7#1:830\n21#1,2:831\n23#1,4:836\n11#1,5:840\n18#1,2:845\n8#1:847\n20#1:848\n7#1:849\n21#1,2:850\n23#1,4:855\n18#1,2:859\n8#1:861\n20#1:862\n7#1:863\n21#1,2:864\n23#1,4:869\n38#1:873\n8#1:874\n7#1:875\n38#1:876\n8#1:877\n7#1:878\n38#1:879\n8#1:880\n7#1:881\n38#1:882\n8#1:883\n7#1:884\n38#1:885\n8#1:886\n7#1:887\n7#1:888\n7#1:889\n7#1:890\n7#1:891\n7#1:892\n260#1,14:893\n11#1,5:907\n18#1,2:912\n8#1:914\n20#1:915\n7#1:916\n21#1,2:917\n23#1,4:922\n18#1,2:926\n8#1:928\n20#1:929\n7#1:930\n21#1,2:931\n23#1,4:936\n11#1,5:940\n18#1,2:945\n8#1:947\n20#1:948\n7#1:949\n21#1,2:950\n23#1,4:955\n18#1,2:959\n8#1:961\n20#1:962\n7#1:963\n21#1,2:964\n23#1,4:969\n11#1,5:973\n18#1,2:978\n8#1:980\n20#1:981\n7#1:982\n21#1,2:983\n23#1,4:988\n18#1,2:992\n8#1:994\n20#1:995\n7#1:996\n21#1,2:997\n23#1,4:1002\n11#1,5:1006\n18#1,2:1011\n8#1:1013\n20#1:1014\n7#1:1015\n21#1,2:1016\n23#1,4:1021\n18#1,2:1025\n8#1:1027\n20#1:1028\n7#1:1029\n21#1,2:1030\n23#1,4:1035\n11#1,5:1039\n18#1,2:1044\n8#1:1046\n20#1:1047\n7#1:1048\n21#1,2:1049\n23#1,4:1054\n18#1,2:1058\n8#1:1060\n20#1:1061\n7#1:1062\n21#1,2:1063\n23#1,4:1068\n7#1:1072\n28#1,11:1073\n8#1:1084\n7#1:1085\n30#1,2:1086\n7#1:1088\n32#1:1092\n8#1:1093\n33#1,3:1094\n7#1:1097\n28#1,11:1098\n8#1:1109\n7#1:1110\n30#1,2:1111\n7#1:1113\n32#1:1117\n8#1:1118\n33#1,3:1119\n7#1:1122\n28#1,11:1123\n8#1:1134\n7#1:1135\n30#1,2:1136\n7#1:1138\n32#1:1142\n8#1:1143\n33#1,3:1144\n7#1:1147\n28#1,11:1148\n8#1:1159\n7#1:1160\n30#1,2:1161\n7#1:1163\n32#1:1167\n8#1:1168\n33#1,3:1169\n7#1:1172\n38#1:1173\n8#1:1174\n7#1:1175\n23#2,3:350\n23#2,3:353\n23#2,3:360\n23#2,3:364\n23#2,3:381\n23#2,3:395\n23#2,3:409\n23#2,3:423\n23#2,3:442\n23#2,3:456\n23#2,3:470\n23#2,3:484\n23#2,3:503\n23#2,3:517\n23#2,3:531\n23#2,3:545\n23#2,3:564\n23#2,3:578\n23#2,3:592\n23#2,3:606\n23#2,3:625\n23#2,3:639\n23#2,3:653\n23#2,3:667\n23#2,3:720\n23#2,3:734\n23#2,3:753\n23#2,3:767\n23#2,3:786\n23#2,3:800\n23#2,3:819\n23#2,3:833\n23#2,3:852\n23#2,3:866\n23#2,3:919\n23#2,3:933\n23#2,3:952\n23#2,3:966\n23#2,3:985\n23#2,3:999\n23#2,3:1018\n23#2,3:1032\n23#2,3:1051\n23#2,3:1065\n23#2,3:1089\n23#2,3:1114\n23#2,3:1139\n23#2,3:1164\n*S KotlinDebug\n*F\n+ 1 fieldCommon.kt\nio/github/andreypfau/curve25519/internal/FieldCommonKt\n*L\n19#1:348\n20#1:349\n29#1:356\n29#1:357\n29#1:358\n31#1:359\n32#1:363\n38#1:367\n38#1:368\n60#1:369,5\n61#1:374,2\n61#1:376\n61#1:377\n61#1:378\n61#1:379,2\n61#1:384,4\n62#1:388,2\n62#1:390\n62#1:391\n62#1:392\n62#1:393,2\n62#1:398,4\n63#1:402,2\n63#1:404\n63#1:405\n63#1:406\n63#1:407,2\n63#1:412,4\n64#1:416,2\n64#1:418\n64#1:419\n64#1:420\n64#1:421,2\n64#1:426,4\n67#1:430,5\n68#1:435,2\n68#1:437\n68#1:438\n68#1:439\n68#1:440,2\n68#1:445,4\n69#1:449,2\n69#1:451\n69#1:452\n69#1:453\n69#1:454,2\n69#1:459,4\n70#1:463,2\n70#1:465\n70#1:466\n70#1:467\n70#1:468,2\n70#1:473,4\n71#1:477,2\n71#1:479\n71#1:480\n71#1:481\n71#1:482,2\n71#1:487,4\n74#1:491,5\n75#1:496,2\n75#1:498\n75#1:499\n75#1:500\n75#1:501,2\n75#1:506,4\n76#1:510,2\n76#1:512\n76#1:513\n76#1:514\n76#1:515,2\n76#1:520,4\n77#1:524,2\n77#1:526\n77#1:527\n77#1:528\n77#1:529,2\n77#1:534,4\n78#1:538,2\n78#1:540\n78#1:541\n78#1:542\n78#1:543,2\n78#1:548,4\n81#1:552,5\n82#1:557,2\n82#1:559\n82#1:560\n82#1:561\n82#1:562,2\n82#1:567,4\n83#1:571,2\n83#1:573\n83#1:574\n83#1:575\n83#1:576,2\n83#1:581,4\n84#1:585,2\n84#1:587\n84#1:588\n84#1:589\n84#1:590,2\n84#1:595,4\n85#1:599,2\n85#1:601\n85#1:602\n85#1:603\n85#1:604,2\n85#1:609,4\n88#1:613,5\n89#1:618,2\n89#1:620\n89#1:621\n89#1:622\n89#1:623,2\n89#1:628,4\n90#1:632,2\n90#1:634\n90#1:635\n90#1:636\n90#1:637,2\n90#1:642,4\n91#1:646,2\n91#1:648\n91#1:649\n91#1:650\n91#1:651,2\n91#1:656,4\n92#1:660,2\n92#1:662\n92#1:663\n92#1:664\n92#1:665,2\n92#1:670,4\n121#1:674\n121#1:675\n121#1:676\n122#1:677\n122#1:678\n122#1:679\n123#1:680\n123#1:681\n123#1:682\n124#1:683\n124#1:684\n124#1:685\n125#1:686\n125#1:687\n125#1:688\n127#1:689\n128#1:690\n129#1:691\n130#1:692\n131#1:693\n136#1:694,14\n157#1:708,5\n158#1:713,2\n158#1:715\n158#1:716\n158#1:717\n158#1:718,2\n158#1:723,4\n159#1:727,2\n159#1:729\n159#1:730\n159#1:731\n159#1:732,2\n159#1:737,4\n162#1:741,5\n163#1:746,2\n163#1:748\n163#1:749\n163#1:750\n163#1:751,2\n163#1:756,4\n164#1:760,2\n164#1:762\n164#1:763\n164#1:764\n164#1:765,2\n164#1:770,4\n167#1:774,5\n168#1:779,2\n168#1:781\n168#1:782\n168#1:783\n168#1:784,2\n168#1:789,4\n169#1:793,2\n169#1:795\n169#1:796\n169#1:797\n169#1:798,2\n169#1:803,4\n172#1:807,5\n173#1:812,2\n173#1:814\n173#1:815\n173#1:816\n173#1:817,2\n173#1:822,4\n174#1:826,2\n174#1:828\n174#1:829\n174#1:830\n174#1:831,2\n174#1:836,4\n177#1:840,5\n178#1:845,2\n178#1:847\n178#1:848\n178#1:849\n178#1:850,2\n178#1:855,4\n179#1:859,2\n179#1:861\n179#1:862\n179#1:863\n179#1:864,2\n179#1:869,4\n181#1:873\n181#1:874\n181#1:875\n182#1:876\n182#1:877\n182#1:878\n183#1:879\n183#1:880\n183#1:881\n184#1:882\n184#1:883\n184#1:884\n185#1:885\n185#1:886\n185#1:887\n187#1:888\n188#1:889\n189#1:890\n190#1:891\n191#1:892\n193#1:893,14\n213#1:907,5\n214#1:912,2\n214#1:914\n214#1:915\n214#1:916\n214#1:917,2\n214#1:922,4\n215#1:926,2\n215#1:928\n215#1:929\n215#1:930\n215#1:931,2\n215#1:936,4\n217#1:940,5\n218#1:945,2\n218#1:947\n218#1:948\n218#1:949\n218#1:950,2\n218#1:955,4\n219#1:959,2\n219#1:961\n219#1:962\n219#1:963\n219#1:964,2\n219#1:969,4\n221#1:973,5\n222#1:978,2\n222#1:980\n222#1:981\n222#1:982\n222#1:983,2\n222#1:988,4\n223#1:992,2\n223#1:994\n223#1:995\n223#1:996\n223#1:997,2\n223#1:1002,4\n225#1:1006,5\n226#1:1011,2\n226#1:1013\n226#1:1014\n226#1:1015\n226#1:1016,2\n226#1:1021,4\n227#1:1025,2\n227#1:1027\n227#1:1028\n227#1:1029\n227#1:1030,2\n227#1:1035,4\n229#1:1039,5\n230#1:1044,2\n230#1:1046\n230#1:1047\n230#1:1048\n230#1:1049,2\n230#1:1054,4\n231#1:1058,2\n231#1:1060\n231#1:1061\n231#1:1062\n231#1:1063,2\n231#1:1068,4\n233#1:1072\n234#1:1073,11\n234#1:1084\n234#1:1085\n234#1:1086,2\n234#1:1088\n234#1:1092\n234#1:1093\n234#1:1094,3\n236#1:1097\n237#1:1098,11\n237#1:1109\n237#1:1110\n237#1:1111,2\n237#1:1113\n237#1:1117\n237#1:1118\n237#1:1119,3\n239#1:1122\n240#1:1123,11\n240#1:1134\n240#1:1135\n240#1:1136,2\n240#1:1138\n240#1:1142\n240#1:1143\n240#1:1144,3\n242#1:1147\n243#1:1148,11\n243#1:1159\n243#1:1160\n243#1:1161,2\n243#1:1163\n243#1:1167\n243#1:1168\n243#1:1169,3\n245#1:1172\n246#1:1173\n246#1:1174\n246#1:1175\n22#1:350,3\n23#1:353,3\n31#1:360,3\n32#1:364,3\n61#1:381,3\n62#1:395,3\n63#1:409,3\n64#1:423,3\n68#1:442,3\n69#1:456,3\n70#1:470,3\n71#1:484,3\n75#1:503,3\n76#1:517,3\n77#1:531,3\n78#1:545,3\n82#1:564,3\n83#1:578,3\n84#1:592,3\n85#1:606,3\n89#1:625,3\n90#1:639,3\n91#1:653,3\n92#1:667,3\n158#1:720,3\n159#1:734,3\n163#1:753,3\n164#1:767,3\n168#1:786,3\n169#1:800,3\n173#1:819,3\n174#1:833,3\n178#1:852,3\n179#1:866,3\n214#1:919,3\n215#1:933,3\n218#1:952,3\n219#1:966,3\n222#1:985,3\n223#1:999,3\n226#1:1018,3\n227#1:1032,3\n230#1:1051,3\n231#1:1065,3\n234#1:1089,3\n237#1:1114,3\n240#1:1139,3\n243#1:1164,3\n*E\n"
.end annotation


# direct methods
.method public static final fePow2k-HXTcExc([J[JI)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fe"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "t"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 198
    invoke-static {v1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/4 v5, 0x1

    .line 199
    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/4 v8, 0x2

    .line 200
    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    const/4 v11, 0x3

    .line 201
    invoke-static {v1, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    const/4 v14, 0x4

    .line 202
    invoke-static {v1, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v15

    move/from16 v1, p2

    move v11, v2

    move-wide v14, v15

    :goto_0
    if-ge v11, v1, :cond_0

    const/16 v5, 0x13

    move-wide/from16 v18, v3

    int-to-long v2, v5

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 205
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    mul-long v20, v20, v12

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    .line 206
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    mul-long v20, v20, v14

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    move-wide/from16 v20, v2

    int-to-long v2, v8

    const-wide v22, 0xffffffffL

    and-long v2, v2, v22

    .line 208
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    mul-long v22, v22, v18

    move-wide/from16 v24, v9

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    .line 209
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    mul-long v22, v22, v6

    move/from16 v26, v11

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    .line 210
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    mul-long v22, v22, v24

    move-wide/from16 v27, v6

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    .line 211
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    mul-long/2addr v2, v14

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    move-wide/from16 v29, v14

    const/16 v22, 0x2

    .line 11
    invoke-static/range {v22 .. v22}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v14

    move-wide/from16 v31, v2

    move-wide/from16 v2, v18

    .line 12
    invoke-static {v2, v3, v2, v3, v14}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v2

    move-wide/from16 v17, v8

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    move-wide/from16 v22, v12

    const/4 v15, 0x1

    invoke-static {v2, v15}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 13
    invoke-static {v14, v3, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 14
    invoke-static {v14, v15, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v14, v15}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 7
    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 21
    invoke-static {v10, v11, v0, v1, v14}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    invoke-static {v2, v15}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v35

    add-long v37, v12, v35

    .line 23
    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v37

    const-wide/16 v39, 0x0

    add-long v37, v37, v39

    move-wide/from16 v41, v10

    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v14, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v12, v35

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v12, v12, v35

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    move-wide/from16 v35, v0

    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    not-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    and-long/2addr v0, v12

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long/2addr v0, v10

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/4 v10, 0x1

    invoke-static {v14, v10, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    invoke-static {v14, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    add-long v37, v8, v33

    .line 23
    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v37

    add-long v37, v37, v11

    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v14, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v8, v33

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v8, v8, v33

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    ushr-long/2addr v8, v2

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-static {v14, v10, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 24
    invoke-static {v14, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v14, v10, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v14, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    .line 7
    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 21
    invoke-static {v6, v7, v4, v5, v14}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v11, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    add-long v10, v8, v33

    .line 23
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    add-long v10, v10, v39

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v14, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v8, v33

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v8, v8, v33

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    move-wide/from16 v33, v6

    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v10

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    ushr-long/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v14, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v14, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    add-long v37, v0, v12

    .line 23
    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v37

    add-long v37, v37, v9

    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v14, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v0, v12

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v0, v12

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    not-long v10, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    and-long/2addr v0, v10

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long/2addr v0, v8

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/4 v8, 0x1

    invoke-static {v14, v8, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    .line 24
    invoke-static {v14, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v14, v8, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v0, 0x2

    .line 11
    invoke-static {v0}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v1

    move-wide/from16 v12, v22

    .line 12
    invoke-static {v12, v13, v4, v5, v1}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v0, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    .line 13
    invoke-static {v1, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 14
    invoke-static {v1, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 7
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    move-wide/from16 v22, v9

    move-wide/from16 v10, v17

    move-wide/from16 v8, v27

    .line 21
    invoke-static {v10, v11, v8, v9, v1}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    const/4 v15, 0x1

    invoke-static {v0, v15}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v27

    add-long v37, v22, v27

    .line 23
    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v37

    add-long v37, v37, v39

    move-object v0, v14

    invoke-static/range {v37 .. v38}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v1, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v22, v27

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long v22, v22, v27

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    move-wide/from16 v27, v12

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long v12, v22, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    ushr-long/2addr v12, v2

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-static {v1, v14, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v1, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    add-long v14, v6, v17

    .line 23
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    add-long v14, v14, v22

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v1, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v6, v17

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long v6, v6, v17

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    move-wide/from16 v17, v4

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v14

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    ushr-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v1, v6, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    .line 24
    invoke-static {v1, v3, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v1, v6, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v1, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    .line 7
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    move-wide/from16 v6, v33

    move-wide/from16 v14, v35

    .line 21
    invoke-static {v6, v7, v14, v15, v1}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    add-long v6, v12, v33

    .line 23
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    add-long v6, v6, v39

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v1, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v12, v33

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v12, v12, v33

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    ushr-long/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v12, 0x1

    invoke-static {v1, v12, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v1, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v33, v4, v22

    .line 23
    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v33

    add-long v33, v33, v13

    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v1, v3, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v4, v22

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v4, v4, v22

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v4, v14

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v12

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    ushr-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/4 v12, 0x1

    invoke-static {v1, v12, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    .line 24
    invoke-static {v1, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v1, v12, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v4, 0x2

    .line 11
    invoke-static {v4}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v5

    .line 12
    invoke-static {v8, v9, v8, v9, v5}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v4, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 13
    invoke-static {v5, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 14
    invoke-static {v5, v12, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v5, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 7
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    move-wide/from16 v13, v24

    .line 21
    invoke-static {v10, v11, v13, v14, v5}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    invoke-static {v4, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v33, v8, v24

    .line 23
    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v33

    add-long v33, v33, v39

    move-object v12, v0

    move-object v4, v1

    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v5, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v0, v8, v24

    .line 24
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long v8, v8, v24

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    move-wide/from16 v24, v13

    move-object v14, v12

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v0, v8

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/4 v8, 0x1

    invoke-static {v5, v8, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    invoke-static {v5, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    add-long v8, v6, v22

    .line 23
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    add-long/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v5, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v6, v22

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long v6, v6, v22

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    ushr-long/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v5, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 24
    invoke-static {v5, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v5, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v5, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    .line 7
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    move-wide/from16 v12, v17

    move-wide/from16 v8, v31

    .line 21
    invoke-static {v8, v9, v12, v13, v5}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    add-long v8, v6, v17

    .line 23
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    add-long v8, v8, v39

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v5, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v6, v17

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long v6, v6, v17

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    move-object/from16 v17, v14

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v6, v14

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    ushr-long/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v5, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v5, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    add-long v8, v0, v12

    .line 23
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    add-long/2addr v8, v14

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v5, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v0, v12

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v0, v12

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v0, v12

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long/2addr v0, v8

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/4 v8, 0x1

    invoke-static {v5, v8, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    .line 24
    invoke-static {v5, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v5, v8, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v0, 0x2

    .line 11
    invoke-static {v0}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v1

    move-wide/from16 v6, v29

    move-wide/from16 v12, v35

    .line 12
    invoke-static {v6, v7, v12, v13, v1}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v0, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    .line 13
    invoke-static {v1, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 14
    invoke-static {v1, v8, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 7
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    move-wide/from16 v8, v27

    .line 21
    invoke-static {v10, v11, v8, v9, v1}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v18

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v27

    add-long v29, v14, v27

    .line 23
    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v29

    add-long v29, v29, v39

    move-object v2, v4

    move-object v0, v5

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v14, v27

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long v14, v14, v27

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    move-wide/from16 v27, v8

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v8, v14

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v8, 0x3f

    ushr-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-static {v1, v8, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    add-long v8, v12, v18

    .line 23
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    add-long/2addr v8, v14

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v1, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v12, v18

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long v12, v12, v18

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/16 v12, 0x3f

    ushr-long/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v12, 0x1

    invoke-static {v1, v12, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 24
    invoke-static {v1, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v1, v12, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v1, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    .line 7
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    move-wide/from16 v29, v6

    move-wide/from16 v13, v24

    move-wide/from16 v6, v41

    .line 21
    invoke-static {v6, v7, v13, v14, v1}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v15

    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v18

    invoke-static {v15, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v31, v8, v24

    .line 23
    invoke-static/range {v31 .. v32}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v31

    add-long v31, v31, v39

    invoke-static/range {v31 .. v32}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v1, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v8, v24

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v8, v8, v24

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    move-wide/from16 v24, v10

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    not-long v10, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v1, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    add-long v11, v4, v18

    .line 23
    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v1, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v4, v18

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long v4, v4, v18

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    not-long v10, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    and-long/2addr v4, v10

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v8, 0x3f

    ushr-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-static {v1, v8, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    .line 24
    invoke-static {v1, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v1, v8, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v4, 0x2

    .line 11
    invoke-static {v4}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v5

    .line 12
    invoke-static {v13, v14, v13, v14, v5}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    .line 13
    invoke-static {v5, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 14
    invoke-static {v5, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v5, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 7
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    move-wide/from16 v13, v24

    move-wide/from16 v11, v29

    .line 21
    invoke-static {v13, v14, v11, v12, v5}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v18, v9, v13

    .line 23
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v18

    add-long v18, v18, v39

    move-object v8, v0

    move-object v4, v1

    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v5, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v0, v9, v13

    .line 24
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v0, v9

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 v9, 0x3f

    ushr-long/2addr v0, v9

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/4 v9, 0x1

    invoke-static {v5, v9, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    invoke-static {v5, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v9, v6, v11

    .line 23
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v5, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v9, v6, v11

    .line 24
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v11

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    not-long v11, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    and-long/2addr v6, v11

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v9, 0x3f

    ushr-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v9, 0x1

    invoke-static {v5, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 24
    invoke-static {v5, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v5, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 8
    invoke-static {v5, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    .line 7
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    move-wide/from16 v10, v27

    move-wide/from16 v12, v41

    .line 21
    invoke-static {v12, v13, v10, v11, v5}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE(JJ[J)[J

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v10, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v9, v6, v13

    .line 23
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    add-long v9, v9, v39

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v5, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v9, v6, v13

    .line 24
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v13

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v6, v13

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v9, 0x3f

    ushr-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v9, 0x1

    invoke-static {v5, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 22
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v5, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v9, v0, v11

    .line 23
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v5, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v9, v0, v11

    .line 24
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v0, v11

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    not-long v11, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    and-long/2addr v0, v11

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long/2addr v0, v9

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 v9, 0x3f

    ushr-long/2addr v0, v9

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/4 v9, 0x1

    invoke-static {v5, v9, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 23
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    .line 24
    invoke-static {v5, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 25
    invoke-static {v5, v9, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-object/from16 v0, v17

    .line 7
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 233
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_51_BIT_NASK()J

    move-result-wide v10

    and-long/2addr v6, v10

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    .line 8
    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    const/16 v1, 0xd

    shl-long v9, v10, v1

    .line 38
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    .line 7
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    const/16 v0, 0x33

    ushr-long/2addr v11, v0

    .line 38
    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    const/4 v11, 0x2

    .line 30
    invoke-static {v11}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v12

    .line 7
    invoke-static {v2, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v17, v13, v9

    .line 23
    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    add-long v17, v17, v39

    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v12, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v0, v13, v9

    .line 24
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    or-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v0, v9

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/16 v9, 0x3f

    ushr-long/2addr v0, v9

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const/4 v9, 0x1

    invoke-static {v12, v9, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 31
    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    invoke-static {v12, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 8
    invoke-static {v2, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    add-long v9, v17, v39

    .line 23
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v12, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v9, v17, v39

    .line 24
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long v13, v17, v39

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-wide/from16 v18, v6

    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long/2addr v6, v13

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v9, 0x3f

    ushr-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v9, 0x1

    invoke-static {v12, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 33
    invoke-static {v2, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 34
    invoke-static {v2, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 7
    invoke-static {v2, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    .line 236
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_51_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v0, v6

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    .line 8
    invoke-static {v2, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v9, 0xd

    shl-long/2addr v6, v9

    .line 38
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    .line 7
    invoke-static {v2, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    const/16 v2, 0x33

    ushr-long/2addr v9, v2

    .line 38
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x2

    .line 30
    invoke-static {v2}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v9

    .line 7
    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    add-long v24, v12, v6

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v39

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v9, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v12, v6

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v10

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v10, 0x3f

    ushr-long/2addr v6, v10

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v10, 0x1

    invoke-static {v9, v10, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 31
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v9, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    .line 8
    invoke-static {v8, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v24, v13, v39

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v11

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v9, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v13, v39

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v12, v13, v39

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/16 v12, 0x3f

    ushr-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v9, v12, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    .line 33
    invoke-static {v8, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 34
    invoke-static {v8, v12, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 7
    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 239
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_51_BIT_NASK()J

    move-result-wide v9

    and-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    .line 8
    invoke-static {v8, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v2, 0xd

    shl-long/2addr v6, v2

    .line 38
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    .line 7
    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    const/16 v2, 0x33

    ushr-long/2addr v12, v2

    .line 38
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x2

    .line 30
    invoke-static {v2}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v8

    .line 7
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    add-long v24, v12, v6

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v39

    move-wide/from16 v27, v9

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v9, v12, v6

    .line 24
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v2, 0x3f

    ushr-long/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v8, v2, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 31
    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v8, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    .line 8
    invoke-static {v4, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    add-long v24, v12, v39

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v9

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v3, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v9, v12, v39

    .line 24
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long v12, v12, v39

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    move-wide/from16 v24, v12

    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    not-long v11, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    and-long v11, v24, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    const/16 v11, 0x3f

    ushr-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v8, v11, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 33
    invoke-static {v4, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 34
    invoke-static {v4, v11, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 7
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 242
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_51_BIT_NASK()J

    move-result-wide v8

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    .line 8
    invoke-static {v4, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v2, 0xd

    shl-long/2addr v6, v2

    .line 38
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    .line 7
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    const/16 v2, 0x33

    ushr-long/2addr v8, v2

    .line 38
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x2

    .line 30
    invoke-static {v2}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v4

    .line 7
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    add-long v24, v8, v6

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v39

    move-wide/from16 v29, v12

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v4, v3, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v8, v6

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v10

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v4, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 31
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    .line 8
    invoke-static {v5, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    add-long v13, v11, v39

    .line 23
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v4, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v11, v39

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long v10, v11, v39

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/16 v10, 0x3f

    ushr-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-static {v4, v10, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 33
    invoke-static {v5, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 34
    invoke-static {v5, v10, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 7
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 245
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_51_BIT_NASK()J

    move-result-wide v8

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    .line 8
    invoke-static {v5, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    const/16 v2, 0xd

    shl-long/2addr v8, v2

    .line 38
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    .line 7
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v2, 0x33

    ushr-long v3, v4, v2

    .line 38
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    .line 248
    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    mul-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    add-long v3, v18, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    ushr-long v8, v3, v2

    .line 249
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    .line 250
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_51_BIT_NASK()J

    move-result-wide v8

    and-long v2, v3, v8

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    add-int/lit8 v11, v26, 0x1

    move-wide v14, v6

    move-wide/from16 v9, v27

    move-wide/from16 v12, v29

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    move-wide v6, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    goto/16 :goto_0

    :cond_0
    move v1, v2

    move-wide v2, v3

    move-wide v4, v12

    move-wide v11, v14

    move-wide v13, v9

    .line 252
    invoke-static {v0, v1, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v1, 0x1

    .line 253
    invoke-static {v0, v1, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v1, 0x2

    .line 254
    invoke-static {v0, v1, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v1, 0x3

    .line 255
    invoke-static {v0, v1, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v1, 0x4

    .line 256
    invoke-static {v0, v1, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    return-void
.end method
