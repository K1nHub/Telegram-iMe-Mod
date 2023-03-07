package kotlin.text;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Indent.kt */
/* loaded from: classes4.dex */
public final class StringsKt__IndentKt$getIndentFunction$2 extends Lambda implements Function1<String, String> {
    final /* synthetic */ String $indent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__IndentKt$getIndentFunction$2(String str) {
        super(1);
        this.$indent = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final String invoke(String line) {
        Intrinsics.checkNotNullParameter(line, "line");
        return this.$indent + line;
    }
}
