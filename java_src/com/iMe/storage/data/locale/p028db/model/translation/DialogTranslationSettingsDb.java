package com.iMe.storage.data.locale.p028db.model.translation;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DialogTranslationSettingsDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.translation.DialogTranslationSettingsDb */
/* loaded from: classes3.dex */
public final class DialogTranslationSettingsDb {
    private final long dialogId;
    private final String inTextTranslateTargetLangCode;
    private final boolean isInTextTranslateEnabled;
    private final boolean isOutTextTranslateEnabled;
    private final String outTextTranslateTargetLangCode;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DialogTranslationSettingsDb) {
            DialogTranslationSettingsDb dialogTranslationSettingsDb = (DialogTranslationSettingsDb) obj;
            return this.isInTextTranslateEnabled == dialogTranslationSettingsDb.isInTextTranslateEnabled && Intrinsics.areEqual(this.inTextTranslateTargetLangCode, dialogTranslationSettingsDb.inTextTranslateTargetLangCode) && this.isOutTextTranslateEnabled == dialogTranslationSettingsDb.isOutTextTranslateEnabled && Intrinsics.areEqual(this.outTextTranslateTargetLangCode, dialogTranslationSettingsDb.outTextTranslateTargetLangCode) && this.dialogId == dialogTranslationSettingsDb.dialogId && this.userId == dialogTranslationSettingsDb.userId;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    public int hashCode() {
        boolean z = this.isInTextTranslateEnabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        String str = this.inTextTranslateTargetLangCode;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        boolean z2 = this.isOutTextTranslateEnabled;
        return ((((((hashCode + (z2 ? 1 : z2 ? 1 : 0)) * 31) + this.outTextTranslateTargetLangCode.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.dialogId)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.userId);
    }

    public String toString() {
        return "DialogTranslationSettingsDb(isInTextTranslateEnabled=" + this.isInTextTranslateEnabled + ", inTextTranslateTargetLangCode=" + this.inTextTranslateTargetLangCode + ", isOutTextTranslateEnabled=" + this.isOutTextTranslateEnabled + ", outTextTranslateTargetLangCode=" + this.outTextTranslateTargetLangCode + ", dialogId=" + this.dialogId + ", userId=" + this.userId + ')';
    }

    public DialogTranslationSettingsDb(boolean z, String str, boolean z2, String outTextTranslateTargetLangCode, long j, long j2) {
        Intrinsics.checkNotNullParameter(outTextTranslateTargetLangCode, "outTextTranslateTargetLangCode");
        this.isInTextTranslateEnabled = z;
        this.inTextTranslateTargetLangCode = str;
        this.isOutTextTranslateEnabled = z2;
        this.outTextTranslateTargetLangCode = outTextTranslateTargetLangCode;
        this.dialogId = j;
        this.userId = j2;
    }

    public final boolean isInTextTranslateEnabled() {
        return this.isInTextTranslateEnabled;
    }

    public final String getInTextTranslateTargetLangCode() {
        return this.inTextTranslateTargetLangCode;
    }

    public final boolean isOutTextTranslateEnabled() {
        return this.isOutTextTranslateEnabled;
    }

    public final String getOutTextTranslateTargetLangCode() {
        return this.outTextTranslateTargetLangCode;
    }

    public final long getDialogId() {
        return this.dialogId;
    }

    public final long getUserId() {
        return this.userId;
    }
}
