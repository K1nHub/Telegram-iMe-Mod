package com.iMe.fork.controller;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HiddenChatsController.kt */
/* loaded from: classes3.dex */
public final class HiddenChatsController$Companion$getInstance$1 extends Lambda implements Function1<Integer, HiddenChatsController> {
    final /* synthetic */ int $accountIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HiddenChatsController$Companion$getInstance$1(int i) {
        super(1);
        this.$accountIndex = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final HiddenChatsController invoke(Integer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new HiddenChatsController(this.$accountIndex);
    }
}
