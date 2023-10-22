package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxChat.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxChat {
    private final String avatarUrl;

    /* renamed from: id */
    private final long f348id;
    private final String name;

    public static /* synthetic */ CryptoBoxChat copy$default(CryptoBoxChat cryptoBoxChat, long j, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = cryptoBoxChat.f348id;
        }
        if ((i & 2) != 0) {
            str = cryptoBoxChat.name;
        }
        if ((i & 4) != 0) {
            str2 = cryptoBoxChat.avatarUrl;
        }
        return cryptoBoxChat.copy(j, str, str2);
    }

    public final long component1() {
        return this.f348id;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.avatarUrl;
    }

    public final CryptoBoxChat copy(long j, String name, String avatarUrl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        return new CryptoBoxChat(j, name, avatarUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxChat) {
            CryptoBoxChat cryptoBoxChat = (CryptoBoxChat) obj;
            return this.f348id == cryptoBoxChat.f348id && Intrinsics.areEqual(this.name, cryptoBoxChat.name) && Intrinsics.areEqual(this.avatarUrl, cryptoBoxChat.avatarUrl);
        }
        return false;
    }

    public int hashCode() {
        return (((ProfileData$$ExternalSyntheticBackport0.m1017m(this.f348id) * 31) + this.name.hashCode()) * 31) + this.avatarUrl.hashCode();
    }

    public String toString() {
        return "CryptoBoxChat(id=" + this.f348id + ", name=" + this.name + ", avatarUrl=" + this.avatarUrl + ')';
    }

    public CryptoBoxChat(long j, String name, String avatarUrl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        this.f348id = j;
        this.name = name;
        this.avatarUrl = avatarUrl;
    }

    public final long getId() {
        return this.f348id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }
}
