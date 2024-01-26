.class public final Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;
.super Ljava/lang/Object;
.source "DonationsRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/donations/DonationsRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationsRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationsRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,147:1\n70#2:148\n70#2:150\n70#2:152\n70#2:154\n70#2:156\n70#2:158\n70#2:161\n26#3:149\n26#3:151\n26#3:153\n26#3:155\n26#3:157\n26#3:159\n26#3:160\n26#3:162\n*S KotlinDebug\n*F\n+ 1 DonationsRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl\n*L\n51#1:148\n57#1:150\n63#1:152\n69#1:154\n88#1:156\n110#1:158\n142#1:161\n52#1:149\n58#1:151\n64#1:153\n75#1:155\n93#1:157\n111#1:159\n127#1:160\n143#1:162\n*E\n"
.end annotation


# instance fields
.field private final donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final transferDataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;


# direct methods
.method public static synthetic $r8$lambda$xrndl6XDjV7ZYmxWSd81jiL8sBk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->sendDonation$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/DonationsApi;Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "donationsApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transferDataSourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    .line 31
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->transferDataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 32
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 33
    iput-object p4, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getDonationsApi$p(Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;)Lcom/iMe/storage/data/network/api/own/DonationsApi;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseErrorHandler$p(Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;)Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-object p0
.end method

.method private static final sendDonation$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public disableDonation(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    .line 56
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2, p2}, Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/DonationsApi;->unlinkEtherWallet(Lcom/iMe/storage/data/network/model/request/crypto/donations/UnlinkDonationWalletRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$disableDonation$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$disableDonation$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$disableDonation$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$disableDonation$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public enableDonationFor(JLjava/lang/String;Z)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    .line 48
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance p1, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p4

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    invoke-interface {v0, p1}, Lcom/iMe/storage/data/network/api/own/DonationsApi;->linkEtherWallet(Lcom/iMe/storage/data/network/model/request/crypto/donations/LinkDonationWalletRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$enableDonationFor$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$enableDonationFor$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$enableDonationFor$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$enableDonationFor$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDataForDonation(JLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/donations/DonationTransferMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    .line 136
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/donations/PrepareDonationTransactionRequest;

    .line 137
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p4}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object p2

    .line 136
    invoke-direct {v1, p1, p3, p2}, Lcom/iMe/storage/data/network/model/request/crypto/donations/PrepareDonationTransactionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;)V

    .line 135
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/DonationsApi;->getDataForDonationTransaction(Lcom/iMe/storage/data/network/model/request/crypto/donations/PrepareDonationTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDataForDonation$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDataForDonation$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDataForDonation$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDataForDonation$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDonationAddress(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    .line 68
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/DonationsApi;->getChatInfo(Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationInfoRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationAddress$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationAddress$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDonationTransactionHistory(JLjava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    .line 106
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance p2, Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationTransactionsRequest;

    invoke-direct {p2, p3, p4, p5, p1}, Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationTransactionsRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v0, p2}, Lcom/iMe/storage/data/network/api/own/DonationsApi;->getDonationTransactions(Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationTransactionsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationTransactionHistory$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDonationWalletBalance(JLjava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->donationsApi:Lcom/iMe/storage/data/network/api/own/DonationsApi;

    .line 83
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationWalletBalanceRequest;

    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-direct {v1, p1, p3}, Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationWalletBalanceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/DonationsApi;->getDonationWalletBalance(Lcom/iMe/storage/data/network/model/request/crypto/donations/GetDonationWalletBalanceRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationWalletBalance$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationWalletBalance$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationWalletBalance$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$getDonationWalletBalance$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->transferDataSourceFactory:Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 115
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object v0

    .line 116
    invoke-interface {v0, p3}, Lcom/iMe/storage/data/datasource/base/SignTransactionDatasource;->sign(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p3

    .line 117
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$1;-><init>(Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;J)V

    new-instance p1, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "override fun sendDonatio\u2026handleError(errorHandler)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/donations/DonationsRepositoryImpl$sendDonation$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
