.class public final Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;
.super Ljava/lang/Object;
.source "CryptoPermissionRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/permission/CryptoPermissionRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoPermissionRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoPermissionRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n70#2:104\n70#2:106\n70#2:108\n70#2:112\n70#2:118\n26#3:105\n26#3:107\n26#3:109\n18#3:111\n26#3:113\n26#3:119\n8#4:110\n1549#5:114\n1620#5,3:115\n*S KotlinDebug\n*F\n+ 1 CryptoPermissionRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl\n*L\n41#1:104\n52#1:106\n58#1:108\n70#1:112\n91#1:118\n42#1:105\n53#1:107\n59#1:109\n66#1:111\n75#1:113\n99#1:119\n66#1:110\n88#1:114\n88#1:115,3\n*E\n"
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final permissionApi:Lcom/smedialink/storage/data/network/api/own/PermissionApi;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/PermissionApi;Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "permissionApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->permissionApi:Lcom/smedialink/storage/data/network/api/own/PermissionApi;

    .line 30
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    .line 31
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 32
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 33
    iput-object p5, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public getAccountInfo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/AccountInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->permissionApi:Lcom/smedialink/storage/data/network/api/own/PermissionApi;

    .line 57
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/GetAccountInfoRequest;

    invoke-direct {v1, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/GetAccountInfoRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/PermissionApi;->getAccountInfo(Lcom/smedialink/storage/data/network/model/request/crypto/wallet/GetAccountInfoRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getAccountInfo$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getAccountInfo$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getAccountInfo$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getAccountInfo$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getPermissionSettings(Z)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;",
            ">;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletInfoMetadata()Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    move-result-object v0

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->getWalletInfo()Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->getWalletInfo()Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->cryptoWalletApi:Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;

    .line 69
    invoke-interface {v0}, Lcom/smedialink/storage/data/network/api/own/CryptoWalletApi;->getCryptoWalletInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;)V

    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p1, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "concat(\n                \u2026              }\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public managePermissionSettings(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLjava/util/List;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitelistUsers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->permissionApi:Lcom/smedialink/storage/data/network/api/own/PermissionApi;

    .line 86
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 88
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Lcom/smedialink/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;

    invoke-direct {v2, v1, p2, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;-><init>(Ljava/util/List;ZLjava/lang/String;)V

    .line 84
    invoke-interface {v0, v2}, Lcom/smedialink/storage/data/network/api/own/PermissionApi;->manageCryptoPermissions(Lcom/smedialink/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;

    invoke-direct {v1, v0, p0, p2, p3}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;ZLjava/util/List;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public requestPermission(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/permission/PermissionAction;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/permission/PermissionAction;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->permissionApi:Lcom/smedialink/storage/data/network/api/own/PermissionApi;

    .line 40
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/RequestPermissionRequest;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/smedialink/storage/data/network/model/request/crypto/wallet/RequestPermissionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/PermissionApi;->requestPermission(Lcom/smedialink/storage/data/network/model/request/crypto/wallet/RequestPermissionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$requestPermission$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$requestPermission$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$requestPermission$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$requestPermission$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
