package com.iMe.p032ui.twitter.auth;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWebViewBinding;
/* compiled from: TwitterAuthFragment.kt */
/* renamed from: com.iMe.ui.twitter.auth.TwitterAuthFragment$binding$2 */
/* loaded from: classes3.dex */
final class TwitterAuthFragment$binding$2 extends Lambda implements Function0<ForkFragmentWebViewBinding> {
    final /* synthetic */ TwitterAuthFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterAuthFragment$binding$2(TwitterAuthFragment twitterAuthFragment) {
        super(0);
        this.this$0 = twitterAuthFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWebViewBinding invoke() {
        return ForkFragmentWebViewBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
