package com.iMe.p031ui.wallet.crypto.address_mismatch;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentWalletEthAddressMismatchBinding;
/* compiled from: AddressMismatchFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$binding$2 */
/* loaded from: classes3.dex */
final class AddressMismatchFragment$binding$2 extends Lambda implements Function0<ForkFragmentWalletEthAddressMismatchBinding> {
    final /* synthetic */ AddressMismatchFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressMismatchFragment$binding$2(AddressMismatchFragment addressMismatchFragment) {
        super(0);
        this.this$0 = addressMismatchFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentWalletEthAddressMismatchBinding invoke() {
        return ForkFragmentWalletEthAddressMismatchBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
