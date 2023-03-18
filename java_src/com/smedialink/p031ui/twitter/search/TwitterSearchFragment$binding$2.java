package com.smedialink.p031ui.twitter.search;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentTwitterSearchBinding;
/* compiled from: TwitterSearchFragment.kt */
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchFragment$binding$2 */
/* loaded from: classes3.dex */
final class TwitterSearchFragment$binding$2 extends Lambda implements Function0<ForkFragmentTwitterSearchBinding> {
    final /* synthetic */ TwitterSearchFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterSearchFragment$binding$2(TwitterSearchFragment twitterSearchFragment) {
        super(0);
        this.this$0 = twitterSearchFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentTwitterSearchBinding invoke() {
        return ForkFragmentTwitterSearchBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
