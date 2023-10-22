.class final Lorg/ton/block/MsgExportDeqShortTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MsgExportDeqShort.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MsgExportDeqShort;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgExportDeqShort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgExportDeqShort.kt\norg/ton/block/MsgExportDeqShortTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,60:1\n131#2,2:61\n86#3:63\n*S KotlinDebug\n*F\n+ 1 MsgExportDeqShort.kt\norg/ton/block/MsgExportDeqShortTlbConstructor\n*L\n43#1:61,2\n52#1:63\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgExportDeqShortTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgExportDeqShortTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/MsgExportDeqShortTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/MsgExportDeqShortTlbConstructor;->INSTANCE:Lorg/ton/block/MsgExportDeqShortTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "msg_export_deq_short$1101 msg_env_hash:bits256 next_workchain:int32 next_addr_pfx:uint64 import_block_lt:uint64 = OutMsg;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 35
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgExportDeqShortTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportDeqShort;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportDeqShort;
    .locals 9

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 53
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v2

    const/16 v0, 0x20

    .line 54
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadTinyInt(I)J

    move-result-wide v0

    long-to-int v3, v0

    .line 55
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v4

    .line 56
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v6

    .line 57
    new-instance p1, Lorg/ton/block/MsgExportDeqShort;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/ton/block/MsgExportDeqShort;-><init>(Lorg/ton/bitstring/BitString;IJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lorg/ton/block/MsgExportDeqShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgExportDeqShortTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportDeqShort;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportDeqShort;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/MsgExportDeqShort;->getMsgEnvHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 45
    invoke-virtual {p2}, Lorg/ton/block/MsgExportDeqShort;->getNextWorkchain()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 46
    invoke-virtual {p2}, Lorg/ton/block/MsgExportDeqShort;->getNextAddrPfx-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 47
    invoke-virtual {p2}, Lorg/ton/block/MsgExportDeqShort;->getImportBlockLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    return-void
.end method
