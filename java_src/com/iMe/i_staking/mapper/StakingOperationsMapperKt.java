package com.iMe.i_staking.mapper;

import com.iMe.i_staking.response.StakingOperationCostResponse;
import com.iMe.i_staking.response.StakingOperationResponse;
import com.iMe.i_staking.response.StakingOperationsPagedResponse;
import com.iMe.i_staking.response.StakingTokenResponse;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingOperationStatus;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import com.iMe.storage.domain.model.staking.StakingOperationsPaged;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationsMapper.kt */
/* loaded from: classes3.dex */
public final class StakingOperationsMapperKt {
    public static final StakingOperationsPaged mapToDomain(StakingOperationsPagedResponse stakingOperationsPagedResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(stakingOperationsPagedResponse, "<this>");
        List<StakingOperationResponse> operations = stakingOperationsPagedResponse.getOperations();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(operations, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (StakingOperationResponse stakingOperationResponse : operations) {
            arrayList.add(mapToDomain(stakingOperationResponse));
        }
        return new StakingOperationsPaged(arrayList, stakingOperationsPagedResponse.getNextCursor());
    }

    public static final StakingOperation mapToDomain(StakingOperationResponse stakingOperationResponse) {
        Intrinsics.checkNotNullParameter(stakingOperationResponse, "<this>");
        long id = stakingOperationResponse.getId();
        int stakingId = stakingOperationResponse.getStakingId();
        String transaction = stakingOperationResponse.getTransaction();
        StakingOperationType map = StakingOperationType.Companion.map(stakingOperationResponse.getType());
        StakingOperationStatus map2 = StakingOperationStatus.Companion.map(stakingOperationResponse.getStatus());
        String issuer = stakingOperationResponse.getIssuer();
        String issuedAt = stakingOperationResponse.getIssuedAt();
        String settledAt = stakingOperationResponse.getSettledAt();
        String failReason = stakingOperationResponse.getFailReason();
        StakingOperationCostResponse amount = stakingOperationResponse.getAmount();
        StakingOperationCost mapToDomain = amount != null ? StakingOperationCostMapperKt.mapToDomain(amount) : null;
        StakingOperationCostResponse fee = stakingOperationResponse.getFee();
        StakingOperationCost mapToDomain2 = fee != null ? StakingOperationCostMapperKt.mapToDomain(fee) : null;
        Boolean safe = stakingOperationResponse.getSafe();
        StakingTokenResponse approvedToken = stakingOperationResponse.getApprovedToken();
        return new StakingOperation(id, stakingId, transaction, map, map2, issuer, issuedAt, settledAt, failReason, mapToDomain, mapToDomain2, safe, approvedToken != null ? StakingTokenMapperKt.mapToDomain(approvedToken) : null, stakingOperationResponse.getToken(), NetworkType.Companion.map(stakingOperationResponse.getNetwork()));
    }
}
