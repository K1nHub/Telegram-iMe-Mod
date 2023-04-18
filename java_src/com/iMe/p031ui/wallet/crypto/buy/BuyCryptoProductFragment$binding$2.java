package com.iMe.p031ui.wallet.crypto.buy;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletCryptoBuyBinding;
/* compiled from: BuyCryptoProductFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$binding$2 */
/* loaded from: classes3.dex */
final class BuyCryptoProductFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletCryptoBuyBinding> {
    final /* synthetic */ BuyCryptoProductFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductFragment$binding$2(BuyCryptoProductFragment buyCryptoProductFragment) {
        super(0);
        this.this$0 = buyCryptoProductFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletCryptoBuyBinding invoke() {
        return ForkFragmentWalletCryptoBuyBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
