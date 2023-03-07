package androidx.core.p010os;

import android.os.LocaleList;
import java.util.Locale;
/* renamed from: androidx.core.os.LocaleListPlatformWrapper */
/* loaded from: classes.dex */
final class LocaleListPlatformWrapper implements LocaleListInterface {
    private final LocaleList mLocaleList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocaleListPlatformWrapper(LocaleList localeList) {
        this.mLocaleList = localeList;
    }

    @Override // androidx.core.p010os.LocaleListInterface
    public Object getLocaleList() {
        return this.mLocaleList;
    }

    @Override // androidx.core.p010os.LocaleListInterface
    public Locale get(int i) {
        return this.mLocaleList.get(i);
    }

    @Override // androidx.core.p010os.LocaleListInterface
    public int size() {
        return this.mLocaleList.size();
    }

    public boolean equals(Object obj) {
        return this.mLocaleList.equals(((LocaleListInterface) obj).getLocaleList());
    }

    public int hashCode() {
        return this.mLocaleList.hashCode();
    }

    public String toString() {
        return this.mLocaleList.toString();
    }
}
