package com.smedialink.mapper.staking;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.wallet.transaction.StakingOperationItem;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.model.staking.StakingOperation;
import com.smedialink.storage.domain.model.staking.StakingOperationCost;
import com.smedialink.storage.domain.model.staking.StakingOperationStatus;
import com.smedialink.storage.domain.model.staking.StakingOperationType;
import com.smedialink.storage.domain.model.staking.StakingValues;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.extentions.model.TokenInfoExtKt;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StackingOperationUiMapping.kt */
/* loaded from: classes3.dex */
public final class StackingOperationUiMappingKt {
    public static final BaseNode mapToUi(StakingOperation stakingOperation, boolean z) {
        StakingValues value;
        Intrinsics.checkNotNullParameter(stakingOperation, "<this>");
        long id = stakingOperation.getId();
        StakingOperationCost amount = stakingOperation.getAmount();
        BigDecimal bigDecimal = null;
        if (amount != null && (value = amount.getValue()) != null) {
            bigDecimal = value.getAsToken();
        }
        BigDecimal orZero = NumberExtKt.orZero(bigDecimal);
        String tokenTicker = stakingOperation.getTokenTicker();
        StakingOperationType type = stakingOperation.getType();
        StakingOperationStatus status = stakingOperation.getStatus();
        String createdAt = stakingOperation.getCreatedAt();
        String transaction = stakingOperation.getTransaction();
        StakingOperationCost fee = stakingOperation.getFee();
        Boolean safe = stakingOperation.getSafe();
        return new StakingOperationItem(id, orZero, tokenTicker, type, status, createdAt, transaction, fee, safe == null ? false : safe.booleanValue(), z, TokenInfoExtKt.getLogo(TokenInfo.Companion.map(stakingOperation.getToken()), stakingOperation.getNetworkType()));
    }
}
