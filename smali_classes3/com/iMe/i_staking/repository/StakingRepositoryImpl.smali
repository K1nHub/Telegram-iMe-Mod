.class public final Lcom/iMe/i_staking/repository/StakingRepositoryImpl;
.super Ljava/lang/Object;
.source "StakingRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/i_staking/repository/StakingRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingRepositoryImpl.kt\ncom/iMe/i_staking/repository/StakingRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,148:1\n70#2:149\n70#2:151\n70#2:153\n70#2:155\n70#2:157\n70#2:159\n70#2:161\n70#2:163\n70#2:165\n70#2:167\n26#3:150\n26#3:152\n26#3:154\n26#3:156\n26#3:158\n26#3:160\n26#3:162\n26#3:164\n26#3:166\n26#3:168\n*S KotlinDebug\n*F\n+ 1 StakingRepositoryImpl.kt\ncom/iMe/i_staking/repository/StakingRepositoryImpl\n*L\n30#1:149\n41#1:151\n53#1:153\n59#1:155\n73#1:157\n79#1:159\n90#1:161\n107#1:163\n119#1:165\n137#1:167\n31#1:150\n42#1:152\n54#1:154\n60#1:156\n74#1:158\n80#1:160\n91#1:162\n108#1:164\n120#1:166\n138#1:168\n*E\n"
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

    .line 77
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 78
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->getApprovalInfo(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 58
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->getStakingDetails(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 63
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 65
    new-instance v9, Lcom/iMe/i_staking/request/StakingOperationsRequest;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 70
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

    .line 65
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingOperationsRequest;-><init>(Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingOperationType;Lcom/smedialink/storage/domain/model/staking/StakingOperationStatus;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/iMe/i_staking/request/StakingOperationsPaginationRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingOperations(Lcom/iMe/i_staking/request/StakingOperationsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingOwnProgrammesList(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammesFilterType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/staking/StakingProgrammes;",
            ">;>;"
        }
    .end annotation

    const-string v0, "orderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 47
    new-instance v9, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;

    .line 49
    sget-object v1, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;->Companion:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;->createFromOrderType(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    move-result-object v5

    .line 50
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

    .line 47
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingOwnProgrammesList(Lcom/iMe/i_staking/request/StakingOwnProgrammesRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStakingProgrammesList(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 36
    new-instance v9, Lcom/iMe/i_staking/request/StakingProgrammesRequest;

    .line 38
    sget-object v1, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;->Companion:Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;->createFromOrderType(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x15

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p2

    .line 36
    invoke-direct/range {v1 .. v8}, Lcom/iMe/i_staking/request/StakingProgrammesRequest;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/Long;Ljava/lang/Integer;Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    invoke-interface {v0, v9}, Lcom/iMe/i_staking/StakingApi;->getStakingProgrammesList(Lcom/iMe/i_staking/request/StakingProgrammesRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

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

    new-instance v1, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 94
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

    .line 83
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 85
    new-instance v1, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;

    .line 87
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    .line 85
    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;-><init>(JLjava/lang/String;)V

    .line 84
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendApprovalPrepare(Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 90
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 123
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

    .line 117
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 118
    new-instance v1, Lcom/iMe/i_staking/request/StakingIdRequest;

    invoke-direct {v1, p1, p2}, Lcom/iMe/i_staking/request/StakingIdRequest;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendClaimPrepare(Lcom/iMe/i_staking/request/StakingIdRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 111
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

    .line 100
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 102
    new-instance v1, Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;-><init>(JLjava/math/BigDecimal;)V

    .line 101
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendDepositPrepare(Lcom/iMe/i_staking/request/StakingDepositPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 141
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

    .line 129
    iget-object v0, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->stakingApi:Lcom/iMe/i_staking/StakingApi;

    .line 131
    new-instance v1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;-><init>(JLjava/math/BigDecimal;Z)V

    .line 130
    invoke-interface {v0, v1}, Lcom/iMe/i_staking/StakingApi;->sendWithdrawPrepare(Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/iMe/i_staking/repository/StakingRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/i_staking/repository/StakingRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
