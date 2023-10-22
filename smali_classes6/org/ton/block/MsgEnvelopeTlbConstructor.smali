.class final Lorg/ton/block/MsgEnvelopeTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MsgEnvelope.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MsgEnvelope;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgEnvelope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgEnvelope.kt\norg/ton/block/MsgEnvelopeTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,59:1\n131#2:60\n132#2:72\n59#3,3:61\n59#3,3:64\n59#3,3:67\n52#3:74\n52#3:75\n52#3:76\n106#4,2:70\n110#4:77\n14#4:78\n86#5:73\n*S KotlinDebug\n*F\n+ 1 MsgEnvelope.kt\norg/ton/block/MsgEnvelopeTlbConstructor\n*L\n42#1:60\n42#1:72\n43#1:61,3\n44#1:64,3\n45#1:67,3\n52#1:74\n53#1:75\n54#1:76\n46#1:70,2\n55#1:77\n55#1:78\n51#1:73\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgEnvelopeTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgEnvelopeTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/MsgEnvelopeTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/MsgEnvelopeTlbConstructor;->INSTANCE:Lorg/ton/block/MsgEnvelopeTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "msg_envelope#4 cur_addr:IntermediateAddress next_addr:IntermediateAddress fwd_fee_remaining:Coins msg:^(Message Any) = MsgEnvelope;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 34
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgEnvelopeTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgEnvelope;
    .locals 5

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lorg/ton/block/IntermediateAddress;->Companion:Lorg/ton/block/IntermediateAddress$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Lorg/ton/block/IntermediateAddress;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Lorg/ton/block/IntermediateAddress;

    .line 54
    sget-object v2, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    check-cast v2, Lorg/ton/block/Coins;

    .line 55
    sget-object v3, Lorg/ton/block/Message;->Companion:Lorg/ton/block/Message$Companion;

    invoke-virtual {v3}, Lorg/ton/block/Message$Companion;->getAny()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    sget-object v4, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v4, p1, v3}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 56
    new-instance v3, Lorg/ton/block/MsgEnvelope;

    invoke-direct {v3, v1, v0, v2, p1}, Lorg/ton/block/MsgEnvelope;-><init>(Lorg/ton/block/IntermediateAddress;Lorg/ton/block/IntermediateAddress;Lorg/ton/block/Coins;Lorg/ton/tlb/CellRef;)V

    return-object v3
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/block/MsgEnvelope;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgEnvelopeTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgEnvelope;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgEnvelope;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/ton/block/IntermediateAddress;->Companion:Lorg/ton/block/IntermediateAddress$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgEnvelope;->getCurAddr()Lorg/ton/block/IntermediateAddress;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/MsgEnvelope;->getNextAddr()Lorg/ton/block/IntermediateAddress;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgEnvelope;->getFwdFeeRemaining()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lorg/ton/block/Message;->Companion:Lorg/ton/block/Message$Companion;

    invoke-virtual {v0}, Lorg/ton/block/Message$Companion;->getAny()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/block/MsgEnvelope;->getMsg()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
