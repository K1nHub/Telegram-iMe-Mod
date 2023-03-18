package com.smedialink.bots.data;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SmartReplier.kt */
/* loaded from: classes3.dex */
final class SmartReplier$splitLemmas$words$2 extends Lambda implements Function1<String, String> {
    public static final SmartReplier$splitLemmas$words$2 INSTANCE = new SmartReplier$splitLemmas$words$2();

    SmartReplier$splitLemmas$words$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final String invoke(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String lowerCase = it.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
        return lowerCase;
    }
}
