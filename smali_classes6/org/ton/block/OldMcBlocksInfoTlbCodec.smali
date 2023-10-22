.class final Lorg/ton/block/OldMcBlocksInfoTlbCodec;
.super Ljava/lang/Object;
.source "OldMcBlocksInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/OldMcBlocksInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/OldMcBlocksInfoTlbCodec;

.field private static final codec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/OldMcBlocksInfoTlbCodec;

    invoke-direct {v0}, Lorg/ton/block/OldMcBlocksInfoTlbCodec;-><init>()V

    sput-object v0, Lorg/ton/block/OldMcBlocksInfoTlbCodec;->INSTANCE:Lorg/ton/block/OldMcBlocksInfoTlbCodec;

    .line 27
    sget-object v0, Lorg/ton/hashmap/HashmapAugE;->Companion:Lorg/ton/hashmap/HashmapAugE$Companion;

    sget-object v1, Lorg/ton/block/KeyExtBlkRef;->Companion:Lorg/ton/block/KeyExtBlkRef$Companion;

    sget-object v2, Lorg/ton/block/KeyMaxLt;->Companion:Lorg/ton/block/KeyMaxLt$Companion;

    const/16 v3, 0x20

    invoke-virtual {v0, v3, v1, v2}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/OldMcBlocksInfoTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

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
    invoke-virtual {p0, p1}, Lorg/ton/block/OldMcBlocksInfoTlbCodec;->loadTlb-a38pvyo(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/OldMcBlocksInfo;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/OldMcBlocksInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/ton/block/OldMcBlocksInfoTlbCodec;->loadTlb-a38pvyo(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/OldMcBlocksInfo;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/OldMcBlocksInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-a38pvyo(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashmapAugE;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            ")",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1}, Lorg/ton/tlb/TlbCodec$DefaultImpls;->loadTlb(Lorg/ton/tlb/TlbCodec;Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/OldMcBlocksInfo;

    invoke-virtual {p1}, Lorg/ton/block/OldMcBlocksInfo;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-a38pvyo(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lorg/ton/block/OldMcBlocksInfoTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {p1}, Lorg/ton/block/OldMcBlocksInfo;->constructor-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lorg/ton/block/OldMcBlocksInfo;

    invoke-virtual {p2}, Lorg/ton/block/OldMcBlocksInfo;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/OldMcBlocksInfoTlbCodec;->storeTlb-t0Hynxs(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE;)V

    return-void
.end method

.method public storeTlb-t0Hynxs(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lorg/ton/block/OldMcBlocksInfoTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
