.class final Lorg/ton/block/MsgExportExtTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MsgExportExt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MsgExportExt;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgExportExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgExportExt.kt\norg/ton/block/MsgExportExtTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,47:1\n131#2:48\n132#2:53\n106#3,2:49\n106#3,2:51\n110#3:55\n14#3:56\n110#3:57\n14#3:58\n86#4:54\n*S KotlinDebug\n*F\n+ 1 MsgExportExt.kt\norg/ton/block/MsgExportExtTlbConstructor\n*L\n34#1:48\n34#1:53\n35#1:49,2\n36#1:51,2\n42#1:55\n42#1:56\n43#1:57\n43#1:58\n41#1:54\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgExportExtTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgExportExtTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/MsgExportExtTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/MsgExportExtTlbConstructor;->INSTANCE:Lorg/ton/block/MsgExportExtTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "msg_export_ext$000 msg:^(Message Any) transaction:^Transaction = OutMsg;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 28
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgExportExtTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportExt;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportExt;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/ton/block/Message;->Companion:Lorg/ton/block/Message$Companion;

    invoke-virtual {v0}, Lorg/ton/block/Message$Companion;->getAny()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 43
    sget-object v1, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 44
    new-instance v1, Lorg/ton/block/MsgExportExt;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/MsgExportExt;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/ton/block/MsgExportExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgExportExtTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportExt;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportExt;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lorg/ton/block/Message;->Companion:Lorg/ton/block/Message$Companion;

    invoke-virtual {v0}, Lorg/ton/block/Message$Companion;->getAny()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/block/MsgExportExt;->getMsg()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 36
    sget-object v0, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgExportExt;->getTransaction()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
