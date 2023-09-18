package com.iMe.feature.twitter;

import com.iMe.model.twitter.TweetItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterFragment.kt */
/* loaded from: classes4.dex */
/* synthetic */ class TwitterFragment$setupListeners$1$1 extends FunctionReferenceImpl implements Function1<TweetItem, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TwitterFragment$setupListeners$1$1(Object obj) {
        super(1, obj, TwitterFragment.class, "openPhotoViewer", "openPhotoViewer(Lcom/iMe/model/twitter/TweetItem;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TweetItem tweetItem) {
        invoke2(tweetItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TweetItem p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((TwitterFragment) this.receiver).openPhotoViewer(p0);
    }
}
