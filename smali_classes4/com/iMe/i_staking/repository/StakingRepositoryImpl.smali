.class public final Lcom/iMe/i_staking/repository/StakingRepositoryImpl;
.super Ljava/lang/Object;
.source "StakingRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/i_staking/repository/StakingRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingRepositoryImpl.kt\ncom/iMe/i_staking/repository/StakingRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,137:1\n70#2:138\n70#2:140\n70#2:142\n70#2:144\n70#2:146\n70#2:148\n70#2:150\n70#2:152\n70#2:154\n26#3:139\n26#3:141\n26#3:143\n26#3:145\n26#3:147\n26#3:149\n26#3:151\n26#3:153\n26#3:155\n*S KotlinDebug\n*F\n+ 1 StakingRepositoryImpl.kt\ncom/iMe/i_staking/repository/StakingRepositoryImpl\n*L\n30#1:138\n42#1:140\n48#1:142\n62#1:144\n68#1:146\n79#1:148\n96#1:150\n108#1:152\n126#1:154\n31#1:139\n43#1:141\n49#1:143\n63#1:145\n69#1:147\n80#1:149\n97#1:151\n109#1:153\n127#1:155\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final stakingApi:Lcom/iMe/i_staking/StakingApi;

.field private final stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/i_staking/StakingApi;Lcom/iMe/i_staking/datasource/StakingDataSource;)V
    .locals 1

    const-string v0, "errorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingDataSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 20
    iput-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 21
    iput-object p3, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 22
    iput-object p4, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    return-void
.end method


# virtual methods
.method public getApprovalInfo(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingApprovalInfo;",
            ">;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 67
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->getApprovalInfo(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingDetails(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 47
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->getStakingDetails(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingOperations(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperationType;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;",
            ">;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 54
    new-instance v9, Lcom/iMe/i_staking/request/StakingOperationsRequest;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;

    const/4 v3, 0x2

    invoke-direct {v2, p4, v1, v3, v1}, Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v2

    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 54
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingOperationsRequest;-><init>(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingOperations(Lcom/iMe/i_staking/request/StakingOperationsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingProgrammesList(Ljava/lang/Boolean;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 36
    new-instance v9, Lcom/iMe/i_staking/request/StakingProgrammesRequest;

    .line 39
    sget-object v1, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;->Companion:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;

    invoke-virtual {v1, p2}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;->createFromOrderType(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x9

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p3

    .line 36
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingProgrammesRequest;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingProgrammesList(Lcom/iMe/i_staking/request/StakingProgrammesRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingTotalStats()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 29
    invoke-interface {v0}, Lcom/iMe/i_staking/StakingApi;->getStakingTotalStats()Lio/reactivex/Observable;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public sendApprovalExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendApprovalExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public sendApprovalPrepare(JLcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/smedialink/storage/domain/model/staking/StakingApprovalTokenType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "tokenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 74
    new-instance v1, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;

    .line 76
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    .line 74
    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;-><init>(JLjava/lang/String;)V

    .line 73
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendApprovalPrepare(Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendClaimExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendClaimExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public sendClaimPrepare(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 107
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendClaimPrepare(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendDepositExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendDepositExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public sendDepositPrepare(JLjava/math/BigDecimal;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigDecimal;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 91
    new-instance v1, Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;-><init>(JLjava/math/BigDecimal;)V

    .line 90
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendDepositPrepare(Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendWithdrawExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendWithdrawExecute(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public sendWithdrawPrepare(JLjava/math/BigDecimal;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigDecimal;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 120
    new-instance v1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;-><init>(JLjava/math/BigDecimal;Z)V

    .line 119
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendWithdrawPrepare(Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
