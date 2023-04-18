package com.iMe.p031ui.twitter.search;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: TwitterSearchFragment.kt */
/* renamed from: com.iMe.ui.twitter.search.TwitterSearchFragment$presenter$2 */
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
    /* renamed from: com.iMe.ui.twitter.search.TwitterSearchFragment$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C20281 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ BlockchainType $blockchainType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20281(BlockchainType blockchainType) {
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2027xf65f4133(this.this$0, null, new C20281(this.$blockchainType)));
        return (TwitterSearchPresenter) lazy.getValue();
    }
}
