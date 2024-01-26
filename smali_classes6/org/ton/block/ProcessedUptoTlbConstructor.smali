.class final Lorg/ton/block/ProcessedUptoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ProcessedUpto.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ProcessedUpto;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProcessedUpto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessedUpto.kt\norg/ton/block/ProcessedUptoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,49:1\n131#2,2:50\n86#3:52\n*S KotlinDebug\n*F\n+ 1 ProcessedUpto.kt\norg/ton/block/ProcessedUptoTlbConstructor\n*L\n36#1:50,2\n43#1:52\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ProcessedUptoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ProcessedUptoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ProcessedUptoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ProcessedUptoTlbConstructor;->INSTANCE:Lorg/ton/block/ProcessedUptoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "processed_upto$_ last_msg_lt:uint64 last_msg_hash:bits256 = ProcessedUpto;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 30
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/block/ProcessedUptoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ProcessedUpto;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ProcessedUpto;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v0

    const/16 v2, 0x100

    .line 45
    invoke-interface {p1, v2}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 46
    new-instance v2, Lorg/ton/block/ProcessedUpto;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lorg/ton/block/ProcessedUpto;-><init>(JLorg/ton/bitstring/BitString;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/ton/block/ProcessedUpto;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ProcessedUptoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ProcessedUpto;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ProcessedUpto;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Lorg/ton/block/ProcessedUpto;->getLastMsgLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 38
    invoke-virtual {p2}, Lorg/ton/block/ProcessedUpto;->getLastMsgHash()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
