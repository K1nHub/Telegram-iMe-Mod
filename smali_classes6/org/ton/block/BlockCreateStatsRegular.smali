.class public final Lorg/ton/block/BlockCreateStatsRegular;
.super Ljava/lang/Object;
.source "BlockCreateStatsRegular.kt"

# interfaces
.implements Lorg/ton/block/BlockCreateStats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BlockCreateStatsRegular$$serializer;,
        Lorg/ton/block/BlockCreateStatsRegular$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockCreateStatsRegular.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockCreateStatsRegular.kt\norg/ton/block/BlockCreateStatsRegular\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,48:1\n82#2,3:49\n*S KotlinDebug\n*F\n+ 1 BlockCreateStatsRegular.kt\norg/ton/block/BlockCreateStatsRegular\n*L\n20#1:49,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/BlockCreateStatsRegular$Companion;


# instance fields
.field private final counters:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CreatorStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/BlockCreateStatsRegular$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/BlockCreateStatsRegular$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/BlockCreateStatsRegular;->Companion:Lorg/ton/block/BlockCreateStatsRegular$Companion;

    const/4 v1, 0x1

    new-array v2, v1, [Lkotlinx/serialization/KSerializer;

    .line 26
    new-instance v9, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lorg/ton/hashmap/HashMapE;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v3, 0x2

    new-array v6, v3, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v6, v10

    const-class v4, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v6, v1

    new-array v7, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v11, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v8, v11}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v4}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v7, v10

    sget-object v3, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v10, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v4}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v7, v1

    new-array v8, v1, [Ljava/lang/annotation/Annotation;

    new-instance v0, Lorg/ton/block/BlockCreateStatsRegular$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/BlockCreateStatsRegular$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v8, v10

    const-string v4, "org.ton.hashmap.HashMapE"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v9, v2, v10

    sput-object v2, Lorg/ton/block/BlockCreateStatsRegular;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/hashmap/HashMapE;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 15
    sget-object p3, Lorg/ton/block/BlockCreateStatsRegular$$serializer;->INSTANCE:Lorg/ton/block/BlockCreateStatsRegular$$serializer;

    invoke-virtual {p3}, Lorg/ton/block/BlockCreateStatsRegular$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    return-void
.end method

.method public constructor <init>(Lorg/ton/hashmap/HashMapE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CreatorStats;",
            ">;)V"
        }
    .end annotation

    const-string v0, "counters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 15
    sget-object v0, Lorg/ton/block/BlockCreateStatsRegular;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/BlockCreateStatsRegular;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 15
    sget-object v0, Lorg/ton/block/BlockCreateStatsRegular;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/BlockCreateStatsRegular;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/BlockCreateStatsRegular;

    iget-object v1, p0, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    iget-object p1, p1, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCounters()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CreatorStats;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block_create_stats"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/ton/block/BlockCreateStatsRegular;->counters:Lorg/ton/hashmap/HashMapE;

    const-string v2, "counters"

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

    .line 24
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
