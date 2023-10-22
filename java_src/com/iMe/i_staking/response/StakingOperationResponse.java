package com.iMe.i_staking.response;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationResponse.kt */
/* loaded from: classes3.dex */
public final class StakingOperationResponse {
    private final StakingOperationCostResponse amount;
    private final TokenDetailedResponse approvedToken;
    private final String failReason;
    private final StakingOperationCostResponse fee;

    /* renamed from: id */
    private final long f281id;
    private final String issuedAt;
    private final String issuer;
    private final Boolean safe;
    private final String settledAt;
    private final int stakingId;
    private final String status;
    private final TokenDetailedResponse token;
    private final String transaction;
    private final String type;

    public final long component1() {
        return this.f281id;
    }

    public final StakingOperationCostResponse component10() {
        return this.amount;
    }

    public final StakingOperationCostResponse component11() {
        return this.fee;
    }

    public final Boolean component12() {
        return this.safe;
    }

    public final TokenDetailedResponse component13() {
        return this.approvedToken;
    }

    public final TokenDetailedResponse component14() {
        return this.token;
    }

    public final int component2() {
        return this.stakingId;
    }

    public final String component3() {
        return this.transaction;
    }

    public final String component4() {
        return this.type;
    }

    public final String component5() {
        return this.status;
    }

    public final String component6() {
        return this.issuer;
    }

    public final String component7() {
        return this.issuedAt;
    }

    public final String component8() {
        return this.settledAt;
    }

    public final String component9() {
        return this.failReason;
    }

    public final StakingOperationResponse copy(long j, int i, String transaction, String type, String status, String issuer, String issuedAt, String str, String str2, StakingOperationCostResponse stakingOperationCostResponse, StakingOperationCostResponse stakingOperationCostResponse2, Boolean bool, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse token) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(issuer, "issuer");
        Intrinsics.checkNotNullParameter(issuedAt, "issuedAt");
        Intrinsics.checkNotNullParameter(token, "token");
        return new StakingOperationResponse(j, i, transaction, type, status, issuer, issuedAt, str, str2, stakingOperationCostResponse, stakingOperationCostResponse2, bool, tokenDetailedResponse, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationResponse) {
            StakingOperationResponse stakingOperationResponse = (StakingOperationResponse) obj;
            return this.f281id == stakingOperationResponse.f281id && this.stakingId == stakingOperationResponse.stakingId && Intrinsics.areEqual(this.transaction, stakingOperationResponse.transaction) && Intrinsics.areEqual(this.type, stakingOperationResponse.type) && Intrinsics.areEqual(this.status, stakingOperationResponse.status) && Intrinsics.areEqual(this.issuer, stakingOperationResponse.issuer) && Intrinsics.areEqual(this.issuedAt, stakingOperationResponse.issuedAt) && Intrinsics.areEqual(this.settledAt, stakingOperationResponse.settledAt) && Intrinsics.areEqual(this.failReason, stakingOperationResponse.failReason) && Intrinsics.areEqual(this.amount, stakingOperationResponse.amount) && Intrinsics.areEqual(this.fee, stakingOperationResponse.fee) && Intrinsics.areEqual(this.safe, stakingOperationResponse.safe) && Intrinsics.areEqual(this.approvedToken, stakingOperationResponse.approvedToken) && Intrinsics.areEqual(this.token, stakingOperationResponse.token);
        }
        return false;
    }

    public int hashCode() {
        int m1017m = ((((((((((((ProfileData$$ExternalSyntheticBackport0.m1017m(this.f281id) * 31) + this.stakingId) * 31) + this.transaction.hashCode()) * 31) + this.type.hashCode()) * 31) + this.status.hashCode()) * 31) + this.issuer.hashCode()) * 31) + this.issuedAt.hashCode()) * 31;
        String str = this.settledAt;
        int hashCode = (m1017m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.failReason;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        StakingOperationCostResponse stakingOperationCostResponse = this.amount;
        int hashCode3 = (hashCode2 + (stakingOperationCostResponse == null ? 0 : stakingOperationCostResponse.hashCode())) * 31;
        StakingOperationCostResponse stakingOperationCostResponse2 = this.fee;
        int hashCode4 = (hashCode3 + (stakingOperationCostResponse2 == null ? 0 : stakingOperationCostResponse2.hashCode())) * 31;
        Boolean bool = this.safe;
        int hashCode5 = (hashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        TokenDetailedResponse tokenDetailedResponse = this.approvedToken;
        return ((hashCode5 + (tokenDetailedResponse != null ? tokenDetailedResponse.hashCode() : 0)) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "StakingOperationResponse(id=" + this.f281id + ", stakingId=" + this.stakingId + ", transaction=" + this.transaction + ", type=" + this.type + ", status=" + this.status + ", issuer=" + this.issuer + ", issuedAt=" + this.issuedAt + ", settledAt=" + this.settledAt + ", failReason=" + this.failReason + ", amount=" + this.amount + ", fee=" + this.fee + ", safe=" + this.safe + ", approvedToken=" + this.approvedToken + ", token=" + this.token + ')';
    }

    public StakingOperationResponse(long j, int i, String transaction, String type, String status, String issuer, String issuedAt, String str, String str2, StakingOperationCostResponse stakingOperationCostResponse, StakingOperationCostResponse stakingOperationCostResponse2, Boolean bool, TokenDetailedResponse tokenDetailedResponse, TokenDetailedResponse token) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(issuer, "issuer");
        Intrinsics.checkNotNullParameter(issuedAt, "issuedAt");
        Intrinsics.checkNotNullParameter(token, "token");
        this.f281id = j;
        this.stakingId = i;
        this.transaction = transaction;
        this.type = type;
        this.status = status;
        this.issuer = issuer;
        this.issuedAt = issuedAt;
        this.settledAt = str;
        this.failReason = str2;
        this.amount = stakingOperationCostResponse;
        this.fee = stakingOperationCostResponse2;
        this.safe = bool;
        this.approvedToken = tokenDetailedResponse;
        this.token = token;
    }

    public final long getId() {
        return this.f281id;
    }

    public final int getStakingId() {
        return this.stakingId;
    }

    public final String getTransaction() {
        return this.transaction;
    }

    public final String getType() {
        return this.type;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getIssuer() {
        return this.issuer;
    }

    public final String getIssuedAt() {
        return this.issuedAt;
    }

    public final String getSettledAt() {
        return this.settledAt;
    }

    public final String getFailReason() {
        return this.failReason;
    }

    public final StakingOperationCostResponse getAmount() {
        return this.amount;
    }

    public final StakingOperationCostResponse getFee() {
        return this.fee;
    }

    public final Boolean getSafe() {
        return this.safe;
    }

    public final TokenDetailedResponse getApprovedToken() {
        return this.approvedToken;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }
}
