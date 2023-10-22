.class public final Lorg/ton/block/TrActionPhase;
.super Ljava/lang/Object;
.source "TrActionPhase.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrActionPhase$$serializer;,
        Lorg/ton/block/TrActionPhase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrActionPhase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrActionPhase.kt\norg/ton/block/TrActionPhase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,130:1\n1#2:131\n86#3,2:132\n82#3,3:134\n88#3:137\n*S KotlinDebug\n*F\n+ 1 TrActionPhase.kt\norg/ton/block/TrActionPhase\n*L\n39#1:132,2\n40#1:134,3\n39#1:137\n*E\n"
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

.field public static final Companion:Lorg/ton/block/TrActionPhase$Companion;


# instance fields
.field private final actionListHash:Lorg/ton/bitstring/BitString;

.field private final msgsCreated:I

.field private final noFunds:Z

.field private final resultArg:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final resultCode:I

.field private final skippedActions:I

.field private final specActions:I

.field private final statusChange:Lorg/ton/block/AccStatusChange;

.field private final success:Z

.field private final totActions:I

.field private final totMsgSize:Lorg/ton/block/StorageUsedShort;

.field private final totalActionFees:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation
.end field

.field private final totalFwdFees:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation
.end field

.field private final valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-class v0, Lorg/ton/block/Nothing;

    const-class v1, Lorg/ton/block/Just;

    const-class v2, Lorg/ton/block/Maybe;

    const-class v3, Ljava/lang/Object;

    new-instance v4, Lorg/ton/block/TrActionPhase$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/ton/block/TrActionPhase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lorg/ton/block/TrActionPhase;->Companion:Lorg/ton/block/TrActionPhase$Companion;

    const/16 v4, 0xe

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 60
    sget-object v9, Lorg/ton/block/AccStatusChange;->Companion:Lorg/ton/block/AccStatusChange$Companion;

    invoke-virtual {v9}, Lorg/ton/block/AccStatusChange$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v4, v10

    new-instance v9, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    new-array v14, v8, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v14, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v14, v7

    new-array v15, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v11, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v5, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v11, v12, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v10, v11}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v15, v6

    sget-object v5, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v11, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v8, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v11, v12, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v11}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    aput-object v8, v15, v7

    new-array v8, v7, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v11, Lorg/ton/block/TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v12, "@type"

    invoke-direct {v11, v12}, Lorg/ton/block/TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v11, v8, v6

    const-string v16, "org.ton.block.Maybe"

    move-object v11, v9

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v8, 0x4

    aput-object v9, v4, v8

    .line 60
    new-instance v8, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    const/4 v9, 0x2

    new-array v14, v9, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    aput-object v11, v14, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    aput-object v11, v14, v7

    new-array v15, v9, [Lkotlinx/serialization/KSerializer;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v11, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v10, v9}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    aput-object v9, v15, v6

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    new-array v12, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v11, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v9}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    aput-object v9, v15, v7

    new-array v9, v7, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v11, Lorg/ton/block/TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    move-object/from16 v12, v17

    invoke-direct {v11, v12}, Lorg/ton/block/TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v6

    const-string v16, "org.ton.block.Maybe"

    move-object v11, v8

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v9, 0x5

    aput-object v8, v4, v9

    const/4 v8, 0x6

    const/4 v9, 0x0

    aput-object v9, v4, v8

    .line 60
    new-instance v8, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    const/4 v2, 0x2

    new-array v14, v2, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    aput-object v1, v14, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    aput-object v0, v14, v7

    new-array v15, v2, [Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v10, v0}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v15, v6

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v0}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v15, v7

    new-array v0, v7, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v1, Lorg/ton/block/TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    move-object/from16 v2, v18

    invoke-direct {v1, v2}, Lorg/ton/block/TrActionPhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    const-string v12, "org.ton.block.Maybe"

    move-object v11, v8

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x7

    aput-object v8, v4, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-object v1, v4, v0

    const/16 v0, 0x9

    aput-object v1, v4, v0

    const/16 v0, 0xa

    aput-object v1, v4, v0

    const/16 v0, 0xb

    aput-object v1, v4, v0

    const/16 v0, 0xc

    aput-object v1, v4, v0

    const/16 v0, 0xd

    aput-object v1, v4, v0

    .line 60
    sput-object v4, Lorg/ton/block/TrActionPhase;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IZZZLorg/ton/block/AccStatusChange;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;ILorg/ton/block/Maybe;IIIILorg/ton/bitstring/BitString;Lorg/ton/block/StorageUsedShort;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4

    move-object v0, p0

    move v1, p1

    and-int/lit16 v2, v1, 0x3fff

    const/16 v3, 0x3fff

    if-eq v3, v2, :cond_0

    .line 17
    sget-object v2, Lorg/ton/block/TrActionPhase$$serializer;->INSTANCE:Lorg/ton/block/TrActionPhase$$serializer;

    invoke-virtual {v2}, Lorg/ton/block/TrActionPhase$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p2

    iput-boolean v1, v0, Lorg/ton/block/TrActionPhase;->success:Z

    move v1, p3

    iput-boolean v1, v0, Lorg/ton/block/TrActionPhase;->valid:Z

    move v1, p4

    iput-boolean v1, v0, Lorg/ton/block/TrActionPhase;->noFunds:Z

    move-object v1, p5

    iput-object v1, v0, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    move-object v1, p6

    iput-object v1, v0, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    move-object v1, p7

    iput-object v1, v0, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    move v1, p8

    iput v1, v0, Lorg/ton/block/TrActionPhase;->resultCode:I

    move-object v1, p9

    iput-object v1, v0, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    move v1, p10

    iput v1, v0, Lorg/ton/block/TrActionPhase;->totActions:I

    move v1, p11

    iput v1, v0, Lorg/ton/block/TrActionPhase;->specActions:I

    move/from16 v1, p12

    iput v1, v0, Lorg/ton/block/TrActionPhase;->skippedActions:I

    move/from16 v1, p13

    iput v1, v0, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    move-object/from16 v2, p15

    iput-object v2, v0, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    .line 36
    invoke-interface/range {p14 .. p14}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected actionListHash.size == 256, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p14 .. p14}, Lorg/ton/bitstring/BitString;->getSize()I

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

