package com.iMe.p031ui.wallet.crypto.create;

import android.widget.LinearLayout;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$rightColumn$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$rightColumn$2 extends Lambda implements Function0<LinearLayout> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$rightColumn$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final LinearLayout invoke() {
        LinearLayout createVerticalLinearLayout;
        createVerticalLinearLayout = this.this$0.createVerticalLinearLayout();
        return createVerticalLinearLayout;
    }
}
