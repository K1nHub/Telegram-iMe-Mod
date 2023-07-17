package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkFragmentTokenManagementBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenManagementFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$binding$2 */
/* loaded from: classes4.dex */
public final class TokenManagementFragment$binding$2 extends Lambda implements Function0<ForkFragmentTokenManagementBinding> {
    final /* synthetic */ TokenManagementFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenManagementFragment$binding$2(TokenManagementFragment tokenManagementFragment) {
        super(0);
        this.this$0 = tokenManagementFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkFragmentTokenManagementBinding invoke() {
        return ForkFragmentTokenManagementBinding.inflate(BaseFragmentExtKt.getLayoutInflater(this.this$0));
    }
}
