.class final Lorg/ton/block/MsgDiscardTrTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MsgDiscardTr.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MsgDiscardTr;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgDiscardTr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgDiscardTr.kt\norg/ton/block/MsgDiscardTrTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,55:1\n131#2:56\n132#2:62\n106#3,2:57\n110#3:64\n14#3:65\n59#4,3:59\n52#4:66\n86#5:63\n*S KotlinDebug\n*F\n+ 1 MsgDiscardTr.kt\norg/ton/block/MsgDiscardTrTlbConstructor\n*L\n38#1:56\n38#1:62\n39#1:57,2\n48#1:64\n48#1:65\n41#1:59,3\n50#1:66\n47#1:63\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgDiscardTrTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgDiscardTrTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/MsgDiscardTrTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/MsgDiscardTrTlbConstructor;->INSTANCE:Lorg/ton/block/MsgDiscardTrTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "msg_discard_tr$111 in_msg:^MsgEnvelope transaction_id:uint64 fwd_fee:Coins proof_delivered:^Cell = InMsg;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgDiscardTrTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgDiscardTr;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgDiscardTr;
    .locals 10

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v4

    .line 49
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v5

    .line 50
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    move-object v7, v0

    check-cast v7, Lorg/ton/block/Coins;

    .line 51
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v8

    .line 52
    new-instance p1, Lorg/ton/block/MsgDiscardTr;

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/ton/block/MsgDiscardTr;-><init>(Lorg/ton/tlb/CellRef;JLorg/ton/block/Coins;Lorg/ton/cell/Cell;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lorg/ton/block/MsgDiscardTr;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgDiscardTrTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgDiscardTr;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgDiscardTr;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgDiscardTr;->getInMsg()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 40
    invoke-virtual {p2}, Lorg/ton/block/MsgDiscardTr;->getTransactionId-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 41
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgDiscardTr;->getFwdFee()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p2}, Lorg/ton/block/MsgDiscardTr;->getProofDelivered()Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
