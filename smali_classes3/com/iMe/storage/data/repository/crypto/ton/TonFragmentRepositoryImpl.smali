.class public final Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;
.super Ljava/lang/Object;
.source "TonFragmentRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/ton/TonFragmentRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,133:1\n70#2:134\n70#2:136\n70#2:138\n70#2:140\n70#2:142\n70#2:144\n70#2:146\n70#2:148\n26#3:135\n26#3:137\n26#3:139\n26#3:141\n26#3:143\n26#3:145\n26#3:147\n26#3:149\n*S KotlinDebug\n*F\n+ 1 TonFragmentRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl\n*L\n35#1:134\n58#1:136\n64#1:138\n70#1:140\n84#1:142\n98#1:144\n112#1:146\n130#1:148\n36#1:135\n59#1:137\n65#1:139\n71#1:141\n85#1:143\n99#1:145\n115#1:147\n131#1:149\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/api/own/TonFragmentApi;)V
    .locals 1

    const-string v0, "firebaseErrorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonFragmentApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 28
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 29
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    return-void
.end method


# virtual methods
.method public getPremiumPrices()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;",
            ">;>;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 69
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->getPremiumPrices()Lio/reactivex/Observable;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getPremiumPrices$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getPremiumPrices$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getPremiumPrices$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getPremiumPrices$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRecipientByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 79
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentRecipientByUsernameRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentRecipientByUsernameRequest;-><init>(Ljava/lang/String;I)V

    .line 78
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->getRecipientByUsername(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentRecipientByUsernameRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getRecipientByUsername$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getRecipientByUsername$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getRecipientByUsername$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getRecipientByUsername$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSessionAuthState()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 63
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->getSessionAuthState()Lio/reactivex/Observable;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionAuthState$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionAuthState$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionAuthState$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionAuthState$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSessionData()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentSessionData;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 34
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->getSessionData()Lio/reactivex/Observable;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionData$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionData$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionData$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getSessionData$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUsernames(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "sortingType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchQuery"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 107
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductsRequest;

    .line 108
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->getBackendName()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->getUsernames(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getUsernames$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getUsernames$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getUsernames$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$getUsernames$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public preparePremiumBuyTransaction(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;",
            ">;>;"
        }
    .end annotation

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKeyBase64"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 93
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentPreparePremiumBuyRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentPreparePremiumBuyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->preparePremiumBuyTransaction(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentPreparePremiumBuyRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$preparePremiumBuyTransaction$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$preparePremiumBuyTransaction$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$preparePremiumBuyTransaction$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$preparePremiumBuyTransaction$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public prepareProductBuyTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/ton/ProductBuyTransactionParams;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKeyBase64"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 124
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductBuyPrepareRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductBuyPrepareRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->prepareProductBuyTransaction(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentProductBuyPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$prepareProductBuyTransaction$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$prepareProductBuyTransaction$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$prepareProductBuyTransaction$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$prepareProductBuyTransaction$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendSessionSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "signature"

    move-object v4, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "address"

    move-object v5, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "walletVersion"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "publicKey"

    move-object/from16 v8, p4

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->tonFragmentApi:Lcom/iMe/storage/data/network/api/own/TonFragmentApi;

    .line 46
    new-instance v11, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionsRequest;

    .line 48
    new-instance v12, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionSignatureRequest;

    .line 52
    sget v7, Lorg/ton/contract/wallet/WalletContract;->DEFAULT_WALLET_ID:I

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v12

    .line 48
    invoke-direct/range {v2 .. v10}, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionSignatureRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-direct {v11, v2}, Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionsRequest;-><init>(Ljava/util/List;)V

    .line 45
    invoke-interface {v1, v11}, Lcom/iMe/storage/data/network/api/own/TonFragmentApi;->sendSessionSignature(Lcom/iMe/storage/data/network/model/request/crypto/fragment/TonFragmentSessionsRequest;)Lio/reactivex/Observable;

    move-result-object v1

    .line 58
    iget-object v2, v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v3, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$sendSessionSignature$$inlined$mapSuccess$1;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$sendSessionSignature$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v2, v0, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v3, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$sendSessionSignature$$inlined$handleError$1;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/repository/crypto/ton/TonFragmentRepositoryImpl$sendSessionSignature$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
