package com.iMe.p032ui.wallet.crypto.create;

import com.iMe.p032ui.custom.backup.SecretWordsActionButton;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$buttonPaste$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$buttonPaste$2 extends Lambda implements Function0<SecretWordsActionButton> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$buttonPaste$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SecretWordsActionButton invoke() {
        SecretWordsActionButton createPasteButton;
        createPasteButton = this.this$0.createPasteButton();
        return createPasteButton;
    }
}
