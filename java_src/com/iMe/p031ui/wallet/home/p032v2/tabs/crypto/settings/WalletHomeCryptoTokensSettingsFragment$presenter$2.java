package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$presenter$2 */
/* loaded from: classes4.dex */
final class WalletHomeCryptoTokensSettingsFragment$presenter$2 extends Lambda implements Function0<WalletHomeCryptoTokensSettingsPresenter> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoTokensSettingsFragment$presenter$2(WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment) {
        super(0);
        this.this$0 = walletHomeCryptoTokensSettingsFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$presenter$2$1 */
    /* loaded from: classes4.dex */
    public static final class C23031 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23031(WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment) {
            super(0);
            this.this$0 = walletHomeCryptoTokensSettingsFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            return ParametersHolderKt.parametersOf(this.this$0.getScreenType());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletHomeCryptoTokensSettingsPresenter invoke() {
        Lazy lazy;
        WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2302x3f87ce38(walletHomeCryptoTokensSettingsFragment, null, new C23031(walletHomeCryptoTokensSettingsFragment)));
        return (WalletHomeCryptoTokensSettingsPresenter) lazy.getValue();
    }
}
