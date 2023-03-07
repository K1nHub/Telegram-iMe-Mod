package com.smedialink.p031ui.wallet.crypto.tutorial;

import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletEthTutorialBinding;
/* compiled from: CreateWalletTutorialFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$binding$2 */
/* loaded from: classes3.dex */
final class CreateWalletTutorialFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletEthTutorialBinding> {
    final /* synthetic */ CreateWalletTutorialFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletTutorialFragment$binding$2(CreateWalletTutorialFragment createWalletTutorialFragment) {
        super(0);
        this.this$0 = createWalletTutorialFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletEthTutorialBinding invoke() {
        return ForkFragmentWalletEthTutorialBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
