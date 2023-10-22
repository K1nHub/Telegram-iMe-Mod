.class public final Lorg/ton/block/ShardHashes$Companion;
.super Ljava/lang/Object;
.source "ShardHashes.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardHashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/ShardHashes;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/ShardHashesTlbCodec;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ShardHashesTlbCodec;->INSTANCE:Lorg/ton/block/ShardHashesTlbCodec;

    iput-object v0, p0, Lorg/ton/block/ShardHashes$Companion;->$$delegate_0:Lorg/ton/block/ShardHashesTlbCodec;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ShardHashes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardHashes$Companion;->loadTlb-nCYawEE(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardHashes$Companion;->loadTlb-nCYawEE(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-nCYawEE(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashMapE;
    .locals 1
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

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardHashes$Companion;->$$delegate_0:Lorg/ton/block/ShardHashesTlbCodec;

    invoke-virtual {v0, p1}, Lorg/ton/block/ShardHashesTlbCodec;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/ton/block/ShardHashes$Companion;->$$delegate_0:Lorg/ton/block/ShardHashesTlbCodec;

    invoke-virtual {v0, p1}, Lorg/ton/block/ShardHashesTlbCodec;->loadTlb-nCYawEE(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashMapE;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ShardHashes;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/ton/block/ShardHashes$$serializer;->INSTANCE:Lorg/ton/block/ShardHashes$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lorg/ton/block/ShardHashes;

    invoke-virtual {p2}, Lorg/ton/block/ShardHashes;->unbox-impl()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardHashes$Companion;->storeTlb-ZFAh1YI(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashMapE;)V

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

    iget-object v0, p0, Lorg/ton/block/ShardHashes$Companion;->$$delegate_0:Lorg/ton/block/ShardHashesTlbCodec;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/ShardHashesTlbCodec;->storeTlb-ZFAh1YI(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashMapE;)V

    return-void
.end method
