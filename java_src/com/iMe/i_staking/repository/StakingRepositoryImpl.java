package com.iMe.i_staking.repository;

import com.iMe.i_staking.StakingApi;
import com.iMe.i_staking.datasource.StakingDataSource;
import com.iMe.i_staking.mapper.StakingApprovalInfoMapperKt;
import com.iMe.i_staking.mapper.StakingDetailedMetadataMapperKt;
import com.iMe.i_staking.mapper.StakingMetadataMapperKt;
import com.iMe.i_staking.mapper.StakingOperationsMapperKt;
import com.iMe.i_staking.mapper.StakingTotalStatsMapperKt;
import com.iMe.i_staking.mapper.StakingWrappedActionMapperKt;
import com.iMe.i_staking.request.StakingApprovalPrepareRequest;
import com.iMe.i_staking.request.StakingDepositPrepareRequest;
import com.iMe.i_staking.request.StakingIdRequest;
import com.iMe.i_staking.request.StakingOperationsPaginationRequest;
import com.iMe.i_staking.request.StakingOperationsRequest;
import com.iMe.i_staking.request.StakingOrderStrategyRequest;
import com.iMe.i_staking.request.StakingOwnProgrammesRequest;
import com.iMe.i_staking.request.StakingProgrammesRequest;
import com.iMe.i_staking.request.StakingWithdrawPrepareRequest;
import com.iMe.i_staking.response.StakingApprovalInfoResponse;
import com.iMe.i_staking.response.StakingDetailedMetadataResponse;
import com.iMe.i_staking.response.StakingOperationsPagedResponse;
import com.iMe.i_staking.response.StakingProgrammesResponse;
import com.iMe.i_staking.response.StakingTotalStatsResponse;
import com.iMe.i_staking.response.StakingWrappedActionResponse;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingApprovalInfo;
import com.iMe.storage.domain.model.staking.StakingApprovalTokenType;
import com.iMe.storage.domain.model.staking.StakingDetailedMetadata;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import com.iMe.storage.domain.model.staking.StakingOperationsPaged;
import com.iMe.storage.domain.model.staking.StakingProgrammes;
import com.iMe.storage.domain.model.staking.StakingProgrammesFilterType;
import com.iMe.storage.domain.model.staking.StakingTotalStats;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.model.staking.StakingTransactionArgs;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import io.reactivex.Observable;
import java.math.BigDecimal;
import java.util.Locale;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class StakingRepositoryImpl implements StakingRepository {
    private final ApiErrorHandler errorHandler;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final StakingApi stakingApi;
    private final StakingDataSource stakingDataSource;

    public StakingRepositoryImpl(ApiErrorHandler errorHandler, FirebaseFunctionsErrorHandler firebaseErrorHandler, StakingApi stakingApi, StakingDataSource stakingDataSource) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(stakingApi, "stakingApi");
        Intrinsics.checkNotNullParameter(stakingDataSource, "stakingDataSource");
        this.errorHandler = errorHandler;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.stakingApi = stakingApi;
        this.stakingDataSource = stakingDataSource;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingTotalStats>> getStakingTotalStats() {
        Observable<ApiBaseResponse<StakingTotalStatsResponse>> stakingTotalStats = this.stakingApi.getStakingTotalStats();
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingTotalStats.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingTotalStatsResponse>, Result<? extends StakingTotalStats>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingTotalStats> invoke(ApiBaseResponse<StakingTotalStatsResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(StakingTotalStatsMapperKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingTotalStats>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingTotalStats>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingTotalStats> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingProgrammes>> getStakingProgrammesList(StakingOrderType orderType, Long l) {
        Intrinsics.checkNotNullParameter(orderType, "orderType");
        Observable<ApiBaseResponse<StakingProgrammesResponse>> stakingProgrammesList = this.stakingApi.getStakingProgrammesList(new StakingProgrammesRequest(null, l, null, StakingOrderStrategyRequest.Companion.createFromOrderType(orderType), false, 21, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingProgrammesList.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingProgrammesResponse>, Result<? extends StakingProgrammes>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingProgrammes> invoke(ApiBaseResponse<StakingProgrammesResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(StakingMetadataMapperKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingProgrammes>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingProgrammes>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingProgrammes> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingProgrammes>> getStakingOwnProgrammesList(StakingOrderType orderType, Long l, StakingProgrammesFilterType filterType) {
        Intrinsics.checkNotNullParameter(orderType, "orderType");
        Intrinsics.checkNotNullParameter(filterType, "filterType");
        StakingApi stakingApi = this.stakingApi;
        StakingOrderStrategyRequest createFromOrderType = StakingOrderStrategyRequest.Companion.createFromOrderType(orderType);
        String lowerCase = filterType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        Observable<ApiBaseResponse<StakingProgrammesResponse>> stakingOwnProgrammesList = stakingApi.getStakingOwnProgrammesList(new StakingOwnProgrammesRequest(null, l, null, createFromOrderType, lowerCase, 5, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingOwnProgrammesList.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingProgrammesResponse>, Result<? extends StakingProgrammes>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingProgrammes> invoke(ApiBaseResponse<StakingProgrammesResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(StakingMetadataMapperKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingProgrammes>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingProgrammes>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingProgrammes> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingDetailedMetadata>> getStakingDetails(long j) {
        Observable<ApiBaseResponse<StakingDetailedMetadataResponse>> stakingDetails = this.stakingApi.getStakingDetails(new StakingIdRequest(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingDetails.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingDetailedMetadataResponse>, Result<? extends StakingDetailedMetadata>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingDetailedMetadata> invoke(ApiBaseResponse<StakingDetailedMetadataResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingDetailedMetadataMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingDetailedMetadata>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingDetailedMetadata>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingDetailedMetadata> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperationsPaged>> getStakingOperations(Long l, StakingOperationType stakingOperationType, String str, String str2) {
        Observable<ApiBaseResponse<StakingOperationsPagedResponse>> stakingOperations = this.stakingApi.getStakingOperations(new StakingOperationsRequest(l, stakingOperationType, null, str, str2 == null ? null : new StakingOperationsPaginationRequest(str2, null, 2, null), 4, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingOperations.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingOperationsPagedResponse>, Result<? extends StakingOperationsPaged>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingOperationsPaged> invoke(ApiBaseResponse<StakingOperationsPagedResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingOperationsMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingOperationsPaged>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingOperationsPaged>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingOperationsPaged> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingApprovalInfo>> getApprovalInfo(long j) {
        Observable<ApiBaseResponse<StakingApprovalInfoResponse>> approvalInfo = this.stakingApi.getApprovalInfo(new StakingIdRequest(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = approvalInfo.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingApprovalInfoResponse>, Result<? extends StakingApprovalInfo>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingApprovalInfo> invoke(ApiBaseResponse<StakingApprovalInfoResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingApprovalInfoMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingApprovalInfo>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingApprovalInfo>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingApprovalInfo> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendApprovalPrepare(long j, StakingApprovalTokenType tokenType) {
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendApprovalPrepare = this.stakingApi.sendApprovalPrepare(new StakingApprovalPrepareRequest(j, tokenType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendApprovalPrepare.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingWrappedActionResponse>, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(ApiBaseResponse<StakingWrappedActionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendApprovalExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        Observable<Result<StakingOperation>> sendApprovalExecute = this.stakingDataSource.sendApprovalExecute(wrappedAction, transactionArgs);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingOperation>> onErrorReturn = sendApprovalExecute.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendApprovalExecute$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingOperation> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendDepositPrepare(long j, BigDecimal amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendDepositPrepare = this.stakingApi.sendDepositPrepare(new StakingDepositPrepareRequest(j, amount));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendDepositPrepare.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingWrappedActionResponse>, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(ApiBaseResponse<StakingWrappedActionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendDepositExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        Observable<Result<StakingOperation>> sendDepositExecute = this.stakingDataSource.sendDepositExecute(wrappedAction, transactionArgs);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingOperation>> onErrorReturn = sendDepositExecute.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendDepositExecute$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingOperation> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendClaimPrepare(long j) {
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendClaimPrepare = this.stakingApi.sendClaimPrepare(new StakingIdRequest(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendClaimPrepare.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingWrappedActionResponse>, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(ApiBaseResponse<StakingWrappedActionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendClaimExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        Observable<Result<StakingOperation>> sendClaimExecute = this.stakingDataSource.sendClaimExecute(wrappedAction, transactionArgs);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingOperation>> onErrorReturn = sendClaimExecute.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendClaimExecute$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingOperation> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendWithdrawPrepare(long j, BigDecimal amount, boolean z) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendWithdrawPrepare = this.stakingApi.sendWithdrawPrepare(new StakingWithdrawPrepareRequest(j, amount, z));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendWithdrawPrepare.map(new C1594x85ce2865(new Function1<ApiBaseResponse<StakingWrappedActionResponse>, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(ApiBaseResponse<StakingWrappedActionResponse> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain(response.getPayload()));
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends Pair<? extends String, ? extends StakingTransactionAction>>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<Pair<? extends String, ? extends StakingTransactionAction>> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendWithdrawExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        Observable<Result<StakingOperation>> sendWithdrawExecute = this.stakingDataSource.sendWithdrawExecute(wrappedAction, transactionArgs);
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingOperation>> onErrorReturn = sendWithdrawExecute.onErrorReturn(new C1594x85ce2865(new Function1<Throwable, Result<? extends StakingOperation>>() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendWithdrawExecute$$inlined$handleError$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<StakingOperation> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }
}
