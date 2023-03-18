package com.smedialink.p031ui.twitter.search;

import com.smedialink.storage.domain.model.crypto.BlockchainType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: TwitterSearchFragment.kt */
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchFragment$presenter$2 */
/* loaded from: classes3.dex */
final class TwitterSearchFragment$presenter$2 extends Lambda implements Function0<TwitterSearchPresenter> {
    final /* synthetic */ BlockchainType $blockchainType;
    final /* synthetic */ TwitterSearchFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterSearchFragment$presenter$2(TwitterSearchFragment twitterSearchFragment, BlockchainType blockchainType) {
        super(0);
        this.this$0 = twitterSearchFragment;
        this.$blockchainType = blockchainType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TwitterSearchFragment.kt */
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C19731 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ BlockchainType $blockchainType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19731(BlockchainType blockchainType) {
            super(0);
            this.$blockchainType = blockchainType;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$blockchainType);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TwitterSearchPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C1972xf65f4133(this.this$0, null, new C19731(this.$blockchainType)));
        return (TwitterSearchPresenter) lazy.getValue();
    }
}
