.class public final Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "TRONWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTRONWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TRONWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,118:1\n70#2:119\n14#3:120\n11#4:121\n18#5:122\n*S KotlinDebug\n*F\n+ 1 TRONWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl\n*L\n50#1:119\n53#1:120\n78#1:121\n78#1:122\n*E\n"
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 28
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 29
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 30
    iput-object p4, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    return-void
.end method

.method public static final synthetic access$getCryptoWalletApi$p(Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method private final createTransactionByType(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;Ljava/lang/String;)Lwallet/core/jni/proto/Tron$Transaction;
    .locals 4

    .line 86
    invoke-static {}, Lwallet/core/jni/proto/Tron$Transaction;->newBuilder()Lwallet/core/jni/proto/Tron$Transaction$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getContractAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 89
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferContract;->newBuilder()Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lwallet/core/jni/proto/Tron$TransferContract$Builder;->setAmount(J)Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Tron$TransferContract$Builder;->setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p2}, Lwallet/core/jni/proto/Tron$TransferContract$Builder;->setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$TransferContract;

    .line 89
    invoke-virtual {v0, p2}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    goto :goto_2

    .line 95
    :cond_2
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->newBuilder()Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getContractAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p2}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    .line 95
    invoke-virtual {v0, p2}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    .line 104
    :goto_2
    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->newBuilder()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 105
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;->getNumber()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setNumber(J)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 106
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;->getTxTrieRoot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setTxTrieRoot(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 107
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;->getWitnessAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setWitnessAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 108
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;->getParentHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p2, v1}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setParentHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 109
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;->getVersion()I

    move-result v1

    invoke-virtual {p2, v1}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setVersion(I)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 110
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setTimestamp(J)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$BlockHeader;

    .line 103
    invoke-virtual {v0, p2}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    move-result-object p2

    .line 113
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;->getFeeLimit()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setFeeLimit(J)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string p2, "newBuilder()\n           \u2026                 .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p1
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

    .line 41
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->walletApi:Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 43
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;

    .line 44
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    .line 43
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/WalletApi;->getTRONCryptoTransferData(Lcom/iMe/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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

    .line 62
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getTRONWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;

    move-result-object v0

    .line 67
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 66
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->createTransactionByType(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;Ljava/lang/String;)Lwallet/core/jni/proto/Tron$Transaction;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$TRON;->getHdWallet()Lwallet/core/jni/HDWallet;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lwallet/core/jni/CoinType;->TRON:Lwallet/core/jni/CoinType;

    invoke-static {v0, v1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->getPrivateKeyBytes(Lwallet/core/jni/HDWallet;Lwallet/core/jni/CoinType;)[B

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 72
    :cond_3
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningInput;->newBuilder()Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, p1}, Lwallet/core/jni/proto/Tron$SigningInput$Builder;->setTransaction(Lwallet/core/jni/proto/Tron$Transaction;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    move-result-object p1

    .line 74
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lwallet/core/jni/proto/Tron$SigningInput$Builder;->setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$SigningInput;

    .line 76
    sget-object v0, Lwallet/core/jni/CoinType;->TRON:Lwallet/core/jni/CoinType;

    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lwallet/core/java/AnySigner;->sign(Lcom/google/protobuf/MessageLite;Lwallet/core/jni/CoinType;Lcom/google/protobuf/Parser;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$SigningOutput;

    .line 78
    invoke-virtual {p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "signerOutput.json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

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

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 62
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 26
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

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

    .line 53
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
