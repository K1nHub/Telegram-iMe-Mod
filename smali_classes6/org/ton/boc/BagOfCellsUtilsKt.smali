.class public final Lorg/ton/boc/BagOfCellsUtilsKt;
.super Ljava/lang/Object;
.source "BagOfCellsUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBagOfCellsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BagOfCellsUtils.kt\norg/ton/boc/BagOfCellsUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 4 CellDescriptor.kt\norg/ton/cell/CellDescriptorKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 UnsignedTypes.kt\nio/ktor/utils/io/core/UnsignedTypesKt\n*L\n1#1,314:1\n1#2:315\n13#3:316\n10#3:319\n117#4:317\n117#4:318\n11365#5:320\n11700#5,3:321\n12#6,7:324\n12#6,7:335\n19#6,4:344\n19#6,4:358\n1559#7:331\n1590#7,3:332\n1855#7,2:342\n1593#7:348\n1855#7,2:349\n1855#7,2:351\n1864#7,3:353\n1855#7,2:356\n6#8:362\n9#8:363\n6#8:364\n12#8:365\n*S KotlinDebug\n*F\n+ 1 BagOfCellsUtils.kt\norg/ton/boc/BagOfCellsUtilsKt\n*L\n79#1:316\n96#1:319\n81#1:317\n87#1:318\n124#1:320\n124#1:321,3\n199#1:324,7\n209#1:335,7\n209#1:344,4\n199#1:358,4\n208#1:331\n208#1:332,3\n217#1:342,2\n208#1:348\n226#1:349,2\n256#1:351,2\n261#1:353,3\n265#1:356,2\n273#1:362\n274#1:363\n275#1:364\n276#1:365\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$createCell(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lorg/ton/boc/BagOfCellsUtilsKt;->createCell(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final createCell(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lorg/ton/cell/Cell;",
            ">;[",
            "Lorg/ton/bitstring/BitString;",
            "[[I[",
            "Lorg/ton/cell/CellDescriptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 139
    new-instance v7, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/ton/boc/BagOfCellsUtilsKt$createCell$2;-><init>([Lorg/ton/bitstring/BitString;I[[I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, p5}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final findAugmentTag([B)I
    .locals 4

    .line 294
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 295
    :cond_1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 296
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result v1

    :goto_1
    add-int/lit8 v3, v1, -0x1

    .line 298
    aget-byte v1, p0, v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, -0x8

    move v1, v3

    goto :goto_1

    :cond_2
    move p0, v2

    :goto_2
    and-int v3, v1, v2

    if-nez v3, :cond_3

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sub-int/2addr v0, p0

    return v0
.end method

.method public static final readBagOfCell(Lio/ktor/utils/io/core/ByteReadPacket;)Lorg/ton/boc/BagOfCells;
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static/range {p0 .. p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result v1

    const v2, -0x533c58d8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_18

    const v2, -0x4a11638e

    if-eq v1, v2, :cond_1

    const v0, 0x68ff65f3

    if-eq v1, v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown magic prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lkotlin/text/UStringsKt;->toString-V7xB4Y4(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    new-instance v0, Lkotlin/NotImplementedError;

    invoke-direct {v0, v3, v4, v3}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 21
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v1, 0x80

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    move v7, v5

    :goto_2
    and-int/lit8 v1, v1, 0x7

    .line 51
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v8

    .line 52
    invoke-static {v0, v1}, Lorg/ton/boc/BagOfCellsUtilsKt;->readInt(Lio/ktor/utils/io/core/Input;I)I

    move-result v10

    .line 53
    invoke-static {v0, v1}, Lorg/ton/boc/BagOfCellsUtilsKt;->readInt(Lio/ktor/utils/io/core/Input;I)I

    move-result v15

    .line 54
    invoke-static {v0, v1}, Lorg/ton/boc/BagOfCellsUtilsKt;->readInt(Lio/ktor/utils/io/core/Input;I)I

    .line 55
    invoke-static {v0, v8}, Lorg/ton/boc/BagOfCellsUtilsKt;->readInt(Lio/ktor/utils/io/core/Input;I)I

    .line 58
    new-array v14, v15, [I

    move v9, v5

    :goto_3
    if-ge v9, v15, :cond_5

    .line 59
    invoke-static {v0, v1}, Lorg/ton/boc/BagOfCellsUtilsKt;->readInt(Lio/ktor/utils/io/core/Input;I)I

    move-result v11

    aput v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_9

    .line 65
    new-array v2, v10, [I

    move v9, v5

    move v11, v9

    :goto_4
    if-ge v9, v10, :cond_9

    .line 67
    invoke-static {v0, v8}, Lorg/ton/boc/BagOfCellsUtilsKt;->readInt(Lio/ktor/utils/io/core/Input;I)I

    move-result v12

    if-eqz v7, :cond_6

    shr-int/lit8 v12, v12, 0x1

    :cond_6
    if-gt v11, v12, :cond_7

    move v13, v4

    goto :goto_5

    :cond_7
    move v13, v5

    :goto_5
    if-eqz v13, :cond_8

    .line 72
    aput v12, v2, v9

    add-int/lit8 v9, v9, 0x1

    move v11, v12

    goto :goto_4

    .line 71
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bag-of-cells error: offset of cell #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " must be higher, than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_9
    new-array v12, v10, [Lorg/ton/bitstring/BitString;

    move v2, v5

    :goto_6
    if-ge v2, v10, :cond_a

    new-array v7, v5, [Z

    .line 13
    sget-object v8, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/ton/bitstring/BitString$Companion;->of([Z)Lorg/ton/bitstring/BitString;

    move-result-object v7

    aput-object v7, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 80
    :cond_a
    new-array v13, v10, [[I

    move v2, v5

    :goto_7
    if-ge v2, v10, :cond_b

    new-array v7, v5, [I

    aput-object v7, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 81
    :cond_b
    new-array v2, v10, [Lorg/ton/cell/CellDescriptor;

    move v7, v5

    :goto_8
    if-ge v7, v10, :cond_c

    .line 117
    sget-object v8, Lorg/ton/cell/CellDescriptor;->Companion:Lorg/ton/cell/CellDescriptor$Companion;

    invoke-virtual {v8, v5, v5}, Lorg/ton/cell/CellDescriptor$Companion;->fromBytes(BB)Lorg/ton/cell/CellDescriptor;

    move-result-object v8

    aput-object v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    move v7, v5

    :goto_9
    if-ge v7, v10, :cond_14

    .line 85
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v8

    .line 86
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v9

    .line 117
    sget-object v11, Lorg/ton/cell/CellDescriptor;->Companion:Lorg/ton/cell/CellDescriptor$Companion;

    invoke-virtual {v11, v8, v9}, Lorg/ton/cell/CellDescriptor$Companion;->fromBytes(BB)Lorg/ton/cell/CellDescriptor;

    move-result-object v8

    .line 89
    invoke-interface {v8}, Lorg/ton/cell/CellDescriptor;->getHasHashes()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 90
    invoke-interface {v8}, Lorg/ton/cell/CellDescriptor;->getHashCount()I

    move-result v9

    mul-int/lit8 v9, v9, 0x20

    invoke-virtual {v0, v9}, Lio/ktor/utils/io/core/Input;->discardExact(I)V

    .line 91
    invoke-interface {v8}, Lorg/ton/cell/CellDescriptor;->getHashCount()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v0, v9}, Lio/ktor/utils/io/core/Input;->discardExact(I)V

    .line 94
    :cond_d
    invoke-interface {v8}, Lorg/ton/cell/CellDescriptor;->getDataLength()I

    move-result v9

    invoke-static {v0, v9}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object v9

    .line 95
    invoke-interface {v8}, Lorg/ton/cell/CellDescriptor;->isAligned()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v8}, Lorg/ton/cell/CellDescriptor;->getDataLength()I

    move-result v11

    mul-int/lit8 v11, v11, 0x8

    goto :goto_a

    :cond_e
    invoke-static {v9}, Lorg/ton/boc/BagOfCellsUtilsKt;->findAugmentTag([B)I

    move-result v11

    .line 10
    :goto_a
    sget-object v5, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v5, v9, v11}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object v5

    aput-object v5, v12, v7

    .line 97
    invoke-interface {v8}, Lorg/ton/cell/CellDescriptor;->getReferenceCount()I

    move-result v5

    new-array v9, v5, [I

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v5, :cond_13

    .line 98
    invoke-static {v0, v1}, Lorg/ton/boc/BagOfCellsUtilsKt;->readInt(Lio/ktor/utils/io/core/Input;I)I

    move-result v3

    if-le v3, v7, :cond_f

    move/from16 v16, v4

    goto :goto_c

    :cond_f
    const/16 v16, 0x0

    :goto_c
    const-string v4, " of cell #"

    const-string v0, "bag-of-cells error: reference #"

    if-eqz v16, :cond_12

    if-ge v3, v10, :cond_10

    const/16 v16, 0x1

    goto :goto_d

    :cond_10
    const/16 v16, 0x0

    :goto_d
    if-eqz v16, :cond_11

    .line 101
    aput v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_b

    .line 100
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is to non-existent cell #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", only "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cells are defined"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is to cell #"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with smaller index"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_13
    aput-object v9, v13, v7

    .line 103
    aput-object v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 110
    :cond_14
    new-array v0, v10, [Lkotlinx/coroutines/CompletableDeferred;

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v10, :cond_15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4, v3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v5

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 111
    :cond_15
    sget-object v17, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v20, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;

    const/4 v1, 0x0

    move-object/from16 v9, v20

    move-object v11, v0

    move-object v3, v14

    move-object v14, v2

    move v2, v15

    move-object v15, v1

    invoke-direct/range {v9 .. v15}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$3;-><init>(I[Lkotlinx/coroutines/CompletableDeferred;[Lorg/ton/bitstring/BitString;[[I[Lorg/ton/cell/CellDescriptor;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x3

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    if-eqz v6, :cond_16

    .line 121
    invoke-static/range {p0 .. p0}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readIntLittleEndian(Lio/ktor/utils/io/core/Input;)I

    .line 11365
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_17

    .line 11700
    aget v4, v3, v5

    .line 125
    new-instance v6, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$roots$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v4, v7}, Lorg/ton/boc/BagOfCellsUtilsKt$readBagOfCell$roots$1$1;-><init>([Lkotlinx/coroutines/CompletableDeferred;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    invoke-static {v7, v6, v4, v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ton/cell/Cell;

    .line 11701
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 130
    :cond_17
    invoke-static {v1}, Lorg/ton/boc/BagOfCellsKt;->BagOfCells(Ljava/util/Collection;)Lorg/ton/boc/BagOfCells;

    move-result-object v0

    return-object v0

    :cond_18
    move-object v7, v3

    .line 39
    new-instance v0, Lkotlin/NotImplementedError;

    invoke-direct {v0, v7, v4, v7}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private static final readInt(Lio/ktor/utils/io/core/Input;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 12
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result p0

    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result p0

    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result p0

    invoke-static {p0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result p0

    invoke-static {p0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_0
    return p0
.end method

.method private static final serializeBagOfCells(Lorg/ton/boc/BagOfCells;ZZZI)[B
    .locals 21

    .line 16
    new-instance v7, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8, v0}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 200
    :try_start_0
    invoke-static/range {p0 .. p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 202
    invoke-interface/range {p0 .. p0}, Lorg/ton/boc/BagOfCells;->getRoots()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    int-to-long v5, v2

    shl-int/lit8 v10, v4, 0x3

    const-wide/16 v11, 0x1

    shl-long v13, v11, v10

    cmp-long v5, v5, v13

    if-ltz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1559
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v10, v9

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    if-gez v10, :cond_1

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v13, Lorg/ton/cell/Cell;

    .line 16
    new-instance v10, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {v10, v0, v8, v0}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    :try_start_1
    invoke-interface {v13}, Lorg/ton/cell/Cell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v15

    invoke-interface {v15}, Lorg/ton/cell/CellDescriptor;->component1()B

    move-result v0

    invoke-interface {v15}, Lorg/ton/cell/CellDescriptor;->component2()B

    move-result v15

    .line 211
    invoke-virtual {v10, v0}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 212
    invoke-virtual {v10, v15}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 213
    invoke-interface {v13}, Lorg/ton/cell/Cell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    and-int/lit8 v15, v15, 0x1

    int-to-byte v15, v15

    if-eqz v15, :cond_2

    move v15, v8

    goto :goto_2

    :cond_2
    move v15, v9

    :goto_2
    invoke-interface {v0, v15}, Lorg/ton/bitstring/BitString;->toByteArray(Z)[B

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object v15, v10

    .line 216
    invoke-static/range {v15 .. v20}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 217
    invoke-interface {v13}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/ton/cell/Cell;

    .line 218
    invoke-interface {v1, v13}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 219
    invoke-static {v10, v13, v4}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeInt(Lio/ktor/utils/io/core/Output;II)V

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {v10}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1592
    :try_start_2
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v14

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v10}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw v0

    .line 225
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v10, v9

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 227
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v13

    long-to-int v13, v13

    add-int/2addr v10, v13

    goto :goto_4

    :cond_5
    move v6, v9

    :goto_5
    int-to-long v13, v10

    shl-int/lit8 v15, v6, 0x3

    shl-long v15, v11, v15

    cmp-long v13, v13, v15

    if-ltz v13, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    const v11, -0x4a11638e

    .line 235
    invoke-static {v7, v11}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Output;I)V

    if-eqz p1, :cond_7

    const/16 v11, 0x80

    goto :goto_6

    :cond_7
    move v11, v9

    :goto_6
    if-eqz p2, :cond_8

    or-int/lit8 v11, v11, 0x40

    :cond_8
    if-eqz p3, :cond_9

    or-int/lit8 v11, v11, 0x20

    :cond_9
    or-int v11, v11, p4

    or-int/2addr v11, v4

    int-to-byte v11, v11

    .line 249
    invoke-virtual {v7, v11}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    int-to-byte v11, v6

    .line 251
    invoke-virtual {v7, v11}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 252
    invoke-static {v7, v2, v4}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeInt(Lio/ktor/utils/io/core/Output;II)V

    .line 253
    invoke-static {v7, v3, v4}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeInt(Lio/ktor/utils/io/core/Output;II)V

    .line 254
    invoke-static {v7, v9, v4}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeInt(Lio/ktor/utils/io/core/Output;II)V

    .line 255
    invoke-static {v7, v10, v6}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeInt(Lio/ktor/utils/io/core/Output;II)V

    .line 256
    invoke-interface/range {p0 .. p0}, Lorg/ton/boc/BagOfCells;->getRoots()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ton/cell/Cell;

    .line 257
    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 258
    invoke-static {v7, v3, v4}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeInt(Lio/ktor/utils/io/core/Output;II)V

    goto :goto_7

    :cond_a
    if-eqz p1, :cond_c

    .line 1865
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v9

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_b
    check-cast v3, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 262
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sizeIndex[index]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v7, v2, v6}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeInt(Lio/ktor/utils/io/core/Output;II)V

    move v2, v4

    goto :goto_8

    .line 1855
    :cond_c
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/utils/io/core/ByteReadPacket;

    const/4 v2, 0x0

    .line 266
    invoke-static {v1, v9, v8, v2}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v10, 0x0

    move-object v1, v7

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    .line 267
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    goto :goto_9

    .line 19
    :cond_d
    invoke-virtual {v7}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    .line 269
    invoke-static {v0, v9, v8, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    .line 21
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw v0
.end method

.method public static final writeBagOfCells(Lio/ktor/utils/io/core/Output;Lorg/ton/boc/BagOfCells;ZZZI)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bagOfCells"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-static {p1, p2, p3, p4, p5}, Lorg/ton/boc/BagOfCellsUtilsKt;->serializeBagOfCells(Lorg/ton/boc/BagOfCells;ZZZI)[B

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p2, 0x6

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 185
    invoke-static {p1, p4, p4, p2, p3}, Lorg/ton/crypto/Crc32JvmKt;->crc32c$default([BIIILjava/lang/Object;)I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 186
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 187
    invoke-static {p0, p2}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeIntLittleEndian(Lio/ktor/utils/io/core/Output;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x6

    const/4 p5, 0x0

    .line 189
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic writeBagOfCells$default(Lio/ktor/utils/io/core/Output;Lorg/ton/boc/BagOfCells;ZZZIILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 176
    invoke-static/range {v1 .. v6}, Lorg/ton/boc/BagOfCellsUtilsKt;->writeBagOfCells(Lio/ktor/utils/io/core/Output;Lorg/ton/boc/BagOfCells;ZZZI)V

    return-void
.end method

.method private static final writeInt(Lio/ktor/utils/io/core/Output;II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 289
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Output;I)V

    goto :goto_0

    :cond_0
    shr-int/lit8 p2, p1, 0x10

    int-to-byte p2, p2

    .line 285
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    int-to-short p1, p1

    .line 286
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    goto :goto_0

    :cond_1
    int-to-short p1, p1

    .line 283
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    goto :goto_0

    :cond_2
    int-to-byte p1, p1

    .line 282
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    :goto_0
    return-void
.end method
