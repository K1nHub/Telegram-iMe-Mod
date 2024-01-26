.class public final Lio/github/andreypfau/curve25519/internal/Scalar64Kt;
.super Ljava/lang/Object;
.source "scalar64.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nscalar64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 scalar64.kt\nio/github/andreypfau/curve25519/internal/Scalar64Kt\n+ 2 math.kt\nio/github/andreypfau/curve25519/internal/MathKt\n+ 3 UnpackedScalar.kt\nio/github/andreypfau/curve25519/scalar/UnpackedScalar\n*L\n1#1,233:1\n28#2,2:234\n23#2,11:236\n28#2,2:247\n23#2,11:249\n28#2,2:260\n23#2,11:262\n28#2,2:273\n23#2,11:275\n28#2,2:286\n23#2,11:288\n28#2,2:299\n23#2,11:301\n28#2,2:312\n23#2,11:314\n28#2,2:325\n23#2,11:327\n28#2,2:338\n23#2,11:340\n28#2,2:351\n23#2,11:353\n28#2,2:364\n23#2,11:366\n28#2,2:377\n23#2,11:379\n28#2,2:390\n23#2,11:392\n28#2,2:403\n23#2,11:405\n28#2,2:416\n23#2,11:418\n28#2,2:430\n23#2,11:432\n28#2,2:443\n23#2,11:445\n28#2,2:457\n23#2,11:459\n28#2,2:470\n23#2,11:472\n28#2,2:483\n23#2,11:485\n28#2,2:497\n23#2,11:499\n28#2,2:510\n23#2,11:512\n28#2,2:523\n23#2,11:525\n28#2,2:537\n23#2,11:539\n28#2,2:550\n23#2,11:552\n28#2,2:564\n23#2,11:566\n28#2,2:577\n23#2,11:579\n28#2,2:590\n23#2,11:592\n28#2,2:604\n23#2,11:606\n28#2,2:617\n23#2,11:619\n28#2,2:631\n23#2,11:633\n28#2,2:644\n23#2,11:646\n28#2,2:658\n23#2,11:660\n28#2,2:671\n23#2,11:673\n28#2,2:684\n23#2,11:686\n18#3:429\n18#3:456\n18#3:496\n18#3:536\n18#3:563\n18#3:603\n18#3:630\n18#3:657\n*S KotlinDebug\n*F\n+ 1 scalar64.kt\nio/github/andreypfau/curve25519/internal/Scalar64Kt\n*L\n110#1:234,2\n110#1:236,11\n116#1:247,2\n116#1:249,11\n114#1:260,2\n114#1:262,11\n119#1:273,2\n119#1:275,11\n120#1:286,2\n120#1:288,11\n118#1:299,2\n118#1:301,11\n124#1:312,2\n124#1:314,11\n122#1:325,2\n122#1:327,11\n127#1:338,2\n127#1:340,11\n128#1:351,2\n128#1:353,11\n126#1:364,2\n126#1:366,11\n132#1:377,2\n132#1:379,11\n130#1:390,2\n130#1:392,11\n134#1:403,2\n134#1:405,11\n157#1:416,2\n157#1:418,11\n156#1:430,2\n156#1:432,11\n163#1:443,2\n163#1:445,11\n164#1:457,2\n164#1:459,11\n162#1:470,2\n162#1:472,11\n169#1:483,2\n169#1:485,11\n170#1:497,2\n170#1:499,11\n168#1:510,2\n168#1:512,11\n175#1:523,2\n175#1:525,11\n176#1:537,2\n176#1:539,11\n174#1:550,2\n174#1:552,11\n187#1:564,2\n187#1:566,11\n185#1:577,2\n185#1:579,11\n183#1:590,2\n183#1:592,11\n194#1:604,2\n194#1:606,11\n192#1:617,2\n192#1:619,11\n200#1:631,2\n200#1:633,11\n198#1:644,2\n198#1:646,11\n206#1:658,2\n206#1:660,11\n204#1:671,2\n204#1:673,11\n220#1:684,2\n220#1:686,11\n158#1:429\n164#1:456\n170#1:496\n176#1:536\n187#1:563\n194#1:603\n200#1:630\n206#1:657\n*E\n"
.end annotation


