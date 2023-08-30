package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxChatResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxChatResponse {

    /* renamed from: id */
    private final long f390id;
    private final String image;
    private final String name;

    public static /* synthetic */ CryptoBoxChatResponse copy$default(CryptoBoxChatResponse cryptoBoxChatResponse, long j, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = cryptoBoxChatResponse.f390id;
        }
        if ((i & 2) != 0) {
            str = cryptoBoxChatResponse.image;
        }
        if ((i & 4) != 0) {
            str2 = cryptoBoxChatResponse.name;
        }
        return cryptoBoxChatResponse.copy(j, str, str2);
    }

    public final long component1() {
        return this.f390id;
    }

    public final String component2() {
        return this.image;
    }

    public final String component3() {
        return this.name;
    }

    public final CryptoBoxChatResponse copy(long j, String image, String name) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(name, "name");
        return new CryptoBoxChatResponse(j, image, name);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxChatResponse) {
            CryptoBoxChatResponse cryptoBoxChatResponse = (CryptoBoxChatResponse) obj;
            return this.f390id == cryptoBoxChatResponse.f390id && Intrinsics.areEqual(this.image, cryptoBoxChatResponse.image) && Intrinsics.areEqual(this.name, cryptoBoxChatResponse.name);
        }
        return false;
    }

    public int hashCode() {
        return (((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f390id) * 31) + this.image.hashCode()) * 31) + this.name.hashCode();
    }

    public String toString() {
        return "CryptoBoxChatResponse(id=" + this.f390id + ", image=" + this.image + ", name=" + this.name + ')';
    }

    public CryptoBoxChatResponse(long j, String image, String name) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(name, "name");
        this.f390id = j;
        this.image = image;
        this.name = name;
    }

    public final long getId() {
        return this.f390id;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getName() {
        return this.name;
    }
}
