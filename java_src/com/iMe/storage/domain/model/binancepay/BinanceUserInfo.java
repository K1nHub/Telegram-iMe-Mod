package com.iMe.storage.domain.model.binancepay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceUserInfo.kt */
/* loaded from: classes3.dex */
public final class BinanceUserInfo {
    private final String email;

    /* renamed from: id */
    private final String f317id;
    private final boolean isVerified;

    public static /* synthetic */ BinanceUserInfo copy$default(BinanceUserInfo binanceUserInfo, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceUserInfo.email;
        }
        if ((i & 2) != 0) {
            str2 = binanceUserInfo.f317id;
        }
        if ((i & 4) != 0) {
            z = binanceUserInfo.isVerified;
        }
        return binanceUserInfo.copy(str, str2, z);
    }

    public final String component1() {
        return this.email;
    }

    public final String component2() {
        return this.f317id;
    }

    public final boolean component3() {
        return this.isVerified;
    }

    public final BinanceUserInfo copy(String email, String id, boolean z) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(id, "id");
        return new BinanceUserInfo(email, id, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinanceUserInfo) {
            BinanceUserInfo binanceUserInfo = (BinanceUserInfo) obj;
            return Intrinsics.areEqual(this.email, binanceUserInfo.email) && Intrinsics.areEqual(this.f317id, binanceUserInfo.f317id) && this.isVerified == binanceUserInfo.isVerified;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.email.hashCode() * 31) + this.f317id.hashCode()) * 31;
        boolean z = this.isVerified;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "BinanceUserInfo(email=" + this.email + ", id=" + this.f317id + ", isVerified=" + this.isVerified + ')';
    }

    public BinanceUserInfo(String email, String id, boolean z) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(id, "id");
        this.email = email;
        this.f317id = id;
        this.isVerified = z;
    }

    public final String getEmail() {
        return this.email;
    }

    public final String getId() {
        return this.f317id;
    }

    public final boolean isVerified() {
        return this.isVerified;
    }
}
