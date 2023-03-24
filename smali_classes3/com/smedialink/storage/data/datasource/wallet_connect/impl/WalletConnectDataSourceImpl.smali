.class public final Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;
.super Ljava/lang/Object;
.source "WalletConnectDataSourceImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,67:1\n15#2:68\n11#3:69\n18#4:70\n*S KotlinDebug\n*F\n+ 1 WalletConnectDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl\n*L\n29#1:68\n44#1:69\n44#1:70\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final walletConnectApi:Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 22
    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 23
    iput-object p3, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->walletConnectApi:Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;

    return-void
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method public static final synthetic access$getWalletConnectApi$p(Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->walletConnectApi:Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;

    return-object p0
.end method

.method private final createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lorg/web3j/crypto/RawTransaction;
    .locals 7

    .line 52
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getRecipientAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getAmount()Ljava/math/BigInteger;

    move-result-object p1

    .line 53
    invoke-static {v0, v1, v2, v3, p1}, Lorg/web3j/crypto/RawTransaction;->createEtherTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    const-string v0, "{\n            RawTransac\u2026t\n            )\n        }"

    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getRecipientAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getAmount()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static/range {v1 .. v6}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p1

    const-string v0, "{\n            RawTransac\u2026a\n            )\n        }"

    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public sendTransaction(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 2
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

    .line 29
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl$sendTransaction$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;)V

    new-instance v1, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 38
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;

    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lorg/web3j/crypto/RawTransaction;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;->getChainId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;->getCredentials()Lorg/web3j/crypto/Credentials;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lorg/web3j/crypto/TransactionEncoder;->signMessage(Lorg/web3j/crypto/RawTransaction;JLorg/web3j/crypto/Credentials;)[B

    move-result-object p1

    .line 44
    invoke-static {p1}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toHexString(signedTransaction)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 20
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
