package com.iMe.i_staking.repository;

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
import kotlin.Pair;
/* compiled from: StakingRepository.kt */
/* loaded from: classes4.dex */
public interface StakingRepository {
    Observable<Result<StakingApprovalInfo>> getApprovalInfo(long j);

    Observable<Result<StakingDetailedMetadata>> getStakingDetails(long j);

    Observable<Result<StakingOperationsPaged>> getStakingOperations(Long l, StakingOperationType stakingOperationType, String str, String str2);

    Observable<Result<StakingProgrammes>> getStakingOwnProgrammesList(StakingOrderType stakingOrderType, Long l, StakingProgrammesFilterType stakingProgrammesFilterType);

    Observable<Result<StakingProgrammes>> getStakingProgrammesList(StakingOrderType stakingOrderType, Long l);

    Observable<Result<StakingTotalStats>> getStakingTotalStats();

    Observable<Result<StakingOperation>> sendApprovalExecute(String str, StakingTransactionArgs stakingTransactionArgs);

    Observable<Result<Pair<String, StakingTransactionAction>>> sendApprovalPrepare(long j, StakingApprovalTokenType stakingApprovalTokenType);

    Observable<Result<StakingOperation>> sendClaimExecute(String str, StakingTransactionArgs stakingTransactionArgs);

    Observable<Result<Pair<String, StakingTransactionAction>>> sendClaimPrepare(long j);

    Observable<Result<StakingOperation>> sendDepositExecute(String str, StakingTransactionArgs stakingTransactionArgs);

    Observable<Result<Pair<String, StakingTransactionAction>>> sendDepositPrepare(long j, BigDecimal bigDecimal);

    Observable<Result<StakingOperation>> sendWithdrawExecute(String str, StakingTransactionArgs stakingTransactionArgs);

    Observable<Result<Pair<String, StakingTransactionAction>>> sendWithdrawPrepare(long j, BigDecimal bigDecimal, boolean z);
}
