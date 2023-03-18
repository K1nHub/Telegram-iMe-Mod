package com.smedialink.bots.usecase;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$listenForRemoteBotUpdates$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final AiBotsManager$listenForRemoteBotUpdates$2 INSTANCE = new AiBotsManager$listenForRemoteBotUpdates$2();

    AiBotsManager$listenForRemoteBotUpdates$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        t.printStackTrace();
    }
}
