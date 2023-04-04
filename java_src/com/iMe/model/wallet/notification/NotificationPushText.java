package com.iMe.model.wallet.notification;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NotificationPushText.kt */
/* loaded from: classes3.dex */
public final class NotificationPushText {
    private String action;
    private final String linkedObject;
    private String text;
    private long userId;

    public static /* synthetic */ NotificationPushText copy$default(NotificationPushText notificationPushText, String str, long j, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = notificationPushText.text;
        }
        if ((i & 2) != 0) {
            j = notificationPushText.userId;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            str2 = notificationPushText.action;
        }
        String str4 = str2;
        if ((i & 8) != 0) {
            str3 = notificationPushText.linkedObject;
        }
        return notificationPushText.copy(str, j2, str4, str3);
    }

    public final String component1() {
        return this.text;
    }

    public final long component2() {
        return this.userId;
    }

    public final String component3() {
        return this.action;
    }

    public final String component4() {
        return this.linkedObject;
    }

    public final NotificationPushText copy(String text, long j, String action, String linkedObject) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(linkedObject, "linkedObject");
        return new NotificationPushText(text, j, action, linkedObject);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotificationPushText) {
            NotificationPushText notificationPushText = (NotificationPushText) obj;
            return Intrinsics.areEqual(this.text, notificationPushText.text) && this.userId == notificationPushText.userId && Intrinsics.areEqual(this.action, notificationPushText.action) && Intrinsics.areEqual(this.linkedObject, notificationPushText.linkedObject);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.text.hashCode() * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.userId)) * 31) + this.action.hashCode()) * 31) + this.linkedObject.hashCode();
    }

    public String toString() {
        return "NotificationPushText(text=" + this.text + ", userId=" + this.userId + ", action=" + this.action + ", linkedObject=" + this.linkedObject + ')';
    }

    public NotificationPushText(String text, long j, String action, String linkedObject) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(linkedObject, "linkedObject");
        this.text = text;
        this.userId = j;
        this.action = action;
        this.linkedObject = linkedObject;
    }

    public /* synthetic */ NotificationPushText(String str, long j, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j, str2, (i & 8) != 0 ? "" : str3);
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    public final long getUserId() {
        return this.userId;
    }

    public final void setUserId(long j) {
        this.userId = j;
    }

    public final String getAction() {
        return this.action;
    }

    public final void setAction(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.action = str;
    }

    public final String getLinkedObject() {
        return this.linkedObject;
    }
}
