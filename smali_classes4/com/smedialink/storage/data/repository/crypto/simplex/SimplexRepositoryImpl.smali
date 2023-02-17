.class public final Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;
.super Ljava/lang/Object;
.source "SimplexRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimplexRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimplexRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,58:1\n1547#2:59\n1618#2,3:60\n70#3:63\n70#3:65\n26#4:64\n26#4:66\n*S KotlinDebug\n*F\n+ 1 SimplexRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl\n*L\n29#1:59\n29#1:60,3\n33#1:63\n54#1:65\n34#1:64\n55#1:66\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final simplexApi:Lcom/smedialink/storage/data/network/api/own/SimplexApi;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/SimplexApi;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "simplexApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->simplexApi:Lcom/smedialink/storage/data/network/api/own/SimplexApi;

    .line 24
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 25
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method


# virtual methods
.method public createBuyingCryptoPayment(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "FI",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "digitalCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quoteId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-interface {p2}, Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {}, Lcom/smedialink/storage/domain/utils/extentions/CryptoExtKt;->generateUuid()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 42
    new-instance p1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;

    move-object v1, p1

    move-object v2, p5

    move v5, p4

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->simplexApi:Lcom/smedialink/storage/data/network/api/own/SimplexApi;

    .line 53
    invoke-interface {p2, p1}, Lcom/smedialink/storage/data/network/api/own/SimplexApi;->createBuyingCryptoPaymentRequest(Lcom/smedialink/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;)Lio/reactivex/Observable;

    move-result-object p2

    .line 54
    iget-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p4, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$createBuyingCryptoPayment$$inlined$mapSuccess$1;

    invoke-direct {p4, p3, p1}, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$createBuyingCryptoPayment$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/model/request/crypto/simplex/CreateBuyingCryptoPaymentRequest;)V

    invoke-virtual {p2, p4}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getBuyingCryptoQuote(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "quoteRequests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    .line 29
    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/crypto/SimplexMappingKt;->mapToRequest(Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;)Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->simplexApi:Lcom/smedialink/storage/data/network/api/own/SimplexApi;

    .line 32
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Lcom/smedialink/storage/data/network/api/own/SimplexApi;->getBuyingCryptoQuote(Lcom/smedialink/storage/data/network/model/request/crypto/simplex/GetBuyingCryptoQuoteRequestList;)Lio/reactivex/Observable;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl$getBuyingCryptoQuote$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/simplex/SimplexRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
