package com.iMe.bots.usecase;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
public final class AiBotsManager$handleDownloadCompletion$3 extends Lambda implements Function1<Throwable, Unit> {
    public static final AiBotsManager$handleDownloadCompletion$3 INSTANCE = new AiBotsManager$handleDownloadCompletion$3();

    AiBotsManager$handleDownloadCompletion$3() {
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
