package com.iMe.bots.usecase;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$cleanDownloads$4 extends Lambda implements Function1<Throwable, Unit> {
    public static final AiBotsManager$cleanDownloads$4 INSTANCE = new AiBotsManager$cleanDownloads$4();

    AiBotsManager$cleanDownloads$4() {
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