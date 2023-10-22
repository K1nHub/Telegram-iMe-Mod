.class public final Lorg/ton/block/ShardDescrOld;
.super Ljava/lang/Object;
.source "ShardDescr.kt"

# interfaces
.implements Lorg/ton/block/ShardDescr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ShardDescrOld$$serializer;,
        Lorg/ton/block/ShardDescrOld$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardDescr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrOld\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,321:1\n1#2:322\n86#3,2:323\n82#3,3:325\n88#3:328\n*S KotlinDebug\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrOld\n*L\n51#1:323,2\n52#1:325,3\n51#1:328\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/ton/block/ShardDescrOld$Companion;


# instance fields
.field private final beforeMerge:Z

.field private final beforeSplit:Z

.field private final endLt:J

.field private final feesCollected:Lorg/ton/block/CurrencyCollection;

.field private final fileHash:Lorg/ton/bitstring/BitString;

.field private final flags:I

.field private final fundsCreated:Lorg/ton/block/CurrencyCollection;

.field private final genUtime:I

.field private final minRefMcSeqno:I

.field private final nextCatchainSeqno:I

.field private final nextValidatorShard:J

.field private final nxCcUpdated:Z

.field private final regMcSeqno:I

.field private final rootHash:Lorg/ton/bitstring/BitString;

.field private final seqNo:I

.field private final splitMergeAt:Lorg/ton/block/FutureSplitMerge;

.field private final startLt:J

.field private final wantMerge:Z

