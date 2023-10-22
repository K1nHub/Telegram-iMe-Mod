.class final Lorg/ton/cell/CellBuilderImpl;
.super Ljava/lang/Object;
.source "CellBuilder.kt"

# interfaces
.implements Lorg/ton/cell/CellBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/cell/CellBuilderImpl$Companion;,
        Lorg/ton/cell/CellBuilderImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellBuilder.kt\norg/ton/cell/CellBuilderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CellDescriptor.kt\norg/ton/cell/CellDescriptorKt\n+ 5 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,407:1\n1#2:408\n1855#3,2:409\n1855#3,2:411\n1855#3,2:416\n1855#3,2:418\n117#4:413\n20#5:414\n10#5:415\n*S KotlinDebug\n*F\n+ 1 CellBuilder.kt\norg/ton/cell/CellBuilderImpl\n*L\n238#1:409,2\n245#1:411,2\n372#1:416,2\n380#1:418,2\n252#1:413\n261#1:414\n261#1:415\n*E\n"
.end annotation


# instance fields
.field private bits:Lorg/ton/bitstring/MutableBitString;

.field private isExotic:Z

.field private levelMask:Lorg/ton/cell/LevelMask;

.field private refs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/cell/CellBuilderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/cell/CellBuilderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/bitstring/MutableBitString;Ljava/util/List;Lorg/ton/cell/LevelMask;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/MutableBitString;",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;",
            "Lorg/ton/cell/LevelMask;",
            "Z)V"
        }
    .end annotation

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lorg/ton/cell/CellBuilderImpl;->bits:Lorg/ton/bitstring/MutableBitString;

    .line 151
    iput-object p2, p0, Lorg/ton/cell/CellBuilderImpl;->refs:Ljava/util/List;

    .line 152
    iput-object p3, p0, Lorg/ton/cell/CellBuilderImpl;->levelMask:Lorg/ton/cell/LevelMask;

    .line 153
    iput-boolean p4, p0, Lorg/ton/cell/CellBuilderImpl;->isExotic:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/MutableBitString;Ljava/util/List;Lorg/ton/cell/LevelMask;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    .line 150
    sget-object p1, Lorg/ton/bitstring/ByteBackedMutableBitString;->Companion:Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;

    const/4 p6, 0x1

    invoke-static {p1, v1, p6, v0}, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;->of$default(Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;IILjava/lang/Object;)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    :cond_0
    move-object v3, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    .line 151
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    move-object v5, v0

    goto :goto_0

    :cond_2
    move-object v5, p3

    :goto_0
    and-int/lit8 p1, p5, 0x8

    if-eqz p1, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, p4

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    .line 149
    invoke-direct/range {v2 .. v7}, Lorg/ton/cell/CellBuilderImpl;-><init>(Lorg/ton/bitstring/MutableBitString;Ljava/util/List;Lorg/ton/cell/LevelMask;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/MutableBitString;Ljava/util/List;Lorg/ton/cell/LevelMask;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/cell/CellBuilderImpl;-><init>(Lorg/ton/bitstring/MutableBitString;Ljava/util/List;Lorg/ton/cell/LevelMask;Z)V

    return-void
.end method

.method private final checkBitsOverflow(I)V
    .locals 3

    .line 394
    invoke-direct {p0}, Lorg/ton/cell/CellBuilderImpl;->getRemainder()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 395
    :cond_1
    new-instance v0, Lorg/ton/cell/exception/CellOverflowException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bits overflow. Can\'t add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/ton/cell/CellBuilderImpl;->getRemainder()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits left. - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object p1

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/cell/exception/CellOverflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkRefsOverflow(I)V
    .locals 3

    .line 398
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 399
    :cond_1
    new-instance v0, Lorg/ton/cell/exception/CellOverflowException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refs overflow. Can\'t add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " refs. "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " refs left."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/cell/exception/CellOverflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final computeHashes-4AIc1cU(Lorg/ton/cell/CellDescriptor;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellDescriptor;",
            "I)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    move/from16 v0, p2

    .line 275
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v1

    invoke-static {v1}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 276
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/ton/bitstring/BitString;->toByteArray(Z)[B

    move-result-object v3

    .line 278
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getCellType()Lorg/ton/cell/CellType;

    move-result-object v4

    sget-object v5, Lorg/ton/cell/CellBuilderImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v7, "Invalid bit length, expected: "

    const/16 v8, 0x20

    const-string v9, "Cell type mismatch, expected: "

    const-string v10, ", actual: "

    const/4 v11, 0x0

    if-eq v4, v2, :cond_14

    const/4 v12, 0x2

    if-eq v4, v12, :cond_e

    const/4 v13, 0x3

    if-eq v4, v13, :cond_18

    const/4 v13, 0x4

    if-eq v4, v13, :cond_7

    if-ne v4, v6, :cond_6

    .line 315
    aget-byte v4, v3, v11

    sget-object v13, Lorg/ton/cell/CellType;->MERKLE_UPDATE:Lorg/ton/cell/CellType;

    invoke-virtual {v13}, Lorg/ton/cell/CellType;->getValue()I

    move-result v14

    if-ne v4, v14, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    if-eqz v4, :cond_5

    const/16 v4, 0x228

    .line 319
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v8

    if-ne v8, v4, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v11

    :goto_1
    if-eqz v8, :cond_4

    .line 323
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v12, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v11

    :goto_2
    if-eqz v4, :cond_3

    .line 326
    invoke-static {v0, v2}, Lorg/ton/cell/LevelMask;->virtualize-spGXSBY(II)I

    move-result v0

    goto/16 :goto_b

    .line 324
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid merkle update reference count, expected: 2, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/ton/cell/CellType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v3, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 301
    :cond_7
    aget-byte v4, v3, v11

    sget-object v12, Lorg/ton/cell/CellType;->MERKLE_PROOF:Lorg/ton/cell/CellType;

    invoke-virtual {v12}, Lorg/ton/cell/CellType;->getValue()I

    move-result v13

    if-ne v4, v13, :cond_8

    move v4, v2

    goto :goto_3

    :cond_8
    move v4, v11

    :goto_3
    if-eqz v4, :cond_d

    const/16 v4, 0x118

    .line 305
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v8

    if-ne v8, v4, :cond_9

    move v8, v2

    goto :goto_4

    :cond_9
    move v8, v11

    :goto_4
    if-eqz v8, :cond_c

    .line 308
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v11

    :goto_5
    if-eqz v4, :cond_b

    .line 311
    invoke-static {v0, v2}, Lorg/ton/cell/LevelMask;->virtualize-spGXSBY(II)I

    move-result v0

    goto/16 :goto_b

    .line 309
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid merkle proof reference count, expected: 1, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lorg/ton/cell/CellType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v3, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_e
    aget-byte v0, v3, v11

    sget-object v4, Lorg/ton/cell/CellType;->LIBRARY_REFERENCE:Lorg/ton/cell/CellType;

    invoke-virtual {v4}, Lorg/ton/cell/CellType;->getValue()I

    move-result v12

    if-ne v0, v12, :cond_f

    move v0, v2

    goto :goto_6

    :cond_f
    move v0, v11

    :goto_6
    if-eqz v0, :cond_13

    const/16 v0, 0x108

    .line 334
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v4

    if-ne v4, v0, :cond_10

    move v4, v2

    goto :goto_7

    :cond_10
    move v4, v11

    :goto_7
    if-eqz v4, :cond_12

    .line 337
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 340
    invoke-static {v11, v2, v5}, Lorg/ton/cell/LevelMask;->constructor-impl$default(IILkotlin/jvm/internal/DefaultConstructorMarker;)I

    move-result v0

    goto/16 :goto_b

    .line 338
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid library reference count, expected: 0, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/ton/cell/CellType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v3, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_14
    aget-byte v0, v3, v11

    sget-object v1, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    invoke-virtual {v1}, Lorg/ton/cell/CellType;->getValue()I

    move-result v4

    if-ne v0, v4, :cond_15

    move v0, v2

    goto :goto_8

    :cond_15
    move v0, v11

    :goto_8
    if-eqz v0, :cond_22

    .line 285
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->getLevel-impl(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x110

    add-int/lit8 v0, v0, 0x10

    .line 286
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v1

    if-ne v1, v0, :cond_16

    move v1, v2

    goto :goto_9

    :cond_16
    move v1, v11

    :goto_9
    if-eqz v1, :cond_21

    .line 289
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 292
    aget-byte v0, v3, v2

    .line 293
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v1

    if-ne v1, v0, :cond_17

    move v1, v2

    goto :goto_a

    :cond_17
    move v1, v11

    :goto_a
    if-eqz v1, :cond_1f

    .line 297
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v0

    move v1, v2

    .line 344
    :cond_18
    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v4

    invoke-static {v4, v0}, Lorg/ton/cell/LevelMask;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 348
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getCellType()Lorg/ton/cell/CellType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/cell/CellType;->isMerkle()Z

    move-result v0

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->component1()B

    move-result v7

    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->component2()B

    move-result v8

    move v9, v11

    :goto_c
    if-ge v9, v1, :cond_1d

    .line 353
    new-instance v10, Lorg/ton/crypto/digest/sha2/SHA256Digest;

    invoke-direct {v10}, Lorg/ton/crypto/digest/sha2/SHA256Digest;-><init>()V

    .line 354
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getCellType()Lorg/ton/cell/CellType;

    move-result-object v12

    sget-object v13, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    if-ne v12, v13, :cond_19

    .line 355
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v12

    goto :goto_d

    .line 357
    :cond_19
    sget-object v12, Lorg/ton/cell/LevelMask;->Companion:Lorg/ton/cell/LevelMask$Companion;

    invoke-virtual {v12, v9}, Lorg/ton/cell/LevelMask$Companion;->level-spGXSBY(I)I

    move-result v12

    :goto_d
    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    shl-int/2addr v12, v6

    int-to-byte v12, v12

    or-int/2addr v7, v12

    int-to-byte v7, v7

    .line 361
    invoke-virtual {v10, v7}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update(B)V

    .line 362
    invoke-virtual {v10, v8}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update(B)V

    if-nez v9, :cond_1a

    .line 365
    invoke-virtual {v10, v3}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update([B)V

    goto :goto_e

    :cond_1a
    add-int/lit8 v12, v9, -0x1

    .line 367
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/Pair;

    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 368
    invoke-virtual {v10, v12}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update([B)V

    .line 372
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v12

    .line 1855
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v11

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/ton/cell/Cell;

    add-int v15, v9, v0

    .line 373
    invoke-interface {v14, v15}, Lorg/ton/cell/Cell;->depth(I)I

    move-result v14

    add-int/lit8 v15, v14, 0x1

    .line 374
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    ushr-int/lit8 v15, v14, 0x8

    int-to-byte v15, v15

    .line 376
    invoke-virtual {v10, v15}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update(B)V

    int-to-byte v14, v14

    .line 377
    invoke-virtual {v10, v14}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update(B)V

    goto :goto_f

    .line 380
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v12

    .line 1855
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/ton/cell/Cell;

    add-int v15, v9, v0

    .line 381
    invoke-interface {v14, v15}, Lorg/ton/cell/Cell;->hash(I)Lorg/ton/bitstring/BitString;

    move-result-object v14

    invoke-static {v14, v11, v2, v5}, Lorg/ton/bitstring/BitString$DefaultImpls;->toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B

    move-result-object v14

    .line 382
    invoke-virtual {v10, v14}, Lorg/ton/crypto/digest/md4/GeneralDigest;->update([B)V

    goto :goto_10

    .line 385
    :cond_1c
    invoke-virtual {v10}, Lorg/ton/crypto/digest/md4/GeneralDigest;->build()[B

    move-result-object v10

    .line 386
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_c

    :cond_1d
    return-object v4

    .line 345
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid level mask, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getLevelMask-5JiA7ZA()Lorg/ton/cell/LevelMask;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/ton/cell/LevelMask;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid level mask in pruned branch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellDescriptor;->getLevelMask-Kat384U()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pruned branch contains non empty references"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/ton/cell/CellType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v3, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final getRemainder()I
    .locals 1

    .line 155
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v0

    rsub-int v0, v0, 0x3ff

    return v0
.end method

.method private final storeNumber(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;
    .locals 6

    .line 225
    new-array v0, p2, [Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 226
    invoke-static {p1, v2}, Lorg/ton/bigint/BigIntJvmKt;->shr(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/ton/bigint/BigIntJvmKt;->and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->reversedArray([Z)[Z

    move-result-object p1

    .line 228
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ton/cell/CellBuilderImpl;->storeBits([Z)Lorg/ton/cell/CellBuilder;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/ton/cell/Cell;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-static {v0, v1, v2}, Lorg/ton/cell/LevelMask;->constructor-impl$default(IILkotlin/jvm/internal/DefaultConstructorMarker;)I

    move-result v3

    .line 245
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v4

    .line 1855
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ton/cell/Cell;

    .line 246
    invoke-interface {v5}, Lorg/ton/cell/Cell;->getLevelMask-Kat384U()I

    move-result v5

    invoke-static {v3, v5}, Lorg/ton/cell/LevelMask;->or-Cd1l96I(II)I

    move-result v3

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getLevelMask-5JiA7ZA()Lorg/ton/cell/LevelMask;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/ton/cell/LevelMask;->unbox-impl()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    .line 250
    :goto_1
    sget-object v5, Lorg/ton/cell/CellDescriptor;->Companion:Lorg/ton/cell/CellDescriptor$Companion;

    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->isExotic()Z

    move-result v6

    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lorg/ton/cell/CellDescriptor$Companion;->computeD1-dYmMkqQ(IZI)B

    move-result v4

    .line 251
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBitsPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/ton/cell/CellDescriptor$Companion;->computeD2(I)B

    move-result v6

    .line 117
    invoke-virtual {v5, v4, v6}, Lorg/ton/cell/CellDescriptor$Companion;->fromBytes(BB)Lorg/ton/cell/CellDescriptor;

    move-result-object v4

    .line 254
    invoke-direct {p0, v4, v3}, Lorg/ton/cell/CellBuilderImpl;->computeHashes-4AIc1cU(Lorg/ton/cell/CellDescriptor;I)Ljava/util/List;

    move-result-object v3

    .line 256
    invoke-interface {v4}, Lorg/ton/cell/CellDescriptor;->getCellType()Lorg/ton/cell/CellType;

    move-result-object v5

    sget-object v6, Lorg/ton/cell/CellBuilderImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v1, :cond_4

    const/4 v0, 0x2

    if-eq v5, v0, :cond_3

    .line 266
    sget-object v0, Lorg/ton/cell/EmptyCell;->INSTANCE:Lorg/ton/cell/EmptyCell;

    invoke-virtual {v0}, Lorg/ton/cell/EmptyCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 269
    :cond_2
    new-instance v0, Lorg/ton/cell/DataCell;

    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/ton/cell/DataCell;-><init>(Lorg/ton/cell/CellDescriptor;Lorg/ton/bitstring/BitString;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 265
    :cond_3
    new-instance v0, Lkotlin/NotImplementedError;

    invoke-direct {v0, v2, v1, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 258
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    if-eqz v1, :cond_6

    .line 259
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 260
    new-instance v2, Lorg/ton/cell/PrunedBranchCell;

    .line 20
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x8

    .line 10
    sget-object v5, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v5, v1, v3}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v3

    .line 260
    invoke-direct {v2, v1, v0, v4, v3}, Lorg/ton/cell/PrunedBranchCell;-><init>(Lorg/ton/bitstring/BitString;ILorg/ton/cell/CellDescriptor;Lorg/ton/bitstring/BitString;)V

    move-object v0, v2

    :goto_3
    return-object v0

    .line 258
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endCell()Lorg/ton/cell/Cell;
    .locals 1

    .line 149
    invoke-static {p0}, Lorg/ton/cell/CellBuilder$DefaultImpls;->endCell(Lorg/ton/cell/CellBuilder;)Lorg/ton/cell/Cell;

    move-result-object v0

    return-object v0
.end method

.method public getBits()Lorg/ton/bitstring/MutableBitString;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/ton/cell/CellBuilderImpl;->bits:Lorg/ton/bitstring/MutableBitString;

    return-object v0
.end method

.method public getBitsPosition()I
    .locals 1

    .line 156
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    return v0
.end method

.method public getLevelMask-5JiA7ZA()Lorg/ton/cell/LevelMask;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/ton/cell/CellBuilderImpl;->levelMask:Lorg/ton/cell/LevelMask;

    return-object v0
.end method

.method public getRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/ton/cell/CellBuilderImpl;->refs:Ljava/util/List;

    return-object v0
.end method

.method public isExotic()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lorg/ton/cell/CellBuilderImpl;->isExotic:Z

    return v0
.end method

.method public setBits(Lorg/ton/bitstring/MutableBitString;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lorg/ton/cell/CellBuilderImpl;->bits:Lorg/ton/bitstring/MutableBitString;

    return-void
.end method

.method public setExotic(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lorg/ton/cell/CellBuilderImpl;->isExotic:Z

    return-void
.end method

.method public setLevelMask-fuO3_sE(Lorg/ton/cell/LevelMask;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/ton/cell/CellBuilderImpl;->levelMask:Lorg/ton/cell/LevelMask;

    return-void
.end method

.method public storeBit(Z)Lorg/ton/cell/CellBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 159
    invoke-direct {p0, v0}, Lorg/ton/cell/CellBuilderImpl;->checkBitsOverflow(I)V

    .line 160
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ton/bitstring/MutableBitString;->plus(Z)Lorg/ton/bitstring/MutableBitString;

    return-object p0
.end method

.method public storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;
    .locals 1

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/ton/cell/CellBuilderImpl;->checkBitsOverflow(I)V

    .line 175
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ton/bitstring/MutableBitString;->plus(Ljava/lang/Iterable;)Lorg/ton/bitstring/MutableBitString;

    return-object p0
.end method

.method public varargs storeBits([Z)Lorg/ton/cell/CellBuilder;
    .locals 1

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/ton/cell/CellBuilderImpl;->checkBitsOverflow(I)V

    .line 165
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ton/bitstring/MutableBitString;->plus([Z)Lorg/ton/bitstring/MutableBitString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ton/cell/CellBuilderImpl;->setBits(Lorg/ton/bitstring/MutableBitString;)V

    return-object p0
.end method

.method public storeBytes([B)Lorg/ton/cell/CellBuilder;
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/ton/cell/CellBuilderImpl;->checkBitsOverflow(I)V

    .line 182
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ton/bitstring/MutableBitString;->plus([B)Lorg/ton/bitstring/MutableBitString;

    return-object p0
.end method

.method public storeInt(II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeInt(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeInt(JI)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2, p3}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeInt(Lorg/ton/cell/CellBuilder;JI)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 219
    invoke-static {v0}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v1, v2}, Lorg/ton/bigint/BigIntJvmKt;->shl(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lorg/ton/bigint/BigIntJvmKt;->unaryMinus(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0, p1, p2}, Lorg/ton/cell/CellBuilderImpl;->storeNumber(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    return-object p0

    .line 220
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t store an Int, because its value allocates more space than provided."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public storeInt(SI)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeInt(Lorg/ton/cell/CellBuilder;SI)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;
    .locals 1

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 196
    invoke-direct {p0, v0}, Lorg/ton/cell/CellBuilderImpl;->checkRefsOverflow(I)V

    .line 197
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public storeRefs(Ljava/util/Collection;)Lorg/ton/cell/CellBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;)",
            "Lorg/ton/cell/CellBuilder;"
        }
    .end annotation

    const-string v0, "refs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/ton/cell/CellBuilderImpl;->checkRefsOverflow(I)V

    .line 209
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->getRefs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public storeUInt(II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUInt(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUInt(JI)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2, p3}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUInt(Lorg/ton/cell/CellBuilder;JI)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->getBitLength(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Integer `"

    if-eqz v0, :cond_3

    .line 214
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->getSign(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 215
    invoke-direct {p0, p1, p2}, Lorg/ton/cell/CellBuilderImpl;->storeNumber(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    return-object p0

    .line 214
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "` must be unsigned"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 213
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "` does not fit into "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public storeUInt16-xj2QHRw(S)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUInt16-xj2QHRw(Lorg/ton/cell/CellBuilder;S)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUInt32-WZ4Q5Ns(Lorg/ton/cell/CellBuilder;I)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUInt64-VKZWuLQ(Lorg/ton/cell/CellBuilder;J)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUIntLeq(II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUIntLeq(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUIntLeq(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUIntLeq(Lorg/ton/cell/CellBuilder;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUIntLes(II)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUIntLes(Lorg/ton/cell/CellBuilder;II)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public storeUIntLes(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lorg/ton/cell/CellBuilder$DefaultImpls;->storeUIntLes(Lorg/ton/cell/CellBuilder;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/ton/cell/CellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 392
    invoke-virtual {p0}, Lorg/ton/cell/CellBuilderImpl;->endCell()Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
