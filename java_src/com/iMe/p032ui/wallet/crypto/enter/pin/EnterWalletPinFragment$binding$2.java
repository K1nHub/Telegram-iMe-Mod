package com.iMe.p032ui.wallet.crypto.enter.pin;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletEthEnterPinBinding;
/* compiled from: EnterWalletPinFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinFragment$binding$2 */
/* loaded from: classes3.dex */
final class EnterWalletPinFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletEthEnterPinBinding> {
    final /* synthetic */ EnterWalletPinFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterWalletPinFragment$binding$2(EnterWalletPinFragment enterWalletPinFragment) {
        super(0);
        this.this$0 = enterWalletPinFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletEthEnterPinBinding invoke() {
        return ForkFragmentWalletEthEnterPinBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
