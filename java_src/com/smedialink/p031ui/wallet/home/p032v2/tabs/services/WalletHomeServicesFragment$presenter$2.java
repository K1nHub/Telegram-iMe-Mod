package com.smedialink.p031ui.wallet.home.p032v2.tabs.services;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeServicesFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.services.WalletHomeServicesFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class WalletHomeServicesFragment$presenter$2 extends Lambda implements Function0<WalletHomeServicesPresenter> {
    final /* synthetic */ WalletHomeServicesFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeServicesFragment$presenter$2(WalletHomeServicesFragment walletHomeServicesFragment) {
        super(0);
        this.this$0 = walletHomeServicesFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletHomeServicesPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2087x5871c8d8(this.this$0, null, null));
        return (WalletHomeServicesPresenter) lazy.getValue();
    }
}
