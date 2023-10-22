.class public final Lorg/ton/block/StateInit;
.super Ljava/lang/Object;
.source "StateInit.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/StateInit$$serializer;,
        Lorg/ton/block/StateInit$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateInit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateInit.kt\norg/ton/block/StateInit\n+ 2 Maybe.kt\norg/ton/block/MaybeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,95:1\n16#2:96\n16#2:97\n16#2:100\n16#2:102\n1#3:98\n10#4:99\n10#4:101\n86#5,2:103\n82#5,3:105\n88#5:108\n*S KotlinDebug\n*F\n+ 1 StateInit.kt\norg/ton/block/StateInit\n*L\n41#1:96\n42#1:97\n43#1:100\n44#1:102\n43#1:99\n44#1:101\n50#1:103,2\n51#1:105,3\n50#1:108\n*E\n"
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

.field public static final Companion:Lorg/ton/block/StateInit$Companion;


# instance fields
.field private final code:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation
.end field

.field private final data:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation
.end field

.field private final library:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/SimpleLib;",
            ">;"
        }
    .end annotation
.end field

.field private final special:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TickTock;",
            ">;"
        }
    .end annotation
.end field

.field private final splitDepth:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lkotlin/UInt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-class v0, Lorg/ton/block/Nothing;

    const-class v1, Lorg/ton/block/Just;

    const-class v2, Lorg/ton/block/Maybe;

    const-class v3, Ljava/lang/Object;

    new-instance v4, Lorg/ton/block/StateInit$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/ton/block/StateInit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lorg/ton/block/StateInit;->Companion:Lorg/ton/block/StateInit$Companion;

    const/4 v4, 0x5

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    .line 60
    new-instance v11, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v12, 0x2

    new-array v8, v12, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v8, v13

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v8, v14

    new-array v9, v12, [Lkotlinx/serialization/KSerializer;

    sget-object v15, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v10, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v6, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v15, v5}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v9, v13

    sget-object v10, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v12, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v6, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v10, v5}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v9, v14

    new-array v12, v14, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v5, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v6, "@type"

    invoke-direct {v5, v6}, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v5, v12, v13

    const-string v16, "org.ton.block.Maybe"

    move-object v5, v11

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v18, v10

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v11, v4, v13

    .line 60
    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v21

    const/4 v6, 0x2

    new-array v7, v6, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v7, v14

    new-array v8, v6, [Lkotlinx/serialization/KSerializer;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v15, v6}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v8, v13

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    move-object/from16 v9, v18

    invoke-virtual {v9, v6}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v8, v14

    new-array v6, v14, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v10, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    move-object/from16 v11, v17

    invoke-direct {v10, v11}, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v10, v6, v13

    const-string v20, "org.ton.block.Maybe"

    move-object/from16 v19, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v6

    invoke-direct/range {v19 .. v24}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v5, v4, v14

    .line 60
    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v24

    const/4 v6, 0x2

    new-array v7, v6, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v7, v14

    new-array v8, v6, [Lkotlinx/serialization/KSerializer;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v10, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v15, v6}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v8, v13

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v12, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v10, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v9, v6}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v8, v14

    new-array v6, v14, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v10, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v10, v11}, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v10, v6, v13

    const-string v23, "org.ton.block.Maybe"

    move-object/from16 v22, v5

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v6

    invoke-direct/range {v22 .. v27}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 60
    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    new-array v2, v6, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    aput-object v1, v2, v13

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    aput-object v0, v2, v14

    new-array v0, v6, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v6, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v15, v1}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v13

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v6, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v9, v1}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v14

    new-array v1, v14, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v6, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v6, v11}, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v13

    const-string v17, "org.ton.block.Maybe"

    move-object/from16 v16, v5

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x3

    aput-object v5, v4, v0

    .line 60
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/hashmap/HashMapE;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    const/4 v1, 0x2

    new-array v2, v1, [Lkotlin/reflect/KClass;

    const-class v5, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v2, v13

    const-class v5, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v2, v14

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v7, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v1, v13

    sget-object v5, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v7, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v3, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v14

    new-array v3, v14, [Ljava/lang/annotation/Annotation;

    new-instance v5, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v5, v11}, Lorg/ton/block/StateInit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v13

    const-string v17, "org.ton.hashmap.HashMapE"

    move-object/from16 v16, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v1

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v1, 0x4

    aput-object v0, v4, v1

    sput-object v4, Lorg/ton/block/StateInit;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/hashmap/HashMapE;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 16
    sget-object p7, Lorg/ton/block/StateInit$$serializer;->INSTANCE:Lorg/ton/block/StateInit$$serializer;

    invoke-virtual {p7}, Lorg/ton/block/StateInit$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    iput-object p3, p0, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    iput-object p4, p0, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    iput-object p5, p0, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    iput-object p6, p0, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/hashmap/HashMapE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/Maybe<",
            "Lkotlin/UInt;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TickTock;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/cell/Cell;",
            ">;>;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/cell/Cell;",
            ">;>;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/SimpleLib;",
            ">;)V"
        }
    .end annotation

    const-string v0, "splitDepth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "special"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "library"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    .line 22
    iput-object p2, p0, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    .line 25
    iput-object p3, p0, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    .line 28
    iput-object p4, p0, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    .line 31
    iput-object p5, p0, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    return-void
