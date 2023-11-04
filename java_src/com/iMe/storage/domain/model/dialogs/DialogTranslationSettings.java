package com.iMe.storage.domain.model.dialogs;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DialogTranslationSettings.kt */
/* loaded from: classes3.dex */
public final class DialogTranslationSettings {
    private long dialogId;
    private String inTextTranslateLangCode;
    private final String incomingTargetLanguageCode;
    private final boolean isEnabled;
    private boolean isInTextTranslateEnabled;
    private boolean isOutTextTranslateEnabled;
    private String outTextTranslateLangCode;
    private final String outgoingTargetLanguageCode;

    public DialogTranslationSettings() {
        this(false, null, false, null, 0L, false, null, null, 255, null);
    }

    public final boolean component1() {
        return this.isInTextTranslateEnabled;
    }

    public final String component2() {
        return this.inTextTranslateLangCode;
    }

    public final boolean component3() {
        return this.isOutTextTranslateEnabled;
    }

    public final String component4() {
        return this.outTextTranslateLangCode;
    }

    public final long component5() {
        return this.dialogId;
    }

    public final boolean component6() {
        return this.isEnabled;
    }

    public final String component7() {
        return this.incomingTargetLanguageCode;
    }

    public final String component8() {
        return this.outgoingTargetLanguageCode;
    }

    public final DialogTranslationSettings copy(boolean z, String str, boolean z2, String outTextTranslateLangCode, long j, boolean z3, String str2, String str3) {
        Intrinsics.checkNotNullParameter(outTextTranslateLangCode, "outTextTranslateLangCode");
        return new DialogTranslationSettings(z, str, z2, outTextTranslateLangCode, j, z3, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DialogTranslationSettings) {
            DialogTranslationSettings dialogTranslationSettings = (DialogTranslationSettings) obj;
            return this.isInTextTranslateEnabled == dialogTranslationSettings.isInTextTranslateEnabled && Intrinsics.areEqual(this.inTextTranslateLangCode, dialogTranslationSettings.inTextTranslateLangCode) && this.isOutTextTranslateEnabled == dialogTranslationSettings.isOutTextTranslateEnabled && Intrinsics.areEqual(this.outTextTranslateLangCode, dialogTranslationSettings.outTextTranslateLangCode) && this.dialogId == dialogTranslationSettings.dialogId && this.isEnabled == dialogTranslationSettings.isEnabled && Intrinsics.areEqual(this.incomingTargetLanguageCode, dialogTranslationSettings.incomingTargetLanguageCode) && Intrinsics.areEqual(this.outgoingTargetLanguageCode, dialogTranslationSettings.outgoingTargetLanguageCode);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean] */
    public int hashCode() {
        boolean z = this.isInTextTranslateEnabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        String str = this.inTextTranslateLangCode;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        ?? r2 = this.isOutTextTranslateEnabled;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int hashCode2 = (((((hashCode + i2) * 31) + this.outTextTranslateLangCode.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.dialogId)) * 31;
        boolean z2 = this.isEnabled;
        int i3 = (hashCode2 + (z2 ? 1 : z2 ? 1 : 0)) * 31;
        String str2 = this.incomingTargetLanguageCode;
        int hashCode3 = (i3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.outgoingTargetLanguageCode;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "DialogTranslationSettings(isInTextTranslateEnabled=" + this.isInTextTranslateEnabled + ", inTextTranslateLangCode=" + this.inTextTranslateLangCode + ", isOutTextTranslateEnabled=" + this.isOutTextTranslateEnabled + ", outTextTranslateLangCode=" + this.outTextTranslateLangCode + ", dialogId=" + this.dialogId + ", isEnabled=" + this.isEnabled + ", incomingTargetLanguageCode=" + this.incomingTargetLanguageCode + ", outgoingTargetLanguageCode=" + this.outgoingTargetLanguageCode + ')';
    }

    public DialogTranslationSettings(boolean z, String str, boolean z2, String outTextTranslateLangCode, long j, boolean z3, String str2, String str3) {
        Intrinsics.checkNotNullParameter(outTextTranslateLangCode, "outTextTranslateLangCode");
        this.isInTextTranslateEnabled = z;
        this.inTextTranslateLangCode = str;
        this.isOutTextTranslateEnabled = z2;
        this.outTextTranslateLangCode = outTextTranslateLangCode;
        this.dialogId = j;
        this.isEnabled = z3;
        this.incomingTargetLanguageCode = str2;
        this.outgoingTargetLanguageCode = str3;
    }

    public /* synthetic */ DialogTranslationSettings(boolean z, String str, boolean z2, String str2, long j, boolean z3, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? "en" : str2, (i & 16) != 0 ? 0L : j, (i & 32) == 0 ? z3 : false, (i & 64) != 0 ? null : str3, (i & 128) == 0 ? str4 : null);
    }

    public final boolean isInTextTranslateEnabled() {
        return this.isInTextTranslateEnabled;
    }

    public final void setInTextTranslateEnabled(boolean z) {
        this.isInTextTranslateEnabled = z;
    }

    public final String getInTextTranslateLangCode() {
        return this.inTextTranslateLangCode;
    }

    public final void setInTextTranslateLangCode(String str) {
        this.inTextTranslateLangCode = str;
    }

    public final boolean isOutTextTranslateEnabled() {
        return this.isOutTextTranslateEnabled;
    }

    public final void setOutTextTranslateEnabled(boolean z) {
        this.isOutTextTranslateEnabled = z;
    }

    public final String getOutTextTranslateLangCode() {
        return this.outTextTranslateLangCode;
    }

    public final void setOutTextTranslateLangCode(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.outTextTranslateLangCode = str;
    }

    public final long getDialogId() {
        return this.dialogId;
    }

    public final void setDialogId(long j) {
        this.dialogId = j;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final String getIncomingTargetLanguageCode() {
        return this.incomingTargetLanguageCode;
    }

    public final String getOutgoingTargetLanguageCode() {
        return this.outgoingTargetLanguageCode;
    }
}
