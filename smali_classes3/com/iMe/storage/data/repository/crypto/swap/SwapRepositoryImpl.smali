.class public final Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;
.super Ljava/lang/Object;
.source "SwapRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/swap/SwapRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwapRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwapRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n70#2:116\n70#2:122\n70#2:126\n26#3:117\n26#3:123\n26#3:124\n26#3:125\n26#3:127\n1549#4:118\n1620#4,3:119\n*S KotlinDebug\n*F\n+ 1 SwapRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl\n*L\n56#1:116\n74#1:122\n110#1:126\n59#1:117\n77#1:123\n83#1:124\n89#1:125\n113#1:127\n71#1:118\n71#1:119,3\n*E\n"
.end annotation


# instance fields
.field private final approveDataSourceFactory:Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

.field private final swapDataSourceFactory:Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSourceFactory;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/SwapApi;Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSourceFactory;Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    .line 31
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapDataSourceFactory:Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSourceFactory;

    .line 32
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->approveDataSourceFactory:Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;

    .line 33
    iput-object p4, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 34
    iput-object p5, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method


# virtual methods
.method public approveToken(Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->approveDataSourceFactory:Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;

    .line 81
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;

    move-result-object v0

    .line 82
    invoke-interface {v0, p1}, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;->approve(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$approveToken$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$approveToken$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getApproveTokensInfo(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 71
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_0
    new-instance p3, Lcom/iMe/storage/data/network/model/request/crypto/swap/TokensApprovalInfoRequest;

    invoke-direct {p3, p1, p2, v1}, Lcom/iMe/storage/data/network/model/request/crypto/swap/TokensApprovalInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    invoke-interface {v0, p3}, Lcom/iMe/storage/data/network/api/own/SwapApi;->getTokensApprovalInfo(Lcom/iMe/storage/data/network/model/request/crypto/swap/TokensApprovalInfoRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getApproveTokensInfo$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAvailableTokensToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 47
    new-instance p1, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    invoke-interface {v0, p1}, Lcom/iMe/storage/data/network/api/own/SwapApi;->getAvailableTokensToSwap(Lcom/iMe/storage/data/network/model/request/crypto/swap/AvailableTokensToSwapRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getAvailableTokensToSwap$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getQuoteToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/lang/Float;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Lcom/iMe/storage/domain/model/wallet/token/Token;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/wallet/swap/TradeType;",
            "Ljava/lang/Float;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tradeType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapApi:Lcom/iMe/storage/data/network/api/own/SwapApi;

    .line 101
    new-instance v8, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;

    .line 102
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {p2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object v3

    .line 104
    invoke-static {p3}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    move-result-object v4

    .line 106
    invoke-virtual {p5}, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->getValue()I

    move-result v6

    move-object v1, v8

    move-object v5, p4

    move-object v7, p6

    .line 101
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;ILjava/lang/Float;)V

    .line 100
    invoke-interface {v0, v8}, Lcom/iMe/storage/data/network/api/own/SwapApi;->getQuoteToSwap(Lcom/iMe/storage/data/network/model/request/crypto/swap/GetQuoteToSwapRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$getQuoteToSwap$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public swap(Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->swapDataSourceFactory:Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSourceFactory;

    .line 87
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs;->getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSourceFactory;->getDataSource(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;

    move-result-object v0

    .line 88
    invoke-interface {v0, p1}, Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;->swap(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$swap$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/crypto/swap/SwapRepositoryImpl$swap$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
