.class public final Lorg/ton/block/MessageRelaxed;
.super Ljava/lang/Object;
.source "MessageRelaxed.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MessageRelaxed$$serializer;,
        Lorg/ton/block/MessageRelaxed$Companion;
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
    value = "SMAP\nMessageRelaxed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageRelaxed.kt\norg/ton/block/MessageRelaxed\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,68:1\n86#2,2:69\n82#2,3:71\n88#2:74\n*S KotlinDebug\n*F\n+ 1 MessageRelaxed.kt\norg/ton/block/MessageRelaxed\n*L\n18#1:69,2\n19#1:71,3\n18#1:74\n*E\n"
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

.field public static final Companion:Lorg/ton/block/MessageRelaxed$Companion;


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

.field private final info:Lorg/ton/block/CommonMsgInfoRelaxed;

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
    .locals 23

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/MessageRelaxed$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/MessageRelaxed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/MessageRelaxed;->Companion:Lorg/ton/block/MessageRelaxed$Companion;

    const/4 v1, 0x3

    new-array v3, v1, [Lkotlinx/serialization/KSerializer;

    .line 28
    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/block/CommonMsgInfoRelaxed;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v11, 0x0

    new-array v7, v11, [Lkotlin/reflect/KClass;

    new-array v8, v11, [Lkotlinx/serialization/KSerializer;

    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v4, Lorg/ton/block/MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v13, "@type"

    invoke-direct {v4, v13}, Lorg/ton/block/MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v4, v9, v11

    const-string v5, "org.ton.block.CommonMsgInfoRelaxed"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v10, v3, v11

    .line 28
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lorg/ton/block/Maybe;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    const/4 v5, 0x2

    new-array v6, v5, [Lkotlin/reflect/KClass;

    const-class v7, Lorg/ton/block/Just;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v11

    const-class v7, Lorg/ton/block/Nothing;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v12

    new-array v7, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v8, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v14, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v14}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v9}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    aput-object v8, v7, v11

    sget-object v8, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v14, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v14}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v9}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    aput-object v8, v7, v12

    new-array v8, v12, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v9, Lorg/ton/block/MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v9, v13}, Lorg/ton/block/MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v11

    const-string v15, "org.ton.block.Maybe"

    move-object v14, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v4, v3, v12

    .line 28
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lorg/ton/block/Either;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v19

    new-array v6, v5, [Lkotlin/reflect/KClass;

    const-class v7, Lorg/ton/block/Either$Left;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v11

    const-class v7, Lorg/ton/block/Either$Right;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v12

    new-array v7, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v8, Lorg/ton/block/Either$Left;->Companion:Lorg/ton/block/Either$Left$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v14, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v14}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    new-instance v10, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    new-array v15, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v10, v14, v15}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v9, v10}, Lorg/ton/block/Either$Left$Companion;->serializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    aput-object v8, v7, v11

    sget-object v8, Lorg/ton/block/Either$Right;->Companion:Lorg/ton/block/Either$Right$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v14, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v14}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    new-instance v10, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v14, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v10, v0, v14}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v9, v10}, Lorg/ton/block/Either$Right$Companion;->serializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v7, v12

    new-array v0, v12, [Ljava/lang/annotation/Annotation;

    .line 18
    new-instance v8, Lorg/ton/block/MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v8, v13}, Lorg/ton/block/MessageRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v8, v0, v11

    const-string v18, "org.ton.block.Either"

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v0

    invoke-direct/range {v17 .. v22}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v4, v3, v5

    .line 28
    sput-object v3, Lorg/ton/block/MessageRelaxed;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v3, "org.ton.block.MessageRelaxed"

    invoke-direct {v0, v3, v2, v1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "info"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "init"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "body"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v0, Lorg/ton/block/MessageRelaxed;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/CommonMsgInfoRelaxed;Lorg/ton/block/Maybe;Lorg/ton/block/Either;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 12
    sget-object p5, Lorg/ton/block/MessageRelaxed;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

    iput-object p3, p0, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    iput-object p4, p0, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/CommonMsgInfoRelaxed;Lorg/ton/block/Maybe;Lorg/ton/block/Either;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/CommonMsgInfoRelaxed;",
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

    .line 15
    iput-object p2, p0, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    .line 16
    iput-object p3, p0, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/MessageRelaxed;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/MessageRelaxed;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/KSerializer;)V
    .locals 3

    .line 12
    sget-object p3, Lorg/ton/block/MessageRelaxed;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v0, 0x0

    aget-object v1, p3, v0

    iget-object v2, p0, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    aget-object v1, p3, v0

    iget-object v2, p0, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x2

    aget-object p3, p3, v0

    iget-object p0, p0, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

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
    instance-of v1, p1, Lorg/ton/block/MessageRelaxed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/MessageRelaxed;

    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

    iget-object v3, p1, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

    iget-object p1, p1, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

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

    .line 16
    iget-object v0, p0, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

    return-object v0
.end method

.method public final getInfo()Lorg/ton/block/CommonMsgInfoRelaxed;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

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

    .line 15
    iget-object v0, p0, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

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

    .line 20
    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->info:Lorg/ton/block/CommonMsgInfoRelaxed;

    const-string v2, "info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 21
    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->init:Lorg/ton/block/Maybe;

    const-string v2, "init"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 22
    iget-object v1, p0, Lorg/ton/block/MessageRelaxed;->body:Lorg/ton/block/Either;

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

    .line 26
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
