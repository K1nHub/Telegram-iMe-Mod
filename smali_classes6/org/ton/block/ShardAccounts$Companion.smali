.class public final Lorg/ton/block/ShardAccounts$Companion;
.super Ljava/lang/Object;
.source "ShardAccounts.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/ShardAccounts;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/ShardAccountsTlbCodec;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ShardAccountsTlbCodec;->INSTANCE:Lorg/ton/block/ShardAccountsTlbCodec;

    iput-object v0, p0, Lorg/ton/block/ShardAccounts$Companion;->$$delegate_0:Lorg/ton/block/ShardAccountsTlbCodec;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ShardAccounts$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardAccounts$Companion;->loadTlb-63rkgx0(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardAccounts;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/ShardAccounts;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardAccounts$Companion;->loadTlb-63rkgx0(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/block/ShardAccounts;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/ShardAccounts;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb-63rkgx0(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/HashmapAugE;
    .locals 1
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

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardAccounts$Companion;->$$delegate_0:Lorg/ton/block/ShardAccountsTlbCodec;

    invoke-virtual {v0, p1}, Lorg/ton/block/ShardAccountsTlbCodec;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/ton/block/ShardAccounts$Companion;->$$delegate_0:Lorg/ton/block/ShardAccountsTlbCodec;

    invoke-virtual {v0, p1}, Lorg/ton/block/ShardAccountsTlbCodec;->loadTlb-63rkgx0(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ShardAccounts;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lorg/ton/block/ShardAccounts$$serializer;->INSTANCE:Lorg/ton/block/ShardAccounts$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lorg/ton/block/ShardAccounts;

    invoke-virtual {p2}, Lorg/ton/block/ShardAccounts;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardAccounts$Companion;->storeTlb-o4VblW0(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE;)V

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

    iget-object v0, p0, Lorg/ton/block/ShardAccounts$Companion;->$$delegate_0:Lorg/ton/block/ShardAccountsTlbCodec;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/ShardAccountsTlbCodec;->storeTlb-o4VblW0(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE;)V

    return-void
.end method
