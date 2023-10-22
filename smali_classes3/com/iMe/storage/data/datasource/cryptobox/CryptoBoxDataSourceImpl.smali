.class public final Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;
.super Ljava/lang/Object;
.source "CryptoBoxDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxDataSourceImpl.kt\ncom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,96:1\n16#2,7:97\n16#2,7:104\n16#2,7:111\n18#3:118\n18#4:119\n*S KotlinDebug\n*F\n+ 1 CryptoBoxDataSourceImpl.kt\ncom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl\n*L\n30#1:97,7\n37#1:104,7\n48#1:111,7\n92#1:118\n92#1:119\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoBoxApi:Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 25
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->cryptoBoxApi:Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;

    .line 26
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCryptoBoxApi$p(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;)Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->cryptoBoxApi:Lcom/iMe/storage/data/network/api/own/CryptoBoxApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method


# virtual methods
.method public sendApprovalExecute(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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

    .line 30
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendApprovalExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendCreationExecute(JLjava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p4}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p4

    .line 16
    new-instance v0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendCreationExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendCreationExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;JLjava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p4, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendSuspensionExecute(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
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

    .line 37
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendSuspensionExecute$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl$sendSuspensionExecute$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 61
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getPrivateKeyBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->orEmpty([B)[B

    move-result-object v10

    .line 65
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    .line 66
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 68
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v1

    .line 71
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    goto :goto_1

    .line 77
    :cond_2
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v1

    .line 80
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/domain/utils/extensions/CryptoExtKt;->hexToByteString(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setData(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;

    .line 78
    invoke-virtual {v1, v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setContractGeneric(Lwallet/core/jni/proto/Ethereum$Transaction$ContractGeneric;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction;

    :goto_1
    move-object v9, v0

    .line 88
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    .line 89
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getChainId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v6

    .line 90
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getTo()Ljava/lang/String;

    move-result-object v8

    const-string p1, "transaction"

    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {v2 .. v10}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;

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

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect cryptoBox args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 23
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/cryptobox/CryptoBoxDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
