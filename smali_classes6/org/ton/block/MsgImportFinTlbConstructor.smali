.class final Lorg/ton/block/MsgImportFinTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MsgImportFin.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MsgImportFin;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgImportFin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgImportFin.kt\norg/ton/block/MsgImportFinTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,52:1\n131#2:53\n132#2:61\n106#3,2:54\n106#3,2:56\n110#3:63\n14#3:64\n110#3:65\n14#3:66\n59#4,3:58\n52#4:67\n86#5:62\n*S KotlinDebug\n*F\n+ 1 MsgImportFin.kt\norg/ton/block/MsgImportFinTlbConstructor\n*L\n37#1:53\n37#1:61\n38#1:54,2\n39#1:56,2\n46#1:63\n46#1:64\n47#1:65\n47#1:66\n40#1:58,3\n48#1:67\n45#1:62\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/MsgImportFinTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgImportFinTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/MsgImportFinTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/MsgImportFinTlbConstructor;->INSTANCE:Lorg/ton/block/MsgImportFinTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "msg_import_fin$100 in_msg:^MsgEnvelope transaction:^Transaction fwd_fee:Coins = InMsg;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 31
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgImportFinTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgImportFin;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgImportFin;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 47
    sget-object v1, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v3

    .line 14
    invoke-virtual {v2, v3, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 48
    sget-object v2, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    check-cast p1, Lorg/ton/block/Coins;

    .line 49
    new-instance v2, Lorg/ton/block/MsgImportFin;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/MsgImportFin;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Coins;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/MsgImportFin;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgImportFinTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgImportFin;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgImportFin;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/ton/block/MsgEnvelope;->Companion:Lorg/ton/block/MsgEnvelope$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgImportFin;->getInMsg()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 39
    sget-object v0, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgImportFin;->getTransaction()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 40
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/MsgImportFin;->getFwdFee()Lorg/ton/block/Coins;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
