package com.iMe.p031ui.languages;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LanguageViewModel.kt */
/* renamed from: com.iMe.ui.languages.LanguageViewModel */
/* loaded from: classes4.dex */
public final class LanguageViewModel {
    private boolean checked;

    /* renamed from: id */
    private final String f462id;
    private final String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LanguageViewModel) {
            LanguageViewModel languageViewModel = (LanguageViewModel) obj;
            return Intrinsics.areEqual(this.f462id, languageViewModel.f462id) && Intrinsics.areEqual(this.name, languageViewModel.name) && this.checked == languageViewModel.checked;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.f462id.hashCode() * 31) + this.name.hashCode()) * 31;
        boolean z = this.checked;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "LanguageViewModel(id=" + this.f462id + ", name=" + this.name + ", checked=" + this.checked + ')';
    }

    public LanguageViewModel(String id, String name, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        this.f462id = id;
        this.name = name;
        this.checked = z;
    }

    public /* synthetic */ LanguageViewModel(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z);
    }

    public final String getId() {
        return this.f462id;
    }

    public final String getName() {
        return this.name;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final void setChecked(boolean z) {
        this.checked = z;
    }
}
