package com.smedialink.p031ui.shop;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: BotInfoActivity.kt */
/* renamed from: com.smedialink.ui.shop.BotInfoActivity$subscribeToBotContent$2 */
/* loaded from: classes3.dex */
final class BotInfoActivity$subscribeToBotContent$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final BotInfoActivity$subscribeToBotContent$2 INSTANCE = new BotInfoActivity$subscribeToBotContent$2();

    BotInfoActivity$subscribeToBotContent$2() {
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
