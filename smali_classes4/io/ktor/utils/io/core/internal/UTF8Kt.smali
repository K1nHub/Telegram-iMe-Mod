.class public final Lio/ktor/utils/io/core/internal/UTF8Kt;
.super Ljava/lang/Object;
.source "UTF8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUTF8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,374:1\n121#1,5:396\n126#1,2:406\n128#1,61:410\n191#1:473\n314#1,3:512\n317#1,4:517\n321#1,18:522\n304#1,7:540\n314#1,3:547\n317#1,4:552\n321#1,18:557\n365#2,5:375\n370#2,2:382\n365#2,5:401\n370#2,2:471\n365#2,5:501\n370#2,2:508\n81#3:380\n81#3:408\n81#3:506\n96#3:521\n96#3:556\n96#3:577\n96#3:580\n96#3:583\n96#3:586\n96#3:589\n96#3:592\n96#3:595\n96#3:598\n96#3:601\n26#4:381\n26#4:409\n26#4:507\n37#4,2:510\n37#4,2:515\n37#4,2:550\n37#4,2:575\n37#4,2:578\n37#4,2:581\n37#4,2:584\n37#4,2:587\n37#4,2:590\n37#4,2:593\n37#4,2:596\n37#4,2:599\n37#4,2:602\n843#5,8:384\n853#5,3:393\n857#5,11:474\n868#5,15:486\n66#6:392\n56#6:485\n*S KotlinDebug\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n*L\n41#1:396,5\n41#1:406,2\n41#1:410,61\n41#1:473\n251#1:512,3\n251#1:517,4\n251#1:522,18\n292#1:540,7\n296#1:547,3\n296#1:552,4\n296#1:557,18\n9#1:375,5\n9#1:382,2\n41#1:401,5\n41#1:471,2\n125#1:501,5\n125#1:508,2\n11#1:380\n41#1:408\n127#1:506\n251#1:521\n296#1:556\n320#1:577\n321#1:580\n325#1:583\n326#1:586\n327#1:589\n331#1:592\n332#1:595\n333#1:598\n334#1:601\n11#1:381\n41#1:409\n127#1:507\n208#1:510,2\n251#1:515,2\n296#1:550,2\n316#1:575,2\n320#1:578,2\n321#1:581,2\n325#1:584,2\n326#1:587,2\n327#1:590,2\n331#1:593,2\n332#1:596,2\n333#1:599,2\n334#1:602,2\n39#1:384,8\n39#1:393,3\n39#1:474,11\n39#1:486,15\n39#1:392\n39#1:485\n*E\n"
.end annotation


# direct methods
.method public static final codePoint(CC)I
    .locals 1

    const v0, 0xd7c0

    sub-int/2addr p0, v0

    const v0, 0xdc00

    sub-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, p1

    return p0
.end method

