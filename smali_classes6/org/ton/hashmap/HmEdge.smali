.class public final Lorg/ton/hashmap/HmEdge;
.super Ljava/lang/Object;
.source "HmEdge.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/ton/tlb/TlbObject;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HmEdge$$serializer;,
        Lorg/ton/hashmap/HmEdge$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lkotlin/Pair<",
        "+",
        "Lorg/ton/bitstring/BitString;",
        "+TT;>;>;",
        "Lorg/ton/tlb/TlbObject;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmEdge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmEdge.kt\norg/ton/hashmap/HmEdge\n+ 2 HmLabel.kt\norg/ton/hashmap/HmLabelKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,194:1\n14#2:195\n14#2:196\n14#2:197\n14#2:198\n14#2:199\n14#2:200\n86#3,2:201\n82#3,3:203\n88#3:206\n*S KotlinDebug\n*F\n+ 1 HmEdge.kt\norg/ton/hashmap/HmEdge\n*L\n39#1:195\n40#1:196\n42#1:197\n43#1:198\n45#1:199\n50#1:200\n56#1:201,2\n57#1:203,3\n56#1:206\n*E\n"
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

.field public static final Companion:Lorg/ton/hashmap/HmEdge$Companion;


# instance fields
.field private final label:Lorg/ton/hashmap/HmLabel;

.field private final node:Lorg/ton/hashmap/HashMapNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/hashmap/HmEdge$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/hashmap/HmEdge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/hashmap/HmEdge;->Companion:Lorg/ton/hashmap/HmEdge$Companion;

    const/4 v1, 0x2

    new-array v3, v1, [Lkotlinx/serialization/KSerializer;

    .line 65
    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/hashmap/HmLabel;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v4, 0x3

    new-array v7, v4, [Lkotlin/reflect/KClass;

    const-class v5, Lorg/ton/hashmap/HmlLong;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v7, v11

    const-class v5, Lorg/ton/hashmap/HmlSame;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v12, 0x1

    aput-object v5, v7, v12

    const-class v5, Lorg/ton/hashmap/HmlShort;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v7, v1

    new-array v8, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lorg/ton/hashmap/HmlLong$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlLong$$serializer;

    aput-object v4, v8, v11

    sget-object v4, Lorg/ton/hashmap/HmlSame$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlSame$$serializer;

    aput-object v4, v8, v12

    sget-object v4, Lorg/ton/hashmap/HmlShort$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlShort$$serializer;

    aput-object v4, v8, v1

    new-array v9, v12, [Ljava/lang/annotation/Annotation;

    .line 17
    new-instance v4, Lorg/ton/hashmap/HmEdge$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v13, "@type"

    invoke-direct {v4, v13}, Lorg/ton/hashmap/HmEdge$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v4, v9, v11

    const-string v5, "org.ton.hashmap.HmLabel"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v10, v3, v11

    .line 65
    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lorg/ton/hashmap/HashMapNode;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    new-array v5, v1, [Lkotlin/reflect/KClass;

    const-class v6, Lorg/ton/hashmap/HmnFork;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v11

    const-class v6, Lorg/ton/hashmap/HmnLeaf;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v12

    new-array v6, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v7, Lorg/ton/hashmap/HmnFork;->Companion:Lorg/ton/hashmap/HmnFork$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v7, v8}, Lorg/ton/hashmap/HmnFork$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    aput-object v7, v6, v11

    sget-object v7, Lorg/ton/hashmap/HmnLeaf;->Companion:Lorg/ton/hashmap/HmnLeaf$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v9, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v0, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v7, v8}, Lorg/ton/hashmap/HmnLeaf$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v6, v12

    new-array v0, v12, [Ljava/lang/annotation/Annotation;

    .line 11
    new-instance v7, Lorg/ton/hashmap/HmEdge$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v7, v13}, Lorg/ton/hashmap/HmEdge$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v7, v0, v11

    const-string v15, "org.ton.hashmap.HashMapNode"

    move-object v14, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v4, v3, v12

    .line 65
    sput-object v3, Lorg/ton/hashmap/HmEdge;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v3, "hm_edge"

    invoke-direct {v0, v3, v2, v1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "label"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "node"

    invoke-virtual {v0, v1, v11}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v0, Lorg/ton/hashmap/HmEdge;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/hashmap/HmLabel;Lorg/ton/hashmap/HashMapNode;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/hashmap/HmEdge;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    iput-object p3, p0, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

    return-void
.end method

.method public constructor <init>(Lorg/ton/hashmap/HmLabel;Lorg/ton/hashmap/HashMapNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HmLabel;",
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    .line 15
    iput-object p2, p0, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/hashmap/HmEdge;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/hashmap/HmEdge;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/KSerializer;)V
    .locals 3

    .line 11
    sget-object p3, Lorg/ton/hashmap/HmEdge;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v0, 0x0

    aget-object v1, p3, v0

    iget-object v2, p0, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    aget-object p3, p3, v0

    iget-object p0, p0, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

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
    instance-of v1, p1, Lorg/ton/hashmap/HmEdge;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/HmEdge;

    iget-object v1, p0, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    iget-object v3, p1, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

    iget-object p1, p1, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLabel()Lorg/ton/hashmap/HmLabel;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    return-object v0
.end method

.method public final getNode()Lorg/ton/hashmap/HashMapNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "TT;>;>;"
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/ton/hashmap/HmEdgeIterator;

    invoke-direct {v0, p0}, Lorg/ton/hashmap/HmEdgeIterator;-><init>(Lorg/ton/hashmap/HmEdge;)V

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hm_edge"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/ton/hashmap/HmEdge;->label:Lorg/ton/hashmap/HmLabel;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 59
    iget-object v1, p0, Lorg/ton/hashmap/HmEdge;->node:Lorg/ton/hashmap/HashMapNode;

    const-string v2, "node"

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

    .line 63
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
