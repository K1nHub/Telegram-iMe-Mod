package com.iMe.p032ui.wallet.swap.fee;

import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: WalletSwapFeeFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$presenter$2 */
/* loaded from: classes4.dex */
final class WalletSwapFeeFragment$presenter$2 extends Lambda implements Function0<WalletSwapFeePresenter> {
    final /* synthetic */ SwapFeeScreenArgs $args;
    final /* synthetic */ WalletSwapFeeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapFeeFragment$presenter$2(WalletSwapFeeFragment walletSwapFeeFragment, SwapFeeScreenArgs swapFeeScreenArgs) {
        super(0);
        this.this$0 = walletSwapFeeFragment;
        this.$args = swapFeeScreenArgs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletSwapFeeFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C23411 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ SwapFeeScreenArgs $args;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23411(SwapFeeScreenArgs swapFeeScreenArgs) {
            super(0);
            this.$args = swapFeeScreenArgs;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.$args);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletSwapFeePresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2340x106f95d4(this.this$0, null, new C23411(this.$args)));
        return (WalletSwapFeePresenter) lazy.getValue();
    }
}