.method public constructor <init>(ZZZLorg/ton/block/AccStatusChange;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;ILorg/ton/block/Maybe;IIIILorg/ton/bitstring/BitString;Lorg/ton/block/StorageUsedShort;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lorg/ton/block/AccStatusChange;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;I",
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;IIII",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/block/StorageUsedShort;",
            ")V"
        }
    .end annotation

    const-string v0, "statusChange"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalFwdFees"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalActionFees"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultArg"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListHash"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totMsgSize"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lorg/ton/block/TrActionPhase;->success:Z

    .line 21
    iput-boolean p2, p0, Lorg/ton/block/TrActionPhase;->valid:Z

    .line 22
    iput-boolean p3, p0, Lorg/ton/block/TrActionPhase;->noFunds:Z

    .line 23
    iput-object p4, p0, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    .line 24
    iput-object p5, p0, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    .line 25
    iput-object p6, p0, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    .line 26
    iput p7, p0, Lorg/ton/block/TrActionPhase;->resultCode:I

    .line 27
    iput-object p8, p0, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    .line 28
    iput p9, p0, Lorg/ton/block/TrActionPhase;->totActions:I

    .line 29
    iput p10, p0, Lorg/ton/block/TrActionPhase;->specActions:I

    .line 30
    iput p11, p0, Lorg/ton/block/TrActionPhase;->skippedActions:I

    .line 31
    iput p12, p0, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    .line 32
    iput-object p13, p0, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    .line 33
    iput-object p14, p0, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    .line 36
    invoke-interface {p13}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected actionListHash.size == 256, actual: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p13}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 17
    sget-object v0, Lorg/ton/block/TrActionPhase;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TrActionPhase;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 17
    sget-object v0, Lorg/ton/block/TrActionPhase;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->success:Z

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->valid:Z

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->noFunds:Z

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x3

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v1, p0, Lorg/ton/block/TrActionPhase;->resultCode:I

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v0, p0, Lorg/ton/block/TrActionPhase;->totActions:I

    const/16 v1, 0x8

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v0, p0, Lorg/ton/block/TrActionPhase;->specActions:I

    const/16 v1, 0x9

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v0, p0, Lorg/ton/block/TrActionPhase;->skippedActions:I

    const/16 v1, 0xa

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v0, p0, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    const/16 v1, 0xb

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    const/16 v2, 0xc

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/StorageUsedShort$$serializer;->INSTANCE:Lorg/ton/block/StorageUsedShort$$serializer;

    iget-object p0, p0, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    const/16 v1, 0xd

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/TrActionPhase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TrActionPhase;

    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->success:Z

    iget-boolean v3, p1, Lorg/ton/block/TrActionPhase;->success:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->valid:Z

    iget-boolean v3, p1, Lorg/ton/block/TrActionPhase;->valid:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->noFunds:Z

    iget-boolean v3, p1, Lorg/ton/block/TrActionPhase;->noFunds:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    iget-object v3, p1, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lorg/ton/block/TrActionPhase;->resultCode:I

    iget v3, p1, Lorg/ton/block/TrActionPhase;->resultCode:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lorg/ton/block/TrActionPhase;->totActions:I

    iget v3, p1, Lorg/ton/block/TrActionPhase;->totActions:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lorg/ton/block/TrActionPhase;->specActions:I

    iget v3, p1, Lorg/ton/block/TrActionPhase;->specActions:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lorg/ton/block/TrActionPhase;->skippedActions:I

    iget v3, p1, Lorg/ton/block/TrActionPhase;->skippedActions:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    iget v3, p1, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    iget-object p1, p1, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getActionListHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getMsgsCreated()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    return v0
