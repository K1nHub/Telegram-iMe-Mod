.class public final Lorg/ton/block/Message;
.super Ljava/lang/Object;
.source "Message.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/Message$$serializer;,
        Lorg/ton/block/Message$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbObject;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Message.kt\norg/ton/block/Message\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,73:1\n82#2,3:74\n*S KotlinDebug\n*F\n+ 1 Message.kt\norg/ton/block/Message\n*L\n20#1:74,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

.field private static final Any:Lorg/ton/tlb/TlbConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/ton/block/Message$Companion;


# instance fields
.field private final body:Lorg/ton/block/Either;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Either<",
            "TX;",
            "Lorg/ton/tlb/CellRef<",
            "TX;>;>;"
        }
    .end annotation
.end field

.field private final info:Lorg/ton/block/CommonMsgInfo;

.field private final init:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Either<",
            "Lorg/ton/block/StateInit;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/StateInit;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/Message$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/Message$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/Message;->Companion:Lorg/ton/block/Message$Companion;

    .line 30
    sget-object v3, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    invoke-virtual {v1, v3}, Lorg/ton/block/Message$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbConstructor;

    move-result-object v1

    sput-object v1, Lorg/ton/block/Message;->Any:Lorg/ton/tlb/TlbConstructor;

    const/4 v1, 0x3

    new-array v3, v1, [Lkotlinx/serialization/KSerializer;

    .line 29
    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/block/CommonMsgInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v7, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/block/ExtInMsgInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v7, v11

    const-class v4, Lorg/ton/block/ExtOutMsgInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v7, v12

    const-class v4, Lorg/ton/block/IntMsgInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v13, 0x2

    aput-object v4, v7, v13

    new-array v8, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lorg/ton/block/ExtInMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/ExtInMsgInfo$$serializer;

    aput-object v4, v8, v11

    sget-object v4, Lorg/ton/block/ExtOutMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/ExtOutMsgInfo$$serializer;

    aput-object v4, v8, v12

    sget-object v4, Lorg/ton/block/IntMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/IntMsgInfo$$serializer;

    aput-object v4, v8, v13

    new-array v9, v12, [Ljava/lang/annotation/Annotation;

    .line 10
    new-instance v4, Lorg/ton/block/Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v14, "@type"

    invoke-direct {v4, v14}, Lorg/ton/block/Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v4, v9, v11

    const-string v5, "org.ton.block.CommonMsgInfo"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v10, v3, v11

    .line 29
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lorg/ton/block/Maybe;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    new-array v5, v13, [Lkotlin/reflect/KClass;

    const-class v6, Lorg/ton/block/Just;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v11

    const-class v6, Lorg/ton/block/Nothing;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v12

    new-array v6, v13, [Lkotlinx/serialization/KSerializer;

    sget-object v7, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v7, v8}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    aput-object v7, v6, v11

    sget-object v7, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v7, v8}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    aput-object v7, v6, v12

    new-array v7, v12, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v8, Lorg/ton/block/Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v8, v14}, Lorg/ton/block/Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    const-string v16, "org.ton.block.Maybe"

    move-object v15, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-direct/range {v15 .. v20}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v4, v3, v12

    .line 29
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lorg/ton/block/Either;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v20

    new-array v5, v13, [Lkotlin/reflect/KClass;

    const-class v6, Lorg/ton/block/Either$Left;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v11

    const-class v6, Lorg/ton/block/Either$Right;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v12

    new-array v6, v13, [Lkotlinx/serialization/KSerializer;

    sget-object v7, Lorg/ton/block/Either$Left;->Companion:Lorg/ton/block/Either$Left$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v15, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v15}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v7, v8, v9}, Lorg/ton/block/Either$Left$Companion;->serializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    aput-object v7, v6, v11

    sget-object v7, Lorg/ton/block/Either$Right;->Companion:Lorg/ton/block/Either$Right$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v10, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v0, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v7, v8, v9}, Lorg/ton/block/Either$Right$Companion;->serializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v6, v12

    new-array v0, v12, [Ljava/lang/annotation/Annotation;

    .line 18
    new-instance v7, Lorg/ton/block/Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v7, v14}, Lorg/ton/block/Message$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v7, v0, v11

    const-string v19, "org.ton.block.Either"

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v0

    invoke-direct/range {v18 .. v23}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v4, v3, v13

    .line 29
    sput-object v3, Lorg/ton/block/Message;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v3, "org.ton.block.Message"

    invoke-direct {v0, v3, v2, v1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "info"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "init"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "body"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v0, Lorg/ton/block/Message;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/CommonMsgInfo;Lorg/ton/block/Maybe;Lorg/ton/block/Either;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 13
    sget-object p5, Lorg/ton/block/Message;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    iput-object p3, p0, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    iput-object p4, p0, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/CommonMsgInfo;Lorg/ton/block/Maybe;Lorg/ton/block/Either;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/CommonMsgInfo;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Either<",
            "Lorg/ton/block/StateInit;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/StateInit;",
            ">;>;>;",
            "Lorg/ton/block/Either<",
            "TX;",
            "Lorg/ton/tlb/CellRef<",
            "TX;>;>;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    .line 16
    iput-object p2, p0, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    .line 17
    iput-object p3, p0, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 13
    sget-object v0, Lorg/ton/block/Message;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic access$getAny$cp()Lorg/ton/tlb/TlbConstructor;
    .locals 1

    .line 13
    sget-object v0, Lorg/ton/block/Message;->Any:Lorg/ton/tlb/TlbConstructor;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/Message;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/KSerializer;)V
    .locals 3

    .line 13
    sget-object p3, Lorg/ton/block/Message;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v0, 0x0

    aget-object v1, p3, v0

    iget-object v2, p0, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    aget-object v1, p3, v0

    iget-object v2, p0, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x2

    aget-object p3, p3, v0

    iget-object p0, p0, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    invoke-interface {p1, p2, v0, p3, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/Message;

    iget-object v1, p0, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    iget-object v3, p1, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    iget-object p1, p1, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBody()Lorg/ton/block/Either;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Either<",
            "TX;",
            "Lorg/ton/tlb/CellRef<",
            "TX;>;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    return-object v0
.end method

.method public final getInfo()Lorg/ton/block/CommonMsgInfo;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    return-object v0
.end method

.method public final getInit()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Either<",
            "Lorg/ton/block/StateInit;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/StateInit;",
            ">;>;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/ton/block/Message;->info:Lorg/ton/block/CommonMsgInfo;

    const-string v2, "info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 22
    iget-object v1, p0, Lorg/ton/block/Message;->init:Lorg/ton/block/Maybe;

    const-string v2, "init"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/Message;->body:Lorg/ton/block/Either;

    const-string v2, "body"

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

    .line 27
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
