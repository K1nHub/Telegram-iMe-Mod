.class final Lorg/ton/block/EnqueuedMsgTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "EnqueuedMsg.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/EnqueuedMsg;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnqueuedMsg.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnqueuedMsg.kt\norg/ton/block/EnqueuedMsgTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,45:1\n131#2:46\n132#2:49\n106#3,2:47\n110#3:51\n14#3:52\n86#4:50\n*S KotlinDebug\n*F\n+ 1 EnqueuedMsg.kt\norg/ton/block/EnqueuedMsgTlbConstructor\n*L\n32#1:46\n32#1:49\n34#1:47,2\n41#1:51\n41#1:52\n39#1:50\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/EnqueuedMsgTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/EnqueuedMsgTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/EnqueuedMsgTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/EnqueuedMsgTlbConstructor;->INSTANCE:Lorg/ton/block/EnqueuedMsgTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "_ enqueued_lt:uint64 out_msg:^MsgEnvelope = EnqueuedMsg;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 26
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/ton/block/EnqueuedMsgTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/EnqueuedMsg;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/EnqueuedMsg;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v0

    .line 41
    sget-object v2, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, p1, v2}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 42
    new-instance v2, Lorg/ton/block/EnqueuedMsg;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lorg/ton/block/EnqueuedMsg;-><init>(JLorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lorg/ton/block/EnqueuedMsg;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/EnqueuedMsgTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/EnqueuedMsg;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/EnqueuedMsg;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lorg/ton/block/EnqueuedMsg;->getEnqueuedLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 34
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    invoke-virtual {p2}, Lorg/ton/block/EnqueuedMsg;->getOutMsg()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
