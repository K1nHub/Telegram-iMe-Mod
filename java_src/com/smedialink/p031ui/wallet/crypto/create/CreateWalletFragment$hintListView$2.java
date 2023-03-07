package com.smedialink.p031ui.wallet.crypto.create;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$hintListView$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$hintListView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$hintListView$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView createHintListView;
        createHintListView = this.this$0.createHintListView();
        return createHintListView;
    }
}
