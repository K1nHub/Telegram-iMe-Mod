package com.smedialink.p031ui.twitter;

import com.smedialink.model.twitter.TweetItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.twitter.TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1982xbd4bb315 extends Lambda implements Function1<TweetItem, Unit> {
    final /* synthetic */ TwitterPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1982xbd4bb315(TwitterPresenter twitterPresenter) {
        super(1);
        this.this$0 = twitterPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TweetItem tweetItem) {
        m1286invoke(tweetItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1286invoke(TweetItem it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this.this$0.toggleItemLikeStatus(it);
    }
}
