.class public final Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;
.super Ljava/lang/Object;
.source "SwapRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/swap/SwapRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwapRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwapRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,114:1\n70#2:115\n70#2:117\n70#2:121\n26#3:116\n26#3:118\n26#3:119\n26#3:120\n26#3:122\n*S KotlinDebug\n*F\n+ 1 SwapRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl\n*L\n47#1:115\n66#1:117\n106#1:121\n52#1:116\n69#1:118\n76#1:119\n83#1:120\n109#1:122\n*E\n"
.end annotation


# instance fields
.field private final approveDataSourceFactory:Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSourceFactory;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;

.field private final swapDataSourceFactory:Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSourceFactory;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/SwapApi;Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSourceFactory;Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSourceFactory;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "swapApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapDataSourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "approveDataSourceFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;

    .line 28
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapDataSourceFactory:Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSourceFactory;

    .line 29
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->approveDataSourceFactory:Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSourceFactory;

    .line 30
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 31
    iput-object p5, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method


# virtual methods
.method public approveToken(Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->approveDataSourceFactory:Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSourceFactory;

    .line 74
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs;->getToken()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSourceFactory;->getDataSource(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSource;

    move-result-object v0

    .line 75
    invoke-interface {v0, p1}, Lcom/smedialink/storage/data/datasource/approve/WalletApproveDataSource;->approve(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$approveToken$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$approveToken$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getApproveTokensInfo(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;

    invoke-direct {v0, p2, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;

    .line 65
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/SwapApi;->getApproveTokensInfo(Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAvailableTokensToSwap(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;

    invoke-direct {v0, p2, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;

    .line 46
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/SwapApi;->getAvailableTokensToSwap(Lcom/smedialink/storage/data/network/model/request/crypto/swap/NetworkAndProtocolSwapRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getQuoteToSwap(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;FLcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;",
            "F",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
            ">;>;"
        }
    .end annotation

    move-object v0, p0

    const-string v1, "inputToken"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outputToken"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "amount"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tradeType"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inputNetworkType"

    move-object/from16 v6, p6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "protocol"

    move-object/from16 v7, p8

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-virtual/range {p4 .. p4}, Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;->getValue()I

    move-result v9

    .line 99
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    if-eqz p7, :cond_0

    .line 100
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v11, v2

    .line 101
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    .line 93
    new-instance v13, Lcom/smedialink/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;

    move-object v2, v13

    move-object v3, v1

    move-object v4, v8

    move-object/from16 v5, p3

    move v6, v9

    move/from16 v7, p5

    move-object v8, v12

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v2 .. v10}, Lcom/smedialink/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, v0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/smedialink/storage/data/network/api/own/SwapApi;

    .line 105
    invoke-interface {v1, v13}, Lcom/smedialink/storage/data/network/api/own/SwapApi;->getQuoteToSwap(Lcom/smedialink/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;)Lio/reactivex/Observable;

    move-result-object v1

    .line 106
    iget-object v2, v0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v3, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1;

    invoke-direct {v3, v2}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v3}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v2, v0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v3, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$handleError$1;

    invoke-direct {v3, v2}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v3}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public swap(Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapDataSourceFactory:Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSourceFactory;

    .line 81
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSourceFactory;->getDataSource(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSource;

    move-result-object v0

    .line 82
    invoke-interface {v0, p1}, Lcom/smedialink/storage/data/datasource/swap/WalletSwapDataSource;->swap(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$swap$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/swap/SwapRepositoryImpl$swap$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
