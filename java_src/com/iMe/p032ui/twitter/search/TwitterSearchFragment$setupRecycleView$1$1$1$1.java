package com.iMe.p032ui.twitter.search;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterSearchFragment.kt */
/* renamed from: com.iMe.ui.twitter.search.TwitterSearchFragment$setupRecycleView$1$1$1$1 */
/* loaded from: classes3.dex */
public final class TwitterSearchFragment$setupRecycleView$1$1$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TwitterSearchFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterSearchFragment$setupRecycleView$1$1$1$1(TwitterSearchFragment twitterSearchFragment) {
        super(0);
        this.this$0 = twitterSearchFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        TwitterSearchPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.reload();
    }
}
