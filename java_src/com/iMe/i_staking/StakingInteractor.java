package com.iMe.i_staking;

import com.iMe.i_staking.repository.StakingRepository;
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
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
import java.math.BigDecimal;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingInteractor.kt */
/* loaded from: classes3.dex */
public final class StakingInteractor {
    private final SchedulersProvider schedulersProvider;
    private final StakingRepository stakingRepository;

    public StakingInteractor(SchedulersProvider schedulersProvider, StakingRepository stakingRepository) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingRepository, "stakingRepository");
        this.schedulersProvider = schedulersProvider;
        this.stakingRepository = stakingRepository;
    }

    public final Observable<Result<StakingTotalStats>> getStakingTotalStats() {
        Observable<Result<StakingTotalStats>> subscribeOn = this.stakingRepository.getStakingTotalStats().startWith((Observable<Result<StakingTotalStats>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingProgrammes>> getStakingProgrammesList(StakingOrderType orderType, Long l) {
        Intrinsics.checkNotNullParameter(orderType, "orderType");
        Observable<Result<StakingProgrammes>> subscribeOn = this.stakingRepository.getStakingProgrammesList(orderType, l).startWith((Observable<Result<StakingProgrammes>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingProgrammes>> getStakingOwnProgrammesList(StakingOrderType orderType, Long l, StakingProgrammesFilterType filterType) {
        Intrinsics.checkNotNullParameter(orderType, "orderType");
        Intrinsics.checkNotNullParameter(filterType, "filterType");
        Observable<Result<StakingProgrammes>> subscribeOn = this.stakingRepository.getStakingOwnProgrammesList(orderType, l, filterType).startWith((Observable<Result<StakingProgrammes>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingDetailedMetadata>> getStakingDetails(long j) {
        Observable<Result<StakingDetailedMetadata>> subscribeOn = this.stakingRepository.getStakingDetails(j).startWith((Observable<Result<StakingDetailedMetadata>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getStakingOperations$default(StakingInteractor stakingInteractor, Long l, StakingOperationType stakingOperationType, NetworkType networkType, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        if ((i & 2) != 0) {
            stakingOperationType = null;
        }
        if ((i & 4) != 0) {
            networkType = null;
        }
        return stakingInteractor.getStakingOperations(l, stakingOperationType, networkType, str);
    }

    public final Observable<Result<StakingOperationsPaged>> getStakingOperations(Long l, StakingOperationType stakingOperationType, NetworkType networkType, String str) {
        Observable<Result<StakingOperationsPaged>> subscribeOn = this.stakingRepository.getStakingOperations(l, stakingOperationType, networkType, str).startWith((Observable<Result<StakingOperationsPaged>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingApprovalInfo>> getApprovalInfo(long j) {
        Observable<Result<StakingApprovalInfo>> subscribeOn = this.stakingRepository.getApprovalInfo(j).startWith((Observable<Result<StakingApprovalInfo>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Pair<String, StakingTransactionAction>>> sendApprovalPrepare(long j, StakingApprovalTokenType tokenType) {
        Intrinsics.checkNotNullParameter(tokenType, "tokenType");
        Observable<Result<Pair<String, StakingTransactionAction>>> subscribeOn = this.stakingRepository.sendApprovalPrepare(j, tokenType).startWith((Observable<Result<Pair<String, StakingTransactionAction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingOperation>> sendApprovalExecute(String wrappedAction, StakingTransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<StakingOperation>> subscribeOn = this.stakingRepository.sendApprovalExecute(wrappedAction, args).startWith((Observable<Result<StakingOperation>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Pair<String, StakingTransactionAction>>> sendDepositPrepare(long j, BigDecimal amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<Result<Pair<String, StakingTransactionAction>>> subscribeOn = this.stakingRepository.sendDepositPrepare(j, amount).startWith((Observable<Result<Pair<String, StakingTransactionAction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingOperation>> sendDepositExecute(String wrappedAction, StakingTransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<StakingOperation>> subscribeOn = this.stakingRepository.sendDepositExecute(wrappedAction, args).startWith((Observable<Result<StakingOperation>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Pair<String, StakingTransactionAction>>> sendClaimPrepare(long j) {
        Observable<Result<Pair<String, StakingTransactionAction>>> subscribeOn = this.stakingRepository.sendClaimPrepare(j).startWith((Observable<Result<Pair<String, StakingTransactionAction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingOperation>> sendClaimExecute(String wrappedAction, StakingTransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<StakingOperation>> subscribeOn = this.stakingRepository.sendClaimExecute(wrappedAction, args).startWith((Observable<Result<StakingOperation>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Pair<String, StakingTransactionAction>>> sendWithdrawPrepare(long j, BigDecimal amount, boolean z) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Observable<Result<Pair<String, StakingTransactionAction>>> subscribeOn = this.stakingRepository.sendWithdrawPrepare(j, amount, z).startWith((Observable<Result<Pair<String, StakingTransactionAction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<StakingOperation>> sendWithdrawExecute(String wrappedAction, StakingTransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<StakingOperation>> subscribeOn = this.stakingRepository.sendWithdrawExecute(wrappedAction, args).startWith((Observable<Result<StakingOperation>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "stakingRepository\n      …(schedulersProvider.io())");
        return subscribeOn;
    }
}
