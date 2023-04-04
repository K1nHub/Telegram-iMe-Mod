package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.nft.avatar.NftAvatarResponse;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftCollection;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftCollectionStatus;
import com.iMe.storage.domain.model.crypto.nft.avatar.NftToken;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftMapping.kt */
/* loaded from: classes3.dex */
public final class NftMappingKt {
    public static final NftToken mapToDomain(NftAvatarResponse nftAvatarResponse) {
        Intrinsics.checkNotNullParameter(nftAvatarResponse, "<this>");
        return new NftToken(nftAvatarResponse.getId(), nftAvatarResponse.getTokenId(), nftAvatarResponse.getOwner(), nftAvatarResponse.getImage(), nftAvatarResponse.getMeta(), nftAvatarResponse.getTitle(), nftAvatarResponse.getDescription(), mapToDomain(nftAvatarResponse.getCollection()));
    }

    public static final NftCollection mapToDomain(NftAvatarResponse.NftCollectionResponse nftCollectionResponse) {
        Intrinsics.checkNotNullParameter(nftCollectionResponse, "<this>");
        return new NftCollection(nftCollectionResponse.getId(), nftCollectionResponse.getTitle(), nftCollectionResponse.getContractAddress(), nftCollectionResponse.getTransactionHash(), NftCollectionStatus.Companion.map(nftCollectionResponse.getStatus()));
    }
}
