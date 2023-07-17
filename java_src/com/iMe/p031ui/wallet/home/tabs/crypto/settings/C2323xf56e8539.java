package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import android.view.View;
import com.iMe.p031ui.custom.NetworkTypeView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkRecycleItemWalletTokensHeaderBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$3 */
/* loaded from: classes4.dex */
public final class C2323xf56e8539 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ForkRecycleItemWalletTokensHeaderBinding $this_apply;
    final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2323xf56e8539(WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment, ForkRecycleItemWalletTokensHeaderBinding forkRecycleItemWalletTokensHeaderBinding) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsFragment;
        this.$this_apply = forkRecycleItemWalletTokensHeaderBinding;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment = this.this$0;
        NetworkTypeView networkTypeView = this.$this_apply.networkTypeView;
        Intrinsics.checkNotNullExpressionValue(networkTypeView, "networkTypeView");
        walletHomeCryptoTokensSettingsFragment.showNetworksDialog(networkTypeView);
    }
}
