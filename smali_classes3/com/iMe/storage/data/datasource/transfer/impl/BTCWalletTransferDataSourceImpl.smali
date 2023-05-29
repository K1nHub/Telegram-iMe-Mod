.class public final Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "BTCWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBTCWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BTCWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n70#2:114\n14#3:115\n7#4:116\n11#4:122\n18#5:117\n18#5:123\n1549#6:118\n1620#6,3:119\n*S KotlinDebug\n*F\n+ 1 BTCWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl\n*L\n56#1:114\n59#1:115\n71#1:116\n108#1:122\n71#1:117\n108#1:123\n85#1:118\n85#1:119,3\n*E\n"
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 34
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 35
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 36
    iput-object p4, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    return-void
.end method

.method public static final synthetic access$getCryptoWalletApi$p(Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

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

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 49
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;

    .line 50
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    .line 49
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getBTCCryptoTransferData(Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

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

    .line 68
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getBTCWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;

    move-result-object v0

    const-string v1, "just(this)"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 71
    new-instance p1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    const/4 v0, 0x3

    invoke-direct {p1, v2, v2, v0, v2}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getPrivateKeyBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 74
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$BTC;->getAddress()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    invoke-static {v0, v4}, Lwallet/core/jni/BitcoinScript;->lockScriptForAddress(Ljava/lang/String;Lwallet/core/jni/CoinType;)Lwallet/core/jni/BitcoinScript;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/BitcoinScript;->data()[B

    move-result-object v0

    const-string v5, "lockScriptForAddress(wal\u2026 CoinType.BITCOIN).data()"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 76
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    .line 77
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->newBuilder()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v5

    .line 78
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->setAmount(J)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v5

    .line 79
    invoke-static {v4}, Lwallet/core/jni/BitcoinScript;->hashTypeForCoin(Lwallet/core/jni/CoinType;)I

    move-result v6

    invoke-virtual {v5, v6}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->setHashType(I)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v5

    .line 80
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getRecipientAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v5

    .line 81
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getChangeAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->setChangeAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v5

    .line 82
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getByteFee()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->setByteFee(J)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v5

    .line 83
    invoke-virtual {v4}, Lwallet/core/jni/CoinType;->value()I

    move-result v4

    invoke-virtual {v5, v4}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->setCoinType(I)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v4

    .line 85
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getUtxos()Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    .line 87
    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->getTxId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9, v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToByteArray$default(Ljava/lang/String;ZILjava/lang/Object;)[B

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->reversed([B)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    .line 88
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;->newBuilder()Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;

    move-result-object v8

    .line 90
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->newBuilder()Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    move-result-object v9

    .line 91
    invoke-virtual {v9, v7}, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;->setHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    move-result-object v7

    .line 92
    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->getIndex()I

    move-result v9

    invoke-virtual {v7, v9}, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;->setIndex(I)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    move-result-object v7

    .line 93
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    check-cast v7, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    .line 89
    invoke-virtual {v8, v7}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;->setOutPoint(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;

    move-result-object v7

    .line 95
    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;->getAmount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;->setAmount(J)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;

    move-result-object v6

    .line 96
    invoke-virtual {v6, v0}, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;->setScript(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction$Builder;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    .line 1621
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v4, v5}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->addAllUtxo(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v3}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;->addPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 106
    sget-object v0, Lwallet/core/jni/CoinType;->BITCOIN:Lwallet/core/jni/CoinType;

    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lwallet/core/java/AnySigner;->sign(Lcom/google/protobuf/MessageLite;Lwallet/core/jni/CoinType;Lcom/google/protobuf/Parser;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    .line 108
    invoke-virtual {p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const-string v0, "signerOutput.encoded.toByteArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;->toHex([B)Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 32
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

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

    .line 59
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/transfer/impl/BTCWalletTransferDataSourceImpl;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
