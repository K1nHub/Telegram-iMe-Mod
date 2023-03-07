package com.smedialink.bots.data;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SmartReplier.kt */
/* loaded from: classes3.dex */
final class SmartReplier$splitLemmas$1 extends Lambda implements Function1<String, Boolean> {
    public static final SmartReplier$splitLemmas$1 INSTANCE = new SmartReplier$splitLemmas$1();

    SmartReplier$splitLemmas$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it.length() > 0);
    }
}
