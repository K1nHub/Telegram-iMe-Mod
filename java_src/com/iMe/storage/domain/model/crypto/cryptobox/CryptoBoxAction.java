package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxAction.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxAction {
    private final String boxId;
    private final BigDecimal feeAmount;
    private final TokenDetailed feeToken;

    /* renamed from: id */
    private final String f347id;
    private final String issuedAt;
    private final Network network;
    private final String settledAt;
    private final CryptoBoxActionStatus status;
    private final TokenDetailed token;
    private final BigDecimal tokenAmount;
    private final String txHash;
    private final String txUrl;
    private final CryptoBoxActionType type;

    public final String component1() {
        return this.f347id;
    }

    public final TokenDetailed component10() {
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

    public final Network component5() {
        return this.network;
    }

    public final String component6() {
        return this.txHash;
    }

    public final String component7() {
        return this.txUrl;
    }

    public final TokenDetailed component8() {
        return this.token;
    }

    public final BigDecimal component9() {
        return this.tokenAmount;
    }

    public final CryptoBoxAction copy(String id, String boxId, CryptoBoxActionType type, CryptoBoxActionStatus status, Network network, String txHash, String txUrl, TokenDetailed token, BigDecimal tokenAmount, TokenDetailed feeToken, BigDecimal feeAmount, String issuedAt, String str) {
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
        return new CryptoBoxAction(id, boxId, type, status, network, txHash, txUrl, token, tokenAmount, feeToken, feeAmount, issuedAt, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxAction) {
            CryptoBoxAction cryptoBoxAction = (CryptoBoxAction) obj;
            return Intrinsics.areEqual(this.f347id, cryptoBoxAction.f347id) && Intrinsics.areEqual(this.boxId, cryptoBoxAction.boxId) && this.type == cryptoBoxAction.type && this.status == cryptoBoxAction.status && Intrinsics.areEqual(this.network, cryptoBoxAction.network) && Intrinsics.areEqual(this.txHash, cryptoBoxAction.txHash) && Intrinsics.areEqual(this.txUrl, cryptoBoxAction.txUrl) && Intrinsics.areEqual(this.token, cryptoBoxAction.token) && Intrinsics.areEqual(this.tokenAmount, cryptoBoxAction.tokenAmount) && Intrinsics.areEqual(this.feeToken, cryptoBoxAction.feeToken) && Intrinsics.areEqual(this.feeAmount, cryptoBoxAction.feeAmount) && Intrinsics.areEqual(this.issuedAt, cryptoBoxAction.issuedAt) && Intrinsics.areEqual(this.settledAt, cryptoBoxAction.settledAt);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((((((this.f347id.hashCode() * 31) + this.boxId.hashCode()) * 31) + this.type.hashCode()) * 31) + this.status.hashCode()) * 31) + this.network.hashCode()) * 31) + this.txHash.hashCode()) * 31) + this.txUrl.hashCode()) * 31) + this.token.hashCode()) * 31) + this.tokenAmount.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + this.feeAmount.hashCode()) * 31) + this.issuedAt.hashCode()) * 31;
        String str = this.settledAt;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "CryptoBoxAction(id=" + this.f347id + ", boxId=" + this.boxId + ", type=" + this.type + ", status=" + this.status + ", network=" + this.network + ", txHash=" + this.txHash + ", txUrl=" + this.txUrl + ", token=" + this.token + ", tokenAmount=" + this.tokenAmount + ", feeToken=" + this.feeToken + ", feeAmount=" + this.feeAmount + ", issuedAt=" + this.issuedAt + ", settledAt=" + this.settledAt + ')';
    }

    public CryptoBoxAction(String id, String boxId, CryptoBoxActionType type, CryptoBoxActionStatus status, Network network, String txHash, String txUrl, TokenDetailed token, BigDecimal tokenAmount, TokenDetailed feeToken, BigDecimal feeAmount, String issuedAt, String str) {
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
        this.f347id = id;
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
        return this.f347id;
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

    public final Network getNetwork() {
        return this.network;
    }

    public final String getTxHash() {
        return this.txHash;
    }

    public final String getTxUrl() {
        return this.txUrl;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final BigDecimal getTokenAmount() {
        return this.tokenAmount;
    }

    public final TokenDetailed getFeeToken() {
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
