package com.iMe.storage.domain.model.translation;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Translation.kt */
/* loaded from: classes4.dex */
public final class Translation {
    private final String sourceLang;
    private final String text;

    public static /* synthetic */ Translation copy$default(Translation translation, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = translation.text;
        }
        if ((i & 2) != 0) {
            str2 = translation.sourceLang;
        }
        return translation.copy(str, str2);
    }

    public final String component1() {
        return this.text;
    }

    public final String component2() {
        return this.sourceLang;
    }

    public final Translation copy(String text, String sourceLang) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(sourceLang, "sourceLang");
        return new Translation(text, sourceLang);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Translation) {
            Translation translation = (Translation) obj;
            return Intrinsics.areEqual(this.text, translation.text) && Intrinsics.areEqual(this.sourceLang, translation.sourceLang);
        }
        return false;
    }

    public int hashCode() {
        return (this.text.hashCode() * 31) + this.sourceLang.hashCode();
    }

    public String toString() {
        return "Translation(text=" + this.text + ", sourceLang=" + this.sourceLang + ')';
    }

    public Translation(String text, String sourceLang) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(sourceLang, "sourceLang");
        this.text = text;
        this.sourceLang = sourceLang;
    }

    public final String getText() {
        return this.text;
    }

    public final String getSourceLang() {
        return this.sourceLang;
    }
}
