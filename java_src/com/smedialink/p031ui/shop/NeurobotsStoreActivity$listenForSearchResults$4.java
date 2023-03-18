package com.smedialink.p031ui.shop;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity$listenForSearchResults$4 */
/* loaded from: classes3.dex */
final class NeurobotsStoreActivity$listenForSearchResults$4 extends Lambda implements Function1<Throwable, Unit> {
    public static final NeurobotsStoreActivity$listenForSearchResults$4 INSTANCE = new NeurobotsStoreActivity$listenForSearchResults$4();

    NeurobotsStoreActivity$listenForSearchResults$4() {
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
