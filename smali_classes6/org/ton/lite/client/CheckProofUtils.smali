.class public final Lorg/ton/lite/client/CheckProofUtils;
.super Ljava/lang/Object;
.source "CheckProofUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckProofUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckProofUtils.kt\norg/ton/lite/client/CheckProofUtils\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n*L\n1#1,69:1\n20#2:70\n10#2:71\n10#3:72\n*S KotlinDebug\n*F\n+ 1 CheckProofUtils.kt\norg/ton/lite/client/CheckProofUtils\n*L\n21#1:70\n21#1:71\n43#1:72\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/client/CheckProofUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/lite/client/CheckProofUtils;

    invoke-direct {v0}, Lorg/ton/lite/client/CheckProofUtils;-><init>()V

    sput-object v0, Lorg/ton/lite/client/CheckProofUtils;->INSTANCE:Lorg/ton/lite/client/CheckProofUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkAccountProof([BLorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lorg/ton/cell/Cell;)Lorg/ton/lite/client/internal/FullAccountState;
    .locals 8

    const-string v0, "proof"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shardBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/ton/block/Account;->Companion:Lorg/ton/block/Account$Companion;

    .line 10
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, p4, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 45
    invoke-static {p1}, Lorg/ton/boc/BagOfCellsKt;->BagOfCells([B)Lorg/ton/boc/BagOfCells;

    move-result-object p1

    invoke-interface {p1}, Lorg/ton/boc/BagOfCells;->getRoots()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_5

    .line 50
    sget-object v1, Lorg/ton/block/MerkleProof;->Companion:Lorg/ton/block/MerkleProof$Companion;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ton/cell/Cell;

    const/4 v6, 0x0

    invoke-static {v1, v5, v4, v2, v6}, Lorg/ton/block/MerkleProof$Companion;->virtualize$default(Lorg/ton/block/MerkleProof$Companion;Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/cell/Cell;

    move-result-object v5

    invoke-virtual {p0, v5, p2, v3}, Lorg/ton/lite/client/CheckProofUtils;->checkBlockHeaderProof(Lorg/ton/cell/Cell;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Z)Lorg/ton/lite/client/internal/BlockHeaderResult;

    move-result-object v5

    .line 52
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/cell/Cell;

    invoke-static {v1, p1, v4, v2, v6}, Lorg/ton/block/MerkleProof$Companion;->virtualize$default(Lorg/ton/block/MerkleProof$Companion;Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/cell/Cell;

    move-result-object p1

    .line 53
    invoke-static {p1, v4, v3, v6}, Lorg/ton/cell/Cell$DefaultImpls;->hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object v1

    .line 54
    invoke-virtual {v5}, Lorg/ton/lite/client/internal/BlockHeaderResult;->getStateHash()Lorg/ton/bitstring/BitString;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v7, ", actual: "

    if-eqz v2, :cond_4

    .line 58
    sget-object v1, Lorg/ton/block/ShardState;->Companion:Lorg/ton/block/ShardState$Companion;

    invoke-virtual {v1, p1}, Lorg/ton/block/ShardState$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ShardState;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type org.ton.block.ShardStateUnsplit"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/ton/block/ShardStateUnsplit;

    .line 59
    invoke-virtual {p1}, Lorg/ton/block/ShardStateUnsplit;->getAccounts()Lorg/ton/tlb/CellRef;

    move-result-object p1

    invoke-interface {p1}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardAccounts;

    invoke-virtual {p1}, Lorg/ton/block/ShardAccounts;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-virtual {p3}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/ton/hashmap/HashmapAugE;->get(Lorg/ton/bitstring/BitString;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardAccount;

    goto :goto_1

    :cond_1
    move-object p1, v6

    :goto_1
    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p1}, Lorg/ton/block/ShardAccount;->getAccount()Lorg/ton/tlb/CellRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/tlb/CellRef;->hash()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-static {p4, v4, v3, v6}, Lorg/ton/cell/Cell$DefaultImpls;->hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    new-instance p4, Lorg/ton/lite/client/internal/FullAccountState;

    new-instance v1, Lorg/ton/lite/client/internal/TransactionId;

    invoke-virtual {p1}, Lorg/ton/block/ShardAccount;->getLastTransHash()Lorg/ton/bitstring/BitString;

    move-result-object v2

    invoke-virtual {p1}, Lorg/ton/block/ShardAccount;->getLastTransLt-s-VKNKU()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/ton/lite/client/internal/TransactionId;-><init>(Lorg/ton/bitstring/BitString;J)V

    invoke-direct {p4, p2, p3, v1, v0}, Lorg/ton/lite/client/internal/FullAccountState;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lorg/ton/lite/client/internal/TransactionId;Lorg/ton/tlb/CellRef;)V

    return-object p4

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Account state hash mismatch, expected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/ton/block/ShardAccount;->getAccount()Lorg/ton/tlb/CellRef;

    move-result-object p1

    invoke-interface {p1}, Lorg/ton/tlb/CellRef;->hash()Lorg/ton/bitstring/BitString;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, v4, v3, v6}, Lorg/ton/cell/Cell$DefaultImpls;->hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Shard account "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not found in shard state"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid state hash, expected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/ton/lite/client/internal/BlockHeaderResult;->getStateHash()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid roots amount, expected: 2, actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final checkBlockHeaderProof(Lorg/ton/cell/Cell;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Z)Lorg/ton/lite/client/internal/BlockHeaderResult;
    .locals 7

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v0, v1, v2}, Lorg/ton/cell/Cell$DefaultImpls;->hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object v3

    .line 21
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash()Lorg/ton/tl/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object v4

    .line 20
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x8

    .line 10
    sget-object v6, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v6, v4, v5}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object v4

    .line 20
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    sget-object p2, Lorg/ton/block/Block;->Companion:Lorg/ton/block/Block$Companion;

    invoke-virtual {p2, p1}, Lorg/ton/block/Block$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/Block;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/ton/block/Block;->getInfo()Lorg/ton/tlb/CellRef;

    move-result-object p2

    invoke-interface {p2}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ton/block/BlockInfo;

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getGenUtime-pVg5ArA()I

    move-result p2

    .line 26
    invoke-virtual {p1}, Lorg/ton/block/Block;->getInfo()Lorg/ton/tlb/CellRef;

    move-result-object v3

    invoke-interface {v3}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ton/block/BlockInfo;

    invoke-virtual {v3}, Lorg/ton/block/BlockInfo;->getEndLt-s-VKNKU()J

    move-result-wide v3

    if-eqz p3, :cond_0

    .line 30
    invoke-virtual {p1}, Lorg/ton/block/Block;->getStateUpdate()Lorg/ton/tlb/CellRef;

    move-result-object p1

    invoke-static {p1, v2, v1, v2}, Lorg/ton/tlb/CellRef$DefaultImpls;->toCell$default(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;ILjava/lang/Object;)Lorg/ton/cell/Cell;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/cell/Cell;

    invoke-interface {p1, v0}, Lorg/ton/cell/Cell;->hash(I)Lorg/ton/bitstring/BitString;

    move-result-object v2

    .line 34
    :cond_0
    new-instance p1, Lorg/ton/lite/client/internal/BlockHeaderResult;

    invoke-direct {p1, p2, v3, v4, v2}, Lorg/ton/lite/client/internal/BlockHeaderResult;-><init>(IJLorg/ton/bitstring/BitString;)V

    return-object p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid hash for block: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", expected: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash()Lorg/ton/tl/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
