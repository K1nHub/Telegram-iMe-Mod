package com.iMe.storage.data.network.model.request.crypto.permission;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ManageCryptoPermissionRequest.kt */
/* loaded from: classes3.dex */
public final class ManageCryptoPermissionRequest {
    private final boolean general;
    private final List<String> targetUserIds;
    private final String type;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ManageCryptoPermissionRequest copy$default(ManageCryptoPermissionRequest manageCryptoPermissionRequest, List list, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = manageCryptoPermissionRequest.targetUserIds;
        }
        if ((i & 2) != 0) {
            z = manageCryptoPermissionRequest.general;
        }
        if ((i & 4) != 0) {
            str = manageCryptoPermissionRequest.type;
        }
        return manageCryptoPermissionRequest.copy(list, z, str);
    }

    public final List<String> component1() {
        return this.targetUserIds;
    }

    public final boolean component2() {
        return this.general;
    }

    public final String component3() {
        return this.type;
    }

    public final ManageCryptoPermissionRequest copy(List<String> targetUserIds, boolean z, String type) {
        Intrinsics.checkNotNullParameter(targetUserIds, "targetUserIds");
        Intrinsics.checkNotNullParameter(type, "type");
        return new ManageCryptoPermissionRequest(targetUserIds, z, type);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ManageCryptoPermissionRequest) {
            ManageCryptoPermissionRequest manageCryptoPermissionRequest = (ManageCryptoPermissionRequest) obj;
            return Intrinsics.areEqual(this.targetUserIds, manageCryptoPermissionRequest.targetUserIds) && this.general == manageCryptoPermissionRequest.general && Intrinsics.areEqual(this.type, manageCryptoPermissionRequest.type);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.targetUserIds.hashCode() * 31;
        boolean z = this.general;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.type.hashCode();
    }

    public String toString() {
        return "ManageCryptoPermissionRequest(targetUserIds=" + this.targetUserIds + ", general=" + this.general + ", type=" + this.type + ')';
    }

    public ManageCryptoPermissionRequest(List<String> targetUserIds, boolean z, String type) {
        Intrinsics.checkNotNullParameter(targetUserIds, "targetUserIds");
        Intrinsics.checkNotNullParameter(type, "type");
        this.targetUserIds = targetUserIds;
        this.general = z;
        this.type = type;
    }

    public final List<String> getTargetUserIds() {
        return this.targetUserIds;
    }

    public final boolean getGeneral() {
        return this.general;
    }

    public final String getType() {
        return this.type;
    }
}
