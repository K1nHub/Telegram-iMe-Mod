package com.iMe.p031ui.wallet.crypto.settings.blockchains.details;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentBlockchainsWalletDetailsBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* compiled from: BlockchainWalletDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
final class BlockchainWalletDetailsBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentBlockchainsWalletDetailsBinding> {
    final /* synthetic */ BaseFragment $fragment;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainWalletDetailsBottomSheetDialog$binding$2(BaseFragment baseFragment) {
        super(0);
        this.$fragment = baseFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentBlockchainsWalletDetailsBinding invoke() {
        return ForkContentBlockchainsWalletDetailsBinding.inflate(LayoutInflater.from(this.$fragment.getParentActivity()));
    }
}
