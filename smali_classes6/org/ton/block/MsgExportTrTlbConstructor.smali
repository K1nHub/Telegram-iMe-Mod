.class final Lorg/ton/block/MsgExportTrTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MsgExportTr.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MsgExportTr;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgExportTr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgExportTr.kt\norg/ton/block/MsgExportTrTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,49:1\n131#2:50\n132#2:55\n106#3,2:51\n106#3,2:53\n110#3:57\n14#3:58\n110#3:59\n14#3:60\n86#4:56\n*S KotlinDebug\n*F\n+ 1 MsgExportTr.kt\norg/ton/block/MsgExportTrTlbConstructor\n*L\n36#1:50\n36#1:55\n37#1:51,2\n38#1:53,2\n44#1:57\n44#1:58\n45#1:59\n45#1:60\n43#1:56\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgExportTrTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgExportTrTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/MsgExportTrTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/MsgExportTrTlbConstructor;->INSTANCE:Lorg/ton/block/MsgExportTrTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "msg_export_tr$011 out_msg:^MsgEnvelope imported:^InMsg = OutMsg;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgExportTrTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportTr;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportTr;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 45
    sget-object v1, Lorg/ton/block/InMsg;->Companion:Lorg/ton/block/InMsg$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 46
    new-instance v1, Lorg/ton/block/MsgExportTr;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/MsgExportTr;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lorg/ton/block/MsgExportTr;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgExportTrTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportTr;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportTr;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgExportTr;->getOutMsg()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 38
    sget-object v0, Lorg/ton/block/InMsg;->Companion:Lorg/ton/block/InMsg$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgExportTr;->getImported()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
