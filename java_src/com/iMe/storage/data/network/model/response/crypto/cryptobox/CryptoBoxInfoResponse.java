package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.storage.data.network.model.response.wallet.TokenDetailedResponse;
import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxInfoResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxInfoResponse {
    private final int capacity;
    private final CryptoBoxChatResponse chat;
    private final String contractAddress;
    private final String contractUrl;
    private final String createdAt;
    private final String description;

    /* renamed from: id */
    private final String f391id;
    private final String name;
    private final String network;
    private final String ownerAddress;
    private final int participants;
    private final TokenDetailedResponse rewardToken;
    private final BigDecimal rewardValue;
    private final String status;

    public final String component1() {
        return this.f391id;
    }

    public final TokenDetailedResponse component10() {
        return this.rewardToken;
    }

    public final BigDecimal component11() {
        return this.rewardValue;
    }

    public final int component12() {
        return this.capacity;
    }

    public final int component13() {
        return this.participants;
    }

    public final String component14() {
        return this.createdAt;
    }

    public final CryptoBoxChatResponse component2() {
        return this.chat;
    }

    public final String component3() {
        return this.status;
    }

    public final String component4() {
        return this.network;
    }

    public final String component5() {
        return this.name;
    }

    public final String component6() {
        return this.description;
    }

    public final String component7() {
        return this.ownerAddress;
    }

    public final String component8() {
        return this.contractAddress;
    }

    public final String component9() {
        return this.contractUrl;
    }

    public final CryptoBoxInfoResponse copy(String id, CryptoBoxChatResponse chat, String status, String network, String name, String description, String ownerAddress, String contractAddress, String contractUrl, TokenDetailedResponse rewardToken, BigDecimal rewardValue, int i, int i2, String createdAt) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(ownerAddress, "ownerAddress");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(contractUrl, "contractUrl");
        Intrinsics.checkNotNullParameter(rewardToken, "rewardToken");
        Intrinsics.checkNotNullParameter(rewardValue, "rewardValue");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        return new CryptoBoxInfoResponse(id, chat, status, network, name, description, ownerAddress, contractAddress, contractUrl, rewardToken, rewardValue, i, i2, createdAt);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxInfoResponse) {
            CryptoBoxInfoResponse cryptoBoxInfoResponse = (CryptoBoxInfoResponse) obj;
            return Intrinsics.areEqual(this.f391id, cryptoBoxInfoResponse.f391id) && Intrinsics.areEqual(this.chat, cryptoBoxInfoResponse.chat) && Intrinsics.areEqual(this.status, cryptoBoxInfoResponse.status) && Intrinsics.areEqual(this.network, cryptoBoxInfoResponse.network) && Intrinsics.areEqual(this.name, cryptoBoxInfoResponse.name) && Intrinsics.areEqual(this.description, cryptoBoxInfoResponse.description) && Intrinsics.areEqual(this.ownerAddress, cryptoBoxInfoResponse.ownerAddress) && Intrinsics.areEqual(this.contractAddress, cryptoBoxInfoResponse.contractAddress) && Intrinsics.areEqual(this.contractUrl, cryptoBoxInfoResponse.contractUrl) && Intrinsics.areEqual(this.rewardToken, cryptoBoxInfoResponse.rewardToken) && Intrinsics.areEqual(this.rewardValue, cryptoBoxInfoResponse.rewardValue) && this.capacity == cryptoBoxInfoResponse.capacity && this.participants == cryptoBoxInfoResponse.participants && Intrinsics.areEqual(this.createdAt, cryptoBoxInfoResponse.createdAt);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((this.f391id.hashCode() * 31) + this.chat.hashCode()) * 31) + this.status.hashCode()) * 31) + this.network.hashCode()) * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31) + this.ownerAddress.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.contractUrl.hashCode()) * 31) + this.rewardToken.hashCode()) * 31) + this.rewardValue.hashCode()) * 31) + this.capacity) * 31) + this.participants) * 31) + this.createdAt.hashCode();
    }

    public String toString() {
        return "CryptoBoxInfoResponse(id=" + this.f391id + ", chat=" + this.chat + ", status=" + this.status + ", network=" + this.network + ", name=" + this.name + ", description=" + this.description + ", ownerAddress=" + this.ownerAddress + ", contractAddress=" + this.contractAddress + ", contractUrl=" + this.contractUrl + ", rewardToken=" + this.rewardToken + ", rewardValue=" + this.rewardValue + ", capacity=" + this.capacity + ", participants=" + this.participants + ", createdAt=" + this.createdAt + ')';
    }

    public CryptoBoxInfoResponse(String id, CryptoBoxChatResponse chat, String status, String network, String name, String description, String ownerAddress, String contractAddress, String contractUrl, TokenDetailedResponse rewardToken, BigDecimal rewardValue, int i, int i2, String createdAt) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(ownerAddress, "ownerAddress");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(contractUrl, "contractUrl");
        Intrinsics.checkNotNullParameter(rewardToken, "rewardToken");
        Intrinsics.checkNotNullParameter(rewardValue, "rewardValue");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        this.f391id = id;
        this.chat = chat;
        this.status = status;
        this.network = network;
        this.name = name;
        this.description = description;
        this.ownerAddress = ownerAddress;
        this.contractAddress = contractAddress;
        this.contractUrl = contractUrl;
        this.rewardToken = rewardToken;
        this.rewardValue = rewardValue;
        this.capacity = i;
        this.participants = i2;
        this.createdAt = createdAt;
    }

    public final String getId() {
        return this.f391id;
    }

    public final CryptoBoxChatResponse getChat() {
        return this.chat;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getNetwork() {
        return this.network;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getOwnerAddress() {
        return this.ownerAddress;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }

    public final String getContractUrl() {
        return this.contractUrl;
    }

    public final TokenDetailedResponse getRewardToken() {
        return this.rewardToken;
    }

    public final BigDecimal getRewardValue() {
        return this.rewardValue;
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final int getParticipants() {
        return this.participants;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }
}
