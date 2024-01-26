.class public final Lorg/ton/block/CreatorStats;
.super Ljava/lang/Object;
.source "CreatorStats.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/CreatorStats$$serializer;,
        Lorg/ton/block/CreatorStats$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreatorStats.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatorStats.kt\norg/ton/block/CreatorStats\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,44:1\n82#2,3:45\n*S KotlinDebug\n*F\n+ 1 CreatorStats.kt\norg/ton/block/CreatorStats\n*L\n17#1:45,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/CreatorStats$Companion;


# instance fields
.field private final mcBlocks:Lorg/ton/block/Counters;

.field private final shardBlocks:Lorg/ton/block/Counters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/CreatorStats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/CreatorStats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/CreatorStats;->Companion:Lorg/ton/block/CreatorStats$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/Counters;Lorg/ton/block/Counters;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/block/CreatorStats$$serializer;->INSTANCE:Lorg/ton/block/CreatorStats$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/CreatorStats$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    iput-object p3, p0, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Counters;Lorg/ton/block/Counters;)V
    .locals 1

    const-string v0, "mcBlocks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shardBlocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    .line 15
    iput-object p2, p0, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/CreatorStats;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 11
    sget-object v0, Lorg/ton/block/Counters$$serializer;->INSTANCE:Lorg/ton/block/Counters$$serializer;

    iget-object v1, p0, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    const/4 v1, 0x1

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
    instance-of v1, p1, Lorg/ton/block/CreatorStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/CreatorStats;

    iget-object v1, p0, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    iget-object v3, p1, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    iget-object p1, p1, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMcBlocks()Lorg/ton/block/Counters;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    return-object v0
.end method

.method public final getShardBlocks()Lorg/ton/block/Counters;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    invoke-virtual {v0}, Lorg/ton/block/Counters;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    invoke-virtual {v1}, Lorg/ton/block/Counters;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/ton/block/CreatorStats;->mcBlocks:Lorg/ton/block/Counters;

    const-string v2, "mc_blocks"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 19
    iget-object v1, p0, Lorg/ton/block/CreatorStats;->shardBlocks:Lorg/ton/block/Counters;

    const-string v2, "shard_blocks"

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

    .line 22
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
