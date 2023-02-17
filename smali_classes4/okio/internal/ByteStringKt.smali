.class public final Lokio/internal/ByteStringKt;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/ByteStringKt\n+ 2 -Util.kt\nokio/-Util\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,342:1\n126#1:348\n127#1,9:350\n60#2:343\n66#2:344\n66#2:346\n66#2:347\n60#2:374\n66#2:386\n60#2:406\n66#2:414\n60#2:456\n66#2:464\n1#3:345\n1#3:349\n209#4,7:359\n122#4:366\n216#4,5:367\n122#4:372\n223#4:373\n225#4:375\n393#4,2:376\n122#4:378\n396#4,6:379\n127#4:385\n402#4:387\n122#4:388\n403#4,11:389\n122#4:400\n416#4:401\n122#4:402\n418#4,2:403\n227#4:405\n229#4:407\n434#4,3:408\n122#4:411\n437#4:412\n127#4:413\n440#4,10:415\n127#4:425\n450#4:426\n122#4:427\n451#4,4:428\n127#4:432\n455#4:433\n122#4:434\n456#4,12:435\n122#4:447\n469#4,2:448\n122#4:450\n473#4:451\n122#4:452\n475#4,2:453\n231#4:455\n233#4:457\n492#4,3:458\n122#4:461\n495#4:462\n127#4:463\n498#4,2:465\n127#4:467\n502#4,10:468\n127#4:478\n512#4:479\n122#4:480\n513#4,4:481\n127#4:485\n517#4:486\n122#4:487\n518#4,4:488\n127#4:492\n522#4:493\n122#4:494\n523#4,13:495\n122#4:508\n537#4,2:509\n122#4:511\n540#4,2:512\n122#4:514\n544#4:515\n122#4:516\n546#4,2:517\n238#4:519\n122#4:520\n239#4,5:521\n*E\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/ByteStringKt\n*L\n309#1:348\n309#1,9:350\n62#1:343\n63#1:344\n239#1:346\n240#1:347\n328#1:374\n328#1:386\n328#1:406\n328#1:414\n328#1:456\n328#1:464\n309#1:349\n328#1,7:359\n333#1:366\n328#1,5:367\n333#1:372\n328#1:373\n328#1:375\n328#1,2:376\n333#1:378\n328#1,6:379\n328#1:385\n328#1:387\n333#1:388\n328#1,11:389\n333#1:400\n328#1:401\n333#1:402\n328#1,2:403\n328#1:405\n328#1:407\n328#1,3:408\n333#1:411\n328#1:412\n328#1:413\n328#1,10:415\n328#1:425\n328#1:426\n333#1:427\n328#1,4:428\n328#1:432\n328#1:433\n333#1:434\n328#1,12:435\n333#1:447\n328#1,2:448\n333#1:450\n328#1:451\n333#1:452\n328#1,2:453\n328#1:455\n328#1:457\n328#1,3:458\n333#1:461\n328#1:462\n328#1:463\n328#1,2:465\n328#1:467\n328#1,10:468\n328#1:478\n328#1:479\n333#1:480\n328#1,4:481\n328#1:485\n328#1:486\n333#1:487\n328#1,4:488\n328#1:492\n328#1:493\n333#1:494\n328#1,13:495\n333#1:508\n328#1,2:509\n333#1:511\n328#1,2:512\n333#1:514\n328#1:515\n333#1:516\n328#1,2:517\n328#1:519\n333#1:520\n328#1,5:521\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 55
    fill-array-data v0, :array_0

    sput-object v0, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lokio/internal/ByteStringKt;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/internal/ByteStringKt;->decodeHexDigit(C)I

    move-result p0

    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 328
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_59

    .line 211
    aget-byte v7, v0, v4

    const/16 v8, 0x7f

    const/16 v9, 0x9f

    const/16 v10, 0x1f

    const/16 v11, 0xd

    const v12, 0xfffd

    const/16 v13, 0xa

    const/high16 v14, 0x10000

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ltz v7, :cond_13

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_1

    return v5

    :cond_1
    if-eq v7, v13, :cond_6

    if-eq v7, v11, :cond_6

    if-ltz v7, :cond_2

    if-ge v10, v7, :cond_4

    :cond_2
    if-le v8, v7, :cond_3

    goto :goto_1

    :cond_3
    if-lt v9, v7, :cond_5

    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_7

    :cond_6
    if-ne v7, v12, :cond_8

    :cond_7
    return v16

    :cond_8
    if-ge v7, v14, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v6, 0x2

    :goto_3
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    :goto_4
    move/from16 v6, v18

    if-ge v4, v2, :cond_0

    .line 219
    aget-byte v7, v0, v4

    if-ltz v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    .line 220
    aget-byte v4, v0, v4

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_a

    return v5

    :cond_a
    if-eq v4, v13, :cond_f

    if-eq v4, v11, :cond_f

    if-ltz v4, :cond_b

    if-ge v10, v4, :cond_d

    :cond_b
    if-le v8, v4, :cond_c

    goto :goto_5

    :cond_c
    if-lt v9, v4, :cond_e

    :cond_d
    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_10

    :cond_f
    if-ne v4, v12, :cond_11

    :cond_10
    return v16

    :cond_11
    if-ge v4, v14, :cond_12

    const/4 v4, 0x1

    goto :goto_7

    :cond_12
    const/4 v4, 0x2

    :goto_7
    add-int/2addr v5, v4

    move v4, v7

    goto :goto_4

    :cond_13
    shr-int/lit8 v3, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v3, v15, :cond_24

    add-int/lit8 v3, v4, 0x1

    if-gt v2, v3, :cond_15

    if-ne v6, v1, :cond_14

    return v5

    :cond_14
    return v16

    .line 399
    :cond_15
    aget-byte v7, v0, v4

    .line 400
    aget-byte v3, v0, v3

    and-int/lit16 v15, v3, 0xc0

    if-ne v15, v14, :cond_16

    const/4 v15, 0x1

    goto :goto_8

    :cond_16
    const/4 v15, 0x0

    :goto_8
    if-nez v15, :cond_18

    if-ne v6, v1, :cond_17

    return v5

    :cond_17
    return v16

    :cond_18
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v3, v7

    if-ge v3, v14, :cond_1a

    if-ne v6, v1, :cond_19

    return v5

    :cond_19
    return v16

    :cond_1a
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_1b

    return v5

    :cond_1b
    if-eq v3, v13, :cond_20

    if-eq v3, v11, :cond_20

    if-ltz v3, :cond_1c

    if-ge v10, v3, :cond_1e

    :cond_1c
    if-le v8, v3, :cond_1d

    goto :goto_9

    :cond_1d
    if-lt v9, v3, :cond_1f

    :cond_1e
    const/4 v6, 0x1

    goto :goto_a

    :cond_1f
    :goto_9
    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_21

    :cond_20
    if-ne v3, v12, :cond_22

    :cond_21
    return v16

    :cond_22
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_23

    const/4 v15, 0x1

    goto :goto_b

    :cond_23
    const/4 v15, 0x2

    :goto_b
    add-int/2addr v5, v15

    .line 339
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v4, v4, 0x2

    :goto_c
    move v6, v7

    goto/16 :goto_0

    :cond_24
    shr-int/lit8 v3, v7, 0x4

    const v12, 0xd800

    const v9, 0xdfff

    if-ne v3, v15, :cond_3b

    add-int/lit8 v3, v4, 0x2

    if-gt v2, v3, :cond_26

    if-ne v6, v1, :cond_25

    return v5

    :cond_25
    return v16

    .line 447
    :cond_26
    aget-byte v7, v0, v4

    add-int/lit8 v15, v4, 0x1

    .line 448
    aget-byte v15, v0, v15

    and-int/lit16 v8, v15, 0xc0

    if-ne v8, v14, :cond_27

    const/4 v8, 0x1

    goto :goto_d

    :cond_27
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_29

    if-ne v6, v1, :cond_28

    return v5

    :cond_28
    return v16

    .line 453
    :cond_29
    aget-byte v3, v0, v3

    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v14, :cond_2a

    const/4 v8, 0x1

    goto :goto_e

    :cond_2a
    const/4 v8, 0x0

    :goto_e
    if-nez v8, :cond_2c

    if-ne v6, v1, :cond_2b

    return v5

    :cond_2b
    return v16

    :cond_2c
    const v8, -0x1e080

    xor-int/2addr v3, v8

    shl-int/lit8 v8, v15, 0x6

    xor-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v3, v7

    const/16 v7, 0x800

    if-ge v3, v7, :cond_2e

    if-ne v6, v1, :cond_2d

    return v5

    :cond_2d
    return v16

    :cond_2e
    if-le v12, v3, :cond_2f

    goto :goto_f

    :cond_2f
    if-lt v9, v3, :cond_31

    if-ne v6, v1, :cond_30

    return v5

    :cond_30
    return v16

    :cond_31
    :goto_f
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_32

    return v5

    :cond_32
    if-eq v3, v13, :cond_37

    if-eq v3, v11, :cond_37

    if-ltz v3, :cond_33

    if-ge v10, v3, :cond_35

    :cond_33
    const/16 v6, 0x7f

    if-le v6, v3, :cond_34

    goto :goto_10

    :cond_34
    const/16 v6, 0x9f

    if-lt v6, v3, :cond_36

    :cond_35
    const/4 v6, 0x1

    goto :goto_11

    :cond_36
    :goto_10
    const/4 v6, 0x0

    :goto_11
    if-nez v6, :cond_38

    :cond_37
    const v6, 0xfffd

    if-ne v3, v6, :cond_39

    :cond_38
    return v16

    :cond_39
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_3a

    const/4 v15, 0x1

    goto :goto_12

    :cond_3a
    const/4 v15, 0x2

    :goto_12
    add-int/2addr v5, v15

    .line 339
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v4, v4, 0x3

    goto :goto_c

    :cond_3b
    shr-int/lit8 v3, v7, 0x3

    if-ne v3, v15, :cond_57

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_3d

    if-ne v6, v1, :cond_3c

    return v5

    :cond_3c
    return v16

    .line 509
    :cond_3d
    aget-byte v7, v0, v4

    add-int/lit8 v8, v4, 0x1

    .line 510
    aget-byte v8, v0, v8

    and-int/lit16 v15, v8, 0xc0

    if-ne v15, v14, :cond_3e

    const/4 v15, 0x1

    goto :goto_13

    :cond_3e
    const/4 v15, 0x0

    :goto_13
    if-nez v15, :cond_40

    if-ne v6, v1, :cond_3f

    return v5

    :cond_3f
    return v16

    :cond_40
    add-int/lit8 v15, v4, 0x2

    .line 515
    aget-byte v15, v0, v15

    and-int/lit16 v10, v15, 0xc0

    if-ne v10, v14, :cond_41

    const/4 v10, 0x1

    goto :goto_14

    :cond_41
    const/4 v10, 0x0

    :goto_14
    if-nez v10, :cond_43

    if-ne v6, v1, :cond_42

    return v5

    :cond_42
    return v16

    .line 520
    :cond_43
    aget-byte v3, v0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v14, :cond_44

    const/4 v10, 0x1

    goto :goto_15

    :cond_44
    const/4 v10, 0x0

    :goto_15
    if-nez v10, :cond_46

    if-ne v6, v1, :cond_45

    return v5

    :cond_45
    return v16

    :cond_46
    const v10, 0x381f80

    xor-int/2addr v3, v10

    shl-int/lit8 v10, v15, 0x6

    xor-int/2addr v3, v10

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v3, v7

    const v7, 0x10ffff

    if-le v3, v7, :cond_48

    if-ne v6, v1, :cond_47

    return v5

    :cond_47
    return v16

    :cond_48
    if-le v12, v3, :cond_49

    goto :goto_16

    :cond_49
    if-lt v9, v3, :cond_4b

    if-ne v6, v1, :cond_4a

    return v5

    :cond_4a
    return v16

    :cond_4b
    :goto_16
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_4d

    if-ne v6, v1, :cond_4c

    return v5

    :cond_4c
    return v16

    :cond_4d
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_4e

    return v5

    :cond_4e
    if-eq v3, v13, :cond_53

    if-eq v3, v11, :cond_53

    if-ltz v3, :cond_4f

    const/16 v6, 0x1f

    if-ge v6, v3, :cond_51

    :cond_4f
    const/16 v6, 0x7f

    if-le v6, v3, :cond_50

    goto :goto_17

    :cond_50
    const/16 v6, 0x9f

    if-lt v6, v3, :cond_52

    :cond_51
    const/4 v6, 0x1

    goto :goto_18

    :cond_52
    :goto_17
    const/4 v6, 0x0

    :goto_18
    if-nez v6, :cond_54

    :cond_53
    const v6, 0xfffd

    if-ne v3, v6, :cond_55

    :cond_54
    return v16

    :cond_55
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_56

    const/4 v15, 0x1

    goto :goto_19

    :cond_56
    const/4 v15, 0x2

    :goto_19
    add-int/2addr v5, v15

    .line 339
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_c

    :cond_57
    if-ne v6, v1, :cond_58

    return v5

    :cond_58
    return v16

    :cond_59
    return v5
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .locals 1

    const-string v0, "$this$commonWrite"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method private static final decodeHexDigit(C)I
    .locals 3

    const/16 v0, 0x30

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

    if-lt v1, p0, :cond_1

    sub-int/2addr p0, v0

    goto :goto_3

    :cond_1
    :goto_0
    const/16 v0, 0x66

    const/16 v1, 0x61

    if-le v1, p0, :cond_2

    goto :goto_2

    :cond_2
    if-lt v0, p0, :cond_3

    :goto_1
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v0, 0x46

    const/16 v1, 0x41

    if-gt v1, p0, :cond_4

    if-lt v0, p0, :cond_4

    goto :goto_1

    :goto_3
    return p0

    .line 296
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1

    .line 54
    sget-object v0, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method
