.class public final Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;
.super Ljava/lang/Object;
.source "EthWalletCancelDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEthWalletCancelDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EthWalletCancelDataSourceImpl.kt\ncom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,62:1\n16#2,7:63\n18#3:70\n18#4:71\n*S KotlinDebug\n*F\n+ 1 EthWalletCancelDataSourceImpl.kt\ncom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl\n*L\n28#1:63,7\n58#1:70\n58#1:71\n*E\n"
.end annotation


# instance fields
.field private final cancelApi:Lcom/iMe/storage/data/network/api/own/CancelApi;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/CancelApi;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "cancelApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cancelApi:Lcom/iMe/storage/data/network/api/own/CancelApi;

    .line 21
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 22
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCancelApi$p(Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CancelApi;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cancelApi:Lcom/iMe/storage/data/network/api/own/CancelApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method


# virtual methods
.method public cancel(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 2
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

    .line 26
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl$cancel$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl$cancel$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect cancel args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 41
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

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

    .line 45
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;->getTransferArgs()Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-result-object p1

    .line 46
    sget-object v1, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 47
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v1, v0, v2, v3}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->createTransferTransactionByType(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v8

    .line 52
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v7, v0

    .line 55
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getChainId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v5

    .line 56
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v6

    .line 54
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

    .line 41
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect cancel args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 19
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/cancel/impl/EthWalletCancelDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
