package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.p031ui.custom.ActionButton;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$actionButton$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$actionButton$2 extends Lambda implements Function0<ActionButton> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$actionButton$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ActionButton invoke() {
        ActionButton createActionButton;
        createActionButton = this.this$0.createActionButton();
        return createActionButton;
    }
}
