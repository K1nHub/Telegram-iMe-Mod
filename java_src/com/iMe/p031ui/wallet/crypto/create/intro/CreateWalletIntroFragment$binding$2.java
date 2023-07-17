package com.iMe.p031ui.wallet.crypto.create.intro;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentCreateWalletIntroBinding;
/* compiled from: CreateWalletIntroFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$binding$2 */
/* loaded from: classes4.dex */
final class CreateWalletIntroFragment$binding$2 extends Lambda implements Function0<ForkFragmentCreateWalletIntroBinding> {
    final /* synthetic */ CreateWalletIntroFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletIntroFragment$binding$2(CreateWalletIntroFragment createWalletIntroFragment) {
        super(0);
        this.this$0 = createWalletIntroFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentCreateWalletIntroBinding invoke() {
        return ForkFragmentCreateWalletIntroBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
