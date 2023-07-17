package com.iMe.p031ui.wallet.home.details;

import com.iMe.model.wallet.details.TokenDetailsArgs;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsFragment$presenter$2 extends Lambda implements Function0<WalletTokenDetailsPresenter> {
    final /* synthetic */ WalletTokenDetailsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsFragment$presenter$2(WalletTokenDetailsFragment walletTokenDetailsFragment) {
        super(0);
        this.this$0 = walletTokenDetailsFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletTokenDetailsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C22661 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletTokenDetailsFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C22661(WalletTokenDetailsFragment walletTokenDetailsFragment) {
            super(0);
            this.this$0 = walletTokenDetailsFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            TokenDetailsArgs tokenDetailsArgs;
            tokenDetailsArgs = this.this$0.args;
            return ParametersHolderKt.parametersOf(tokenDetailsArgs);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletTokenDetailsPresenter invoke() {
        Lazy lazy;
        WalletTokenDetailsFragment walletTokenDetailsFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2264x31580ac(walletTokenDetailsFragment, null, new C22661(walletTokenDetailsFragment)));
        return (WalletTokenDetailsPresenter) lazy.getValue();
    }
}
