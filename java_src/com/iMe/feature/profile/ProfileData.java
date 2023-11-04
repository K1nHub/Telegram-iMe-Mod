package com.iMe.feature.profile;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
/* compiled from: ProfileData.kt */
/* loaded from: classes3.dex */
public final class ProfileData {
    private final long chatId;
    private final String dialogIdText;
    private final long userId;

    public ProfileData() {
        this(0L, 0L, null, 7, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProfileData) {
            ProfileData profileData = (ProfileData) obj;
            return this.userId == profileData.userId && this.chatId == profileData.chatId && Intrinsics.areEqual(this.dialogIdText, profileData.dialogIdText);
        }
        return false;
    }

    public int hashCode() {
        return (((ProfileData$$ExternalSyntheticBackport0.m1018m(this.userId) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.chatId)) * 31) + this.dialogIdText.hashCode();
    }

    public String toString() {
        return "ProfileData(userId=" + this.userId + ", chatId=" + this.chatId + ", dialogIdText=" + this.dialogIdText + ')';
    }

    public ProfileData(long j, long j2, String dialogIdText) {
        Intrinsics.checkNotNullParameter(dialogIdText, "dialogIdText");
        this.userId = j;
        this.chatId = j2;
        this.dialogIdText = dialogIdText;
    }

    public /* synthetic */ ProfileData(long j, long j2, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? -1L : j, (i & 2) == 0 ? j2 : -1L, (i & 4) != 0 ? "" : str);
    }

    public final long getUserId() {
        return this.userId;
    }

    public final long getChatId() {
        return this.chatId;
    }

    public final long getProfileId() {
        Long longOrNull;
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(this.dialogIdText);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return -1L;
    }
}
