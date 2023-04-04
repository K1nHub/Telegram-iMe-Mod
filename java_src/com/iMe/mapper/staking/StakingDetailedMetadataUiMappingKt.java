package com.iMe.mapper.staking;

import com.iMe.model.staking.StakingAnnualPercentageMode;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.staking.StakingDetailedMetadata;
import com.iMe.storage.domain.model.staking.StakingMetadata;
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
        NetworkType networkType = stakingDetailedMetadata.getNetworkType();
        String contract = stakingDetailedMetadata.getContract();
        String ticker = stakingDetailedMetadata.getToken().getTicker();
        String ticker2 = stakingDetailedMetadata.getFeeToken().getTicker();
        String formattedAPR = StakingMetadataExtKt.getFormattedAPR(stakingDetailedMetadata);
        String formattedAPY = StakingMetadataExtKt.getFormattedAPY(stakingDetailedMetadata);
        BigDecimal compoundAccrualThreshold = stakingDetailedMetadata.getCompoundAccrualThreshold();
        String startsAt = stakingDetailedMetadata.getStartsAt();
        DateFormatter.DateType dateType = DateFormatter.DateType.ONLY_DATE;
        return new StakingDetailsItem(id, name, author, networkType, contract, ticker, ticker2, formattedAPR, formattedAPY, compoundAccrualThreshold, StringExtKt.formatISODate(startsAt, dateType), stakingDetailedMetadata.getStartsAt(), StringExtKt.formatISODate(stakingDetailedMetadata.getEndsAt(), dateType), stakingDetailedMetadata.getEndsAt(), stakingDetailedMetadata.getStats().getImpact().getAsToken(), stakingDetailedMetadata.getStats().getDebt().getAsToken(), stakingDetailedMetadata.getStats().getWithdrawnTokens().getReady().doubleValue(), stakingDetailedMetadata.getRules().getCanWithdrawSafely(), stakingDetailedMetadata.getRules().getCanWithdrawImmediately(), stakingDetailedMetadata.getPrematureWithdrawalFee(), stakingDetailedMetadata.getImmediateWithdrawalFee(), stakingDetailedMetadata.getSafeWithdrawalFee(), stakingDetailedMetadata.getSafeWithdrawalDuration(), getAnnualPercentageMode(stakingDetailedMetadata.getStats().getDebt().getAsToken(), stakingDetailedMetadata.getCompoundAccrualThreshold()), stakingDetailedMetadata.getHasEnoughFunds(), stakingDetailedMetadata.getMinimalRank(), stakingDetailedMetadata.getWebsite(), stakingDetailedMetadata.getIncomePeriod(), stakingDetailedMetadata.getIncomePercent());
    }

    public static final StakingDetailsItem mapToUi(StakingMetadata stakingMetadata) {
        Intrinsics.checkNotNullParameter(stakingMetadata, "<this>");
        long id = stakingMetadata.getId();
        String name = stakingMetadata.getName();
        String author = stakingMetadata.getAuthor();
        NetworkType networkType = stakingMetadata.getNetworkType();
        String contract = stakingMetadata.getContract();
        String ticker = stakingMetadata.getToken().getTicker();
        String ticker2 = stakingMetadata.getFeeToken().getTicker();
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
        Intrinsics.checkNotNullExpressionValue(ZERO, "ZERO");
        return new StakingDetailsItem(id, name, author, networkType, contract, ticker, ticker2, formattedAPR, formattedAPY, compoundAccrualThreshold, formatISODate, startsAt2, formatISODate2, endsAt, ZERO, stakingMetadata.getStats().getDebt().getAsToken(), 0.0d, false, false, stakingMetadata.getPrematureWithdrawalFee(), stakingMetadata.getImmediateWithdrawalFee(), stakingMetadata.getSafeWithdrawalFee(), stakingMetadata.getSafeWithdrawalDuration(), getAnnualPercentageMode(stakingMetadata.getStats().getDebt().getAsToken(), stakingMetadata.getCompoundAccrualThreshold()), true, stakingMetadata.getMinimalRank(), stakingMetadata.getWebsite(), stakingMetadata.getIncomePeriod(), stakingMetadata.getIncomePercent());
    }

    private static final StakingAnnualPercentageMode getAnnualPercentageMode(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.compareTo(bigDecimal2) >= 0 ? StakingAnnualPercentageMode.APY : bigDecimal.compareTo(BigDecimal.ZERO) > 0 ? StakingAnnualPercentageMode.APR : StakingAnnualPercentageMode.NONE;
    }
}
