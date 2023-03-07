package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.domain.model.staking.StakingDetailedMetadata;
import com.smedialink.storage.domain.model.staking.StakingMetadata;
import com.smedialink.utils.formatter.BalanceFormatter;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingMetadataExt.kt */
/* loaded from: classes3.dex */
public final class StakingMetadataExtKt {
    public static final String getFormattedAPR(StakingMetadata stakingMetadata) {
        Intrinsics.checkNotNullParameter(stakingMetadata, "<this>");
        return BalanceFormatter.formatPercents$default(BalanceFormatter.INSTANCE, Double.valueOf(stakingMetadata.getApr()), 0, 2, null);
    }

    public static final String getFormattedAPY(StakingMetadata stakingMetadata) {
        Intrinsics.checkNotNullParameter(stakingMetadata, "<this>");
        return BalanceFormatter.formatPercents$default(BalanceFormatter.INSTANCE, Double.valueOf(stakingMetadata.getApy()), 0, 2, null);
    }

    public static final String getFormattedAPR(StakingDetailedMetadata stakingDetailedMetadata) {
        Intrinsics.checkNotNullParameter(stakingDetailedMetadata, "<this>");
        return BalanceFormatter.formatPercents$default(BalanceFormatter.INSTANCE, Double.valueOf(stakingDetailedMetadata.getApr()), 0, 2, null);
    }

    public static final String getFormattedAPY(StakingDetailedMetadata stakingDetailedMetadata) {
        Intrinsics.checkNotNullParameter(stakingDetailedMetadata, "<this>");
        return BalanceFormatter.formatPercents$default(BalanceFormatter.INSTANCE, Double.valueOf(stakingDetailedMetadata.getApy()), 0, 2, null);
    }
}
