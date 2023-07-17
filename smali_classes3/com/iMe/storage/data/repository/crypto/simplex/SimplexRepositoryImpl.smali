.class public final Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;
.super Ljava/lang/Object;
.source "SimplexRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimplexRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimplexRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,57:1\n1549#2:58\n1620#2,3:59\n70#3:62\n70#3:64\n26#4:63\n26#4:65\n*S KotlinDebug\n*F\n+ 1 SimplexRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl\n*L\n28#1:58\n28#1:59,3\n32#1:62\n53#1:64\n33#1:63\n54#1:65\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final simplexApi:Lcom/iMe/storage/data/network/api/own/SimplexApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/SimplexApi;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "simplexApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->simplexApi:Lcom/iMe/storage/data/network/api/own/SimplexApi;

    .line 23
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 24
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method


# virtual methods
.method public getBuyingCryptoQuote(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "quoteRequests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    .line 28
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/SimplexMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;)Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->simplexApi:Lcom/iMe/storage/data/network/api/own/SimplexApi;

    .line 31
    new-instance v1, Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Lcom/iMe/storage/data/network/api/own/SimplexApi;->getBuyingCryptoQuote(Lcom/iMe/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;)Lio/reactivex/Observable;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
