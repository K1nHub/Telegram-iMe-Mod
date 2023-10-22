.class final Lorg/ton/block/ExtBlkRefTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ExtBlkRef.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ExtBlkRef;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtBlkRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtBlkRef.kt\norg/ton/block/ExtBlkRefTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,64:1\n131#2,2:65\n86#3:67\n*S KotlinDebug\n*F\n+ 1 ExtBlkRef.kt\norg/ton/block/ExtBlkRefTlbConstructor\n*L\n47#1:65,2\n56#1:67\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ExtBlkRefTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ExtBlkRefTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ExtBlkRefTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ExtBlkRefTlbConstructor;->INSTANCE:Lorg/ton/block/ExtBlkRefTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "ext_blk_ref$_ end_lt:uint64 seq_no:uint32 root_hash:bits256 file_hash:bits256 = ExtBlkRef;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 39
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/ton/block/ExtBlkRefTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtBlkRef;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtBlkRef;
    .locals 8

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v2

    .line 58
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v4

    const/16 v0, 0x100

    .line 59
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v5

    .line 60
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v6

    .line 61
    new-instance p1, Lorg/ton/block/ExtBlkRef;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/ton/block/ExtBlkRef;-><init>(JILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lorg/ton/block/ExtBlkRef;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ExtBlkRefTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtBlkRef;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtBlkRef;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lorg/ton/block/ExtBlkRef;->getEndLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 49
    invoke-virtual {p2}, Lorg/ton/block/ExtBlkRef;->getSeqNo-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 50
    invoke-virtual {p2}, Lorg/ton/block/ExtBlkRef;->getRootHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 51
    invoke-virtual {p2}, Lorg/ton/block/ExtBlkRef;->getFileHash()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
