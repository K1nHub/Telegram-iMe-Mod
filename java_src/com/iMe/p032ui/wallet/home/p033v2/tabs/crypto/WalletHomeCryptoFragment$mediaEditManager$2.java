package com.iMe.p032ui.wallet.home.p033v2.tabs.crypto;

import com.iMe.manager.common.MediaEditManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$mediaEditManager$2 */
/* loaded from: classes3.dex */
public final class WalletHomeCryptoFragment$mediaEditManager$2 extends Lambda implements Function0<MediaEditManager> {
    final /* synthetic */ WalletHomeCryptoFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoFragment$mediaEditManager$2(WalletHomeCryptoFragment walletHomeCryptoFragment) {
        super(0);
        this.this$0 = walletHomeCryptoFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final MediaEditManager invoke() {
        int i;
        WalletHomeCryptoFragment walletHomeCryptoFragment = this.this$0;
        i = ((BaseFragment) walletHomeCryptoFragment).currentAccount;
        return new MediaEditManager(walletHomeCryptoFragment, i, null, 4, null);
    }
}
