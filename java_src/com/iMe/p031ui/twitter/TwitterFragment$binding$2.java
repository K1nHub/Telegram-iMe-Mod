package com.iMe.p031ui.twitter;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentTwitterBinding;
/* compiled from: TwitterFragment.kt */
/* renamed from: com.iMe.ui.twitter.TwitterFragment$binding$2 */
/* loaded from: classes3.dex */
final class TwitterFragment$binding$2 extends Lambda implements Function0<ForkFragmentTwitterBinding> {
    final /* synthetic */ TwitterFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterFragment$binding$2(TwitterFragment twitterFragment) {
        super(0);
        this.this$0 = twitterFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentTwitterBinding invoke() {
        return ForkFragmentTwitterBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
