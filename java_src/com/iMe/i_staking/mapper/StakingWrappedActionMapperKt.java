package com.iMe.i_staking.mapper;

import com.auth0.android.jwt.JWT;
import com.iMe.i_staking.response.StakingWrappedActionResponse;
import com.iMe.storage.domain.model.staking.StakingTransactionAction;
import com.iMe.storage.domain.model.staking.StakingTransactionArgs;
import com.iMe.storage.domain.model.staking.StakingTransactionGas;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: StakingWrappedActionMapper.kt */
/* loaded from: classes3.dex */
public final class StakingWrappedActionMapperKt {
    public static final Pair<String, StakingTransactionAction> mapToDomain(StakingWrappedActionResponse stakingWrappedActionResponse) {
        Intrinsics.checkNotNullParameter(stakingWrappedActionResponse, "<this>");
        try {
            JWT jwt = new JWT(stakingWrappedActionResponse.getWrappedAction());
            StakingTransactionArgs stakingTransactionArgs = (StakingTransactionArgs) jwt.getClaim("tx").asObject(StakingTransactionArgs.class);
            if (stakingTransactionArgs == null) {
                throw new Throwable();
            }
            Intrinsics.checkNotNullExpressionValue(stakingTransactionArgs, "jwt.getClaim(TRANSACTION…     ?: throw Throwable()");
            StakingTransactionGas stakingTransactionGas = (StakingTransactionGas) jwt.getClaim("gas").asObject(StakingTransactionGas.class);
            if (stakingTransactionGas != null) {
                Intrinsics.checkNotNullExpressionValue(stakingTransactionGas, "jwt.getClaim(GAS_KEY).as…     ?: throw Throwable()");
                return TuplesKt.m85to(stakingWrappedActionResponse.getWrappedAction(), new StakingTransactionAction(stakingTransactionArgs, stakingTransactionGas));
            }
            throw new Throwable();
        } catch (Exception e) {
            Timber.m6e(e);
            return TuplesKt.m85to(stakingWrappedActionResponse.getWrappedAction(), null);
        }
    }
}
