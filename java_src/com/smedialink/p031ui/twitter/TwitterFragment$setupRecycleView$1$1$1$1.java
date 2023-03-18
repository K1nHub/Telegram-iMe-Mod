package com.smedialink.p031ui.twitter;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterFragment.kt */
/* renamed from: com.smedialink.ui.twitter.TwitterFragment$setupRecycleView$1$1$1$1 */
/* loaded from: classes3.dex */
public final class TwitterFragment$setupRecycleView$1$1$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TwitterFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterFragment$setupRecycleView$1$1$1$1(TwitterFragment twitterFragment) {
        super(0);
        this.this$0 = twitterFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        TwitterPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.reload();
    }
}
