package com.iMe.p031ui.wallet.crypto.create;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$hintPopupWindow$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$hintPopupWindow$2 extends Lambda implements Function0<ActionBarPopupWindow> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$hintPopupWindow$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ActionBarPopupWindow invoke() {
        ActionBarPopupWindow createHintPopupWindow;
        createHintPopupWindow = this.this$0.createHintPopupWindow();
        return createHintPopupWindow;
    }
}
