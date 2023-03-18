package com.smedialink.storage.data.network.model.request.crypto.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ManageAccessToMyDataRequest.kt */
/* loaded from: classes3.dex */
public final class ManageAccessToMyDataRequest {
    private final List<GivePermissionRequest> permissions;
    private final String targetUserId;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ManageAccessToMyDataRequest copy$default(ManageAccessToMyDataRequest manageAccessToMyDataRequest, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = manageAccessToMyDataRequest.targetUserId;
        }
        if ((i & 2) != 0) {
            list = manageAccessToMyDataRequest.permissions;
        }
        return manageAccessToMyDataRequest.copy(str, list);
    }

    public final String component1() {
        return this.targetUserId;
    }

    public final List<GivePermissionRequest> component2() {
        return this.permissions;
    }

    public final ManageAccessToMyDataRequest copy(String str, List<GivePermissionRequest> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        return new ManageAccessToMyDataRequest(str, permissions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ManageAccessToMyDataRequest) {
            ManageAccessToMyDataRequest manageAccessToMyDataRequest = (ManageAccessToMyDataRequest) obj;
            return Intrinsics.areEqual(this.targetUserId, manageAccessToMyDataRequest.targetUserId) && Intrinsics.areEqual(this.permissions, manageAccessToMyDataRequest.permissions);
        }
        return false;
    }

    public int hashCode() {
        String str = this.targetUserId;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.permissions.hashCode();
    }

    public String toString() {
        return "ManageAccessToMyDataRequest(targetUserId=" + this.targetUserId + ", permissions=" + this.permissions + ')';
    }

    public ManageAccessToMyDataRequest(String str, List<GivePermissionRequest> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        this.targetUserId = str;
        this.permissions = permissions;
    }

    public final String getTargetUserId() {
        return this.targetUserId;
    }

    public final List<GivePermissionRequest> getPermissions() {
        return this.permissions;
    }

    /* compiled from: ManageAccessToMyDataRequest.kt */
    /* loaded from: classes3.dex */
    public static final class GivePermissionRequest {
        private final String access;
        private final String action;

        public static /* synthetic */ GivePermissionRequest copy$default(GivePermissionRequest givePermissionRequest, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = givePermissionRequest.action;
            }
            if ((i & 2) != 0) {
                str2 = givePermissionRequest.access;
            }
            return givePermissionRequest.copy(str, str2);
        }

        public final String component1() {
            return this.action;
        }

        public final String component2() {
            return this.access;
        }

        public final GivePermissionRequest copy(String action, String access) {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(access, "access");
            return new GivePermissionRequest(action, access);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof GivePermissionRequest) {
                GivePermissionRequest givePermissionRequest = (GivePermissionRequest) obj;
                return Intrinsics.areEqual(this.action, givePermissionRequest.action) && Intrinsics.areEqual(this.access, givePermissionRequest.access);
            }
            return false;
        }

        public int hashCode() {
            return (this.action.hashCode() * 31) + this.access.hashCode();
        }

        public String toString() {
            return "GivePermissionRequest(action=" + this.action + ", access=" + this.access + ')';
        }

        public GivePermissionRequest(String action, String access) {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(access, "access");
            this.action = action;
            this.access = access;
        }

        public final String getAction() {
            return this.action;
        }

        public final String getAccess() {
            return this.access;
        }
    }
}
