.class public final Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;
.super Ljava/lang/Object;
.source "DonationsRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/donations/DonationsRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationsRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationsRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,135:1\n70#2:136\n70#2:138\n70#2:140\n70#2:142\n70#2:144\n70#2:146\n70#2:149\n70#2:151\n26#3:137\n26#3:139\n26#3:141\n26#3:143\n26#3:145\n26#3:147\n26#3:148\n26#3:150\n*S KotlinDebug\n*F\n+ 1 DonationsRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl\n*L\n41#1:136\n50#1:138\n59#1:140\n68#1:142\n80#1:144\n100#1:146\n129#1:149\n116#1:151\n42#1:137\n51#1:139\n60#1:141\n69#1:143\n87#1:145\n101#1:147\n118#1:148\n130#1:150\n*E\n"
.end annotation


# instance fields
.field private final donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final transferDataSourceFactory:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;


# direct methods
.method public static synthetic $r8$lambda$8yXh7kk0USJFQ9gTfv7qTlSd4gA(Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;JLcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->sendDonation$lambda-10(Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;JLcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/DonationsApi;Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "donationsApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transferDataSourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 25
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->transferDataSourceFactory:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 26
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 27
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method private static final sendDonation$lambda-10(Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;JLcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 111
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/donations/SendDonationTransactionRequest;

    .line 112
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 111
    :cond_0
    invoke-direct {v1, p1, p2}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/SendDonationTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->sendDonationTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/donations/SendDonationTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 116
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p2, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$lambda-10$$inlined$mapSuccess$1;

    invoke-direct {p2, p0}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$lambda-10$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public disableDonation(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 49
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->unlinkEtherWallet(Lcom/smedialink/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$disableDonation$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$disableDonation$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public enableDonationFor(JLjava/lang/String;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/smedialink/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;

    invoke-direct {p2, p1, p4, p3}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 40
    invoke-interface {p1, p2}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->linkEtherWallet(Lcom/smedialink/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$enableDonationFor$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$enableDonationFor$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDataForDonation(JLjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/donations/DonationTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 121
    new-instance p4, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDataForDonationTransactionRequest;

    invoke-direct {p4, p3, p1, p2}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDataForDonationTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 128
    invoke-interface {p1, p4}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->getDataForDonationTransaction(Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDataForDonationTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDataForDonation$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDataForDonation$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDonationAddress(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 67
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->getChatInfo(Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDonationTransactionHistory(JLjava/lang/String;ILcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 91
    new-instance p5, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationTransactionsRequest;

    invoke-direct {p5, p3, p4, p2, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationTransactionsRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 99
    invoke-interface {p1, p5}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->getDonationTransactions(Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationTransactionsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDonationWalletBalance(JLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationWalletBalanceRequest;

    .line 74
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationWalletBalanceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 79
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->getDonationWalletBalance(Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationWalletBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationWalletBalance$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationWalletBalance$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isDonationsEnabled(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/smedialink/storage/data/network/api/own/DonationsApi;

    .line 58
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/DonationsApi;->isDonationsEnable(Lcom/smedialink/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$isDonationsEnabled$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$isDonationsEnabled$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendDonation(JLcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->transferDataSourceFactory:Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 106
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object v0

    .line 107
    invoke-interface {v0, p3}, Lcom/smedialink/storage/data/datasource/base/SignTransactionDatasource;->sign(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p3

    .line 108
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;J)V

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "transferDataSourceFactor\u2026e }\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
