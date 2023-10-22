.class final Lorg/ton/block/MsgExportNewTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MsgExportNew.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MsgExportNew;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgExportNew.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgExportNew.kt\norg/ton/block/MsgExportNewTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,48:1\n131#2:49\n132#2:54\n106#3,2:50\n106#3,2:52\n110#3:56\n14#3:57\n110#3:58\n14#3:59\n86#4:55\n*S KotlinDebug\n*F\n+ 1 MsgExportNew.kt\norg/ton/block/MsgExportNewTlbConstructor\n*L\n35#1:49\n35#1:54\n36#1:50,2\n37#1:52,2\n43#1:56\n43#1:57\n44#1:58\n44#1:59\n42#1:55\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgExportNewTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgExportNewTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/MsgExportNewTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/MsgExportNewTlbConstructor;->INSTANCE:Lorg/ton/block/MsgExportNewTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "msg_export_new$001 out_msg:^MsgEnvelope transaction:^Transaction = OutMsg;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgExportNewTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportNew;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgExportNew;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 44
    sget-object v1, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 45
    new-instance v1, Lorg/ton/block/MsgExportNew;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/MsgExportNew;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lorg/ton/block/MsgExportNew;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgExportNewTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportNew;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgExportNew;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgExportNew;->getOutMsg()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 37
    sget-object v0, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgExportNew;->getTransaction()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
