package com.iMe.p031ui.wallet.home.tabs.crypto;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoFragment$presenter$2 */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoFragment$presenter$2 extends Lambda implements Function0<WalletHomeCryptoPresenter> {
    final /* synthetic */ WalletHomeCryptoFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoFragment$presenter$2(WalletHomeCryptoFragment walletHomeCryptoFragment) {
        super(0);
        this.this$0 = walletHomeCryptoFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletHomeCryptoPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2306xb8a1d255(this.this$0, null, null));
        return (WalletHomeCryptoPresenter) lazy.getValue();
    }
}