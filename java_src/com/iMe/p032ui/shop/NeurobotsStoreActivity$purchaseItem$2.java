package com.iMe.p032ui.shop;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.iMe.ui.shop.NeurobotsStoreActivity$purchaseItem$2 */
/* loaded from: classes3.dex */
final class NeurobotsStoreActivity$purchaseItem$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final NeurobotsStoreActivity$purchaseItem$2 INSTANCE = new NeurobotsStoreActivity$purchaseItem$2();

    NeurobotsStoreActivity$purchaseItem$2() {
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