.field private final wantSplit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/ton/block/ShardDescrOld$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ShardDescrOld$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ShardDescrOld;->Companion:Lorg/ton/block/ShardDescrOld$Companion;

    const/16 v0, 0x13

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const/4 v6, 0x6

    aput-object v1, v0, v6

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const/16 v6, 0x9

    aput-object v1, v0, v6

    const/16 v6, 0xa

    aput-object v1, v0, v6

    const/16 v6, 0xb

    aput-object v1, v0, v6

    const/16 v6, 0xc

    aput-object v1, v0, v6

    const/16 v6, 0xd

    aput-object v1, v0, v6

    const/16 v6, 0xe

    aput-object v1, v0, v6

    const/16 v6, 0xf

    aput-object v1, v0, v6

    .line 77
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lorg/ton/block/FutureSplitMerge;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v5, [Lkotlin/reflect/KClass;

    const-class v7, Lorg/ton/block/FutureSplitMerge$FsmMerge;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v10, v2

    const-class v7, Lorg/ton/block/FutureSplitMerge$FsmNone;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v10, v3

    const-class v7, Lorg/ton/block/FutureSplitMerge$FsmSplit;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v10, v4

    new-array v11, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lorg/ton/block/FutureSplitMerge$FsmMerge$$serializer;->INSTANCE:Lorg/ton/block/FutureSplitMerge$FsmMerge$$serializer;

    aput-object v5, v11, v2

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lorg/ton/block/FutureSplitMerge$FsmNone;->INSTANCE:Lorg/ton/block/FutureSplitMerge$FsmNone;

    new-array v8, v3, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v12, Lorg/ton/block/ShardDescrOld$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v13, "@type"

    invoke-direct {v12, v13}, Lorg/ton/block/ShardDescrOld$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v12, v8, v2

    const-string v12, "fsm_none"

    invoke-direct {v5, v12, v7, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v5, v11, v3

    sget-object v5, Lorg/ton/block/FutureSplitMerge$FsmSplit$$serializer;->INSTANCE:Lorg/ton/block/FutureSplitMerge$FsmSplit$$serializer;

    aput-object v5, v11, v4

    new-array v12, v3, [Ljava/lang/annotation/Annotation;

    new-instance v3, Lorg/ton/block/ShardDescrOld$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v3, v13}, Lorg/ton/block/ShardDescrOld$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v3, v12, v2

    const-string v8, "org.ton.block.FutureSplitMerge"

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/16 v2, 0x10

    aput-object v6, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Lorg/ton/block/ShardDescrOld;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(IIJJLorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZIIJIILorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;)V
    .locals 8

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p20

    move-object/from16 v4, p21

    move-object/from16 v5, p22

    const-string v6, "rootHash"

    invoke-static {p7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "fileHash"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "splitMergeAt"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "feesCollected"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "fundsCreated"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v6, p1

    .line 26
    iput v6, v0, Lorg/ton/block/ShardDescrOld;->seqNo:I

    move v6, p2

    .line 27
    iput v6, v0, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    move-wide v6, p3

    .line 28
    iput-wide v6, v0, Lorg/ton/block/ShardDescrOld;->startLt:J

    move-wide v6, p5

    .line 29
    iput-wide v6, v0, Lorg/ton/block/ShardDescrOld;->endLt:J

    .line 30
    iput-object v1, v0, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    .line 31
    iput-object v2, v0, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    move/from16 v6, p9

    .line 32
    iput-boolean v6, v0, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    move/from16 v6, p10

    .line 33
    iput-boolean v6, v0, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    move/from16 v6, p11

    .line 34
    iput-boolean v6, v0, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    move/from16 v6, p12

    .line 35
    iput-boolean v6, v0, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    move/from16 v6, p13

    .line 36
    iput-boolean v6, v0, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    move/from16 v6, p14

    .line 37
    iput v6, v0, Lorg/ton/block/ShardDescrOld;->flags:I

    move/from16 v6, p15

    .line 38
    iput v6, v0, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    move-wide/from16 v6, p16

    .line 39
    iput-wide v6, v0, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    move/from16 v6, p18

    .line 40
    iput v6, v0, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    move/from16 v6, p19

    .line 41
    iput v6, v0, Lorg/ton/block/ShardDescrOld;->genUtime:I

    .line 42
    iput-object v3, v0, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    .line 43
    iput-object v4, v0, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    .line 44
    iput-object v5, v0, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    .line 47
    invoke-interface {p7}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x100

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_3

    .line 48
    invoke-interface/range {p8 .. p8}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    if-ne v1, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected fileHash.size == 256, actual: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p8 .. p8}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected rootHash.size == 256, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p7}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic constructor <init>(IIJJLorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZIIJIILorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p22}, Lorg/ton/block/ShardDescrOld;-><init>(IIJJLorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZIIJIILorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;)V

    return-void
.end method

.method private constructor <init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    const v2, 0x7ffff

    and-int v3, v1, v2

    if-eq v2, v3, :cond_0

    .line 23
    sget-object v3, Lorg/ton/block/ShardDescrOld$$serializer;->INSTANCE:Lorg/ton/block/ShardDescrOld$$serializer;

    invoke-virtual {v3}, Lorg/ton/block/ShardDescrOld$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/ShardDescrOld;->seqNo:I

    invoke-virtual {p3}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    invoke-virtual {p4}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/ton/block/ShardDescrOld;->startLt:J

    invoke-virtual {p5}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/ton/block/ShardDescrOld;->endLt:J

    move-object v1, p6

    iput-object v1, v0, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    move-object v2, p7

    iput-object v2, v0, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    move v3, p8

    iput-boolean v3, v0, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    move/from16 v3, p9

    iput-boolean v3, v0, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    move/from16 v3, p10

    iput-boolean v3, v0, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    move/from16 v3, p11

    iput-boolean v3, v0, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    move/from16 v3, p12

    iput-boolean v3, v0, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    move/from16 v3, p13

    iput v3, v0, Lorg/ton/block/ShardDescrOld;->flags:I

    invoke-virtual/range {p14 .. p14}, Lkotlin/UInt;->unbox-impl()I

    move-result v3

    iput v3, v0, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    invoke-virtual/range {p15 .. p15}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    invoke-virtual/range {p16 .. p16}, Lkotlin/UInt;->unbox-impl()I

    move-result v3

    iput v3, v0, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    invoke-virtual/range {p17 .. p17}, Lkotlin/UInt;->unbox-impl()I

    move-result v3

    iput v3, v0, Lorg/ton/block/ShardDescrOld;->genUtime:I

    move-object/from16 v3, p18

    iput-object v3, v0, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    move-object/from16 v3, p19

    iput-object v3, v0, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    move-object/from16 v3, p20

    iput-object v3, v0, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    .line 47
    invoke-interface {p6}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x100

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_4

    .line 48
    invoke-interface {p7}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    if-ne v1, v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected fileHash.size == 256, actual: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p7}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected rootHash.size == 256, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic constructor <init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p21}, Lorg/ton/block/ShardDescrOld;-><init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 23
    sget-object v0, Lorg/ton/block/ShardDescrOld;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ShardDescrOld;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6

    .line 23
    sget-object v0, Lorg/ton/block/ShardDescrOld;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v2, p0, Lorg/ton/block/ShardDescrOld;->seqNo:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v3, p0, Lorg/ton/block/ShardDescrOld;->startLt:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-wide v3, p0, Lorg/ton/block/ShardDescrOld;->endLt:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v3, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v4, p0, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    const/4 v5, 0x4

    invoke-interface {p1, p2, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    const/4 v5, 0x5

    invoke-interface {p1, p2, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean v3, p0, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    const/4 v4, 0x6

    invoke-interface {p1, p2, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v3, p0, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    const/4 v4, 0x7

    invoke-interface {p1, p2, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v3, p0, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    const/16 v4, 0x8

    invoke-interface {p1, p2, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v3, p0, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    const/16 v4, 0x9

    invoke-interface {p1, p2, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v3, p0, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    const/16 v4, 0xa

    invoke-interface {p1, p2, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget v3, p0, Lorg/ton/block/ShardDescrOld;->flags:I

    const/16 v4, 0xb

    invoke-interface {p1, p2, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v3, p0, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    invoke-static {v3}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v3

    const/16 v4, 0xc

    invoke-interface {p1, p2, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-wide v3, p0, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    const/16 v4, 0xd

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/16 v3, 0xe

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/ShardDescrOld;->genUtime:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/16 v3, 0xf

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x10

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    const/16 v2, 0x11

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    const/16 v1, 0x12

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/ShardDescrOld;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ShardDescrOld;

    iget v1, p0, Lorg/ton/block/ShardDescrOld;->seqNo:I

    iget v3, p1, Lorg/ton/block/ShardDescrOld;->seqNo:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    iget v3, p1, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/ton/block/ShardDescrOld;->startLt:J

    iget-wide v5, p1, Lorg/ton/block/ShardDescrOld;->startLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/ton/block/ShardDescrOld;->endLt:J

    iget-wide v5, p1, Lorg/ton/block/ShardDescrOld;->endLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    iget-boolean v3, p1, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    iget-boolean v3, p1, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    iget-boolean v3, p1, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    iget-boolean v3, p1, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    iget-boolean v3, p1, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->flags:I

    iget v3, p1, Lorg/ton/block/ShardDescrOld;->flags:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    iget v3, p1, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    iget-wide v5, p1, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    iget v3, p1, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->genUtime:I

    iget v3, p1, Lorg/ton/block/ShardDescrOld;->genUtime:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    iget-object v3, p1, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    iget-object p1, p1, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final getBeforeMerge()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    return v0
.end method

.method public final getBeforeSplit()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    return v0
.end method

.method public final getEndLt-s-VKNKU()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lorg/ton/block/ShardDescrOld;->endLt:J

    return-wide v0
.end method

.method public final getFeesCollected()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getFileHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getFlags()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/ton/block/ShardDescrOld;->flags:I

    return v0
.end method

.method public final getFundsCreated()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getGenUtime-pVg5ArA()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/ton/block/ShardDescrOld;->genUtime:I

    return v0
.end method

.method public final getMinRefMcSeqno-pVg5ArA()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    return v0
.end method

.method public final getNextCatchainSeqno-pVg5ArA()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    return v0
.end method

.method public final getNextValidatorShard-s-VKNKU()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    return-wide v0
.end method

.method public final getNxCcUpdated()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    return v0
.end method

.method public final getRegMcSeqno-pVg5ArA()I
    .locals 1

    .line 27
    iget v0, p0, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    return v0
.end method

.method public final getRootHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getSeqNo-pVg5ArA()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/ton/block/ShardDescrOld;->seqNo:I

    return v0
.end method

.method public final getSplitMergeAt()Lorg/ton/block/FutureSplitMerge;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    return-object v0
.end method

.method public final getStartLt-s-VKNKU()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lorg/ton/block/ShardDescrOld;->startLt:J

    return-wide v0
.end method

.method public final getWantMerge()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    return v0
.end method

.method public final getWantSplit()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/block/ShardDescrOld;->seqNo:I

    invoke-static {v0}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/ShardDescrOld;->startLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/ShardDescrOld;->endLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardDescrOld;->flags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardDescrOld;->genUtime:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shard_descr_old"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 53
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->seqNo:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "seq_no"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 54
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->regMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "reg_mc_seqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 55
    iget-wide v1, p0, Lorg/ton/block/ShardDescrOld;->startLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "start_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 56
    iget-wide v1, p0, Lorg/ton/block/ShardDescrOld;->endLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "end_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 57
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->rootHash:Lorg/ton/bitstring/BitString;

    const-string v2, "root_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 58
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->fileHash:Lorg/ton/bitstring/BitString;

    const-string v2, "file_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 59
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->beforeSplit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "before_split"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 60
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->beforeMerge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "before_merge"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 61
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->wantSplit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "want_split"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 62
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->wantMerge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "want_merge"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 63
    iget-boolean v1, p0, Lorg/ton/block/ShardDescrOld;->nxCcUpdated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nx_cc_updated"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 64
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 65
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->nextCatchainSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "next_catchain_seqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 66
    iget-wide v1, p0, Lorg/ton/block/ShardDescrOld;->nextValidatorShard:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "next_validator_shard"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 67
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->minRefMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "min_ref_mc_seqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 68
    iget v1, p0, Lorg/ton/block/ShardDescrOld;->genUtime:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "gen_utime"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 69
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->splitMergeAt:Lorg/ton/block/FutureSplitMerge;

    const-string v2, "split_merge_at"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 70
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->feesCollected:Lorg/ton/block/CurrencyCollection;

    const-string v2, "fees_collected"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 71
    iget-object v1, p0, Lorg/ton/block/ShardDescrOld;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    const-string v2, "funds_created"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
