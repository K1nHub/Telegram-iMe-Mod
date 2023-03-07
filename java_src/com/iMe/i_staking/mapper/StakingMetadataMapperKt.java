package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingMetadataResponse;
import com.iMe.i_staking.response.StakingProgrammesResponse;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.staking.StakingMetadata;
import com.smedialink.storage.domain.model.staking.StakingProgrammes;
import com.smedialink.storage.domain.model.staking.StakingStats;
import com.smedialink.storage.domain.model.staking.StakingToken;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingMetadataMapper.kt */
/* loaded from: classes3.dex */
public final class StakingMetadataMapperKt {
    public static final StakingProgrammes mapToDomain(StakingProgrammesResponse stakingProgrammesResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(stakingProgrammesResponse, "<this>");
        int total = stakingProgrammesResponse.getTotal();
        List<StakingMetadataResponse> programmes = stakingProgrammesResponse.getProgrammes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(programmes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (StakingMetadataResponse stakingMetadataResponse : programmes) {
            arrayList.add(mapToDomain(stakingMetadataResponse));
        }
        return new StakingProgrammes(total, arrayList);
    }

    public static final StakingMetadata mapToDomain(StakingMetadataResponse stakingMetadataResponse) {
        Intrinsics.checkNotNullParameter(stakingMetadataResponse, "<this>");
        long id = stakingMetadataResponse.getId();
        NetworkType map = NetworkType.Companion.map(stakingMetadataResponse.getNet());
        String name = stakingMetadataResponse.getName();
        String author = stakingMetadataResponse.getAuthor();
        String contract = stakingMetadataResponse.getContract();
        String startsAt = stakingMetadataResponse.getStartsAt();
        String endsAt = stakingMetadataResponse.getEndsAt();
        StakingToken mapToDomain = StakingTokenMapperKt.mapToDomain(stakingMetadataResponse.getToken());
        StakingToken mapToDomain2 = StakingTokenMapperKt.mapToDomain(stakingMetadataResponse.getFeeToken());
        double apy = stakingMetadataResponse.getApy();
        double apr = stakingMetadataResponse.getApr();
        long incomePeriod = stakingMetadataResponse.getIncomePeriod();
        double incomePercent = stakingMetadataResponse.getIncomePercent();
        double prematureWithdrawalFee = stakingMetadataResponse.getPrematureWithdrawalFee();
        double immediateWithdrawalFee = stakingMetadataResponse.getImmediateWithdrawalFee();
        double safeWithdrawalFee = stakingMetadataResponse.getSafeWithdrawalFee();
        long safeWithdrawalDuration = stakingMetadataResponse.getSafeWithdrawalDuration();
        BigDecimal compoundAccrualThreshold = stakingMetadataResponse.getCompoundAccrualThreshold();
        StakingStats mapToDomain3 = StakingStatsMapperKt.mapToDomain(stakingMetadataResponse.getStats());
        AccountLevel.Companion companion = AccountLevel.Companion;
        String minimalRank = stakingMetadataResponse.getMinimalRank();
        if (minimalRank == null) {
            minimalRank = "";
        }
        return new StakingMetadata(id, map, name, author, contract, startsAt, endsAt, mapToDomain, mapToDomain2, apy, apr, incomePeriod, incomePercent, prematureWithdrawalFee, immediateWithdrawalFee, safeWithdrawalFee, safeWithdrawalDuration, compoundAccrualThreshold, mapToDomain3, companion.map(minimalRank), stakingMetadataResponse.getWebsite());
    }
}
