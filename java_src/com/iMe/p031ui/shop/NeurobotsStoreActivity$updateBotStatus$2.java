package com.iMe.p031ui.shop;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.iMe.ui.shop.NeurobotsStoreActivity$updateBotStatus$2 */
/* loaded from: classes3.dex */
final class NeurobotsStoreActivity$updateBotStatus$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final NeurobotsStoreActivity$updateBotStatus$2 INSTANCE = new NeurobotsStoreActivity$updateBotStatus$2();

    NeurobotsStoreActivity$updateBotStatus$2() {
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
