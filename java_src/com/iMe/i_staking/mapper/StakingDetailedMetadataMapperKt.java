package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingDetailedMetadataResponse;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.staking.StakingDetailedMetadata;
import com.iMe.storage.domain.model.staking.StakingDetailedStats;
import com.iMe.storage.domain.model.staking.StakingRules;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingDetailedMetadataMapper.kt */
/* loaded from: classes3.dex */
public final class StakingDetailedMetadataMapperKt {
    public static final StakingDetailedMetadata mapToDomain(StakingDetailedMetadataResponse stakingDetailedMetadataResponse) {
        Intrinsics.checkNotNullParameter(stakingDetailedMetadataResponse, "<this>");
        long id = stakingDetailedMetadataResponse.getId();
        String net2 = stakingDetailedMetadataResponse.getNet();
        String name = stakingDetailedMetadataResponse.getName();
        String author = stakingDetailedMetadataResponse.getAuthor();
        String contract = stakingDetailedMetadataResponse.getContract();
        String startsAt = stakingDetailedMetadataResponse.getStartsAt();
        String endsAt = stakingDetailedMetadataResponse.getEndsAt();
        TokenDetailed mapToDomain = TokenMappingKt.mapToDomain(stakingDetailedMetadataResponse.getToken());
        TokenDetailed mapToDomain2 = TokenMappingKt.mapToDomain(stakingDetailedMetadataResponse.getFeeToken());
        double apy = stakingDetailedMetadataResponse.getApy();
        double apr = stakingDetailedMetadataResponse.getApr();
        long incomePeriod = stakingDetailedMetadataResponse.getIncomePeriod();
        double incomePercent = stakingDetailedMetadataResponse.getIncomePercent();
        double prematureWithdrawalFee = stakingDetailedMetadataResponse.getPrematureWithdrawalFee();
        double immediateWithdrawalFee = stakingDetailedMetadataResponse.getImmediateWithdrawalFee();
        double safeWithdrawalFee = stakingDetailedMetadataResponse.getSafeWithdrawalFee();
        long safeWithdrawalDuration = stakingDetailedMetadataResponse.getSafeWithdrawalDuration();
        BigDecimal compoundAccrualThreshold = stakingDetailedMetadataResponse.getCompoundAccrualThreshold();
        StakingDetailedStats mapToDomain3 = StakingDetailedStatsMapperKt.mapToDomain(stakingDetailedMetadataResponse.getStats());
        StakingRules mapToDomain4 = StakingRulesMapperKt.mapToDomain(stakingDetailedMetadataResponse.getRules());
        boolean hasEnoughFunds = stakingDetailedMetadataResponse.getHasEnoughFunds();
        AccountLevel.Companion companion = AccountLevel.Companion;
        String minimalRank = stakingDetailedMetadataResponse.getMinimalRank();
        if (minimalRank == null) {
            minimalRank = "";
        }
        return new StakingDetailedMetadata(id, net2, name, author, contract, startsAt, endsAt, mapToDomain, mapToDomain2, apy, apr, incomePeriod, incomePercent, prematureWithdrawalFee, immediateWithdrawalFee, safeWithdrawalFee, safeWithdrawalDuration, compoundAccrualThreshold, mapToDomain3, mapToDomain4, hasEnoughFunds, companion.map(minimalRank), stakingDetailedMetadataResponse.getWebsite());
    }
}