# direct methods
.method public static final part1-PWzV0Is(JJ)[J
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 p0, 0x1

    aput-wide p2, v0, p0

    .line 216
    invoke-static {v0}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part1-QwZRm1k([J)[J

    move-result-object p0

    return-object p0
.end method

.method public static final part1-QwZRm1k([J)[J
    .locals 20

    move-object/from16 v0, p0

    const-string/jumbo v1, "sum"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 218
    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    const-wide v4, 0x51da312547e1bL

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    .line 219
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v4

    invoke-virtual {v4}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v4

    const/4 v11, 0x0

    invoke-static {v4, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-wide v4, v2

    invoke-static/range {v4 .. v10}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v4

    const/4 v5, 0x2

    .line 28
    invoke-static {v5}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v6

    .line 29
    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v4, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    add-long v12, v7, v9

    .line 23
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v6, v11, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v7, v9

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v6, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    not-long v9, v9

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    or-long/2addr v7, v12

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/16 v9, 0x3f

    ushr-long/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v6, v1, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v6, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v6, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 30
    invoke-static {v0, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    invoke-static {v4, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v16

    add-long v18, v14, v16

    .line 23
    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v18

    add-long v18, v18, v12

    invoke-static/range {v18 .. v19}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v6, v11, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v14, v16

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v14, v14, v16

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    move-wide/from16 v16, v2

    invoke-static {v6, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    not-long v1, v1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    and-long/2addr v1, v14

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    or-long/2addr v1, v12

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    ushr-long/2addr v1, v9

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 v0, 0x1

    invoke-static {v6, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v6, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    .line 31
    invoke-static {v6, v11, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v6, v0, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 220
    invoke-static {v6, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    invoke-static {v6, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v6, 0xc

    shl-long v6, v1, v6

    .line 221
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v8, 0x34

    ushr-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    ushr-long/2addr v1, v8

    .line 222
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 v6, 0x3

    new-array v6, v6, [J

    aput-wide v1, v6, v11

    const/4 v0, 0x1

    aput-wide v3, v6, v0

    aput-wide v16, v6, v5

    return-object v6
.end method

.method public static final part2-QwZRm1k([J)[J
    .locals 10

    const-string/jumbo v0, "sum"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 227
    invoke-static {p0, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    .line 228
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v6, v4

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 p0, 0xc

    shl-long v8, v1, p0

    .line 229
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/16 p0, 0x34

    ushr-long/2addr v4, p0

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    ushr-long/2addr v1, p0

    .line 230
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 p0, 0x3

    new-array p0, p0, [J

    aput-wide v1, p0, v0

    aput-wide v4, p0, v3

    const/4 v0, 0x2

    aput-wide v6, p0, v0

    return-object p0
.end method

.method public static final scalarMontgomeryReduce-GR1PJdc([J[J)[J
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "limbs"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "output"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 154
    invoke-static {v0, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part1-PWzV0Is(JJ)[J

    move-result-object v3

    const/4 v4, 0x2

    new-array v6, v4, [J

    const/4 v7, 0x3

    .line 157
    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    aput-wide v8, v6, v5

    invoke-static {v0, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 28
    invoke-static {v4}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v8

    .line 29
    invoke-static {v3, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v6, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    add-long v13, v9, v11

    .line 23
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v8, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v9, v11

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    not-long v11, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    const/16 v11, 0x3f

    ushr-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v2, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v8, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 30
    invoke-static {v3, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    invoke-static {v6, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v19

    add-long v21, v17, v19

    .line 23
    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v21

    add-long v21, v21, v12

    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v8, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v17, v19

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    move-object v14, v3

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    not-long v2, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    and-long v2, v17, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    or-long/2addr v2, v12

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    ushr-long/2addr v2, v11

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-static {v8, v6, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    .line 31
    invoke-static {v8, v5, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v8, v6, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-object v2, v14

    .line 158
    invoke-static {v2, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v19

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    .line 158
    invoke-static/range {v17 .. v23}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v3

    .line 28
    invoke-static {v4}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v9

    .line 29
    invoke-static {v8, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v3, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    add-long v19, v12, v17

    .line 23
    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v19

    add-long v19, v19, v15

    invoke-static/range {v19 .. v20}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v9, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v12, v17

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v12, v12, v17

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

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

    ushr-long/2addr v6, v11

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v12, 0x1

    invoke-static {v9, v12, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v9, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v15

    .line 30
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v3, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v19

    add-long v21, v7, v19

    .line 23
    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v21

    add-long v21, v21, v15

    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v9, v5, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v7, v19

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v7, v7, v19

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v7, 0x3f

    ushr-long v10, v3, v7

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/4 v4, 0x1

    invoke-static {v9, v4, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v9, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v4, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 155
    invoke-static {v9}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part1-QwZRm1k([J)[J

    move-result-object v7

    const/4 v6, 0x2

    new-array v8, v6, [J

    const/4 v9, 0x5

    .line 163
    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    aput-wide v9, v8, v5

    const/4 v9, 0x4

    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    aput-wide v10, v8, v4

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v10

    .line 29
    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v8, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v19

    add-long v21, v13, v19

    .line 23
    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v21

    const-wide/16 v16, 0x0

    add-long v21, v21, v16

    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v10, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v13, v19

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v13, v13, v19

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object v11, v7

    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long/2addr v6, v13

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v6, 0x3f

    ushr-long v13, v3, v6

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-static {v10, v4, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v10, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v19

    .line 30
    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v21

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    add-long v23, v21, v7

    .line 23
    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v23

    add-long v23, v23, v19

    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v10, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v21, v7

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v7, v21, v7

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    move-wide/from16 v20, v13

    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v7, v12

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    or-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v7, 0x3f

    ushr-long v12, v3, v7

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/4 v4, 0x1

    invoke-static {v10, v4, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v10, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-wide/from16 v6, v20

    .line 32
    invoke-static {v10, v4, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v4, 0x2

    .line 164
    invoke-static {v2, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v7

    .line 18
    invoke-virtual {v7}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    .line 164
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v7

    invoke-static {v11, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    .line 164
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v4

    const/4 v8, 0x2

    .line 28
    invoke-static {v8}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v12

    .line 29
    invoke-static {v7, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v4, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    add-long v22, v13, v20

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v16, 0x0

    add-long v22, v22, v16

    move-object/from16 v16, v10

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v12, v5, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v9, v13, v20

    .line 24
    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long v13, v13, v20

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object/from16 v21, v4

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long/2addr v3, v13

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v9

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v9, 0x3f

    ushr-long v13, v3, v9

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    const/4 v4, 0x1

    invoke-static {v12, v4, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v12, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    move-object/from16 v4, v21

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    add-long v24, v22, v20

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v13

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v12, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v22, v20

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v20, v22, v20

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long v3, v20, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v13

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v7, 0x3f

    ushr-long v13, v3, v7

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const/4 v4, 0x1

    invoke-static {v12, v4, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v12, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v12, v4, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v6, 0x2

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v7

    move-object/from16 v9, v16

    .line 29
    invoke-static {v9, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v12, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    add-long v22, v13, v20

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v16, 0x0

    add-long v22, v22, v16

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v7, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v13, v20

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v13, v13, v20

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object/from16 v20, v9

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v8, v13

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v8, 0x3f

    ushr-long v13, v3, v8

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-static {v7, v4, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    move-object/from16 v4, v20

    .line 30
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    add-long v24, v20, v22

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v13

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v7, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v20, v22

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long v3, v20, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v12, 0x3f

    ushr-long v13, v3, v12

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v4, 0x1

    invoke-static {v7, v4, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 31
    invoke-static {v7, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v7, v4, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 161
    invoke-static {v7}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part1-QwZRm1k([J)[J

    move-result-object v7

    const/4 v6, 0x2

    new-array v8, v6, [J

    const/4 v9, 0x7

    .line 169
    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    aput-wide v12, v8, v5

    const/4 v9, 0x6

    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    aput-wide v12, v8, v4

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v9

    .line 29
    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v8, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    add-long v22, v12, v20

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v16, 0x0

    add-long v22, v22, v16

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v9, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v12, v20

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v12, v12, v20

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    move-object v14, v11

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    not-long v10, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v10, 0x3f

    ushr-long v11, v3, v10

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v4, 0x1

    invoke-static {v9, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v9, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v21

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v23

    add-long v25, v21, v23

    .line 23
    invoke-static/range {v25 .. v26}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v25

    add-long v25, v25, v12

    invoke-static/range {v25 .. v26}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v9, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v21, v23

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v21, v21, v23

    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v21

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long v3, v21, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v8, 0x3f

    ushr-long v12, v3, v8

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v4, 0x1

    invoke-static {v9, v4, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 31
    invoke-static {v9, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-object v4, v14

    const/4 v8, 0x2

    .line 170
    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v12

    .line 18
    invoke-virtual {v12}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v12

    invoke-static {v12, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 170
    invoke-static/range {v10 .. v16}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v10

    invoke-static {v7, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v21

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v8

    const/4 v6, 0x1

    invoke-static {v8, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v23

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    .line 170
    invoke-static/range {v21 .. v27}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v8

    const/4 v11, 0x2

    .line 28
    invoke-static {v11}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v12

    .line 29
    invoke-static {v10, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v8, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v21

    add-long v23, v13, v21

    .line 23
    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v23

    const-wide/16 v16, 0x0

    add-long v23, v23, v16

    move-object v11, v4

    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v12, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v13, v21

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v13, v13, v21

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object/from16 v21, v7

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long/2addr v6, v13

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v6, 0x3f

    ushr-long v13, v3, v6

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-static {v12, v4, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v12, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    .line 30
    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    add-long v26, v24, v7

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v22

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v12, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v24, v7

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v7, v24, v7

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    move-object/from16 v16, v11

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    not-long v10, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    and-long/2addr v7, v10

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    or-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v7, 0x3f

    ushr-long v10, v3, v7

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/4 v4, 0x1

    invoke-static {v12, v4, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v12, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v12, v4, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v6, 0x2

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v7

    .line 29
    invoke-static {v9, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v12, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v22, v10, v13

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v17, 0x0

    add-long v22, v22, v17

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v7, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v10, v13

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v8, 0x3f

    ushr-long v10, v3, v8

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v4, 0x1

    invoke-static {v7, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 30
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    add-long v24, v8, v22

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v13

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v7, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v8, v22

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v8, v8, v22

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v8, 0x3f

    ushr-long v12, v3, v8

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-static {v7, v4, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 31
    invoke-static {v7, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v7, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 167
    invoke-static {v7}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part1-QwZRm1k([J)[J

    move-result-object v7

    const/4 v6, 0x2

    new-array v8, v6, [J

    const/16 v9, 0x9

    .line 175
    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    aput-wide v9, v8, v5

    const/16 v9, 0x8

    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    aput-wide v9, v8, v4

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v9

    .line 29
    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v8, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    add-long v22, v10, v12

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v17, 0x0

    add-long v22, v22, v17

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v9, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v10, v12

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v10, 0x3f

    ushr-long v11, v3, v10

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v4, 0x1

    invoke-static {v9, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v9, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v22, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v12

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v9, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v22, v24

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long v3, v22, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v8, 0x3f

    ushr-long v12, v3, v8

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v4, 0x1

    invoke-static {v9, v4, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 31
    invoke-static {v9, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v4, 0x2

    .line 176
    invoke-static {v2, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    .line 176
    invoke-static/range {v22 .. v28}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v2

    move-object/from16 v4, v21

    const/4 v10, 0x2

    invoke-static {v4, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v11

    .line 18
    invoke-virtual {v11}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x4

    .line 176
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v11

    invoke-static {v7, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v10

    .line 18
    invoke-virtual {v10}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v10

    const/4 v6, 0x1

    invoke-static {v10, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    .line 176
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v10

    const/4 v12, 0x2

    .line 28
    invoke-static {v12}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v13

    .line 29
    invoke-static {v11, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v10, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    add-long v24, v20, v22

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    const-wide/16 v17, 0x0

    add-long v24, v24, v17

    move-object v14, v4

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v13, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v20, v22

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    move-object/from16 v22, v7

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long v6, v20, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v6, 0x3f

    ushr-long v20, v3, v6

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-static {v13, v4, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v13, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    move-wide v3, v6

    .line 30
    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v23

    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    add-long v25, v23, v10

    .line 23
    invoke-static/range {v25 .. v26}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v25

    add-long v25, v25, v20

    invoke-static/range {v25 .. v26}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v13, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v23, v10

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v10, v23, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    move-object/from16 v21, v9

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

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

    const/4 v9, 0x1

    invoke-static {v13, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v13, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v13, v9, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v3, 0x2

    .line 28
    invoke-static {v3}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v4

    .line 29
    invoke-static {v2, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v13, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v10, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    const-wide/16 v17, 0x0

    add-long v26, v26, v17

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v10, v24

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v9, v10, v24

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    move-object v11, v13

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v9, v12

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v4, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 30
    invoke-static {v2, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v7, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v12

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v4, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v11, v7, v24

    .line 24
    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long v7, v7, v24

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    move-wide/from16 v24, v7

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long v6, v24, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v11

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v2, 0x3f

    ushr-long/2addr v6, v2

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v4, v2, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v4, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v4, v2, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v6, 0x2

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v7

    move-object/from16 v8, v21

    .line 29
    invoke-static {v8, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v4, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    add-long v20, v9, v11

    .line 23
    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    const-wide/16 v17, 0x0

    add-long v20, v20, v17

    move-object v2, v4

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v7, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v9, v11

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    not-long v11, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v3, v9

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v9, 0x3f

    ushr-long v10, v3, v9

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    const/4 v4, 0x1

    invoke-static {v7, v4, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    .line 30
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v2, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v20, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v11

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v7, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v11, v20, v24

    .line 24
    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long v20, v20, v24

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v2, v3

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    and-long v2, v20, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    or-long/2addr v2, v11

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/16 v4, 0x3f

    ushr-long v11, v2, v4

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    const/4 v2, 0x1

    invoke-static {v7, v2, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    .line 31
    invoke-static {v7, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v7, v2, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 173
    invoke-static {v7}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part1-QwZRm1k([J)[J

    move-result-object v4

    const/4 v7, 0x2

    new-array v9, v7, [J

    const/16 v6, 0xb

    .line 186
    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    aput-wide v10, v9, v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    aput-wide v10, v9, v2

    move-object/from16 v2, v16

    .line 187
    invoke-static {v2, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v2

    const/4 v7, 0x4

    invoke-static {v2, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v26

    const/16 v29, 0x4

    const/16 v30, 0x0

    .line 187
    invoke-static/range {v24 .. v30}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v2

    move-object/from16 v7, v22

    const/4 v10, 0x2

    invoke-static {v7, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v11

    .line 18
    invoke-virtual {v11}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    .line 187
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v11

    invoke-static {v4, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v10

    .line 18
    invoke-virtual {v10}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v10

    const/4 v6, 0x1

    invoke-static {v10, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    .line 187
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v10

    const/4 v12, 0x2

    .line 28
    invoke-static {v12}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v13

    .line 29
    invoke-static {v11, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v10, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    add-long v24, v20, v22

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    const-wide/16 v16, 0x0

    add-long v24, v24, v16

    move-object v12, v7

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v13, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v20, v22

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    move-object/from16 v23, v4

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long v3, v20, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v6, 0x3f

    ushr-long v20, v3, v6

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-static {v13, v4, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v13, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    move-wide v3, v6

    .line 30
    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    add-long v26, v24, v10

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v20

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v13, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v24, v10

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v10, v24, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    move-object/from16 v20, v9

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

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

    const/4 v9, 0x1

    invoke-static {v13, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v13, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v13, v9, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v3, 0x2

    .line 28
    invoke-static {v3}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v4

    .line 29
    invoke-static {v2, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v13, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v10, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    const-wide/16 v16, 0x0

    add-long v26, v26, v16

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v10, v24

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v10, v10, v24

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v4, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    .line 30
    invoke-static {v2, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v26

    add-long v28, v7, v26

    .line 23
    invoke-static/range {v28 .. v29}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v28

    add-long v28, v28, v24

    invoke-static/range {v28 .. v29}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v2, v7, v26

    .line 24
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    or-long v7, v7, v26

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    move-wide/from16 v24, v7

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long v6, v24, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v2, v6

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/16 v6, 0x3f

    ushr-long v7, v2, v6

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v4, v2, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v4, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v4, v2, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v6, 0x2

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v7

    move-object/from16 v8, v20

    .line 29
    invoke-static {v8, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v4, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v9, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    const-wide/16 v16, 0x0

    add-long v26, v26, v16

    move-object v2, v4

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v7, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v9, v24

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v9, v9, v24

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    move-object v11, v14

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v3, v9

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v9, 0x3f

    ushr-long v13, v3, v9

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    const/4 v4, 0x1

    invoke-static {v7, v4, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 30
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    invoke-static {v2, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v26

    add-long v28, v24, v26

    .line 23
    invoke-static/range {v28 .. v29}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v28

    add-long v28, v28, v13

    invoke-static/range {v28 .. v29}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v7, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v24, v26

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v2, v3

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    and-long v2, v24, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    or-long/2addr v2, v13

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/16 v4, 0x3f

    ushr-long v13, v2, v4

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const/4 v2, 0x1

    invoke-static {v7, v2, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 31
    invoke-static {v7, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v7, v2, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v4, 0x2

    .line 28
    invoke-static {v4}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v8

    move-object/from16 v4, v23

    .line 29
    invoke-static {v4, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v7, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v22, v9, v13

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v16, 0x0

    add-long v22, v22, v16

    move-object v2, v7

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v8, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v9, v13

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v9, v13

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v9, 0x1

    invoke-static {v8, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v8, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    .line 30
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v2, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v9, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v22

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v8, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v9, v24

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v9, v9, v24

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    not-long v2, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    and-long/2addr v2, v9

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    or-long/2addr v2, v6

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/16 v6, 0x3f

    ushr-long v9, v2, v6

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v8, v2, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v8, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v8, v2, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 182
    invoke-static {v8}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part2-QwZRm1k([J)[J

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [J

    const/16 v6, 0xd

    .line 194
    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    aput-wide v13, v9, v5

    const/16 v6, 0xc

    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    aput-wide v13, v9, v2

    move-object v2, v11

    invoke-static {v2, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v2

    const/4 v8, 0x4

    invoke-static {v2, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x4

    const/16 v28, 0x0

    .line 194
    invoke-static/range {v22 .. v28}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v2

    const/4 v10, 0x2

    invoke-static {v4, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v11

    .line 18
    invoke-virtual {v11}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x4

    .line 194
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v11

    .line 28
    invoke-static {v10}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v13

    const/4 v6, 0x1

    .line 29
    invoke-static {v2, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v11, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    add-long v24, v20, v22

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    const-wide/16 v16, 0x0

    add-long v24, v24, v16

    move-object v10, v4

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v13, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v20, v22

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    move-object v14, v7

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long v6, v20, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v6, 0x3f

    ushr-long v20, v3, v6

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-static {v13, v4, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    invoke-static {v13, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    move-wide v3, v6

    .line 30
    invoke-static {v2, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v22, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v20

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v13, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v22, v24

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v20, v22, v24

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    move-object v11, v9

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long v8, v20, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v13, v2, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v13, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v13, v2, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v3, 0x2

    .line 28
    invoke-static {v3}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v4

    .line 29
    invoke-static {v11, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v13, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v2, v20, v24

    .line 23
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const-wide/16 v16, 0x0

    add-long v2, v2, v16

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v2, v20, v24

    .line 24
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    or-long v20, v20, v24

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long v6, v20, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v2, v6

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/16 v6, 0x3f

    ushr-long v7, v2, v6

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-static {v4, v2, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v4, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    .line 30
    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v26

    add-long v28, v24, v26

    .line 23
    invoke-static/range {v28 .. v29}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v28

    add-long v28, v28, v20

    move-wide/from16 v20, v7

    invoke-static/range {v28 .. v29}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v24, v26

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    move-object v2, v10

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    not-long v9, v9

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    and-long v9, v24, v9

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v4, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v4, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-wide/from16 v6, v20

    .line 32
    invoke-static {v4, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v6, 0x2

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v7

    move-object v9, v14

    .line 29
    invoke-static {v9, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v20, v10, v13

    .line 23
    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    const-wide/16 v16, 0x0

    add-long v20, v20, v16

    move-object v8, v4

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v7, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v10, v13

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v10, 0x3f

    ushr-long v13, v3, v10

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v4, 0x1

    invoke-static {v7, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 30
    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    add-long v26, v20, v24

    .line 23
    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    add-long v26, v26, v13

    invoke-static/range {v26 .. v27}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v7, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v20, v24

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v20, v20, v24

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long v3, v20, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v13

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v8, 0x3f

    ushr-long v13, v3, v8

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const/4 v4, 0x1

    invoke-static {v7, v4, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 31
    invoke-static {v7, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v7, v4, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 191
    invoke-static {v7}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part2-QwZRm1k([J)[J

    move-result-object v7

    const/4 v8, 0x2

    new-array v10, v8, [J

    const/16 v6, 0xf

    .line 200
    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    aput-wide v13, v10, v5

    const/16 v6, 0xe

    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    aput-wide v13, v10, v4

    invoke-static {v12, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v24

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v4

    const/4 v8, 0x4

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x4

    .line 200
    invoke-static/range {v24 .. v30}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v4

    const/4 v11, 0x2

    .line 28
    invoke-static {v11}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v12

    const/4 v6, 0x1

    .line 29
    invoke-static {v10, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v4, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    add-long v22, v13, v20

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v16, 0x0

    add-long v22, v22, v16

    move-object v11, v9

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v12, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v13, v20

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long v13, v13, v20

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object/from16 v20, v7

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long/2addr v6, v13

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v12, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v12, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v21

    .line 30
    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    add-long v23, v7, v9

    .line 23
    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v23

    add-long v23, v23, v21

    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v12, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v7, v9

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    not-long v9, v9

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    or-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v7, 0x3f

    ushr-long v8, v3, v7

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/4 v4, 0x1

    invoke-static {v12, v4, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v12, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v12, v4, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v6, 0x2

    .line 28
    invoke-static {v6}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v7

    move-object/from16 v9, v20

    .line 29
    invoke-static {v9, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v12, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    add-long v22, v13, v20

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v17, 0x0

    add-long v22, v22, v17

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v7, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v13, v20

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v13, v13, v20

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object/from16 v20, v9

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v8, v13

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v8, 0x3f

    ushr-long v9, v3, v8

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-static {v7, v4, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v7, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    move-object/from16 v4, v20

    .line 30
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {v12, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    add-long v24, v20, v22

    .line 23
    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    add-long v24, v24, v13

    invoke-static/range {v24 .. v25}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v7, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v20, v22

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    move-object v14, v4

    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    not-long v3, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    and-long v3, v20, v3

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v10, 0x3f

    ushr-long v12, v3, v10

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v4, 0x1

    invoke-static {v7, v4, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v7, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 31
    invoke-static {v7, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v7, v4, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 197
    invoke-static {v7}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part2-QwZRm1k([J)[J

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [J

    const/16 v6, 0x11

    .line 206
    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    aput-wide v12, v9, v5

    const/16 v6, 0x10

    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    aput-wide v12, v9, v4

    invoke-static {v2, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    .line 206
    invoke-static/range {v20 .. v26}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v0

    const/4 v2, 0x2

    .line 28
    invoke-static {v2}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v4

    const/4 v2, 0x1

    .line 29
    invoke-static {v9, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v0, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v20

    add-long v22, v12, v20

    .line 23
    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    const-wide/16 v16, 0x0

    add-long v22, v22, v16

    move-object v2, v7

    invoke-static/range {v22 .. v23}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v12, v20

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long v12, v12, v20

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    move-object v10, v9

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v8, v12

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v4, v8, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v4, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v21

    .line 30
    invoke-static {v10, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    add-long v23, v7, v9

    .line 23
    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v23

    add-long v23, v23, v21

    move-object v0, v14

    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v4, v5, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v7, v9

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    not-long v9, v9

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    and-long/2addr v7, v9

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    or-long/2addr v7, v14

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/16 v3, 0x3f

    ushr-long/2addr v7, v3

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/4 v6, 0x1

    invoke-static {v4, v6, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    .line 31
    invoke-static {v4, v5, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v4, v6, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v7, 0x2

    .line 28
    invoke-static {v7}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v8

    .line 29
    invoke-static {v2, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v4, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    add-long v21, v9, v12

    .line 23
    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v21

    const-wide/16 v16, 0x0

    add-long v21, v21, v16

    invoke-static/range {v21 .. v22}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v8, v5, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v6, v9, v12

    .line 24
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v9, v12

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v9, v12

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v9, 0x1

    invoke-static {v8, v9, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v8, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v16

    .line 30
    invoke-static {v2, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    invoke-static {v4, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v21

    add-long v23, v9, v21

    .line 23
    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v23

    add-long v23, v23, v16

    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v8, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v3, v9, v21

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    or-long v9, v9, v21

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long/2addr v6, v9

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v6, 0x3f

    ushr-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/4 v6, 0x1

    invoke-static {v8, v6, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    .line 31
    invoke-static {v8, v5, v3, v4}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v8, v6, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 203
    invoke-static {v8}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->part2-QwZRm1k([J)[J

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    .line 209
    invoke-static {v11, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v1, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 210
    invoke-static {v0, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v1, v6, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 211
    invoke-static {v2, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v2

    invoke-static {v1, v4, v2, v3}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v0, 0x3

    .line 212
    invoke-static {v1, v0, v9, v10}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v0, 0x4

    .line 213
    invoke-static {v1, v0, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    return-object v1
.end method

.method public static synthetic scalarMontgomeryReduce-GR1PJdc$default([J[JILjava/lang/Object;)[J
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x5

    .line 151
    invoke-static {p1}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMontgomeryReduce-GR1PJdc([J[J)[J

    move-result-object p0

    return-object p0
.end method

.method public static final scalarMulInternal-NHtdf0s([J[J[J)[J
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "a"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "b"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "output"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 109
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-static {v4, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 111
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v1, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v4

    .line 112
    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static/range {v10 .. v16}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v10

    const/4 v11, 0x2

    .line 28
    invoke-static {v11}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v12

    .line 29
    invoke-static {v4, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v10, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v15

    add-long v17, v13, v15

    .line 23
    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    add-long v17, v17, v19

    move-wide/from16 v21, v8

    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v12, v3, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v7, v13, v15

    .line 24
    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    or-long/2addr v13, v15

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-wide v15, v5

    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    not-long v5, v5

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    and-long/2addr v5, v13

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    or-long/2addr v5, v7

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    const/16 v7, 0x3f

    ushr-long/2addr v5, v7

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    const/4 v8, 0x1

    invoke-static {v12, v8, v5, v6}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    invoke-static {v12, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 30
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v10, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    add-long v23, v8, v17

    .line 23
    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v23

    add-long v23, v23, v13

    invoke-static/range {v23 .. v24}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v12, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v8, v17

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v8, v8, v17

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    move-wide/from16 v17, v8

    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    not-long v7, v7

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    and-long v7, v17, v7

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    or-long/2addr v7, v13

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/16 v4, 0x3f

    ushr-long/2addr v7, v4

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-static {v12, v9, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    .line 31
    invoke-static {v12, v3, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v12, v9, v5, v6}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 110
    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    invoke-static {v12, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    .line 115
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v23

    invoke-static {v1, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v25

    const/16 v27, 0x0

    const/16 v28, 0x4

    const/16 v29, 0x0

    invoke-static/range {v23 .. v29}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v9

    const/4 v10, 0x1

    .line 116
    invoke-static {v0, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v23

    invoke-static {v1, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v25

    invoke-static/range {v23 .. v29}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v10

    invoke-static {v0, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v23

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v25

    invoke-static/range {v23 .. v29}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v12

    .line 28
    invoke-static {v11}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v13

    const/4 v14, 0x1

    .line 29
    invoke-static {v10, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    invoke-static {v12, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v23

    add-long v25, v17, v23

    .line 23
    invoke-static/range {v25 .. v26}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v25

    add-long v25, v25, v19

    move-wide/from16 v27, v5

    invoke-static/range {v25 .. v26}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v13, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v17, v23

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long v17, v17, v23

    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    move-wide/from16 v23, v15

    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long v14, v17, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long/2addr v4, v14

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v6, 0x3f

    ushr-long v14, v4, v6

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    const/4 v14, 0x1

    invoke-static {v13, v14, v5, v6}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    invoke-static {v13, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v15

    .line 30
    invoke-static {v10, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v25

    add-long v29, v17, v25

    .line 23
    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v29

    add-long v29, v29, v15

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v13, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v17, v25

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long v16, v17, v25

    invoke-static/range {v16 .. v17}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v16

    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    not-long v11, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    and-long v11, v16, v11

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long/2addr v11, v14

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    const/16 v4, 0x3f

    ushr-long/2addr v11, v4

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    const/4 v14, 0x1

    invoke-static {v13, v14, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    .line 31
    invoke-static {v13, v3, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v13, v14, v5, v6}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v5, 0x2

    .line 28
    invoke-static {v5}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v6

    .line 29
    invoke-static {v9, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v13, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v15

    add-long v17, v11, v15

    .line 23
    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v6, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v11, v15

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v11, v15

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v11, v14

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long/2addr v4, v11

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v11, 0x3f

    ushr-long v14, v4, v11

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    const/4 v5, 0x1

    invoke-static {v6, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v6, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    .line 30
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v16

    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v25

    add-long v29, v16, v25

    .line 23
    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v29

    add-long v29, v29, v14

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v6, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v16, v25

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v15, v16, v25

    invoke-static/range {v15 .. v16}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v15

    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long/2addr v4, v15

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v13

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v9, 0x3f

    ushr-long v13, v4, v9

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const/4 v5, 0x1

    invoke-static {v6, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 31
    invoke-static {v6, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v6, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 114
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v6, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 119
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v31

    const/16 v33, 0x0

    const/16 v34, 0x4

    const/16 v35, 0x0

    invoke-static/range {v29 .. v35}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    const/4 v9, 0x2

    invoke-static {v1, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v31

    invoke-static/range {v29 .. v35}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v15

    .line 28
    invoke-static {v9}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v10

    move-object v9, v10

    const/4 v4, 0x1

    .line 29
    invoke-static {v6, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    invoke-static {v15, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v25

    add-long v29, v17, v25

    .line 23
    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v29

    add-long v29, v29, v19

    move-wide/from16 v31, v11

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v9, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v17, v25

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v17, v17, v25

    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    move-wide/from16 v25, v13

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long v12, v17, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/16 v4, 0x3f

    ushr-long/2addr v10, v4

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v9, v12, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v9, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v16

    .line 30
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    add-long v33, v12, v29

    .line 23
    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v33

    add-long v33, v33, v16

    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v9, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v12, v29

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long v12, v12, v29

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    move-wide/from16 v16, v7

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    not-long v6, v6

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v6, v14

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/16 v4, 0x3f

    ushr-long/2addr v6, v4

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    const/4 v12, 0x1

    invoke-static {v9, v12, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 31
    invoke-static {v9, v3, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v12, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v6, 0x2

    .line 120
    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    invoke-static {v1, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v35

    const/16 v37, 0x0

    const/16 v38, 0x4

    const/16 v39, 0x0

    invoke-static/range {v33 .. v39}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v6

    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v35

    invoke-static/range {v33 .. v39}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v7

    const/4 v8, 0x2

    .line 28
    invoke-static {v8}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v11

    const/4 v8, 0x1

    .line 29
    invoke-static {v6, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v7, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    add-long v29, v12, v14

    .line 23
    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v29

    add-long v29, v29, v19

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v11, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v12, v14

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v4, v12

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v12, 0x3f

    ushr-long v13, v4, v12

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v5, 0x1

    invoke-static {v11, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    .line 30
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    invoke-static {v7, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    add-long v33, v5, v29

    .line 23
    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v33

    add-long v33, v33, v14

    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v11, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v5, v29

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long v5, v5, v29

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    move-object v7, v9

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v5, v8

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    or-long/2addr v5, v14

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    const/16 v4, 0x3f

    ushr-long/2addr v5, v4

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    const/4 v8, 0x1

    invoke-static {v11, v8, v5, v6}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    .line 31
    invoke-static {v11, v3, v5, v6}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v11, v8, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v5, 0x2

    .line 28
    invoke-static {v5}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v6

    .line 29
    invoke-static {v7, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v11, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    add-long v8, v12, v14

    .line 23
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    add-long v8, v8, v19

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v6, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v12, v14

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

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

    const/16 v4, 0x3f

    ushr-long/2addr v8, v4

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v5, 0x1

    invoke-static {v6, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v6, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 30
    invoke-static {v7, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    add-long v33, v14, v29

    .line 23
    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v33

    add-long v33, v33, v12

    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v6, v3, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v11, v14, v29

    .line 24
    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long v13, v14, v29

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long/2addr v4, v13

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v11

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v7, 0x3f

    ushr-long v11, v4, v7

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    const/4 v5, 0x1

    invoke-static {v6, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    .line 31
    invoke-static {v6, v3, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v6, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 118
    invoke-static {v6, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v6, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    .line 123
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v35

    invoke-static/range {v33 .. v39}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v9

    const/4 v8, 0x1

    .line 124
    invoke-static {v0, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    const/4 v8, 0x3

    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v35

    invoke-static/range {v33 .. v39}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v13

    const/4 v10, 0x2

    invoke-static {v0, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    invoke-static {v1, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v35

    invoke-static/range {v33 .. v39}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v14

    .line 28
    invoke-static {v10}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v15

    const/4 v4, 0x1

    .line 29
    invoke-static {v13, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    invoke-static {v14, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    add-long v35, v29, v33

    .line 23
    invoke-static/range {v35 .. v36}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v35

    add-long v35, v35, v19

    move-wide/from16 v37, v11

    invoke-static/range {v35 .. v36}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v15, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v29, v33

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v29, v29, v33

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v29

    move-object/from16 v33, v9

    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long v8, v29, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/16 v4, 0x3f

    ushr-long/2addr v8, v4

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-static {v15, v10, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v15, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    .line 30
    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v14, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    add-long v35, v10, v13

    .line 23
    invoke-static/range {v35 .. v36}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v35

    add-long v35, v35, v29

    invoke-static/range {v35 .. v36}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v15, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v10, v13

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    not-long v13, v13

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    and-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v4, v10

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v10, 0x3f

    ushr-long v13, v4, v10

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v5, 0x1

    invoke-static {v15, v5, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    .line 31
    invoke-static {v15, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v15, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v8, 0x3

    .line 124
    invoke-static {v0, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    const/16 v43, 0x0

    const/16 v44, 0x4

    const/16 v45, 0x0

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v5

    const/4 v9, 0x4

    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    invoke-static {v1, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v9

    const/4 v10, 0x2

    .line 28
    invoke-static {v10}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v11

    const/4 v12, 0x1

    .line 29
    invoke-static {v5, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v9, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    add-long v34, v13, v29

    .line 23
    invoke-static/range {v34 .. v35}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v34

    add-long v34, v34, v19

    move-object/from16 v36, v9

    invoke-static/range {v34 .. v35}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v11, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v8, v13, v29

    .line 24
    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long v13, v13, v29

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object/from16 v30, v5

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long/2addr v4, v13

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v8, 0x3f

    ushr-long v13, v4, v8

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v5, 0x1

    invoke-static {v11, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    move-object/from16 v5, v30

    .line 30
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    move-object/from16 v5, v36

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v34

    add-long v39, v29, v34

    .line 23
    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v39

    add-long v39, v39, v13

    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v11, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v29, v34

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v29, v29, v34

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v29

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long v4, v29, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v13

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v13, 0x3f

    ushr-long v29, v4, v13

    invoke-static/range {v29 .. v30}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const/4 v5, 0x1

    invoke-static {v11, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 31
    invoke-static {v11, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v11, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v8, 0x2

    .line 28
    invoke-static {v8}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v9

    .line 29
    invoke-static {v15, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    add-long v34, v13, v29

    .line 23
    invoke-static/range {v34 .. v35}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v34

    add-long v34, v34, v19

    invoke-static/range {v34 .. v35}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v9, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v13, v29

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long v13, v13, v29

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-object/from16 v29, v11

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    not-long v10, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    and-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v4, v10

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v8, 0x3f

    ushr-long v10, v4, v8

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v5, 0x1

    invoke-static {v9, v5, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 30
    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v34

    move-object/from16 v5, v29

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    add-long v41, v34, v39

    .line 23
    invoke-static/range {v41 .. v42}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v41

    add-long v41, v41, v13

    invoke-static/range {v41 .. v42}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v9, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v34, v39

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v34, v34, v39

    invoke-static/range {v34 .. v35}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v34

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long v4, v34, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v13

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v8, 0x3f

    ushr-long v13, v4, v8

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const/4 v5, 0x1

    invoke-static {v9, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 31
    invoke-static {v9, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v5, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v8, 0x2

    .line 28
    invoke-static {v8}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v11

    move-object/from16 v8, v33

    .line 29
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    add-long v33, v13, v29

    .line 23
    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v33

    add-long v33, v33, v19

    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v11, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v13, v29

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long v13, v13, v29

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    move-wide/from16 v29, v13

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long v12, v29, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v4, v12

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v12, 0x3f

    ushr-long v13, v4, v12

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v5, 0x1

    invoke-static {v11, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    .line 30
    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    add-long v35, v29, v8

    .line 23
    invoke-static/range {v35 .. v36}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v35

    add-long v35, v35, v14

    invoke-static/range {v35 .. v36}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v11, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v29, v8

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long v8, v29, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v14

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v8, 0x3f

    ushr-long v14, v4, v8

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v5, 0x1

    invoke-static {v11, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 31
    invoke-static {v11, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v11, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 122
    invoke-static {v11, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v11, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    .line 127
    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v5

    const/4 v9, 0x2

    invoke-static {v0, v9}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    const/4 v8, 0x3

    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v11

    .line 28
    invoke-static {v9}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v10

    move-object v9, v10

    const/4 v4, 0x1

    .line 29
    invoke-static {v5, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    invoke-static {v11, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v35

    add-long v39, v33, v35

    .line 23
    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v39

    add-long v39, v39, v19

    move-object/from16 v30, v11

    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v9, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v33, v35

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v33, v33, v35

    invoke-static/range {v33 .. v34}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v33

    move-wide/from16 v35, v12

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long v12, v33, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/16 v4, 0x3f

    ushr-long/2addr v10, v4

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v9, v12, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v9, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    .line 30
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    move-object/from16 v5, v30

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v29

    add-long v39, v12, v29

    .line 23
    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v39

    add-long v39, v39, v33

    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v9, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v12, v29

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long v12, v12, v29

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    move-wide/from16 v29, v14

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v4, v12

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v12, 0x3f

    ushr-long v13, v4, v12

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v5, 0x1

    invoke-static {v9, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 31
    invoke-static {v9, v3, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v5, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v5, 0x3

    .line 128
    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v42

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v44

    const/16 v46, 0x0

    const/16 v47, 0x4

    const/16 v48, 0x0

    invoke-static/range {v42 .. v48}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v5

    const/4 v11, 0x4

    invoke-static {v0, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    const/4 v11, 0x1

    invoke-static {v1, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    const/16 v43, 0x0

    const/16 v44, 0x4

    const/16 v45, 0x0

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v12

    const/4 v10, 0x2

    .line 28
    invoke-static {v10}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v13

    .line 29
    invoke-static {v5, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    invoke-static {v12, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    add-long v39, v14, v33

    .line 23
    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v39

    add-long v39, v39, v19

    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v13, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v14, v33

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v14, v14, v33

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    move-object/from16 v33, v9

    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v8, v14

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/16 v4, 0x3f

    ushr-long/2addr v8, v4

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-static {v13, v10, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v13, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    .line 30
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    add-long v42, v10, v39

    .line 23
    invoke-static/range {v42 .. v43}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v42

    add-long v42, v42, v14

    invoke-static/range {v42 .. v43}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v13, v3, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v14, v10, v39

    .line 24
    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    or-long v10, v10, v39

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long/2addr v4, v10

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v14

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v10, 0x3f

    ushr-long v11, v4, v10

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v5, 0x1

    invoke-static {v13, v5, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    .line 31
    invoke-static {v13, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v13, v5, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v8, 0x2

    .line 28
    invoke-static {v8}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v9

    move-object/from16 v8, v33

    .line 29
    invoke-static {v8, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v13, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    add-long v39, v11, v14

    .line 23
    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v39

    add-long v39, v39, v19

    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v9, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v11, v14

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v11, v14

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    not-long v14, v14

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    and-long/2addr v11, v14

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    or-long/2addr v4, v11

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v11, 0x3f

    ushr-long v14, v4, v11

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    const/4 v5, 0x1

    invoke-static {v9, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    .line 30
    invoke-static {v8, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    invoke-static {v13, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    add-long v43, v39, v41

    .line 23
    invoke-static/range {v43 .. v44}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v43

    add-long v43, v43, v14

    invoke-static/range {v43 .. v44}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v9, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v39, v41

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v39, v39, v41

    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v39

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    not-long v4, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    and-long v4, v39, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long/2addr v4, v13

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/16 v8, 0x3f

    ushr-long v13, v4, v8

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    const/4 v5, 0x1

    invoke-static {v9, v5, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 31
    invoke-static {v9, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v5, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 126
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    const/4 v5, 0x2

    .line 131
    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    const/16 v43, 0x0

    const/16 v44, 0x4

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v5

    const/4 v8, 0x3

    .line 132
    invoke-static {v0, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v9

    const/4 v15, 0x4

    invoke-static {v0, v15}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    const/4 v10, 0x2

    invoke-static {v1, v10}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    invoke-static/range {v39 .. v45}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v15

    .line 28
    invoke-static {v10}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v4

    const/4 v8, 0x1

    .line 29
    invoke-static {v9, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    invoke-static {v15, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    add-long v43, v39, v41

    .line 23
    invoke-static/range {v43 .. v44}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v43

    add-long v43, v43, v19

    move-wide/from16 v45, v11

    invoke-static/range {v43 .. v44}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v4, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v39, v41

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v39, v39, v41

    invoke-static/range {v39 .. v40}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v39

    move-object v12, v9

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long v8, v39, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/16 v10, 0x3f

    ushr-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    const/4 v11, 0x1

    invoke-static {v4, v11, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    invoke-static {v4, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v39

    .line 30
    invoke-static {v12, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v42

    add-long v47, v11, v42

    .line 23
    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v47

    add-long v47, v47, v39

    move-wide/from16 v39, v13

    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    invoke-static {v4, v3, v13, v14}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v13, v11, v42

    .line 24
    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long v11, v11, v42

    invoke-static {v11, v12}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v11

    move-wide/from16 v42, v11

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    not-long v10, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    and-long v10, v42, v10

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v10, v13

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/16 v12, 0x3f

    ushr-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v13, 0x1

    invoke-static {v4, v13, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    .line 31
    invoke-static {v4, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v4, v13, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v8, 0x2

    .line 28
    invoke-static {v8}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v9

    .line 29
    invoke-static {v5, v13}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    invoke-static {v4, v13}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    add-long v43, v14, v41

    .line 23
    invoke-static/range {v43 .. v44}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v43

    add-long v43, v43, v19

    invoke-static/range {v43 .. v44}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v9, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v14, v41

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v14, v14, v41

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/16 v8, 0x3f

    ushr-long/2addr v10, v8

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v9, v12, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v9, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    .line 30
    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v42

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    add-long v47, v42, v4

    .line 23
    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v47

    add-long v47, v47, v13

    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v9, v3, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v12, v42, v4

    .line 24
    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long v4, v42, v4

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

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

    const/16 v8, 0x3f

    ushr-long v12, v4, v8

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    const/4 v5, 0x1

    invoke-static {v9, v5, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    .line 31
    invoke-static {v9, v3, v12, v13}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v9, v5, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 130
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    invoke-static {v9, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    const/4 v5, 0x3

    .line 135
    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v47

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v49

    const/16 v51, 0x0

    const/16 v52, 0x4

    const/16 v53, 0x0

    invoke-static/range {v47 .. v53}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v9

    .line 136
    invoke-static {v0, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v47

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v49

    invoke-static/range {v47 .. v53}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v5

    const/4 v10, 0x2

    .line 28
    invoke-static {v10}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object v15

    const/4 v4, 0x1

    .line 29
    invoke-static {v9, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    invoke-static {v5, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v43

    add-long v47, v41, v43

    .line 23
    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v47

    add-long v47, v47, v19

    move-wide/from16 v19, v11

    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v15, v3, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v10, v41, v43

    .line 24
    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long v41, v41, v43

    invoke-static/range {v41 .. v42}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v41

    move-wide/from16 v43, v13

    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    not-long v12, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    and-long v12, v41, v12

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/16 v4, 0x3f

    ushr-long/2addr v10, v4

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    const/4 v12, 0x1

    invoke-static {v15, v12, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    invoke-static {v15, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v33

    .line 30
    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    invoke-static {v5, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v41

    add-long v47, v12, v41

    .line 23
    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v47

    add-long v47, v47, v33

    invoke-static/range {v47 .. v48}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v15, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    and-long v4, v12, v41

    .line 24
    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    or-long v12, v12, v41

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    not-long v8, v8

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    and-long/2addr v8, v12

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

    invoke-static {v15, v8, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    .line 31
    invoke-static {v15, v3, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    invoke-static {v15, v8, v10, v11}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 134
    invoke-static {v15, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    invoke-static {v15, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    const/4 v8, 0x4

    .line 138
    invoke-static {v0, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v47

    invoke-static {v1, v8}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v49

    invoke-static/range {v47 .. v53}, Lio/github/andreypfau/curve25519/internal/MathKt;->mul64-h-0OkrE$default(JJ[JILjava/lang/Object;)[J

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v11

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    move-wide/from16 v41, v9

    move-wide/from16 v8, v21

    .line 140
    invoke-static {v2, v3, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-wide/from16 v8, v23

    invoke-static {v2, v1, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-wide/from16 v0, v16

    const/4 v3, 0x2

    .line 141
    invoke-static {v2, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-wide/from16 v0, v27

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    move-wide/from16 v0, v25

    const/4 v3, 0x4

    .line 142
    invoke-static {v2, v3, v0, v1}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v0, 0x5

    move-wide/from16 v8, v31

    invoke-static {v2, v0, v8, v9}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v0, 0x6

    .line 143
    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/4 v0, 0x7

    move-wide/from16 v6, v37

    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0x8

    move-wide/from16 v6, v29

    .line 144
    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0x9

    move-wide/from16 v6, v35

    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0xa

    move-wide/from16 v6, v39

    .line 145
    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0xb

    move-wide/from16 v6, v45

    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0xc

    move-wide/from16 v6, v43

    .line 146
    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0xd

    move-wide/from16 v6, v19

    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0xe

    move-wide/from16 v6, v41

    .line 147
    invoke-static {v2, v0, v6, v7}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0xf

    invoke-static {v2, v0, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0x10

    .line 148
    invoke-static {v2, v0, v14, v15}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    const/16 v0, 0x11

    invoke-static {v2, v0, v11, v12}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    return-object v2
.end method

.method public static synthetic scalarMulInternal-NHtdf0s$default([J[J[JILjava/lang/Object;)[J
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/16 p2, 0x12

    .line 107
    invoke-static {p2}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMulInternal-NHtdf0s([J[J[J)[J

    move-result-object p0

    return-object p0
.end method