.method public static final encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I
    .locals 10

    const-string v0, "$this$encodeUTF8"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xffff

    add-int v1, p2, v0

    .line 196
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 197
    invoke-static {p5, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    move p3, p2

    move v7, p4

    :goto_0
    if-ge v7, v8, :cond_2

    if-lt p3, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p3, 0x1

    .line 206
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    and-int/2addr p3, v0

    const v1, 0xff80

    and-int/2addr v1, p3

    if-nez v1, :cond_1

    add-int/lit8 v1, v7, 0x1

    int-to-byte p3, p3

    .line 37
    invoke-virtual {p0, v7, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move p3, p5

    move v7, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p5, -0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v9, p4

    .line 215
    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    sub-int/2addr p3, p2

    int-to-short p0, p3

    .line 203
    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    sub-int/2addr v7, p4

    int-to-short p1, v7

    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    invoke-static {p0, p1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result p0

    return p0
.end method

.method private static final encodeUTF8Stage1-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    add-int/lit8 v2, p6, -0x3

    move v4, p2

    move/from16 v5, p5

    :goto_0
    sub-int v6, v2, v5

    if-lez v6, :cond_c

    if-lt v4, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 240
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 242
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    const/16 v8, 0x3f

    if-eqz v7, :cond_3

    if-eq v6, v3, :cond_2

    .line 243
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v6, 0x1

    .line 246
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v4, v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v4

    move v6, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v8

    :cond_3
    :goto_2
    const/16 v7, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v4, :cond_4

    if-ge v4, v7, :cond_4

    move v11, v10

    goto :goto_3

    :cond_4
    move v11, v9

    :goto_3
    if-eqz v11, :cond_5

    int-to-byte v4, v4

    .line 37
    invoke-virtual {p0, v5, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_6

    :cond_5
    const/16 v11, 0x800

    if-gt v7, v4, :cond_6

    if-ge v4, v11, :cond_6

    move v12, v10

    goto :goto_4

    :cond_6
    move v12, v9

    :goto_4
    if-eqz v12, :cond_7

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    invoke-virtual {p0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v7

    int-to-byte v4, v4

    invoke-virtual {p0, v8, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v10, 0x2

    goto :goto_6

    :cond_7
    const/high16 v12, 0x10000

    if-gt v11, v4, :cond_8

    if-ge v4, v12, :cond_8

    move v11, v10

    goto :goto_5

    :cond_8
    move v11, v9

    :goto_5
    if-eqz v11, :cond_9

    shr-int/lit8 v9, v4, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    invoke-virtual {p0, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v4, 0x6

    and-int/2addr v8, v10

    or-int/2addr v8, v7

    int-to-byte v8, v8

    invoke-virtual {p0, v9, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x2

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v7

    int-to-byte v4, v4

    invoke-virtual {p0, v8, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v10, 0x3

    goto :goto_6

    :cond_9
    if-gt v12, v4, :cond_a

    const/high16 v11, 0x110000

    if-ge v4, v11, :cond_a

    move v9, v10

    :cond_a
    if-eqz v9, :cond_b

    shr-int/lit8 v9, v4, 0x12

    and-int/lit8 v9, v9, 0x7

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    invoke-virtual {p0, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v4, 0xc

    and-int/2addr v10, v8

    or-int/2addr v10, v7

    int-to-byte v10, v10

    invoke-virtual {p0, v9, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v5, 0x2

    shr-int/lit8 v10, v4, 0x6

    and-int/2addr v8, v10

    or-int/2addr v8, v7

    int-to-byte v8, v8

    invoke-virtual {p0, v9, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v5, 0x3

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v7

    int-to-byte v4, v4

    invoke-virtual {p0, v8, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v10, 0x4

    :goto_6
    add-int/2addr v5, v10

    move v4, v6

    goto/16 :goto_0

    .line 337
    :cond_b
    invoke-static {v4}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_c
    :goto_7
    if-ne v5, v2, :cond_d

    move-object v0, p0

    move-object v1, p1

    move v2, v4

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 257
    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    move-result v0

    return v0

    :cond_d
    sub-int v4, v4, p4

    int-to-short v0, v4

    .line 260
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    sub-int v5, v5, p7

    int-to-short v1, v5

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v0

    return v0
.end method

.method private static final encodeUTF8Stage2-Vm9B2pQ(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, p5

    :goto_0
    sub-int v5, p6, v4

    if-lez v5, :cond_15

    if-lt v3, v2, :cond_0

    goto/16 :goto_d

    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 281
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 283
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    const/16 v8, 0x3f

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    if-eq v6, v2, :cond_3

    .line 285
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v6, 0x1

    .line 288
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v3, v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->codePoint(CC)I

    move-result v3

    move v6, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v8

    :goto_2
    const/16 v7, 0x80

    const/4 v10, 0x1

    if-gt v10, v3, :cond_4

    if-ge v3, v7, :cond_4

    move v11, v10

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x4

    const/high16 v13, 0x110000

    const/4 v14, 0x3

    const/high16 v15, 0x10000

    const/16 v16, 0x2

    const/16 v9, 0x800

    if-eqz v11, :cond_5

    move v11, v10

    goto :goto_7

    :cond_5
    if-gt v7, v3, :cond_6

    if-ge v3, v9, :cond_6

    move v11, v10

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_7

    move/from16 v11, v16

    goto :goto_7

    :cond_7
    if-gt v9, v3, :cond_8

    if-ge v3, v15, :cond_8

    move v11, v10

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_9

    move v11, v14

    goto :goto_7

    :cond_9
    if-gt v15, v3, :cond_a

    if-ge v3, v13, :cond_a

    move v11, v10

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_14

    move v11, v12

    :goto_7
    if-le v11, v5, :cond_b

    add-int/lit8 v3, v6, -0x1

    goto/16 :goto_d

    :cond_b
    if-ltz v3, :cond_c

    if-ge v3, v7, :cond_c

    move v5, v10

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_d

    int-to-byte v3, v3

    .line 37
    invoke-virtual {v0, v4, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    :cond_d
    if-gt v7, v3, :cond_e

    if-ge v3, v9, :cond_e

    move v5, v10

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_f

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v7

    int-to-byte v3, v3

    invoke-virtual {v0, v5, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move/from16 v10, v16

    goto :goto_c

    :cond_f
    if-gt v9, v3, :cond_10

    if-ge v3, v15, :cond_10

    move v5, v10

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_11

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v8, v9

    or-int/2addr v8, v7

    int-to-byte v8, v8

    invoke-virtual {v0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v7

    int-to-byte v3, v3

    invoke-virtual {v0, v5, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v10, v14

    goto :goto_c

    :cond_11
    if-gt v15, v3, :cond_12

    if-ge v3, v13, :cond_12

    move v9, v10

    goto :goto_b

    :cond_12
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_13

    shr-int/lit8 v5, v3, 0x12

    and-int/lit8 v5, v5, 0x7

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v9, v3, 0xc

    and-int/2addr v9, v8

    or-int/2addr v9, v7

    int-to-byte v9, v9

    invoke-virtual {v0, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x2

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v8, v9

    or-int/2addr v8, v7

    int-to-byte v8, v8

    invoke-virtual {v0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v7

    int-to-byte v3, v3

    invoke-virtual {v0, v5, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move v10, v12

    :goto_c
    add-int/2addr v4, v10

    move v3, v6

    goto/16 :goto_0

    .line 337
    :cond_13
    invoke-static {v3}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 309
    :cond_14
    invoke-static {v3}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_15
    :goto_d
    sub-int v3, v3, p4

    int-to-short v0, v3

    .line 300
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    sub-int v4, v4, p7

    int-to-short v1, v4

    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/internal/EncodeResult;->constructor-impl(SS)I

    move-result v0

    return v0
.end method

.method public static final malformedCodePoint(I)Ljava/lang/Void;
    .locals 3

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed code-point "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
