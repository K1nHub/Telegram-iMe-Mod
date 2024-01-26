package com.iMe.storage.data.mapper.crypto;

import com.iMe.storage.data.network.model.response.crypto.nft.NftCollectionResponse;
import com.iMe.storage.data.network.model.response.crypto.nft.NftItemResponse;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.model.crypto.nft.NftCollection;
import com.iMe.storage.domain.model.crypto.nft.NftToken;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftMapping.kt */
/* loaded from: classes3.dex */
public final class NftMappingKt {
    public static final NftCollection mapToDomain(NftCollectionResponse nftCollectionResponse) {
        Intrinsics.checkNotNullParameter(nftCollectionResponse, "<this>");
        return new NftCollection(nftCollectionResponse.getId(), nftCollectionResponse.getAddress(), nftCollectionResponse.getNetwork(), nftCollectionResponse.getName(), nftCollectionResponse.getSymbol(), nftCollectionResponse.getSize(), nftCollectionResponse.getUrl(), StringExtKt.convertIpfsIfNeeded(nftCollectionResponse.getImage()), NumberExtKt.orZero(nftCollectionResponse.getTokensOwned()));
    }

    public static final NftToken mapToDomain(NftItemResponse nftItemResponse) {
        Intrinsics.checkNotNullParameter(nftItemResponse, "<this>");
        String id = nftItemResponse.getId();
        String collectionId = nftItemResponse.getCollectionId();
        String tokenId = nftItemResponse.getTokenId();
        String tokenURI = nftItemResponse.getTokenURI();
        String owner = nftItemResponse.getOwner();
        String address = nftItemResponse.getAddress();
        String name = nftItemResponse.getMetadata().getName();
        String str = name == null ? "" : name;
        String description = nftItemResponse.getMetadata().getDescription();
        String str2 = description == null ? "" : description;
        String image = nftItemResponse.getMetadata().getImage();
        if (image == null) {
            image = "";
        }
        String convertIpfsIfNeeded = StringExtKt.convertIpfsIfNeeded(image);
        String externalUrl = nftItemResponse.getMetadata().getExternalUrl();
        return new NftToken(id, collectionId, tokenId, tokenURI, owner, address, str, str2, convertIpfsIfNeeded, externalUrl == null ? "" : externalUrl, mapToDomain(nftItemResponse.getCollection()));
    }
}
