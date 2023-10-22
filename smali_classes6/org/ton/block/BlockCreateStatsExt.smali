.class public final Lorg/ton/block/BlockCreateStatsExt;
.super Ljava/lang/Object;
.source "BlockCreateStatsExt.kt"

# interfaces
.implements Lorg/ton/block/BlockCreateStats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BlockCreateStatsExt$$serializer;,
        Lorg/ton/block/BlockCreateStatsExt$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockCreateStatsExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockCreateStatsExt.kt\norg/ton/block/BlockCreateStatsExt\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,49:1\n82#2,3:50\n*S KotlinDebug\n*F\n+ 1 BlockCreateStatsExt.kt\norg/ton/block/BlockCreateStatsExt\n*L\n21#1:50,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/BlockCreateStatsExt$Companion;


# instance fields
.field private final counters:Lorg/ton/hashmap/HashmapAugE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/CreatorStats;",
            "Lkotlin/UInt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/ton/block/BlockCreateStatsExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/BlockCreateStatsExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/BlockCreateStatsExt;->Companion:Lorg/ton/block/BlockCreateStatsExt$Companion;

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlinx/serialization/KSerializer;

    .line 27
    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    new-instance v4, Lorg/ton/block/BlockCreateStatsExt$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v5, "@type"

    invoke-direct {v4, v5}, Lorg/ton/block/BlockCreateStatsExt$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v3, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v5

    sput-object v1, Lorg/ton/block/BlockCreateStatsExt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/hashmap/HashmapAugE;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 16
    sget-object p3, Lorg/ton/block/BlockCreateStatsExt$$serializer;->INSTANCE:Lorg/ton/block/BlockCreateStatsExt$$serializer;

    invoke-virtual {p3}, Lorg/ton/block/BlockCreateStatsExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

    return-void
.end method

.method public constructor <init>(Lorg/ton/hashmap/HashmapAugE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/CreatorStats;",
            "Lkotlin/UInt;",
            ">;)V"
        }
    .end annotation

    const-string v0, "counters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 16
    sget-object v0, Lorg/ton/block/BlockCreateStatsExt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/BlockCreateStatsExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 16
    sget-object v0, Lorg/ton/block/BlockCreateStatsExt;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

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
    instance-of v1, p1, Lorg/ton/block/BlockCreateStatsExt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/BlockCreateStatsExt;

    iget-object v1, p0, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

    iget-object p1, p1, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCounters()Lorg/ton/hashmap/HashmapAugE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/CreatorStats;",
            "Lkotlin/UInt;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block_create_stats_ext"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/ton/block/BlockCreateStatsExt;->counters:Lorg/ton/hashmap/HashmapAugE;

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

    .line 25
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
