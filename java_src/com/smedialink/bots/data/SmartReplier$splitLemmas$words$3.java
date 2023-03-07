package com.smedialink.bots.data;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: SmartReplier.kt */
/* loaded from: classes3.dex */
final class SmartReplier$splitLemmas$words$3 extends Lambda implements Function1<String, String> {
    public static final SmartReplier$splitLemmas$words$3 INSTANCE = new SmartReplier$splitLemmas$words$3();

    SmartReplier$splitLemmas$words$3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final String invoke(String it) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(it, "it");
        trim = StringsKt__StringsKt.trim(it);
        return trim.toString();
    }
}
