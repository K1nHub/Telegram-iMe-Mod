package androidx.core.p010os;

import java.util.Locale;
/* renamed from: androidx.core.os.LocaleListInterface */
/* loaded from: classes.dex */
interface LocaleListInterface {
    Locale get(int i);

    Object getLocaleList();

    boolean isEmpty();

    int size();

    String toLanguageTags();
}
