.class public final Lorg/ton/block/McBlockExtra;
.super Ljava/lang/Object;
.source "McBlockExtra.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/McBlockExtra$$serializer;,
        Lorg/ton/block/McBlockExtra$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcBlockExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtra\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,119:1\n86#2,2:120\n82#2,3:122\n88#2:125\n*S KotlinDebug\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtra\n*L\n25#1:120,2\n26#1:122,3\n25#1:125\n*E\n"
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

.field public static final Companion:Lorg/ton/block/McBlockExtra$Companion;


# instance fields
.field private final config:Lorg/ton/block/ConfigParams;

.field private final keyBlock:Z

.field private final r1:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McBlockExtraAux;",
            ">;"
        }
    .end annotation
.end field

.field private final shardFees:Lorg/ton/hashmap/HashmapAugE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardFeeCreated;",
            "Lorg/ton/block/ShardFeeCreated;",
            ">;"
        }
    .end annotation
.end field

.field private final shardHashes:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/McBlockExtra$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/McBlockExtra$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/McBlockExtra;->Companion:Lorg/ton/block/McBlockExtra$Companion;

    const/4 v1, 0x5

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 37
    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/hashmap/HashMapE;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v11, 0x2

    new-array v7, v11, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v7, v3

    const-class v4, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v7, v12

    new-array v8, v11, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v13, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v9, v13}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v4, v5}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v8, v3

    sget-object v4, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v0, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v4, v5}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v8, v12

    new-array v9, v12, [Ljava/lang/annotation/Annotation;

    new-instance v0, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v13, "@type"

    invoke-direct {v0, v13}, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v9, v3

    const-string v5, "org.ton.hashmap.HashMapE"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v10, v1, v12

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v4, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/annotation/Annotation;

    new-instance v6, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v6, v13}, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v3

    invoke-direct {v0, v4, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v0, v1, v11

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v4, Lorg/ton/tlb/CellRef;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v4, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const/4 v0, 0x4

    aput-object v2, v1, v0

    sput-object v1, Lorg/ton/block/McBlockExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IZLorg/ton/hashmap/HashMapE;Lorg/ton/hashmap/HashmapAugE;Lorg/ton/tlb/CellRef;Lorg/ton/block/ConfigParams;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 16
    sget-object p7, Lorg/ton/block/McBlockExtra$$serializer;->INSTANCE:Lorg/ton/block/McBlockExtra$$serializer;

    invoke-virtual {p7}, Lorg/ton/block/McBlockExtra$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    iput-object p3, p0, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    iput-object p4, p0, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    iput-object p5, p0, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    iput-object p6, p0, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    return-void
.end method

.method public constructor <init>(ZLorg/ton/hashmap/HashMapE;Lorg/ton/hashmap/HashmapAugE;Lorg/ton/tlb/CellRef;Lorg/ton/block/ConfigParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardFeeCreated;",
            "Lorg/ton/block/ShardFeeCreated;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McBlockExtraAux;",
            ">;",
            "Lorg/ton/block/ConfigParams;",
            ")V"
        }
    .end annotation

    const-string v0, "shardHashes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shardFees"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r1"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    .line 20
    iput-object p2, p0, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    .line 21
    iput-object p3, p0, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    .line 22
    iput-object p4, p0, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    .line 23
    iput-object p5, p0, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 16
    sget-object v0, Lorg/ton/block/McBlockExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/McBlockExtra;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 16
    sget-object v0, Lorg/ton/block/McBlockExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-boolean v1, p0, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/ConfigParams$$serializer;->INSTANCE:Lorg/ton/block/ConfigParams$$serializer;

    iget-object p0, p0, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/McBlockExtra;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/McBlockExtra;

    iget-boolean v1, p0, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    iget-boolean v3, p1, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    iget-object v3, p1, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    iget-object v3, p1, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    iget-object p1, p1, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getConfig()Lorg/ton/block/ConfigParams;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    return-object v0
.end method

.method public final getKeyBlock()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    return v0
.end method

.method public final getR1()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McBlockExtraAux;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getShardFees()Lorg/ton/hashmap/HashmapAugE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardFeeCreated;",
            "Lorg/ton/block/ShardFeeCreated;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    return-object v0
.end method

.method public final getShardHashes()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/ton/block/ConfigParams;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "masterchain_block_extra"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 27
    iget-boolean v1, p0, Lorg/ton/block/McBlockExtra;->keyBlock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "key_block"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 28
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    const-string v2, "shard_hashes"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 29
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->shardFees:Lorg/ton/hashmap/HashmapAugE;

    const-string v2, "shard_fees"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 30
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-object v1, p0, Lorg/ton/block/McBlockExtra;->config:Lorg/ton/block/ConfigParams;

    const-string v2, "config"

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

    .line 35
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
