package com.smedialink.bots.usecase;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$rebuildActiveBotsList$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final AiBotsManager$rebuildActiveBotsList$2 INSTANCE = new AiBotsManager$rebuildActiveBotsList$2();

    AiBotsManager$rebuildActiveBotsList$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        th.printStackTrace();
    }
}
