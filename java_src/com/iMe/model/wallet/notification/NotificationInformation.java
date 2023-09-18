package com.iMe.model.wallet.notification;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: NotificationInformation.kt */
/* loaded from: classes4.dex */
public final class NotificationInformation {
    private final boolean isPushTokenRegistered;
    private final String pushAllowanceToken;
    private final String userId;

    public static /* synthetic */ NotificationInformation copy$default(NotificationInformation notificationInformation, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = notificationInformation.userId;
        }
        if ((i & 2) != 0) {
            str2 = notificationInformation.pushAllowanceToken;
        }
        if ((i & 4) != 0) {
            z = notificationInformation.isPushTokenRegistered;
        }
        return notificationInformation.copy(str, str2, z);
    }

    public final String component1() {
        return this.userId;
    }

    public final String component2() {
        return this.pushAllowanceToken;
    }

    public final boolean component3() {
        return this.isPushTokenRegistered;
    }

    public final NotificationInformation copy(String userId, String pushAllowanceToken, boolean z) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(pushAllowanceToken, "pushAllowanceToken");
        return new NotificationInformation(userId, pushAllowanceToken, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationInformation) {
            NotificationInformation notificationInformation = (NotificationInformation) obj;
            return Intrinsics.areEqual(this.userId, notificationInformation.userId) && Intrinsics.areEqual(this.pushAllowanceToken, notificationInformation.pushAllowanceToken) && this.isPushTokenRegistered == notificationInformation.isPushTokenRegistered;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.userId.hashCode() * 31) + this.pushAllowanceToken.hashCode()) * 31;
        boolean z = this.isPushTokenRegistered;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "NotificationInformation(userId=" + this.userId + ", pushAllowanceToken=" + this.pushAllowanceToken + ", isPushTokenRegistered=" + this.isPushTokenRegistered + ')';
    }

    public NotificationInformation(String userId, String pushAllowanceToken, boolean z) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(pushAllowanceToken, "pushAllowanceToken");
        this.userId = userId;
        this.pushAllowanceToken = pushAllowanceToken;
        this.isPushTokenRegistered = z;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final String getPushAllowanceToken() {
        return this.pushAllowanceToken;
    }

    public final boolean isPushTokenRegistered() {
        return this.isPushTokenRegistered;
    }
}
