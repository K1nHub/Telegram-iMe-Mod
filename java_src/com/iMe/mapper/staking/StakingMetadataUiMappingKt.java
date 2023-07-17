package com.iMe.mapper.staking;

import com.iMe.model.staking.StakingAnnualPercentageMode;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.staking.StakingMetadata;
import com.iMe.storage.domain.model.staking.StakingValues;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.StakingMetadataExtKt;
import com.iMe.utils.formatter.DateFormatter;
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
        FiatValue createUSDValue$default;
        TokenBalance copy;
        StakingAnnualPercentageMode stakingAnnualPercentageMode;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (StakingMetadata stakingMetadata : list) {
            TokenBalance createEmptyBalanceFor = TokenBalance.Companion.createEmptyBalanceFor(stakingMetadata.getToken());
            long id = stakingMetadata.getId();
            String name = stakingMetadata.getName();
            boolean isParticipated = stakingMetadata.getStats().isParticipated();
            StakingValues debt = stakingMetadata.getStats().getDebt();
            double doubleValue = NumberExtKt.orZero(debt != null ? debt.getAsToken() : null).doubleValue();
            StakingValues debt2 = stakingMetadata.getStats().getDebt();
            if (debt2 == null || (createUSDValue$default = debt2.getAsFiat()) == null) {
                createUSDValue$default = FiatValue.Companion.createUSDValue$default(FiatValue.Companion, 0.0d, 1, null);
            }
            copy = createEmptyBalanceFor.copy((r16 & 1) != 0 ? createEmptyBalanceFor.total : doubleValue, (r16 & 2) != 0 ? createEmptyBalanceFor.totalInFiat : createUSDValue$default, (r16 & 4) != 0 ? createEmptyBalanceFor.rateToFiat : null, (r16 & 8) != 0 ? createEmptyBalanceFor.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? createEmptyBalanceFor.token : null);
            String formattedAPR = StakingMetadataExtKt.getFormattedAPR(stakingMetadata);
            String formattedAPY = StakingMetadataExtKt.getFormattedAPY(stakingMetadata);
            StakingValues debt3 = stakingMetadata.getStats().getDebt();
            BigDecimal orZero = NumberExtKt.orZero(debt3 != null ? debt3.getAsToken() : null);
            if (orZero.compareTo(stakingMetadata.getCompoundAccrualThreshold()) >= 0) {
                stakingAnnualPercentageMode = StakingAnnualPercentageMode.APY;
            } else {
                stakingAnnualPercentageMode = orZero.compareTo(BigDecimal.ZERO) > 0 ? StakingAnnualPercentageMode.APR : StakingAnnualPercentageMode.NONE;
            }
            arrayList.add(new StakingProgrammeItem(id, name, isParticipated, copy, formattedAPR, formattedAPY, stakingAnnualPercentageMode, StringExtKt.formatISODate(stakingMetadata.getEndsAt(), DateFormatter.DateType.ONLY_DATE)));
        }
        return arrayList;
    }
}
