package kotlin.text;

import kotlin.jvm.functions.Function1;
/* loaded from: classes4.dex */
public final class StringsKt extends StringsKt___StringsKt {
    public static /* bridge */ /* synthetic */ <T extends Appendable> T append(T t, CharSequence... charSequenceArr) {
        return (T) StringsKt__AppendableKt.append(t, charSequenceArr);
    }

    public static /* bridge */ /* synthetic */ <T> void appendElement(Appendable appendable, T t, Function1<? super T, ? extends CharSequence> function1) {
        StringsKt__AppendableKt.appendElement(appendable, t, function1);
    }

    public static /* bridge */ /* synthetic */ boolean contains(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return StringsKt__StringsKt.contains(charSequence, charSequence2, z);
    }

    public static /* bridge */ /* synthetic */ boolean contains$default(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        return StringsKt__StringsKt.contains$default(charSequence, charSequence2, z, i, obj);
    }

    public static /* bridge */ /* synthetic */ String drop(String str, int i) {
        return StringsKt___StringsKt.drop(str, i);
    }

    public static /* bridge */ /* synthetic */ boolean endsWith$default(String str, String str2, boolean z, int i, Object obj) {
        return StringsKt__StringsJVMKt.endsWith$default(str, str2, z, i, obj);
    }

    public static /* bridge */ /* synthetic */ boolean equals(String str, String str2, boolean z) {
        return StringsKt__StringsJVMKt.equals(str, str2, z);
    }

    public static /* bridge */ /* synthetic */ int getLastIndex(CharSequence charSequence) {
        return StringsKt__StringsKt.getLastIndex(charSequence);
    }

    public static /* bridge */ /* synthetic */ int indexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        return StringsKt__StringsKt.indexOf$default(charSequence, c, i, z, i2, obj);
    }

    public static /* bridge */ /* synthetic */ int indexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        return StringsKt__StringsKt.indexOf$default(charSequence, str, i, z, i2, obj);
    }

    public static /* bridge */ /* synthetic */ boolean isBlank(CharSequence charSequence) {
        return StringsKt__StringsJVMKt.isBlank(charSequence);
    }

    public static /* bridge */ /* synthetic */ int lastIndexOf$default(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        return StringsKt__StringsKt.lastIndexOf$default(charSequence, c, i, z, i2, obj);
    }

    public static /* bridge */ /* synthetic */ int lastIndexOf$default(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        return StringsKt__StringsKt.lastIndexOf$default(charSequence, str, i, z, i2, obj);
    }

    public static /* bridge */ /* synthetic */ boolean startsWith(String str, String str2, boolean z) {
        return StringsKt__StringsJVMKt.startsWith(str, str2, z);
    }

    public static /* bridge */ /* synthetic */ boolean startsWith$default(String str, String str2, int i, boolean z, int i2, Object obj) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, i, z, i2, obj);
    }

    public static /* bridge */ /* synthetic */ boolean startsWith$default(String str, String str2, boolean z, int i, Object obj) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, z, i, obj);
    }

    public static /* bridge */ /* synthetic */ String substringAfterLast(String str, char c, String str2) {
        return StringsKt__StringsKt.substringAfterLast(str, c, str2);
    }

    public static /* bridge */ /* synthetic */ Long toLongOrNull(String str) {
        return StringsKt__StringNumberConversionsKt.toLongOrNull(str);
    }

    public static /* bridge */ /* synthetic */ CharSequence trim(CharSequence charSequence) {
        return StringsKt__StringsKt.trim(charSequence);
    }
}
