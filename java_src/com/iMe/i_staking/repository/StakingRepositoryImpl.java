package com.iMe.i_staking.repository;

import com.iMe.i_staking.StakingApi;
import com.iMe.i_staking.datasource.StakingDataSource;
import com.iMe.i_staking.request.StakingApprovalPrepareRequest;
import com.iMe.i_staking.request.StakingDepositPrepareRequest;
import com.iMe.i_staking.request.StakingIdRequest;
import com.iMe.i_staking.request.StakingOperationsPaginationRequest;
import com.iMe.i_staking.request.StakingOperationsRequest;
import com.iMe.i_staking.request.StakingOrderStrategyRequest;
import com.iMe.i_staking.request.StakingOwnProgrammesRequest;
import com.iMe.i_staking.request.StakingProgrammesRequest;
import com.iMe.i_staking.request.StakingWithdrawPrepareRequest;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
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
        Observable<R> map = this.stakingApi.getStakingTotalStats().map(new C1498x85ce2865(new StakingRepositoryImpl$getStakingTotalStats$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<StakingTotalStats>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new C1497x2d5c7315(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingProgrammes>> getStakingProgrammesList(StakingOrderType orderType, Long l) {
        Intrinsics.checkNotNullParameter(orderType, "orderType");
        Observable<R> map = this.stakingApi.getStakingProgrammesList(new StakingProgrammesRequest(null, l, null, StakingOrderStrategyRequest.Companion.createFromOrderType(orderType), false, 21, null)).map(new C1498x85ce2865(new C1496x8c291be6(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<StakingProgrammes>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new C1495xdc02197b(this.errorHandler)));
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
        Observable<R> map = stakingApi.getStakingOwnProgrammesList(new StakingOwnProgrammesRequest(null, l, null, createFromOrderType, lowerCase, 5, null)).map(new C1498x85ce2865(new C1494xf12a9dc4(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<StakingProgrammes>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new C1493x1730d35d(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingDetailedMetadata>> getStakingDetails(long j) {
        Observable<R> map = this.stakingApi.getStakingDetails(new StakingIdRequest(j)).map(new C1498x85ce2865(new StakingRepositoryImpl$getStakingDetails$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<StakingDetailedMetadata>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new StakingRepositoryImpl$getStakingDetails$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingOperationsPaged>> getStakingOperations(Long l, StakingOperationType stakingOperationType, NetworkType networkType, String str) {
        Observable<R> map = this.stakingApi.getStakingOperations(new StakingOperationsRequest(l, stakingOperationType, null, networkType, str == null ? null : new StakingOperationsPaginationRequest(str, null, 2, null), 4, null)).map(new C1498x85ce2865(new StakingRepositoryImpl$getStakingOperations$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<StakingOperationsPaged>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new C1492xe0f1d7c4(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<StakingApprovalInfo>> getApprovalInfo(long j) {
        Observable<R> map = this.stakingApi.getApprovalInfo(new StakingIdRequest(j)).map(new C1498x85ce2865(new StakingRepositoryImpl$getApprovalInfo$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<StakingApprovalInfo>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new StakingRepositoryImpl$getApprovalInfo$$inlined$handleError$1(this.errorHandler)));
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "errorHandler: ErrorHandl…ndleError(it).toError() }");
        return onErrorReturn;
    }

    @Override // com.iMe.i_staking.repository.StakingRepository
    public Observable<Result<Pair<String, StakingTransactionAction>>> sendApprovalPrepare(long j, StakingApprovalTokenType tokenType) {
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        Observable<R> map = this.stakingApi.sendApprovalPrepare(new StakingApprovalPrepareRequest(j, tokenType.name())).map(new C1498x85ce2865(new StakingRepositoryImpl$sendApprovalPrepare$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new StakingRepositoryImpl$sendApprovalPrepare$$inlined$handleError$1(this.errorHandler)));
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
        Observable<R> map = this.stakingApi.sendDepositPrepare(new StakingDepositPrepareRequest(j, amount)).map(new C1498x85ce2865(new StakingRepositoryImpl$sendDepositPrepare$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new StakingRepositoryImpl$sendDepositPrepare$$inlined$handleError$1(this.errorHandler)));
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
        Observable<R> map = this.stakingApi.sendClaimPrepare(new StakingIdRequest(j)).map(new C1498x85ce2865(new StakingRepositoryImpl$sendClaimPrepare$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new StakingRepositoryImpl$sendClaimPrepare$$inlined$handleError$1(this.errorHandler)));
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
        Observable<R> map = this.stakingApi.sendWithdrawPrepare(new StakingWithdrawPrepareRequest(j, amount, z)).map(new C1498x85ce2865(new StakingRepositoryImpl$sendWithdrawPrepare$$inlined$mapSuccess$1(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        Observable<Result<Pair<String, StakingTransactionAction>>> onErrorReturn = map.onErrorReturn(new C1498x85ce2865(new StakingRepositoryImpl$sendWithdrawPrepare$$inlined$handleError$1(this.errorHandler)));
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
