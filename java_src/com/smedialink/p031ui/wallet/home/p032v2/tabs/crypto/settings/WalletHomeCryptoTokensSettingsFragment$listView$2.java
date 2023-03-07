package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto.settings;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$listView$2 */
/* loaded from: classes3.dex */
public final class WalletHomeCryptoTokensSettingsFragment$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoTokensSettingsFragment$listView$2(WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment) {
        super(0);
        this.this$0 = walletHomeCryptoTokensSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
