package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Indent.kt */
/* loaded from: classes4.dex */
public final class StringsKt__IndentKt$getIndentFunction$1 extends Lambda implements Function1<String, String> {
    public static final StringsKt__IndentKt$getIndentFunction$1 INSTANCE = new StringsKt__IndentKt$getIndentFunction$1();

    StringsKt__IndentKt$getIndentFunction$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final String invoke(String line) {
        Intrinsics.checkNotNullParameter(line, "line");
        return line;
    }
}
