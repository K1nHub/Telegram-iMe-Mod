.class public final Lorg/ton/block/TransMergeInstall;
.super Ljava/lang/Object;
.source "TransMergeInstall.kt"

# interfaces
.implements Lorg/ton/block/TransactionDescr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TransMergeInstall$$serializer;,
        Lorg/ton/block/TransMergeInstall$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransMergeInstall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransMergeInstall.kt\norg/ton/block/TransMergeInstall\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,82:1\n86#2,2:83\n82#2,3:85\n88#2:88\n*S KotlinDebug\n*F\n+ 1 TransMergeInstall.kt\norg/ton/block/TransMergeInstall\n*L\n25#1:83,2\n26#1:85,3\n25#1:88\n*E\n"
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

.field public static final Companion:Lorg/ton/block/TransMergeInstall$Companion;


# instance fields
.field private final aborted:Z

.field private final action:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrActionPhase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final computePh:Lorg/ton/block/TrComputePhase;

.field private final creditPh:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrCreditPhase;",
            ">;"
        }
    .end annotation
.end field

.field private final destroyed:Z

.field private final prepareTransaction:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final splitInfo:Lorg/ton/block/SplitMergeInfo;

.field private final storagePh:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrStoragePhase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-class v0, Lorg/ton/block/Nothing;

    const-class v1, Lorg/ton/block/Just;

    const-class v2, Lorg/ton/block/Maybe;

    const-class v3, Ljava/lang/Object;

    new-instance v4, Lorg/ton/block/TransMergeInstall$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/ton/block/TransMergeInstall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lorg/ton/block/TransMergeInstall;->Companion:Lorg/ton/block/TransMergeInstall$Companion;

    const/16 v4, 0x8

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 23
    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v8, Lorg/ton/tlb/CellRef;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v8, 0x1

    aput-object v7, v4, v8

    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v15, 0x2

    new-array v12, v15, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    aput-object v9, v12, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    aput-object v9, v12, v8

    new-array v13, v15, [Lkotlinx/serialization/KSerializer;

    sget-object v14, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v5, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v14, v9}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v13, v6

    sget-object v5, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v15, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v15}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v9}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    aput-object v9, v13, v8

    new-array v15, v8, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v9, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v10, "@type"

    invoke-direct {v9, v10}, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v9, v15, v6

    const-string v16, "org.ton.block.Maybe"

    move-object v9, v7

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    move-object/from16 v18, v14

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v9, 0x2

    aput-object v7, v4, v9

    .line 23
    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v13, v9, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v13, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v13, v8

    new-array v14, v9, [Lkotlinx/serialization/KSerializer;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v11}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    move-object/from16 v15, v18

    invoke-virtual {v15, v9}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    aput-object v9, v14, v6

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v11}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v9}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    aput-object v9, v14, v8

    new-array v9, v8, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v10, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    move-object/from16 v11, v17

    invoke-direct {v10, v11}, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v6

    const-string v16, "org.ton.block.Maybe"

    move-object v10, v7

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v15

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v9, 0x3

    aput-object v7, v4, v9

    .line 23
    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    const-class v9, Lorg/ton/block/TrComputePhase;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const/4 v9, 0x2

    new-array v13, v9, [Lkotlin/reflect/KClass;

    const-class v10, Lorg/ton/block/TrPhaseComputeSkipped;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v13, v6

    const-class v10, Lorg/ton/block/TrPhaseComputeVm;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v13, v8

    new-array v14, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v9, Lorg/ton/block/TrPhaseComputeSkipped$$serializer;->INSTANCE:Lorg/ton/block/TrPhaseComputeSkipped$$serializer;

    aput-object v9, v14, v6

    sget-object v9, Lorg/ton/block/TrPhaseComputeVm$$serializer;->INSTANCE:Lorg/ton/block/TrPhaseComputeVm$$serializer;

    aput-object v9, v14, v8

    new-array v15, v8, [Ljava/lang/annotation/Annotation;

    .line 12
    new-instance v9, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    move-object/from16 v11, v19

    invoke-direct {v9, v11}, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v9, v15, v6

    const-string v9, "org.ton.block.TrComputePhase"

    move-object v10, v7

    move-object/from16 v21, v11

    move-object v11, v9

    invoke-direct/range {v10 .. v15}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v9, 0x4

    aput-object v7, v4, v9

    .line 23
    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const/4 v2, 0x2

    new-array v13, v2, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    aput-object v1, v13, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    aput-object v0, v13, v8

    new-array v14, v2, [Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v14, v6

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v0}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v14, v8

    new-array v15, v8, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v0, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/ton/block/TransMergeInstall$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v15, v6

    const-string v11, "org.ton.block.Maybe"

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x5

    aput-object v7, v4, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object v1, v4, v0

    .line 23
    sput-object v4, Lorg/ton/block/TransMergeInstall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/SplitMergeInfo;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/TrComputePhase;Lorg/ton/block/Maybe;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p10, p1, 0xff

    const/16 v0, 0xff

    if-eq v0, p10, :cond_0

    .line 11
    sget-object p10, Lorg/ton/block/TransMergeInstall$$serializer;->INSTANCE:Lorg/ton/block/TransMergeInstall$$serializer;

    invoke-virtual {p10}, Lorg/ton/block/TransMergeInstall$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p10

    invoke-static {p1, v0, p10}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    iput-object p3, p0, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    iput-object p4, p0, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    iput-object p5, p0, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    iput-object p6, p0, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    iput-object p7, p0, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    iput-boolean p8, p0, Lorg/ton/block/TransMergeInstall;->aborted:Z

    iput-boolean p9, p0, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/SplitMergeInfo;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/TrComputePhase;Lorg/ton/block/Maybe;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/SplitMergeInfo;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrStoragePhase;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrCreditPhase;",
            ">;",
            "Lorg/ton/block/TrComputePhase;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrActionPhase;",
            ">;>;ZZ)V"
        }
    .end annotation

    const-string v0, "splitInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepareTransaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storagePh"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creditPh"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computePh"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    .line 15
    iput-object p2, p0, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    .line 16
    iput-object p3, p0, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    .line 17
    iput-object p4, p0, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    .line 18
    iput-object p5, p0, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    .line 19
    iput-object p6, p0, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    .line 20
    iput-boolean p7, p0, Lorg/ton/block/TransMergeInstall;->aborted:Z

    .line 21
    iput-boolean p8, p0, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/TransMergeInstall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TransMergeInstall;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 11
    sget-object v0, Lorg/ton/block/TransMergeInstall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/block/SplitMergeInfo$$serializer;->INSTANCE:Lorg/ton/block/SplitMergeInfo$$serializer;

    iget-object v2, p0, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/ton/block/TransMergeInstall;->aborted:Z

    const/4 v1, 0x6

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean p0, p0, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    const/4 v0, 0x7

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/TransMergeInstall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TransMergeInstall;

    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    iget-object v3, p1, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    iget-object v3, p1, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lorg/ton/block/TransMergeInstall;->aborted:Z

    iget-boolean v3, p1, Lorg/ton/block/TransMergeInstall;->aborted:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    iget-boolean p1, p1, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAborted()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/ton/block/TransMergeInstall;->aborted:Z

    return v0
.end method

.method public final getAction()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrActionPhase;",
            ">;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getComputePh()Lorg/ton/block/TrComputePhase;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    return-object v0
.end method

.method public final getCreditPh()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrCreditPhase;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getDestroyed()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    return v0
.end method

.method public final getPrepareTransaction()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getSplitInfo()Lorg/ton/block/SplitMergeInfo;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    return-object v0
.end method

.method public final getStoragePh()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrStoragePhase;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    invoke-virtual {v0}, Lorg/ton/block/SplitMergeInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/TransMergeInstall;->aborted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trans_merge_install"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    const-string v2, "split_info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 28
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    const-string v2, "prepare_transaction"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 29
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->storagePh:Lorg/ton/block/Maybe;

    const-string v2, "storage_ph"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 30
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->creditPh:Lorg/ton/block/Maybe;

    const-string v2, "credit_ph"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->computePh:Lorg/ton/block/TrComputePhase;

    const-string v2, "compute_ph"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 32
    iget-object v1, p0, Lorg/ton/block/TransMergeInstall;->action:Lorg/ton/block/Maybe;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 33
    iget-boolean v1, p0, Lorg/ton/block/TransMergeInstall;->aborted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "aborted"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 34
    iget-boolean v1, p0, Lorg/ton/block/TransMergeInstall;->destroyed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "destroyed"

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

    .line 38
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
