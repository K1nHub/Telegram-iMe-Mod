package com.iMe.p031ui.wallet.crypto.create;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.QRCodeBottomSheet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$qrCodeBottomSheet$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$qrCodeBottomSheet$2 extends Lambda implements Function0<QRCodeBottomSheet> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$qrCodeBottomSheet$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final QRCodeBottomSheet invoke() {
        QRCodeBottomSheet createQRCodeBottomSheet;
        createQRCodeBottomSheet = this.this$0.createQRCodeBottomSheet();
        return createQRCodeBottomSheet;
    }
}
