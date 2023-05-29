package com.iMe.feature.twitter;

import com.iMe.model.twitter.TweetItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterFragment.kt */
/* loaded from: classes3.dex */
public final class TwitterFragment$showItemMenu$menuItems$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ TweetItem $item;
    final /* synthetic */ TwitterFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterFragment$showItemMenu$menuItems$1(TwitterFragment twitterFragment, TweetItem tweetItem) {
        super(0);
        this.this$0 = twitterFragment;
        this.$item = tweetItem;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.showTranslationDialog(this.$item);
    }
}
