.class public final Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "TRONWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTRONWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TRONWalletTransferDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,131:1\n70#2:132\n15#3:133\n11#4:134\n18#5:135\n*S KotlinDebug\n*F\n+ 1 TRONWalletTransferDataSourceImpl.kt\ncom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl\n*L\n58#1:132\n61#1:133\n86#1:134\n86#1:135\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/data/network/api/own/WalletApi;)V
    .locals 1

    const-string v0, "firebaseErrorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 32
    iput-object p2, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    .line 33
    iput-object p3, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 34
    iput-object p4, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

    .line 38
    sget-object p1, Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;->initTrustWalletCoreLibrary()V

    return-void
.end method

.method public static final synthetic access$getCryptoWalletApi$p(Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;)Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method private final createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;Ljava/lang/String;)Lwallet/core/jni/proto/Tron$Transaction;
    .locals 5

    .line 94
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getWeiConvertUnit()Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object v0

    .line 96
    invoke-static {}, Lwallet/core/jni/proto/Tron$Transaction;->newBuilder()Lwallet/core/jni/proto/Tron$Transaction$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getContractAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 99
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferContract;->newBuilder()Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lwallet/core/jni/proto/Tron$TransferContract$Builder;->setAmount(J)Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lwallet/core/jni/proto/Tron$TransferContract$Builder;->setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p2}, Lwallet/core/jni/proto/Tron$TransferContract$Builder;->setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$TransferContract;

    .line 99
    invoke-virtual {v1, p2}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    goto :goto_2

    .line 105
    :cond_2
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->newBuilder()Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getContractAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setContractAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p2}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;->setOwnerAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    .line 105
    invoke-virtual {v1, p2}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    .line 114
    :goto_2
    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->newBuilder()Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 115
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;->getNumber()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setNumber(J)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 116
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;->getTxTrieRoot()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setTxTrieRoot(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 117
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;->getWitnessAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setWitnessAddress(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 118
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;->getParentHash()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setParentHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 119
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;->getVersion()I

    move-result v0

    invoke-virtual {p2, v0}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setVersion(I)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 120
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getBlockHeader()Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;->setTimestamp(J)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object p2

    .line 121
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Tron$BlockHeader;

    .line 113
    invoke-virtual {v1, p2}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    move-result-object p2

    .line 123
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;->getFeeLimit()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lwallet/core/jni/proto/Tron$Transaction$Builder;->setFeeLimit(J)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string p2, "newBuilder()\n           \u2026\n                .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p1
.end method

.method private final hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 127
    invoke-static {p1}, Lcom/trustwallet/walletconnect/extensions/StringKt;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    const-string v0, "copyFrom(hexStringToByteArray())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getTransferMetadata(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->walletApi:Lcom/smedialink/storage/data/network/api/own/WalletApi;

    .line 51
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;

    .line 52
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    .line 51
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/WalletApi;->getTRONCryptoTransferData(Lcom/smedialink/storage/data/network/model/request/crypto/wallet/GetDataForCryptoTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

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

    .line 70
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getTRONWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$TRON;

    move-result-object v0

    .line 75
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    .line 74
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->createTransactionByType(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TRON;Ljava/lang/String;)Lwallet/core/jni/proto/Tron$Transaction;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TRON;->getHdWallet()Lwallet/core/jni/HDWallet;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lwallet/core/jni/CoinType;->TRON:Lwallet/core/jni/CoinType;

    invoke-virtual {v0, v2}, Lwallet/core/jni/HDWallet;->getKeyForCoin(Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lwallet/core/jni/PrivateKey;->data()[B

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 80
    :cond_3
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningInput;->newBuilder()Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Tron$SigningInput$Builder;->setTransaction(Lwallet/core/jni/proto/Tron$Transaction;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    move-result-object p1

    .line 82
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lwallet/core/jni/proto/Tron$SigningInput$Builder;->setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$SigningInput;

    .line 84
    sget-object v0, Lwallet/core/jni/CoinType;->TRON:Lwallet/core/jni/CoinType;

    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lwallet/core/java/AnySigner;->sign(Lcom/google/protobuf/MessageLite;Lwallet/core/jni/CoinType;Lcom/google/protobuf/Parser;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$SigningOutput;

    .line 86
    invoke-virtual {p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "signerOutput.json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toHexString(signerOutput.json.toByteArray())"

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

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 30
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public transfer(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;->sign(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl$transfer$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;)V

    new-instance v1, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
