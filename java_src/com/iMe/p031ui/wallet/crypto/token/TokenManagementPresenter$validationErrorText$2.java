package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3417R;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenManagementPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$validationErrorText$2 */
/* loaded from: classes4.dex */
public final class TokenManagementPresenter$validationErrorText$2 extends Lambda implements Function0<String> {
    final /* synthetic */ TokenManagementPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenManagementPresenter$validationErrorText$2(TokenManagementPresenter tokenManagementPresenter) {
        super(0);
        this.this$0 = tokenManagementPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        ResourceManager resourceManager;
        resourceManager = this.this$0.resourceManager;
        return resourceManager.getString(C3417R.string.wallet_tokens_management_token_address_invalid);
    }
}
