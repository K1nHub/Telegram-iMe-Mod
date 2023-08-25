.class public final Lcom/iMe/i_staking/repository/StakingRepositoryImpl;
.super Ljava/lang/Object;
.source "StakingRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/i_staking/repository/StakingRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingRepositoryImpl.kt\ncom/iMe/i_staking/repository/StakingRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,169:1\n70#2:170\n70#2:172\n70#2:174\n70#2:176\n70#2:178\n70#2:180\n70#2:182\n70#2:185\n70#2:188\n70#2:191\n26#3:171\n26#3:173\n26#3:175\n26#3:177\n26#3:179\n26#3:181\n26#3:183\n26#3:184\n26#3:186\n26#3:187\n26#3:189\n26#3:190\n26#3:192\n26#3:193\n*S KotlinDebug\n*F\n+ 1 StakingRepositoryImpl.kt\ncom/iMe/i_staking/repository/StakingRepositoryImpl\n*L\n45#1:170\n56#1:172\n68#1:174\n74#1:176\n88#1:178\n94#1:180\n105#1:182\n124#1:185\n138#1:188\n158#1:191\n46#1:171\n57#1:173\n69#1:175\n75#1:177\n89#1:179\n95#1:181\n106#1:183\n114#1:184\n125#1:186\n133#1:187\n139#1:189\n147#1:190\n159#1:192\n167#1:193\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final stakingApi:Lcom/iMe/i_staking/StakingApi;

.field private final stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/i_staking/StakingApi;Lcom/iMe/i_staking/datasource/StakingDataSource;)V
    .locals 1

    const-string v0, "errorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingDataSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 37
    iput-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 38
    iput-object p3, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 39
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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingApprovalInfo;",
            ">;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 93
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->getApprovalInfo(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;",
            ">;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 73
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->getStakingDetails(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingOperations(Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/staking/StakingOperationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperationsPaged;",
            ">;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 80
    new-instance v9, Lcom/iMe/i_staking/request/StakingOperationsRequest;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 85
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

    .line 80
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingOperationsRequest;-><init>(Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingOperations(Lcom/iMe/i_staking/request/StakingOperationsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingOwnProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammesFilterType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 62
    new-instance v9, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;

    .line 64
    sget-object v1, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;->Companion:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;->createFromOrderType(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    move-result-object v5

    .line 65
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p2

    .line 62
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingOwnProgrammesList(Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingProgrammesList(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 51
    new-instance v9, Lcom/iMe/i_staking/request/StakingProgrammesRequest;

    .line 53
    sget-object v1, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;->Companion:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;->createFromOrderType(Lcom/iMe/storage/domain/model/wallet/staking/StakingOrderType;)Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p2

    .line 51
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingProgrammesRequest;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingProgrammesList(Lcom/iMe/i_staking/request/StakingProgrammesRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingTotalStats;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 44
    invoke-interface {v0}, Lcom/iMe/i_staking/StakingApi;->getStakingTotalStats()Lio/reactivex/Observable;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalExecute$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalExecute$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendApprovalPrepare(JLcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/iMe/storage/domain/model/staking/StakingApprovalTokenType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "tokenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 100
    new-instance v1, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;

    .line 102
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    .line 100
    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;-><init>(JLjava/lang/String;)V

    .line 99
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendApprovalPrepare(Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    .line 143
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimExecute$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimExecute$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendClaimPrepare(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 137
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendClaimPrepare(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositExecute$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositExecute$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 119
    new-instance v1, Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;-><init>(JLjava/math/BigDecimal;)V

    .line 118
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendDepositPrepare(Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 124
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "wrappedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingDataSource:Lcom/iMe/i_staking/datasource/StakingDataSource;

    .line 163
    invoke-interface {v0, p1, p2}, Lcom/iMe/i_staking/datasource/StakingDataSource;->sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawExecute$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawExecute$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 152
    new-instance v1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;-><init>(JLjava/math/BigDecimal;Z)V

    .line 151
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendWithdrawPrepare(Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
