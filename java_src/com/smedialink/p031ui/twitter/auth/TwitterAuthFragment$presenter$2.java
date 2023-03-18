package com.smedialink.p031ui.twitter.auth;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: TwitterAuthFragment.kt */
/* renamed from: com.smedialink.ui.twitter.auth.TwitterAuthFragment$presenter$2 */
/* loaded from: classes3.dex */
final class TwitterAuthFragment$presenter$2 extends Lambda implements Function0<TwitterAuthPresenter> {
    final /* synthetic */ TwitterAuthFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterAuthFragment$presenter$2(TwitterAuthFragment twitterAuthFragment) {
        super(0);
        this.this$0 = twitterAuthFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TwitterAuthPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new TwitterAuthFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (TwitterAuthPresenter) lazy.getValue();
    }
}
