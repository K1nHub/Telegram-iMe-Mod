package com.smedialink.storage.domain.model.telegram;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TelegramLocaleInformation.kt */
/* loaded from: classes3.dex */
public final class TelegramLocaleInformation {
    private final String baseLanguage;
    private final boolean isCustomLanguage;
    private final String language;

    public static /* synthetic */ TelegramLocaleInformation copy$default(TelegramLocaleInformation telegramLocaleInformation, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = telegramLocaleInformation.language;
        }
        if ((i & 2) != 0) {
            str2 = telegramLocaleInformation.baseLanguage;
        }
        if ((i & 4) != 0) {
            z = telegramLocaleInformation.isCustomLanguage;
        }
        return telegramLocaleInformation.copy(str, str2, z);
    }

    public final String component1() {
        return this.language;
    }

    public final String component2() {
        return this.baseLanguage;
    }

    public final boolean component3() {
        return this.isCustomLanguage;
    }

    public final TelegramLocaleInformation copy(String language, String baseLanguage, boolean z) {
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(baseLanguage, "baseLanguage");
        return new TelegramLocaleInformation(language, baseLanguage, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TelegramLocaleInformation) {
            TelegramLocaleInformation telegramLocaleInformation = (TelegramLocaleInformation) obj;
            return Intrinsics.areEqual(this.language, telegramLocaleInformation.language) && Intrinsics.areEqual(this.baseLanguage, telegramLocaleInformation.baseLanguage) && this.isCustomLanguage == telegramLocaleInformation.isCustomLanguage;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.language.hashCode() * 31) + this.baseLanguage.hashCode()) * 31;
        boolean z = this.isCustomLanguage;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "TelegramLocaleInformation(language=" + this.language + ", baseLanguage=" + this.baseLanguage + ", isCustomLanguage=" + this.isCustomLanguage + ')';
    }

    public TelegramLocaleInformation(String language, String baseLanguage, boolean z) {
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(baseLanguage, "baseLanguage");
        this.language = language;
        this.baseLanguage = baseLanguage;
        this.isCustomLanguage = z;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getBaseLanguage() {
        return this.baseLanguage;
    }

    public final boolean isCustomLanguage() {
        return this.isCustomLanguage;
    }

    public final String getSupportedLanguage() {
        return this.isCustomLanguage ? this.baseLanguage : this.language;
    }
}
