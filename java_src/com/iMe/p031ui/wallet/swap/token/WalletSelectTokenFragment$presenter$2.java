package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletSelectTokenFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletSelectTokenFragment$presenter$2 extends Lambda implements Function0<WalletSelectTokenPresenter> {
    final /* synthetic */ WalletSelectTokenFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSelectTokenFragment$presenter$2(WalletSelectTokenFragment walletSelectTokenFragment) {
        super(0);
        this.this$0 = walletSelectTokenFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletSelectTokenFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C23561 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletSelectTokenFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23561(WalletSelectTokenFragment walletSelectTokenFragment) {
            super(0);
            this.this$0 = walletSelectTokenFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            SelectableType selectableType;
            SelectableToken selectableToken;
            List list;
            NetworkType networkType;
            boolean z;
            selectableType = this.this$0.type;
            selectableToken = this.this$0.selectedToken;
            list = this.this$0.allTokens;
            networkType = this.this$0.networkType;
            z = this.this$0.onlyPositiveBalance;
            return ParametersHolderKt.parametersOf(selectableType, selectableToken, list, networkType, Boolean.valueOf(z));
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletSelectTokenPresenter invoke() {
        Lazy lazy;
        WalletSelectTokenFragment walletSelectTokenFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2355x3527022a(walletSelectTokenFragment, null, new C23561(walletSelectTokenFragment)));
        return (WalletSelectTokenPresenter) lazy.getValue();
    }
}
