package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionStatus;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionType;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxActionResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxActionResponse {
    private final String boxId;
    private final BigDecimal feeAmount;
    private final TokenDetailedResponse feeToken;

    /* renamed from: id */
    private final String f389id;
    private final String issuedAt;
    private final String network;
    private final String settledAt;
    private final CryptoBoxActionStatus status;
    private final TokenDetailedResponse token;
    private final BigDecimal tokenAmount;
    private final String txHash;
    private final String txUrl;
    private final CryptoBoxActionType type;

    public final String component1() {
        return this.f389id;
    }

    public final TokenDetailedResponse component10() {
        return this.feeToken;
    }

    public final BigDecimal component11() {
        return this.feeAmount;
    }

    public final String component12() {
        return this.issuedAt;
    }

    public final String component13() {
        return this.settledAt;
    }

    public final String component2() {
        return this.boxId;
    }

    public final CryptoBoxActionType component3() {
        return this.type;
    }

    public final CryptoBoxActionStatus component4() {
        return this.status;
    }

    public final String component5() {
        return this.network;
    }

    public final String component6() {
        return this.txHash;
    }

    public final String component7() {
        return this.txUrl;
    }

    public final TokenDetailedResponse component8() {
        return this.token;
    }

    public final BigDecimal component9() {
        return this.tokenAmount;
    }

    public final CryptoBoxActionResponse copy(String id, String boxId, CryptoBoxActionType type, CryptoBoxActionStatus status, String network, String txHash, String txUrl, TokenDetailedResponse token, BigDecimal tokenAmount, TokenDetailedResponse feeToken, BigDecimal feeAmount, String issuedAt, String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Intrinsics.checkNotNullParameter(txUrl, "txUrl");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(tokenAmount, "tokenAmount");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
        Intrinsics.checkNotNullParameter(issuedAt, "issuedAt");
        return new CryptoBoxActionResponse(id, boxId, type, status, network, txHash, txUrl, token, tokenAmount, feeToken, feeAmount, issuedAt, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxActionResponse) {
            CryptoBoxActionResponse cryptoBoxActionResponse = (CryptoBoxActionResponse) obj;
            return Intrinsics.areEqual(this.f389id, cryptoBoxActionResponse.f389id) && Intrinsics.areEqual(this.boxId, cryptoBoxActionResponse.boxId) && this.type == cryptoBoxActionResponse.type && this.status == cryptoBoxActionResponse.status && Intrinsics.areEqual(this.network, cryptoBoxActionResponse.network) && Intrinsics.areEqual(this.txHash, cryptoBoxActionResponse.txHash) && Intrinsics.areEqual(this.txUrl, cryptoBoxActionResponse.txUrl) && Intrinsics.areEqual(this.token, cryptoBoxActionResponse.token) && Intrinsics.areEqual(this.tokenAmount, cryptoBoxActionResponse.tokenAmount) && Intrinsics.areEqual(this.feeToken, cryptoBoxActionResponse.feeToken) && Intrinsics.areEqual(this.feeAmount, cryptoBoxActionResponse.feeAmount) && Intrinsics.areEqual(this.issuedAt, cryptoBoxActionResponse.issuedAt) && Intrinsics.areEqual(this.settledAt, cryptoBoxActionResponse.settledAt);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((((((this.f389id.hashCode() * 31) + this.boxId.hashCode()) * 31) + this.type.hashCode()) * 31) + this.status.hashCode()) * 31) + this.network.hashCode()) * 31) + this.txHash.hashCode()) * 31) + this.txUrl.hashCode()) * 31) + this.token.hashCode()) * 31) + this.tokenAmount.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + this.feeAmount.hashCode()) * 31) + this.issuedAt.hashCode()) * 31;
        String str = this.settledAt;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "CryptoBoxActionResponse(id=" + this.f389id + ", boxId=" + this.boxId + ", type=" + this.type + ", status=" + this.status + ", network=" + this.network + ", txHash=" + this.txHash + ", txUrl=" + this.txUrl + ", token=" + this.token + ", tokenAmount=" + this.tokenAmount + ", feeToken=" + this.feeToken + ", feeAmount=" + this.feeAmount + ", issuedAt=" + this.issuedAt + ", settledAt=" + this.settledAt + ')';
    }

    public CryptoBoxActionResponse(String id, String boxId, CryptoBoxActionType type, CryptoBoxActionStatus status, String network, String txHash, String txUrl, TokenDetailedResponse token, BigDecimal tokenAmount, TokenDetailedResponse feeToken, BigDecimal feeAmount, String issuedAt, String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(boxId, "boxId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Intrinsics.checkNotNullParameter(txUrl, "txUrl");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(tokenAmount, "tokenAmount");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
        Intrinsics.checkNotNullParameter(issuedAt, "issuedAt");
        this.f389id = id;
        this.boxId = boxId;
        this.type = type;
        this.status = status;
        this.network = network;
        this.txHash = txHash;
        this.txUrl = txUrl;
        this.token = token;
        this.tokenAmount = tokenAmount;
        this.feeToken = feeToken;
        this.feeAmount = feeAmount;
        this.issuedAt = issuedAt;
        this.settledAt = str;
    }

    public final String getId() {
        return this.f389id;
    }

    public final String getBoxId() {
        return this.boxId;
    }

    public final CryptoBoxActionType getType() {
        return this.type;
    }

    public final CryptoBoxActionStatus getStatus() {
        return this.status;
    }

    public final String getNetwork() {
        return this.network;
    }

    public final String getTxHash() {
        return this.txHash;
    }

    public final String getTxUrl() {
        return this.txUrl;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }

    public final BigDecimal getTokenAmount() {
        return this.tokenAmount;
    }

    public final TokenDetailedResponse getFeeToken() {
        return this.feeToken;
    }

    public final BigDecimal getFeeAmount() {
        return this.feeAmount;
    }

    public final String getIssuedAt() {
        return this.issuedAt;
    }

    public final String getSettledAt() {
        return this.settledAt;
    }
}
