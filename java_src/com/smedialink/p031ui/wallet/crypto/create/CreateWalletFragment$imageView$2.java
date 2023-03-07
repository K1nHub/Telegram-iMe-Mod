package com.smedialink.p031ui.wallet.crypto.create;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RLottieImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$imageView$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$imageView$2 extends Lambda implements Function0<RLottieImageView> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$imageView$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RLottieImageView invoke() {
        RLottieImageView createImageView;
        createImageView = this.this$0.createImageView();
        return createImageView;
    }
}
