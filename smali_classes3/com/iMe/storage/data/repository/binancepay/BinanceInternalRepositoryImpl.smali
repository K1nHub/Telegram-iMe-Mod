.class public final Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;
.super Ljava/lang/Object;
.source "BinanceInternalRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/binancepay/BinanceInternalRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinanceInternalRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinanceInternalRepositoryImpl.kt\ncom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,216:1\n70#2:217\n70#2:219\n70#2:223\n70#2:225\n70#2:227\n70#2:229\n70#2:231\n70#2:233\n70#2:235\n70#2:237\n70#2:239\n70#2:241\n70#2:243\n70#2:245\n26#3:218\n26#3:220\n18#3:222\n26#3:224\n26#3:226\n26#3:228\n26#3:230\n26#3:232\n26#3:234\n26#3:236\n26#3:238\n26#3:240\n26#3:242\n26#3:244\n26#3:246\n15#4:221\n*S KotlinDebug\n*F\n+ 1 BinanceInternalRepositoryImpl.kt\ncom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl\n*L\n56#1:217\n67#1:219\n85#1:223\n104#1:225\n114#1:227\n120#1:229\n126#1:231\n142#1:233\n156#1:235\n168#1:237\n174#1:239\n186#1:241\n203#1:243\n213#1:245\n61#1:218\n72#1:220\n74#1:222\n89#1:224\n105#1:226\n115#1:228\n121#1:230\n127#1:232\n143#1:234\n157#1:236\n169#1:238\n175#1:240\n187#1:242\n204#1:244\n214#1:246\n74#1:221\n*E\n"
.end annotation


# instance fields
.field private final binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V
    .locals 1

    const-string v0, "binanceInternalApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 40
    iput-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 41
    iput-object p3, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 42
    iput-object p4, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public confirmConvertQuote(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 209
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/BinanceConfirmConvertQuoteRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/binance/BinanceConfirmConvertQuoteRequest;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->confirmConvertQuote(Lcom/iMe/storage/data/network/model/request/binance/BinanceConfirmConvertQuoteRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$confirmConvertQuote$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$confirmConvertQuote$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$confirmConvertQuote$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$confirmConvertQuote$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public createCollection(JDLjava/lang/String;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JD",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceCollectionOrder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 136
    new-instance v9, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayCreateCollectionRequest;

    .line 137
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance p1, Ljava/math/BigDecimal;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    const-string p1, "BigDecimal(amount.toStri\u2026ngZeros().toPlainString()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v9

    move-object v4, p5

    .line 136
    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayCreateCollectionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    invoke-interface {v0, v9}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->createCollection(Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayCreateCollectionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$createCollection$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$createCollection$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$createCollection$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$createCollection$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAddressForTokenReplenish(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenTicker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 151
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/BinanceGetTokenReplenishAddressRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/binance/BinanceGetTokenReplenishAddressRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getReplenishTokenAddress(Lcom/iMe/storage/data/network/model/request/binance/BinanceGetTokenReplenishAddressRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAddressForTokenReplenish$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAddressForTokenReplenish$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAddressForTokenReplenish$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAddressForTokenReplenish$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAuthTokens(Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 51
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetAuthTokensRequest;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetAuthTokensRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getBinancePayAuthTokens(Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetAuthTokensRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAuthTokens$$inlined$mapSuccess$1;

    invoke-direct {v0, p2, p0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAuthTokens$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAuthTokens$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAuthTokens$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAvailablePaymentTokens()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 125
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getAvailablePaymentTokens()Lio/reactivex/Observable;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAvailablePaymentTokens$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAvailablePaymentTokens$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAvailablePaymentTokens$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getAvailablePaymentTokens$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;",
            ">;>;"
        }
    .end annotation

    const-string v0, "inputToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 200
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->getValue()I

    move-result v1

    .line 196
    new-instance v2, Lcom/iMe/storage/data/network/model/request/binance/BinanceGetConvertQuoteRequest;

    invoke-direct {v2, p1, p2, v1, p3}, Lcom/iMe/storage/data/network/model/request/binance/BinanceGetConvertQuoteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    invoke-interface {v0, v2}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getConvertQuote(Lcom/iMe/storage/data/network/model/request/binance/BinanceGetConvertQuoteRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getConvertQuote$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getConvertQuote$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getConvertQuote$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getConvertQuote$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 182
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/BinanceGetSwapSupportCoinsByAssetCodeRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/binance/BinanceGetSwapSupportCoinsByAssetCodeRequest;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getConvertOppositeSupportTokensByAsset(Lcom/iMe/storage/data/network/model/request/binance/BinanceGetSwapSupportCoinsByAssetCodeRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getOppositeTokensForConvertByToken$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getOppositeTokensForConvertByToken$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getOppositeTokensForConvertByToken$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getOppositeTokensForConvertByToken$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTokensForConvert()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 173
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getConvertSupportTokens()Lio/reactivex/Observable;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForConvert$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForConvert$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForConvert$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForConvert$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTokensForReplenish(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 164
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/pay/BinanceGetAvailableTokensForReplenishRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/binance/pay/BinanceGetAvailableTokensForReplenishRequest;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getTokensForReplenish(Lcom/iMe/storage/data/network/model/request/binance/pay/BinanceGetAvailableTokensForReplenishRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTokensForReplenish$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTransaction(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 110
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetTransactionRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetTransactionRequest;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getTransaction(Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetTransactionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransaction$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransaction$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransaction$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransaction$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTransactionHistory(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;",
            ">;>;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 98
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetTransactionHistoryRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetTransactionHistoryRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getTransactionHistory(Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayGetTransactionHistoryRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransactionHistory$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransactionHistory$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransactionHistory$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getTransactionHistory$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getUserBalance()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 119
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserBalance$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserBalance$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserBalance$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserBalance$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserInfo(Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 66
    invoke-interface {p1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->getUserInfo()Lio/reactivex/Observable;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 15
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->getUserInfo(Z)Lio/reactivex/Observable;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public logout(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->binanceInternalApi:Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;

    .line 81
    new-instance v1, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayLogoutRequest;

    invoke-direct {v1, p1}, Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayLogoutRequest;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/network/api/own/BinanceInternalApi;->logout(Lcom/iMe/storage/data/network/model/request/binance/pay/BinancePayLogoutRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$logout$$inlined$mapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$logout$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$logout$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$logout$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
