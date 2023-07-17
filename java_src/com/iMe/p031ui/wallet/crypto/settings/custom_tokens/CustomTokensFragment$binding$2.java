package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentCustomTokensBinding;
/* compiled from: CustomTokensFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment$binding$2 */
/* loaded from: classes4.dex */
final class CustomTokensFragment$binding$2 extends Lambda implements Function0<ForkFragmentCustomTokensBinding> {
    final /* synthetic */ CustomTokensFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomTokensFragment$binding$2(CustomTokensFragment customTokensFragment) {
        super(0);
        this.this$0 = customTokensFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentCustomTokensBinding invoke() {
        return ForkFragmentCustomTokensBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