.end method

.method private constructor <init>(Lorg/ton/cell/Cell;Lorg/ton/cell/Cell;Lorg/ton/hashmap/HashMapE;Lkotlin/UInt;Lorg/ton/block/TickTock;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            "Lorg/ton/cell/Cell;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/SimpleLib;",
            ">;",
            "Lkotlin/UInt;",
            "Lorg/ton/block/TickTock;",
            ")V"
        }
    .end annotation

    const-string v0, "library"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    invoke-virtual {v0, p4}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object v2

    .line 16
    invoke-virtual {v0, p5}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object v3

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 43
    sget-object p5, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    .line 10
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, p1, p5}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p4

    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object v4

    if-eqz p2, :cond_1

    .line 44
    sget-object p1, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    .line 10
    sget-object p4, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {p4, p2, p1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p4

    .line 16
    :cond_1
    invoke-virtual {v0, p4}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object v5

    move-object v1, p0

    move-object v6, p3

    .line 40
    invoke-direct/range {v1 .. v6}, Lorg/ton/block/StateInit;-><init>(Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/hashmap/HashMapE;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/cell/Cell;Lorg/ton/cell/Cell;Lorg/ton/hashmap/HashMapE;Lkotlin/UInt;Lorg/ton/block/TickTock;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 37
    sget-object p1, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    invoke-virtual {p1}, Lorg/ton/hashmap/HashMapE$Companion;->of()Lorg/ton/hashmap/HashMapE;

    move-result-object p3

    :cond_2
    move-object v4, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, p4

    :goto_2
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, p5

    :goto_3
    const/4 v7, 0x0

    move-object v1, p0

    .line 34
    invoke-direct/range {v1 .. v7}, Lorg/ton/block/StateInit;-><init>(Lorg/ton/cell/Cell;Lorg/ton/cell/Cell;Lorg/ton/hashmap/HashMapE;Lkotlin/UInt;Lorg/ton/block/TickTock;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/cell/Cell;Lorg/ton/cell/Cell;Lorg/ton/hashmap/HashMapE;Lkotlin/UInt;Lorg/ton/block/TickTock;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/StateInit;-><init>(Lorg/ton/cell/Cell;Lorg/ton/cell/Cell;Lorg/ton/hashmap/HashMapE;Lkotlin/UInt;Lorg/ton/block/TickTock;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 16
    sget-object v0, Lorg/ton/block/StateInit;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/StateInit;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 16
    sget-object v0, Lorg/ton/block/StateInit;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final code()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final data()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/StateInit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/StateInit;

    iget-object v1, p0, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    iget-object p1, p1, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final library()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/SimpleLib;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    const-string v2, "split_depth"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 53
    iget-object v1, p0, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    const-string v2, "special"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 54
    iget-object v1, p0, Lorg/ton/block/StateInit;->code:Lorg/ton/block/Maybe;

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 55
    iget-object v1, p0, Lorg/ton/block/StateInit;->data:Lorg/ton/block/Maybe;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 56
    iget-object v1, p0, Lorg/ton/block/StateInit;->library:Lorg/ton/hashmap/HashMapE;

    const-string v2, "library"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public final special()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TickTock;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/ton/block/StateInit;->special:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final splitDepth()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lkotlin/UInt;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ton/block/StateInit;->splitDepth:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 48
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
