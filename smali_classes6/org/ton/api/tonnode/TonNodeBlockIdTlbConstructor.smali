.class final Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "TonNodeBlockId.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/tonnode/TonNodeBlockId;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;

    invoke-direct {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tonNode.blockId workchain:int shard:long seqno:int = tonNode.BlockId"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 71
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockId;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockId;
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    .line 76
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readLong()J

    move-result-wide v1

    .line 77
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result p1

    .line 78
    new-instance v3, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;

    invoke-direct {v3, v0, v1, v2, p1}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;-><init>(IJI)V

    return-object v3
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p2, Lorg/ton/api/tonnode/TonNodeBlockId;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdTlbConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockId;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockId;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface {p2}, Lorg/ton/api/tonnode/TonNodeBlockId;->getWorkchain()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 83
    invoke-interface {p2}, Lorg/ton/api/tonnode/TonNodeBlockId;->getShard()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/ton/tl/TlWriter;->writeLong(J)V

    .line 84
    invoke-interface {p2}, Lorg/ton/api/tonnode/TonNodeBlockId;->getSeqno()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    return-void
.end method
