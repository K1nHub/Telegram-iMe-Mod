package com.iMe.p031ui.wallet.crypto.settings.blockchains;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentBlockchainsManagementBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlockchainsManagementFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$binding$2 */
/* loaded from: classes4.dex */
public final class BlockchainsManagementFragment$binding$2 extends Lambda implements Function0<ForkFragmentBlockchainsManagementBinding> {
    final /* synthetic */ BlockchainsManagementFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainsManagementFragment$binding$2(BlockchainsManagementFragment blockchainsManagementFragment) {
        super(0);
        this.this$0 = blockchainsManagementFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentBlockchainsManagementBinding invoke() {
        return ForkFragmentBlockchainsManagementBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
