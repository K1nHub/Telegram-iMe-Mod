package com.iMe.mapper.staking;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingOperationStatus;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import com.iMe.storage.domain.model.staking.StakingValues;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StackingOperationUiMapping.kt */
/* loaded from: classes4.dex */
public final class StackingOperationUiMappingKt {
    public static final BaseNode mapToUi(StakingOperation stakingOperation, boolean z) {
        StakingValues value;
        Intrinsics.checkNotNullParameter(stakingOperation, "<this>");
        long id = stakingOperation.getId();
        StakingOperationCost amount = stakingOperation.getAmount();
        BigDecimal orZero = NumberExtKt.orZero((amount == null || (value = amount.getValue()) == null) ? null : value.getAsToken());
        String tokenTicker = stakingOperation.getTokenTicker();
        StakingOperationType type = stakingOperation.getType();
        StakingOperationStatus status = stakingOperation.getStatus();
        String createdAt = stakingOperation.getCreatedAt();
        String transaction = stakingOperation.getTransaction();
        StakingOperationCost fee = stakingOperation.getFee();
        Boolean safe = stakingOperation.getSafe();
        return new StakingOperationItem(id, orZero, tokenTicker, type, status, createdAt, transaction, fee, safe != null ? safe.booleanValue() : false, z, TokenUiMappingKt.mapToUI(stakingOperation.getToken()));
    }
}
