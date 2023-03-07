package com.smedialink.storage.data.network.model.request.notification;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SetNotificationReadRequest.kt */
/* loaded from: classes3.dex */
public final class SetNotificationReadRequest {
    private final List<String> notificationsIDs;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SetNotificationReadRequest copy$default(SetNotificationReadRequest setNotificationReadRequest, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = setNotificationReadRequest.notificationsIDs;
        }
        return setNotificationReadRequest.copy(list);
    }

    public final List<String> component1() {
        return this.notificationsIDs;
    }

    public final SetNotificationReadRequest copy(List<String> notificationsIDs) {
        Intrinsics.checkNotNullParameter(notificationsIDs, "notificationsIDs");
        return new SetNotificationReadRequest(notificationsIDs);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SetNotificationReadRequest) && Intrinsics.areEqual(this.notificationsIDs, ((SetNotificationReadRequest) obj).notificationsIDs);
    }

    public int hashCode() {
        return this.notificationsIDs.hashCode();
    }

    public String toString() {
        return "SetNotificationReadRequest(notificationsIDs=" + this.notificationsIDs + ')';
    }

    public SetNotificationReadRequest(List<String> notificationsIDs) {
        Intrinsics.checkNotNullParameter(notificationsIDs, "notificationsIDs");
        this.notificationsIDs = notificationsIDs;
    }

    public final List<String> getNotificationsIDs() {
        return this.notificationsIDs;
    }
}
