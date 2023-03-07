package com.smedialink.mapper.staking;

import com.smedialink.model.staking.StakingAnnualPercentageMode;
import com.smedialink.model.staking.StakingProgrammeItem;
import com.smedialink.storage.domain.model.staking.StakingMetadata;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.smedialink.utils.extentions.model.wallet.StakingMetadataExtKt;
import com.smedialink.utils.formatter.DateFormatter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingMetadataUiMapping.kt */
/* loaded from: classes3.dex */
public final class StakingMetadataUiMappingKt {
    public static final List<StakingProgrammeItem> mapToUi(List<StakingMetadata> list) {
        int collectionSizeOrDefault;
        StakingAnnualPercentageMode stakingAnnualPercentageMode;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (StakingMetadata stakingMetadata : list) {
            long id = stakingMetadata.getId();
            String name = stakingMetadata.getName();
            boolean isParticipated = stakingMetadata.getStats().isParticipated();
            TokenBalance copy$default = TokenBalance.copy$default(TokenBalance.Companion.createEmptyBalanceFor(TokenInfo.Companion.map(stakingMetadata.getToken().getTicker())), null, stakingMetadata.getStats().getDebt().getAsToken().doubleValue(), stakingMetadata.getStats().getDebt().getAsUsd().floatValue(), null, null, stakingMetadata.getNetworkType(), 25, null);
            String formattedAPR = StakingMetadataExtKt.getFormattedAPR(stakingMetadata);
            String formattedAPY = StakingMetadataExtKt.getFormattedAPY(stakingMetadata);
            BigDecimal asToken = stakingMetadata.getStats().getDebt().getAsToken();
            if (asToken.compareTo(stakingMetadata.getCompoundAccrualThreshold()) >= 0) {
                stakingAnnualPercentageMode = StakingAnnualPercentageMode.APY;
            } else {
                stakingAnnualPercentageMode = asToken.compareTo(BigDecimal.ZERO) > 0 ? StakingAnnualPercentageMode.APR : StakingAnnualPercentageMode.NONE;
            }
            arrayList.add(new StakingProgrammeItem(id, name, isParticipated, copy$default, formattedAPR, formattedAPY, stakingAnnualPercentageMode, StringExtKt.formatISODate(stakingMetadata.getEndsAt(), DateFormatter.DateType.ONLY_DATE)));
        }
        return arrayList;
    }
}
