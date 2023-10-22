package com.iMe.storage.data.network.model.response.crypto.nft;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftItemMetadataResponse.kt */
/* loaded from: classes3.dex */
public final class NftItemMetadataResponse {
    private final String description;
    @SerializedName("external_url")
    private final String externalUrl;
    private final String image;
    private final String name;

    public static /* synthetic */ NftItemMetadataResponse copy$default(NftItemMetadataResponse nftItemMetadataResponse, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = nftItemMetadataResponse.name;
        }
        if ((i & 2) != 0) {
            str2 = nftItemMetadataResponse.description;
        }
        if ((i & 4) != 0) {
            str3 = nftItemMetadataResponse.image;
        }
        if ((i & 8) != 0) {
            str4 = nftItemMetadataResponse.externalUrl;
        }
        return nftItemMetadataResponse.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.description;
    }

    public final String component3() {
        return this.image;
    }

    public final String component4() {
        return this.externalUrl;
    }

    public final NftItemMetadataResponse copy(String str, String str2, String str3, String str4) {
        return new NftItemMetadataResponse(str, str2, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftItemMetadataResponse) {
            NftItemMetadataResponse nftItemMetadataResponse = (NftItemMetadataResponse) obj;
            return Intrinsics.areEqual(this.name, nftItemMetadataResponse.name) && Intrinsics.areEqual(this.description, nftItemMetadataResponse.description) && Intrinsics.areEqual(this.image, nftItemMetadataResponse.image) && Intrinsics.areEqual(this.externalUrl, nftItemMetadataResponse.externalUrl);
        }
        return false;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.image;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.externalUrl;
        return hashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "NftItemMetadataResponse(name=" + this.name + ", description=" + this.description + ", image=" + this.image + ", externalUrl=" + this.externalUrl + ')';
    }

    public NftItemMetadataResponse(String str, String str2, String str3, String str4) {
        this.name = str;
        this.description = str2;
        this.image = str3;
        this.externalUrl = str4;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getExternalUrl() {
        return this.externalUrl;
    }
}
