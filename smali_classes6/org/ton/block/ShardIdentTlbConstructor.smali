.class final Lorg/ton/block/ShardIdentTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardIdent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardIdent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardIdent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardIdent.kt\norg/ton/block/ShardIdentTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,54:1\n131#2,2:55\n86#3:57\n*S KotlinDebug\n*F\n+ 1 ShardIdent.kt\norg/ton/block/ShardIdentTlbConstructor\n*L\n39#1:55,2\n47#1:57\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardIdentTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ShardIdentTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardIdentTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardIdentTlbConstructor;->INSTANCE:Lorg/ton/block/ShardIdentTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "shard_ident$00 shard_pfx_bits:(#<= 60) workchain_id:int32 shard_prefix:uint64 = ShardIdent;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 32
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardIdentTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardIdent;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardIdent;
    .locals 7

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 48
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUIntLeq(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/16 v0, 0x20

    .line 49
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 50
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v4

    .line 51
    new-instance p1, Lorg/ton/block/ShardIdent;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/block/ShardIdent;-><init>(IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lorg/ton/block/ShardIdent;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardIdentTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardIdent;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardIdent;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lorg/ton/block/ShardIdent;->getShardPfxBits()I

    move-result v0

    const/16 v1, 0x3c

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUIntLeq(II)Lorg/ton/cell/CellBuilder;

    .line 41
    invoke-virtual {p2}, Lorg/ton/block/ShardIdent;->getWorkchainId()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 42
    invoke-virtual {p2}, Lorg/ton/block/ShardIdent;->getShardPrefix-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    return-void
.end method
