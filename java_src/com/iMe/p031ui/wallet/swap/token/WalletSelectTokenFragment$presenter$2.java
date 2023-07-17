package com.iMe.p031ui.wallet.swap.token;

import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenFragment$presenter$2 extends Lambda implements Function0<WalletSelectTokenPresenter> {
    final /* synthetic */ String $networkId;
    final /* synthetic */ TokenDetailed $selectedToken;
    final /* synthetic */ WalletSelectTokenFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenFragment$presenter$2(WalletSelectTokenFragment walletSelectTokenFragment, TokenDetailed tokenDetailed, String str) {
        super(0);
        this.this$0 = walletSelectTokenFragment;
        this.$selectedToken = tokenDetailed;
        this.$networkId = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletSelectTokenFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C24441 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ String $networkId;
        final /* synthetic */ TokenDetailed $selectedToken;
        final /* synthetic */ WalletSelectTokenFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C24441(WalletSelectTokenFragment walletSelectTokenFragment, TokenDetailed tokenDetailed, String str) {
            super(0);
            this.this$0 = walletSelectTokenFragment;
            this.$selectedToken = tokenDetailed;
            this.$networkId = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            WalletSelectTokenFragment.ScreenType screenType;
            boolean z;
            screenType = this.this$0.screenType;
            z = this.this$0.onlyPositiveBalance;
            return ParametersHolderKt.parametersOf(screenType, this.$selectedToken, this.$networkId, Boolean.valueOf(z));
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletSelectTokenPresenter invoke() {
        Lazy lazy;
        WalletSelectTokenFragment walletSelectTokenFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2443x3527022a(walletSelectTokenFragment, null, new C24441(walletSelectTokenFragment, this.$selectedToken, this.$networkId)));
        return (WalletSelectTokenPresenter) lazy.getValue();
    }
}