.end method

.method public final getNoFunds()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lorg/ton/block/TrActionPhase;->noFunds:Z

    return v0
.end method

.method public final getResultArg()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getResultCode()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/ton/block/TrActionPhase;->resultCode:I

    return v0
.end method

.method public final getSkippedActions()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/ton/block/TrActionPhase;->skippedActions:I

    return v0
.end method

.method public final getSpecActions()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/ton/block/TrActionPhase;->specActions:I

    return v0
.end method

.method public final getStatusChange()Lorg/ton/block/AccStatusChange;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/ton/block/TrActionPhase;->success:Z

    return v0
.end method

.method public final getTotActions()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/ton/block/TrActionPhase;->totActions:I

    return v0
.end method

.method public final getTotMsgSize()Lorg/ton/block/StorageUsedShort;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    return-object v0
.end method

.method public final getTotalActionFees()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getTotalFwdFees()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getValid()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/ton/block/TrActionPhase;->valid:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lorg/ton/block/TrActionPhase;->success:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/TrActionPhase;->valid:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/TrActionPhase;->noFunds:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrActionPhase;->resultCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrActionPhase;->totActions:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrActionPhase;->specActions:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrActionPhase;->skippedActions:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    invoke-virtual {v1}, Lorg/ton/block/StorageUsedShort;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tr_phase_action"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->success:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 42
    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->valid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 43
    iget-boolean v1, p0, Lorg/ton/block/TrActionPhase;->noFunds:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "no_funds"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 44
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->statusChange:Lorg/ton/block/AccStatusChange;

    const-string v2, "status_change"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 45
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totalFwdFees:Lorg/ton/block/Maybe;

    const-string v2, "total_fwd_fees"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 46
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totalActionFees:Lorg/ton/block/Maybe;

    const-string v2, "total_action_fees"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 47
    iget v1, p0, Lorg/ton/block/TrActionPhase;->resultCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result_code"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 48
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->resultArg:Lorg/ton/block/Maybe;

    const-string v2, "result_arg"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 49
    iget v1, p0, Lorg/ton/block/TrActionPhase;->totActions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tot_actions"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 50
    iget v1, p0, Lorg/ton/block/TrActionPhase;->specActions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spec_actions"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 51
    iget v1, p0, Lorg/ton/block/TrActionPhase;->skippedActions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "skipped_actions"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 52
    iget v1, p0, Lorg/ton/block/TrActionPhase;->msgsCreated:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "msgs_created"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 53
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->actionListHash:Lorg/ton/bitstring/BitString;

    const-string v2, "action_list_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 54
    iget-object v1, p0, Lorg/ton/block/TrActionPhase;->totMsgSize:Lorg/ton/block/StorageUsedShort;

    const-string v2, "tot_msg_size"

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

    .line 58
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
