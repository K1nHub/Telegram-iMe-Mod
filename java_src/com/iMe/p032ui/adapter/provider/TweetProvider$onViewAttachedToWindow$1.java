package com.iMe.p032ui.adapter.provider;

import android.widget.TextView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: TweetProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetProvider$onViewAttachedToWindow$1 */
/* loaded from: classes.dex */
final class TweetProvider$onViewAttachedToWindow$1 extends Lambda implements Function1<TextView, Unit> {
    public static final TweetProvider$onViewAttachedToWindow$1 INSTANCE = new TweetProvider$onViewAttachedToWindow$1();

    TweetProvider$onViewAttachedToWindow$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TextView textView) {
        invoke2(textView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TextView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setEnabled(false);
        applyForView.setEnabled(true);
    }
}
