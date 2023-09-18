package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.math.BigDecimal;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxInfo.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxInfo {
    private final int capacity;
    private final CryptoBoxChat chat;
    private final String contractAddress;
    private final String contractUrl;
    private final String createdAt;
    private final String description;
    private final String fullName;

    /* renamed from: id */
    private final String f416id;
    private final String name;
    private final Network network;
    private final String ownerAddress;
    private final int participantsCount;
    private final TokenDetailed rewardToken;
    private final BigDecimal rewardValue;
    private final CryptoBoxStatus status;

    public final String component1() {
        return this.f416id;
    }

    public final TokenDetailed component10() {
        return this.rewardToken;
    }

    public final BigDecimal component11() {
        return this.rewardValue;
    }

    public final int component12() {
        return this.capacity;
    }

    public final int component13() {
        return this.participantsCount;
    }

    public final String component14() {
        return this.createdAt;
    }

    public final CryptoBoxChat component2() {
        return this.chat;
    }

    public final CryptoBoxStatus component3() {
        return this.status;
    }

    public final Network component4() {
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

    public final CryptoBoxInfo copy(String id, CryptoBoxChat chat, CryptoBoxStatus status, Network network, String name, String description, String ownerAddress, String contractAddress, String contractUrl, TokenDetailed rewardToken, BigDecimal rewardValue, int i, int i2, String createdAt) {
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
        return new CryptoBoxInfo(id, chat, status, network, name, description, ownerAddress, contractAddress, contractUrl, rewardToken, rewardValue, i, i2, createdAt);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxInfo) {
            CryptoBoxInfo cryptoBoxInfo = (CryptoBoxInfo) obj;
            return Intrinsics.areEqual(this.f416id, cryptoBoxInfo.f416id) && Intrinsics.areEqual(this.chat, cryptoBoxInfo.chat) && this.status == cryptoBoxInfo.status && Intrinsics.areEqual(this.network, cryptoBoxInfo.network) && Intrinsics.areEqual(this.name, cryptoBoxInfo.name) && Intrinsics.areEqual(this.description, cryptoBoxInfo.description) && Intrinsics.areEqual(this.ownerAddress, cryptoBoxInfo.ownerAddress) && Intrinsics.areEqual(this.contractAddress, cryptoBoxInfo.contractAddress) && Intrinsics.areEqual(this.contractUrl, cryptoBoxInfo.contractUrl) && Intrinsics.areEqual(this.rewardToken, cryptoBoxInfo.rewardToken) && Intrinsics.areEqual(this.rewardValue, cryptoBoxInfo.rewardValue) && this.capacity == cryptoBoxInfo.capacity && this.participantsCount == cryptoBoxInfo.participantsCount && Intrinsics.areEqual(this.createdAt, cryptoBoxInfo.createdAt);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((this.f416id.hashCode() * 31) + this.chat.hashCode()) * 31) + this.status.hashCode()) * 31) + this.network.hashCode()) * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31) + this.ownerAddress.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.contractUrl.hashCode()) * 31) + this.rewardToken.hashCode()) * 31) + this.rewardValue.hashCode()) * 31) + this.capacity) * 31) + this.participantsCount) * 31) + this.createdAt.hashCode();
    }

    public String toString() {
        return "CryptoBoxInfo(id=" + this.f416id + ", chat=" + this.chat + ", status=" + this.status + ", network=" + this.network + ", name=" + this.name + ", description=" + this.description + ", ownerAddress=" + this.ownerAddress + ", contractAddress=" + this.contractAddress + ", contractUrl=" + this.contractUrl + ", rewardToken=" + this.rewardToken + ", rewardValue=" + this.rewardValue + ", capacity=" + this.capacity + ", participantsCount=" + this.participantsCount + ", createdAt=" + this.createdAt + ')';
    }

    public CryptoBoxInfo(String id, CryptoBoxChat chat, CryptoBoxStatus status, Network network, String name, String description, String ownerAddress, String contractAddress, String contractUrl, TokenDetailed rewardToken, BigDecimal rewardValue, int i, int i2, String createdAt) {
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
        this.f416id = id;
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
        this.participantsCount = i2;
        this.createdAt = createdAt;
        this.fullName = name + ' ' + id;
    }

    public final String getId() {
        return this.f416id;
    }

    public final CryptoBoxChat getChat() {
        return this.chat;
    }

    public final CryptoBoxStatus getStatus() {
        return this.status;
    }

    public final Network getNetwork() {
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

    public final TokenDetailed getRewardToken() {
        return this.rewardToken;
    }

    public final BigDecimal getRewardValue() {
        return this.rewardValue;
    }

    public final int getCapacity() {
        return this.capacity;
    }

    public final int getParticipantsCount() {
        return this.participantsCount;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getFullName() {
        return this.fullName;
    }

    public final String getMembersText() {
        return this.participantsCount + " / " + this.capacity;
    }

    public final String getBalanceText(Function2<? super Number, ? super TokenDetailed, String> balanceFormatterAction) {
        Intrinsics.checkNotNullParameter(balanceFormatterAction, "balanceFormatterAction");
        return balanceFormatterAction.invoke(Double.valueOf((this.capacity - this.participantsCount) * this.rewardValue.doubleValue()), this.rewardToken) + " / " + balanceFormatterAction.invoke(Double.valueOf(this.capacity * this.rewardValue.doubleValue()), this.rewardToken);
    }
}
