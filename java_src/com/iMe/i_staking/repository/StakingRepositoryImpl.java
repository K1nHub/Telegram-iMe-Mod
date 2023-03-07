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
import com.smedialink.storage.data.network.handlers.ErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.staking.StakingApprovalInfo;
import com.smedialink.storage.domain.model.staking.StakingApprovalTokenType;
import com.smedialink.storage.domain.model.staking.StakingDetailedMetadata;
import com.smedialink.storage.domain.model.staking.StakingOperation;
import com.smedialink.storage.domain.model.staking.StakingOperationType;
import com.smedialink.storage.domain.model.staking.StakingOperationsPaged;
import com.smedialink.storage.domain.model.staking.StakingProgrammes;
import com.smedialink.storage.domain.model.staking.StakingProgrammesFilterType;
import com.smedialink.storage.domain.model.staking.StakingTotalStats;
import com.smedialink.storage.domain.model.staking.StakingTransactionAction;
import com.smedialink.storage.domain.model.staking.StakingTransactionArgs;
import com.smedialink.storage.domain.model.wallet.staking.StakingOrderType;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.math.BigDecimal;
import java.util.Locale;
import kotlin.Pair;
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
        Observable<R> map = stakingTotalStats.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(StakingTotalStatsMapperKt.mapToDomain((StakingTotalStatsResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingTotalStats>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingTotalStats$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingProgrammes>> getStakingProgrammesList(StakingOrderType orderType, Long l) {
        Intrinsics.checkNotNullParameter(orderType, "orderType");
        Observable<ApiBaseResponse<StakingProgrammesResponse>> stakingProgrammesList = this.stakingApi.getStakingProgrammesList(new StakingProgrammesRequest(null, l, null, StakingOrderStrategyRequest.Companion.createFromOrderType(orderType), false, 21, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingProgrammesList.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingProgrammesList$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(StakingMetadataMapperKt.mapToDomain((StakingProgrammesResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingProgrammes>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingProgrammesList$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
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
        Observable<R> map = stakingOwnProgrammesList.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(StakingMetadataMapperKt.mapToDomain((StakingProgrammesResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingProgrammes>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOwnProgrammesList$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingDetailedMetadata>> getStakingDetails(long j) {
        Observable<ApiBaseResponse<StakingDetailedMetadataResponse>> stakingDetails = this.stakingApi.getStakingDetails(new StakingIdRequest(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingDetails.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(StakingDetailedMetadataMapperKt.mapToDomain((StakingDetailedMetadataResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingDetailedMetadata>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperationsPaged>> getStakingOperations(Long l, StakingOperationType stakingOperationType, NetworkType networkType, String str) {
        Observable<ApiBaseResponse<StakingOperationsPagedResponse>> stakingOperations = this.stakingApi.getStakingOperations(new StakingOperationsRequest(l, stakingOperationType, null, networkType, str == null ? null : new StakingOperationsPaginationRequest(str, null, 2, null), 4, null));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = stakingOperations.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingOperationsMapperKt.mapToDomain((StakingOperationsPagedResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingOperationsPaged>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getStakingOperations$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingApprovalInfo>> getApprovalInfo(long j) {
        Observable<ApiBaseResponse<StakingApprovalInfoResponse>> approvalInfo = this.stakingApi.getApprovalInfo(new StakingIdRequest(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = approvalInfo.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingApprovalInfoMapperKt.mapToDomain((StakingApprovalInfoResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<StakingApprovalInfo>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendApprovalPrepare(long j, StakingApprovalTokenType tokenType) {
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendApprovalPrepare = this.stakingApi.sendApprovalPrepare(new StakingApprovalPrepareRequest(j, tokenType.name()));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendApprovalPrepare.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain((StakingWrappedActionResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendApprovalExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        return this.stakingDataSource.sendApprovalExecute(wrappedAction, transactionArgs);
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendDepositPrepare(long j, BigDecimal amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendDepositPrepare = this.stakingApi.sendDepositPrepare(new StakingDepositPrepareRequest(j, amount));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendDepositPrepare.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain((StakingWrappedActionResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendDepositExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        return this.stakingDataSource.sendDepositExecute(wrappedAction, transactionArgs);
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendClaimPrepare(long j) {
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendClaimPrepare = this.stakingApi.sendClaimPrepare(new StakingIdRequest(j));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendClaimPrepare.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain((StakingWrappedActionResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendClaimExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        return this.stakingDataSource.sendClaimExecute(wrappedAction, transactionArgs);
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendWithdrawPrepare(long j, BigDecimal amount, boolean z) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<ApiBaseResponse<StakingWrappedActionResponse>> sendWithdrawPrepare = this.stakingApi.sendWithdrawPrepare(new StakingWithdrawPrepareRequest(j, amount, z));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable<R> map = sendWithdrawPrepare.map(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (!response.isSuccess()) {
                    return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
                }
                return Result.Companion.success(StakingWrappedActionMapperKt.mapToDomain((StakingWrappedActionResponse) response.getPayload()));
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        final ApiErrorHandler apiErrorHandler = this.errorHandler;
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new Function() { // from class: com.iMe.i_staking.repository.StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1
            @Override // io.reactivex.functions.Function
            public final Result<T> apply(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Result.Companion.error$default(Result.Companion, ErrorHandler.this.handleError(it), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperation>> sendWithdrawExecute(String wrappedAction, StakingTransactionArgs transactionArgs) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(transactionArgs, "transactionArgs");
        return this.stakingDataSource.sendWithdrawExecute(wrappedAction, transactionArgs);
    }
}
