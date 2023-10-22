.class final Lorg/ton/block/ShardAccountsTlbCodec;
.super Ljava/lang/Object;
.source "ShardAccounts.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/ShardAccounts;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardAccountsTlbCodec;

.field private static final codec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/ShardAccountsTlbCodec;

    invoke-direct {v0}, Lorg/ton/block/ShardAccountsTlbCodec;-><init>()V

    sput-object v0, Lorg/ton/block/ShardAccountsTlbCodec;->INSTANCE:Lorg/ton/block/ShardAccountsTlbCodec;

    .line 27
    sget-object v0, Lorg/ton/hashmap/HashmapAugE;->Companion:Lorg/ton/hashmap/HashmapAugE$Companion;

    sget-object v1, Lorg/ton/block/ShardAccount;->Companion:Lorg/ton/block/ShardAccount$Companion;

    sget-object v2, Lorg/ton/block/DepthBalanceInfo;->Companion:Lorg/ton/block/DepthBalanceInfo$Companion;

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v1, v2}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ShardAccountsTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardAccountsTlbCodec;->loadTlb-63rkgx0(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardAccounts;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/ShardAccounts;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardAccountsTlbCodec;->loadTlb-63rkgx0(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardAccounts;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/ShardAccounts;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-63rkgx0(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashmapAugE;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            ")",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lorg/ton/tlb/TlbCodec$DefaultImpls;->loadTlb(Lorg/ton/tlb/TlbCodec;Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardAccounts;

    invoke-virtual {p1}, Lorg/ton/block/ShardAccounts;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-63rkgx0(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lorg/ton/block/ShardAccountsTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {p1}, Lorg/ton/block/ShardAccounts;->constructor-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lorg/ton/block/ShardAccounts;

    invoke-virtual {p2}, Lorg/ton/block/ShardAccounts;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardAccountsTlbCodec;->storeTlb-o4VblW0(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE;)V

    return-void
.end method

.method public storeTlb-o4VblW0(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lorg/ton/block/ShardAccountsTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
