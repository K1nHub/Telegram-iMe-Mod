.class public final Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;
.super Ljava/lang/Object;
.source "StakingDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/i_staking/datasource/StakingDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingDataSourceImpl.kt\ncom/iMe/i_staking/datasource/StakingDataSourceImpl\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,115:1\n15#2:116\n15#2:117\n15#2:118\n15#2:119\n8#3:120\n18#4:121\n*S KotlinDebug\n*F\n+ 1 StakingDataSourceImpl.kt\ncom/iMe/i_staking/datasource/StakingDataSourceImpl\n*L\n33#1:116\n46#1:117\n59#1:118\n72#1:119\n93#1:120\n93#1:121\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final stakingApi:Lcom/iMe/i_staking/StakingApi;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/i_staking/StakingApi;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 26
    iput-object p2, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 27
    iput-object p3, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getStakingApi$p(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;)Lcom/iMe/i_staking/StakingApi;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    return-object p0
.end method

.method private final createTransactionByType(Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lorg/web3j/crypto/RawTransaction;
    .locals 8

    .line 101
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "{\n                RawTra\u2026          )\n            }"

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    .line 104
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getTo()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 102
    invoke-static {v0, v2, v3, p1, v4}, Lorg/web3j/crypto/RawTransaction;->createEtherTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 101
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v4

    .line 109
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getTo()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-static/range {v2 .. v7}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    .line 106
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public sendApprovalExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 15
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendClaimExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 15
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendDepositExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 15
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendDepositExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendDepositExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendWithdrawExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 15
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendWithdrawExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendWithdrawExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;

    if-eqz v0, :cond_1

    .line 88
    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;

    invoke-direct {p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->createTransactionByType(Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lorg/web3j/crypto/RawTransaction;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;->getChainId()J

    move-result-wide v1

    .line 90
    iget-object p1, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object p1

    .line 87
    :goto_0
    invoke-static {v0, v1, v2, p1}, Lorg/web3j/crypto/TransactionEncoder;->signMessage(Lorg/web3j/crypto/RawTransaction;JLorg/web3j/crypto/Credentials;)[B

    move-result-object p1

    .line 93
    invoke-static {p1}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect staking args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
