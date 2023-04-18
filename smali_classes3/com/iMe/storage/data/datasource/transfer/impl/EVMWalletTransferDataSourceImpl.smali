.class public final Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "EVMWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEVMWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EVMWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,80:1\n70#2:81\n14#3:82\n11#4:83\n18#5:84\n*S KotlinDebug\n*F\n+ 1 EVMWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl\n*L\n46#1:81\n49#1:82\n74#1:83\n74#1:84\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/api/own/WalletApi;)V
    .locals 1

    const-string v0, "firebaseErrorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 26
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 27
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 28
    iput-object p4, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    return-void
.end method

.method public static final synthetic access$getCryptoWalletApi$p(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method


# virtual methods
.method public getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 39
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;

    .line 40
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    .line 39
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getEVMCryptoTransferData(Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 11
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

    .line 58
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getPrivateKeyBytes()[B

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v1, [B

    :cond_1
    move-object v10, v0

    .line 62
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    .line 63
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 64
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {v2, v0, v3, v4}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->createTransferTransactionByType(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v9

    .line 68
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 71
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getChainId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v6

    .line 72
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v7

    .line 70
    invoke-virtual/range {v2 .. v10}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/transfer/impl/EVMWalletTransferDataSourceImpl;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
