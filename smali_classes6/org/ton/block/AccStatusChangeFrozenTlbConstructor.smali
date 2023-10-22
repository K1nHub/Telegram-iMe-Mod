.class final Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AccStatusChange.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AccStatusChange;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;->INSTANCE:Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "acst_frozen$10 = AccStatusChange;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 57
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccStatusChange;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccStatusChange;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p1, Lorg/ton/block/AccStatusChange;->FROZEN:Lorg/ton/block/AccStatusChange;

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Lorg/ton/block/AccStatusChange;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AccStatusChangeFrozenTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccStatusChange;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccStatusChange;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
