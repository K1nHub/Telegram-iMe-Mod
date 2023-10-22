.class public final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;
.super Ljava/lang/Object;
.source "WalletV3R2Contract.kt"

# interfaces
.implements Lorg/ton/contract/wallet/WalletContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/contract/wallet/WalletContract<",
        "Lorg/ton/cell/Cell;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletV3R2Contract.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletV3R2Contract.kt\ncom/iMe/storage/data/manager/ton/WalletV3R2Contract\n+ 2 base64.kt\norg/ton/crypto/Base64Kt\n*L\n1#1,244:1\n10#2:245\n*S KotlinDebug\n*F\n+ 1 WalletV3R2Contract.kt\ncom/iMe/storage/data/manager/ton/WalletV3R2Contract\n*L\n111#1:245\n*E\n"
.end annotation


# static fields
.field public static final CODE:Lorg/ton/cell/Cell;

.field public static final Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;


# instance fields
.field private final address:Lorg/ton/block/MsgAddressInt;

.field private final state:Lorg/ton/block/AccountState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->Companion:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    .line 10
    sget-object v2, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const-string v3, "te6cckEBAQEAcQAA3v8AIN0gggFMl7ohggEznLqxn3Gw7UTQ0x/THzHXC//jBOCk8mCDCNcYINMf0x/TH/gjE7vyY+1E0NMf0x/T/9FRMrryoVFEuvKiBPkBVBBV+RDyo/gAkyDXSpbTB9QC+wDo0QGkyMsfyx/L/8ntVBC9ba0="

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B

    move-result-object v0

    .line 110
    invoke-static {v0}, Lorg/ton/boc/BagOfCellsKt;->BagOfCells([B)Lorg/ton/boc/BagOfCells;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/cell/Cell;

    sput-object v0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->CODE:Lorg/ton/cell/Cell;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/AccountInfo;)V
    .locals 1

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lorg/ton/block/AccountInfo;->addr()Lorg/ton/block/MsgAddressInt;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ton/block/AccountInfo;->storage()Lorg/ton/block/AccountStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ton/block/AccountStorage;->state()Lorg/ton/block/AccountState;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;-><init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/AccountState;)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/AccountState;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->address:Lorg/ton/block/MsgAddressInt;

    .line 47
    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->state:Lorg/ton/block/AccountState;

    return-void
.end method


# virtual methods
.method public getAddress()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->address:Lorg/ton/block/MsgAddressInt;

    return-object v0
.end method

.method public getData()Lorg/ton/cell/Cell;
    .locals 1

    .line 45
    invoke-static {p0}, Lorg/ton/contract/wallet/WalletContract$DefaultImpls;->getData(Lorg/ton/contract/wallet/WalletContract;)Lorg/ton/cell/Cell;

    move-result-object v0

    return-object v0
.end method

.method public final getSeqno()I
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getData()Lorg/ton/cell/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object v0

    const/16 v1, 0x20

    .line 66
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->preloadInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()Lorg/ton/block/AccountState;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->state:Lorg/ton/block/AccountState;

    return-object v0
.end method

.method public final getSubWalletId()I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->getData()Lorg/ton/cell/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object v0

    const/16 v1, 0x20

    .line 70
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->skipBits(I)Lorg/ton/cell/CellSlice;

    .line 71
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->preloadInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendExternalMessage(Lorg/ton/lite/api/LiteApi;Lorg/ton/cell/Cell;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/cell/Cell;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2, p3}, Lorg/ton/contract/wallet/WalletContract$DefaultImpls;->sendExternalMessage(Lorg/ton/contract/wallet/WalletContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/cell/Cell;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendExternalMessage(Lorg/ton/lite/api/LiteApi;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/block/Message<",
            "TX;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ton/contract/wallet/WalletContract$DefaultImpls;->sendExternalMessage(Lorg/ton/contract/wallet/WalletContract;Lorg/ton/lite/api/LiteApi;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final transfer(Lorg/ton/lite/api/LiteApi;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/api/pk/PrivateKeyEd25519;",
            "Lkotlinx/datetime/Instant;",
            "[",
            "Lorg/ton/contract/wallet/WalletTransfer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 90
    new-instance v7, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$transfer$3;-><init>(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lorg/ton/lite/api/LiteApi;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, p5}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final transfer(Lorg/ton/lite/api/LiteApi;Lorg/ton/api/pk/PrivateKeyEd25519;[Lorg/ton/contract/wallet/WalletTransfer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/api/pk/PrivateKeyEd25519;",
            "[",
            "Lorg/ton/contract/wallet/WalletTransfer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 83
    sget-object v0, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {v0}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object v0

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v2, 0x3c

    invoke-static {v2, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkotlinx/datetime/Instant;->plus-LRDsOJo(J)Lkotlinx/datetime/Instant;

    move-result-object v6

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, [Lorg/ton/contract/wallet/WalletTransfer;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract;->transfer(Lorg/ton/lite/api/LiteApi;Lorg/ton/api/pk/PrivateKeyEd25519;Lkotlinx/datetime/Instant;[Lorg/ton/contract/wallet/WalletTransfer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
