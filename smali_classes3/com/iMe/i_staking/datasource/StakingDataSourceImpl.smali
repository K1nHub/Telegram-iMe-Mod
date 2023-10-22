.class public final Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;
.super Ljava/lang/Object;
.source "StakingDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/i_staking/datasource/StakingDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingDataSourceImpl.kt\ncom/iMe/i_staking/datasource/StakingDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,116:1\n16#2,7:117\n16#2,7:124\n16#2,7:131\n16#2,7:138\n18#3:145\n18#4:146\n*S KotlinDebug\n*F\n+ 1 StakingDataSourceImpl.kt\ncom/iMe/i_staking/datasource/StakingDataSourceImpl\n*L\n33#1:117,7\n49#1:124,7\n65#1:131,7\n81#1:138,7\n112#1:145\n112#1:146\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final stakingApi:Lcom/iMe/i_staking/StakingApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/i_staking/StakingApi;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 25
    iput-object p2, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 26
    iput-object p3, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getStakingApi$p(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;)Lcom/iMe/i_staking/StakingApi;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    return-object p0
.end method


# virtual methods
.method public sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 16
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v0}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 16
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v0}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 16
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendDepositExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendDepositExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v0}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p2

    .line 16
    new-instance v0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendWithdrawExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$sendWithdrawExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v0}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    instance-of v0, p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getPrivateKeyBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->orEmpty([B)[B

    move-result-object v9

    .line 98
    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    .line 99
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 101
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const-string v3, "valueOf(this.toLong())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    .line 100
    invoke-virtual {v0, v1}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lwallet/core/jni/proto/Ethereum$Transaction;

    .line 108
    sget-object v1, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 109
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getChainId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v5

    .line 110
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getTo()Ljava/lang/String;

    move-result-object v7

    const-string p1, "transaction"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {v1 .. v9}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect staking args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 23
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/i_staking/datasource/StakingDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
