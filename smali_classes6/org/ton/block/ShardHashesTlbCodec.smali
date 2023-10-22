.class final Lorg/ton/block/ShardHashesTlbCodec;
.super Ljava/lang/Object;
.source "ShardHashes.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/ShardHashes;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardHashesTlbCodec;

.field private static final codec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/ShardHashesTlbCodec;

    invoke-direct {v0}, Lorg/ton/block/ShardHashesTlbCodec;-><init>()V

    sput-object v0, Lorg/ton/block/ShardHashesTlbCodec;->INSTANCE:Lorg/ton/block/ShardHashesTlbCodec;

    .line 28
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/BinTree;->Companion:Lorg/ton/block/BinTree$Companion;

    sget-object v3, Lorg/ton/block/ShardDescr;->Companion:Lorg/ton/block/ShardDescr$Companion;

    invoke-virtual {v2, v3}, Lorg/ton/block/BinTree$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCombinator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ShardHashesTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardHashesTlbCodec;->loadTlb-nCYawEE(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardHashesTlbCodec;->loadTlb-nCYawEE(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-nCYawEE(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashMapE;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            ")",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lorg/ton/tlb/TlbCodec$DefaultImpls;->loadTlb(Lorg/ton/tlb/TlbCodec;Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardHashes;

    invoke-virtual {p1}, Lorg/ton/block/ShardHashes;->unbox-impl()Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-nCYawEE(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lorg/ton/block/ShardHashesTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/HashMapE;

    invoke-static {p1}, Lorg/ton/block/ShardHashes;->constructor-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lorg/ton/block/ShardHashes;

    invoke-virtual {p2}, Lorg/ton/block/ShardHashes;->unbox-impl()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardHashesTlbCodec;->storeTlb-ZFAh1YI(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashMapE;)V

    return-void
.end method

.method public storeTlb-ZFAh1YI(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashMapE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lorg/ton/block/ShardHashesTlbCodec;->codec:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
