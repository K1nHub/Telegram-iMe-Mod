package com.iMe.storage.data.network.model.request.notification;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SaveTokenRequest.kt */
/* loaded from: classes4.dex */
public final class SaveTokenRequest {
    private final List<String> allowances;
    private final String platform;
    private final String token;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SaveTokenRequest copy$default(SaveTokenRequest saveTokenRequest, String str, List list, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = saveTokenRequest.token;
        }
        if ((i & 2) != 0) {
            list = saveTokenRequest.allowances;
        }
        if ((i & 4) != 0) {
            str2 = saveTokenRequest.platform;
        }
        return saveTokenRequest.copy(str, list, str2);
    }

    public final String component1() {
        return this.token;
    }

    public final List<String> component2() {
        return this.allowances;
    }

    public final String component3() {
        return this.platform;
    }

    public final SaveTokenRequest copy(String token, List<String> allowances, String platform) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(allowances, "allowances");
        Intrinsics.checkNotNullParameter(platform, "platform");
        return new SaveTokenRequest(token, allowances, platform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SaveTokenRequest) {
            SaveTokenRequest saveTokenRequest = (SaveTokenRequest) obj;
            return Intrinsics.areEqual(this.token, saveTokenRequest.token) && Intrinsics.areEqual(this.allowances, saveTokenRequest.allowances) && Intrinsics.areEqual(this.platform, saveTokenRequest.platform);
        }
        return false;
    }

    public int hashCode() {
        return (((this.token.hashCode() * 31) + this.allowances.hashCode()) * 31) + this.platform.hashCode();
    }

    public String toString() {
        return "SaveTokenRequest(token=" + this.token + ", allowances=" + this.allowances + ", platform=" + this.platform + ')';
    }

    public SaveTokenRequest(String token, List<String> allowances, String platform) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(allowances, "allowances");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.token = token;
        this.allowances = allowances;
        this.platform = platform;
    }

    public /* synthetic */ SaveTokenRequest(String str, List list, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, (i & 4) != 0 ? "ANDROID" : str2);
    }

    public final String getToken() {
        return this.token;
    }

    public final List<String> getAllowances() {
        return this.allowances;
    }

    public final String getPlatform() {
        return this.platform;
    }
}
