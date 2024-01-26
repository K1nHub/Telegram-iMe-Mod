package kotlin.text;
/* loaded from: classes4.dex */
public final class StringsKt extends StringsKt___StringsKt {
    public static /* bridge */ /* synthetic */ <T extends Appendable> T append(T t, CharSequence... charSequenceArr) {
        return (T) StringsKt__AppendableKt.append(t, charSequenceArr);
    }

    public static /* bridge */ /* synthetic */ StringBuilder append(StringBuilder sb, String... strArr) {
        return StringsKt__StringBuilderKt.append(sb, strArr);
    }

    public static /* bridge */ /* synthetic */ String drop(String str, int i) {
        return StringsKt___StringsKt.drop(str, i);
    }

    public static /* bridge */ /* synthetic */ boolean isBlank(CharSequence charSequence) {
        return StringsKt__StringsJVMKt.isBlank(charSequence);
    }

    public static /* bridge */ /* synthetic */ boolean startsWith$default(String str, String str2, int i, boolean z, int i2, Object obj) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, i, z, i2, obj);
    }

    public static /* bridge */ /* synthetic */ Long toLongOrNull(String str) {
        return StringsKt__StringNumberConversionsKt.toLongOrNull(str);
    }
}
