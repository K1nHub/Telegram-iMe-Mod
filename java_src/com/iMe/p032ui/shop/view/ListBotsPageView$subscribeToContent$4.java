package com.iMe.p032ui.shop.view;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ListBotsPageView.kt */
/* renamed from: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$4 */
/* loaded from: classes3.dex */
final class ListBotsPageView$subscribeToContent$4 extends Lambda implements Function1<Throwable, Unit> {
    public static final ListBotsPageView$subscribeToContent$4 INSTANCE = new ListBotsPageView$subscribeToContent$4();

    ListBotsPageView$subscribeToContent$4() {
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
