.class public final Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "TONWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTONWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TONWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,69:1\n70#2:70\n9#3:71\n*S KotlinDebug\n*F\n+ 1 TONWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl\n*L\n45#1:70\n65#1:71\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final tonApi:Lcom/iMe/storage/data/network/api/own/TonApi;

.field private final tonController:Lcom/iMe/storage/domain/manager/ton/TonController;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/TonApi;Lcom/iMe/storage/domain/manager/ton/TonController;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 26
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 27
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->tonApi:Lcom/iMe/storage/data/network/api/own/TonApi;

    .line 28
    iput-object p4, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    return-void
.end method


# virtual methods
.method public getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
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
    iget-object p4, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->tonApi:Lcom/iMe/storage/data/network/api/own/TonApi;

    .line 39
    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/ton/GetParamsForTonCryptoTransferRequest;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, ""

    .line 42
    :cond_0
    invoke-static {p3}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->orZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/crypto/ton/GetParamsForTonCryptoTransferRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {p4, v0}, Lcom/iMe/storage/data/network/api/own/TonApi;->getParamsForCryptoTransfer(Lcom/iMe/storage/data/network/model/request/crypto/ton/GetParamsForTonCryptoTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 1
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

    .line 9
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(DomainConstants.Sym\u2026EMPTY_STRING.toSuccess())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .locals 8
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

    .line 48
    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    if-eqz v0, :cond_2

    .line 51
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 53
    iget-object v1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    .line 56
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted()Z

    move-result v6

    .line 58
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getSendMode()I

    move-result v7

    .line 52
    invoke-interface/range {v0 .. v7}, Lcom/iMe/storage/domain/manager/ton/TonController;->sendTransaction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZI)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect transfer args passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
