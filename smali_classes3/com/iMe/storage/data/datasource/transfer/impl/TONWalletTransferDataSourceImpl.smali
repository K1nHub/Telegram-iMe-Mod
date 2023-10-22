.class public final Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;
.super Ljava/lang/Object;
.source "TONWalletTransferDataSourceImpl.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTONWalletTransferDataSourceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TONWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,64:1\n70#2:65\n15#3:66\n*S KotlinDebug\n*F\n+ 1 TONWalletTransferDataSourceImpl.kt\ncom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl\n*L\n41#1:65\n62#1:66\n*E\n"
.end annotation


# instance fields
.field private final cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final tonController:Lcom/iMe/storage/domain/manager/ton/TonController;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;Lcom/iMe/storage/domain/manager/ton/TonController;)V
    .locals 1

    const-string v0, "firebaseErrorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 24
    iput-object p2, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 25
    iput-object p3, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    return-void
.end method


# virtual methods
.method public getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->cryptoWalletApi:Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    .line 35
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;

    .line 36
    invoke-static {p1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, ""

    .line 38
    :cond_0
    invoke-static {p3}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->orZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;->getTONCryptoTransferData(Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
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

    .line 15
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(DomainConstants.Sym\u2026EMPTY_STRING.toSuccess())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic sign(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    .line 22
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->sign(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of p2, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    if-eqz p2, :cond_0

    .line 47
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    .line 48
    iget-object v0, p0, Lcom/iMe/storage/data/datasource/transfer/impl/TONWalletTransferDataSourceImpl;->tonController:Lcom/iMe/storage/domain/manager/ton/TonController;

    .line 49
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getRecipientAddress()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getConvertedAmount()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 51
    new-instance v4, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;

    .line 52
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->isUnencrypted()Z

    move-result v5

    .line 51
    invoke-direct {v4, p2, v5}, Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload$Message;-><init>(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;->getSendMode()I

    move-result v5

    .line 48
    invoke-interface/range {v0 .. v5}, Lcom/iMe/storage/domain/manager/ton/TonController;->sendTransaction(Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Incorrect transfer args passed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
