package com.iMe.mapper.staking;

import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.staking.StakingAnnualPercentageMode;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.staking.StakingDetailedMetadata;
import com.iMe.storage.domain.model.staking.StakingMetadata;
import com.iMe.storage.domain.model.staking.StakingValues;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.StakingMetadataExtKt;
import com.iMe.utils.formatter.DateFormatter;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDetailedMetadataUiMapping.kt */
/* loaded from: classes3.dex */
public final class StakingDetailedMetadataUiMappingKt {
    public static final StakingDetailsItem mapToUi(StakingDetailedMetadata stakingDetailedMetadata) {
        Intrinsics.checkNotNullParameter(stakingDetailedMetadata, "<this>");
        long id = stakingDetailedMetadata.getId();
        String name = stakingDetailedMetadata.getName();
        String author = stakingDetailedMetadata.getAuthor();
        String contract = stakingDetailedMetadata.getContract();
        TokenItem mapToUI = TokenUiMappingKt.mapToUI(stakingDetailedMetadata.getToken());
        TokenItem mapToUI2 = TokenUiMappingKt.mapToUI(stakingDetailedMetadata.getFeeToken());
        String formattedAPR = StakingMetadataExtKt.getFormattedAPR(stakingDetailedMetadata);
        String formattedAPY = StakingMetadataExtKt.getFormattedAPY(stakingDetailedMetadata);
        BigDecimal compoundAccrualThreshold = stakingDetailedMetadata.getCompoundAccrualThreshold();
        String startsAt = stakingDetailedMetadata.getStartsAt();
        DateFormatter.DateType dateType = DateFormatter.DateType.ONLY_DATE;
        return new StakingDetailsItem(id, name, author, mapToUI, contract, mapToUI2, formattedAPR, formattedAPY, compoundAccrualThreshold, StringExtKt.formatISODate(startsAt, dateType), stakingDetailedMetadata.getStartsAt(), StringExtKt.formatISODate(stakingDetailedMetadata.getEndsAt(), dateType), stakingDetailedMetadata.getEndsAt(), stakingDetailedMetadata.getStats().getImpact().getAsToken(), stakingDetailedMetadata.getStats().getDebt().getAsToken(), stakingDetailedMetadata.getStats().getWithdrawnTokens().getReady().doubleValue(), stakingDetailedMetadata.getRules().getCanWithdrawSafely(), stakingDetailedMetadata.getRules().getCanWithdrawImmediately(), stakingDetailedMetadata.getPrematureWithdrawalFee(), stakingDetailedMetadata.getImmediateWithdrawalFee(), stakingDetailedMetadata.getSafeWithdrawalFee(), stakingDetailedMetadata.getSafeWithdrawalDuration(), getAnnualPercentageMode(stakingDetailedMetadata.getStats().getDebt().getAsToken(), stakingDetailedMetadata.getCompoundAccrualThreshold()), stakingDetailedMetadata.getHasEnoughFunds(), stakingDetailedMetadata.getMinimalRank(), stakingDetailedMetadata.getWebsite(), stakingDetailedMetadata.getIncomePeriod(), stakingDetailedMetadata.getIncomePercent());
    }

    public static final StakingDetailsItem mapToUi(StakingMetadata stakingMetadata) {
        Intrinsics.checkNotNullParameter(stakingMetadata, "<this>");
        long id = stakingMetadata.getId();
        String name = stakingMetadata.getName();
        String author = stakingMetadata.getAuthor();
        String contract = stakingMetadata.getContract();
        TokenItem mapToUI = TokenUiMappingKt.mapToUI(stakingMetadata.getToken());
        TokenItem mapToUI2 = TokenUiMappingKt.mapToUI(stakingMetadata.getFeeToken());
        String formattedAPR = StakingMetadataExtKt.getFormattedAPR(stakingMetadata);
        String formattedAPY = StakingMetadataExtKt.getFormattedAPY(stakingMetadata);
        BigDecimal compoundAccrualThreshold = stakingMetadata.getCompoundAccrualThreshold();
        String startsAt = stakingMetadata.getStartsAt();
        DateFormatter.DateType dateType = DateFormatter.DateType.ONLY_DATE;
        String formatISODate = StringExtKt.formatISODate(startsAt, dateType);
        String startsAt2 = stakingMetadata.getStartsAt();
        String formatISODate2 = StringExtKt.formatISODate(stakingMetadata.getEndsAt(), dateType);
        String endsAt = stakingMetadata.getEndsAt();
        BigDecimal ZERO = BigDecimal.ZERO;
        StakingValues debt = stakingMetadata.getStats().getDebt();
        BigDecimal orZero = NumberExtKt.orZero(debt != null ? debt.getAsToken() : null);
        double prematureWithdrawalFee = stakingMetadata.getPrematureWithdrawalFee();
        double immediateWithdrawalFee = stakingMetadata.getImmediateWithdrawalFee();
        double safeWithdrawalFee = stakingMetadata.getSafeWithdrawalFee();
        long safeWithdrawalDuration = stakingMetadata.getSafeWithdrawalDuration();
        StakingValues debt2 = stakingMetadata.getStats().getDebt();
        StakingAnnualPercentageMode annualPercentageMode = getAnnualPercentageMode(NumberExtKt.orZero(debt2 != null ? debt2.getAsToken() : null), stakingMetadata.getCompoundAccrualThreshold());
        AccountLevel minimalRank = stakingMetadata.getMinimalRank();
        String website = stakingMetadata.getWebsite();
        long incomePeriod = stakingMetadata.getIncomePeriod();
        double incomePercent = stakingMetadata.getIncomePercent();
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        return new StakingDetailsItem(id, name, author, mapToUI, contract, mapToUI2, formattedAPR, formattedAPY, compoundAccrualThreshold, formatISODate, startsAt2, formatISODate2, endsAt, ZERO, orZero, 0.0d, false, false, prematureWithdrawalFee, immediateWithdrawalFee, safeWithdrawalFee, safeWithdrawalDuration, annualPercentageMode, true, minimalRank, website, incomePeriod, incomePercent);
    }

    private static final StakingAnnualPercentageMode getAnnualPercentageMode(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.compareTo(bigDecimal2) >= 0 ? StakingAnnualPercentageMode.APY : bigDecimal.compareTo(BigDecimal.ZERO) > 0 ? StakingAnnualPercentageMode.APR : StakingAnnualPercentageMode.NONE;
    }
}
