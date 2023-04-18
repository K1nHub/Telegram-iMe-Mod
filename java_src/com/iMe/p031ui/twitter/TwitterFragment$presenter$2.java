package com.iMe.p031ui.twitter;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: TwitterFragment.kt */
/* renamed from: com.iMe.ui.twitter.TwitterFragment$presenter$2 */
/* loaded from: classes3.dex */
final class TwitterFragment$presenter$2 extends Lambda implements Function0<TwitterPresenter> {
    final /* synthetic */ long $telegramProfileId;
    final /* synthetic */ long $twitterUserId;
    final /* synthetic */ String $twitterUserNickname;
    final /* synthetic */ TwitterFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterFragment$presenter$2(TwitterFragment twitterFragment, long j, long j2, String str) {
        super(0);
        this.this$0 = twitterFragment;
        this.$telegramProfileId = j;
        this.$twitterUserId = j2;
        this.$twitterUserNickname = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TwitterFragment.kt */
    /* renamed from: com.iMe.ui.twitter.TwitterFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C20201 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ long $telegramProfileId;
        final /* synthetic */ long $twitterUserId;
        final /* synthetic */ String $twitterUserNickname;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20201(long j, long j2, String str) {
            super(0);
            this.$telegramProfileId = j;
            this.$twitterUserId = j2;
            this.$twitterUserNickname = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(Long.valueOf(this.$telegramProfileId), Long.valueOf(this.$twitterUserId), this.$twitterUserNickname);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TwitterPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new TwitterFragment$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, new C20201(this.$telegramProfileId, this.$twitterUserId, this.$twitterUserNickname)));
        return (TwitterPresenter) lazy.getValue();
    }
}
