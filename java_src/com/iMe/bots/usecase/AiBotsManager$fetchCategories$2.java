package com.iMe.bots.usecase;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: AiBotsManager.kt */
/* loaded from: classes3.dex */
final class AiBotsManager$fetchCategories$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final AiBotsManager$fetchCategories$2 INSTANCE = new AiBotsManager$fetchCategories$2();

    AiBotsManager$fetchCategories$2() {
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