package com.iMe.fork.controller;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RecentChatsController.kt */
/* loaded from: classes3.dex */
public final class RecentChatsController$Companion$getInstance$1 extends Lambda implements Function1<Integer, RecentChatsController> {
    final /* synthetic */ int $accountIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentChatsController$Companion$getInstance$1(int i) {
        super(1);
        this.$accountIndex = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final RecentChatsController invoke(Integer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new RecentChatsController(this.$accountIndex);
    }
}
