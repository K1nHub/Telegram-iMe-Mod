.class public final Lorg/ton/block/McStateExtra;
.super Ljava/lang/Object;
.source "McStateExtra.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/McStateExtra$$serializer;,
        Lorg/ton/block/McStateExtra$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcStateExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtra\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,132:1\n82#2,3:133\n*S KotlinDebug\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtra\n*L\n21#1:133,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/McStateExtra$Companion;


# instance fields
.field private final config:Lorg/ton/block/ConfigParams;

.field private final globalBalance:Lorg/ton/block/CurrencyCollection;

.field private final r1:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtraAux;",
            ">;"
        }
    .end annotation
.end field

.field private final shardHashes:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/ton/block/McStateExtra$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/McStateExtra$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/McStateExtra;->Companion:Lorg/ton/block/McStateExtra$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 31
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v4, Lorg/ton/tlb/CellRef;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v3, v4, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x2

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/McStateExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILorg/ton/hashmap/HashMapE;Lorg/ton/block/ConfigParams;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;",
            "Lorg/ton/block/ConfigParams;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtraAux;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 12
    sget-object p6, Lorg/ton/block/McStateExtra$$serializer;->INSTANCE:Lorg/ton/block/McStateExtra$$serializer;

    invoke-virtual {p6}, Lorg/ton/block/McStateExtra$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    iput-object p3, p0, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    iput-object p4, p0, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    iput-object p5, p0, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/hashmap/HashMapE;Lorg/ton/block/ConfigParams;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/ton/block/McStateExtra;-><init>(ILorg/ton/hashmap/HashMapE;Lorg/ton/block/ConfigParams;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/hashmap/HashMapE;Lorg/ton/block/ConfigParams;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;",
            "Lorg/ton/block/ConfigParams;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtraAux;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            ")V"
        }
    .end annotation

    const-string v0, "shardHashes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalBalance"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    .line 16
    iput-object p2, p0, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    .line 17
    iput-object p3, p0, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    .line 18
    iput-object p4, p0, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/hashmap/HashMapE;Lorg/ton/block/ConfigParams;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/McStateExtra;-><init>(Lorg/ton/hashmap/HashMapE;Lorg/ton/block/ConfigParams;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/McStateExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/McStateExtra;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 12
    sget-object v0, Lorg/ton/block/McStateExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/block/ShardHashes$$serializer;->INSTANCE:Lorg/ton/block/ShardHashes$$serializer;

    iget-object v2, p0, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    invoke-static {v2}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/ConfigParams$$serializer;->INSTANCE:Lorg/ton/block/ConfigParams$$serializer;

    iget-object v2, p0, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object p0, p0, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    const/4 v1, 0x3

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
    instance-of v1, p1, Lorg/ton/block/McStateExtra;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/McStateExtra;

    iget-object v1, p0, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    iget-object v3, p1, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, v3}, Lorg/ton/block/ShardHashes;->equals-impl0(Lorg/ton/hashmap/HashMapE;Lorg/ton/hashmap/HashMapE;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    iget-object v3, p1, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    iget-object p1, p1, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConfig()Lorg/ton/block/ConfigParams;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    return-object v0
.end method

.method public final getGlobalBalance()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getR1()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtraAux;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getShardHashes-78z5ENA()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    invoke-static {v0}, Lorg/ton/block/ShardHashes;->hashCode-impl(Lorg/ton/hashmap/HashMapE;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    invoke-virtual {v1}, Lorg/ton/block/ConfigParams;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "masterchain_state_extra"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/ton/block/McStateExtra;->shardHashes:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object v1

    const-string v2, "shard_hashes"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/McStateExtra;->config:Lorg/ton/block/ConfigParams;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/McStateExtra;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/McStateExtra;->globalBalance:Lorg/ton/block/CurrencyCollection;

    const-string v2, "global_balance"

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

    .line 29
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
