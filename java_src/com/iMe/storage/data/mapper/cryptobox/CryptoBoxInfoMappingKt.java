package com.iMe.storage.data.mapper.cryptobox;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxChatResponse;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxInfoResponse;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxChat;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxStatus;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxInfoMapping.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxInfoMappingKt {
    public static final CryptoBoxInfo mapToDomain(CryptoBoxInfoResponse cryptoBoxInfoResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxInfoResponse, "<this>");
        return new CryptoBoxInfo(cryptoBoxInfoResponse.getId(), mapToDomain(cryptoBoxInfoResponse.getChat()), CryptoBoxStatus.Companion.map(cryptoBoxInfoResponse.getStatus()), NetworksHelper.getNetworkById(cryptoBoxInfoResponse.getNetwork()), cryptoBoxInfoResponse.getName(), cryptoBoxInfoResponse.getDescription(), cryptoBoxInfoResponse.getOwnerAddress(), cryptoBoxInfoResponse.getContractAddress(), cryptoBoxInfoResponse.getContractUrl(), TokenMappingKt.mapToDomain(cryptoBoxInfoResponse.getRewardToken()), cryptoBoxInfoResponse.getRewardValue(), cryptoBoxInfoResponse.getCapacity(), cryptoBoxInfoResponse.getParticipants(), cryptoBoxInfoResponse.getCreatedAt());
    }

    public static final CryptoBoxChat mapToDomain(CryptoBoxChatResponse cryptoBoxChatResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxChatResponse, "<this>");
        return new CryptoBoxChat(cryptoBoxChatResponse.getId(), cryptoBoxChatResponse.getName(), cryptoBoxChatResponse.getImage());
    }
}
