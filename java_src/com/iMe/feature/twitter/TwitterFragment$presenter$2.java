package com.iMe.feature.twitter;

import com.iMe.feature.socialMedias.SocialNetwork;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TwitterFragment.kt */
/* loaded from: classes3.dex */
public final class TwitterFragment$presenter$2 extends Lambda implements Function0<TwitterPresenter> {
    final /* synthetic */ TwitterFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterFragment$presenter$2(TwitterFragment twitterFragment) {
        super(0);
        this.this$0 = twitterFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TwitterFragment.kt */
    /* renamed from: com.iMe.feature.twitter.TwitterFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C14671 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ TwitterFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14671(TwitterFragment twitterFragment) {
            super(0);
            this.this$0 = twitterFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            long j;
            SocialNetwork socialNetwork;
            j = this.this$0.telegramProfileId;
            socialNetwork = this.this$0.socialNetwork;
            return ParametersHolderKt.parametersOf(Long.valueOf(j), socialNetwork);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TwitterPresenter invoke() {
        Lazy lazy;
        TwitterFragment twitterFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new TwitterFragment$presenter$2$invoke$$inlined$inject$default$1(twitterFragment, null, new C14671(twitterFragment)));
        return (TwitterPresenter) lazy.getValue();
    }
}
