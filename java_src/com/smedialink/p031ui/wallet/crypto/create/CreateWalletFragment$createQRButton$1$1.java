package com.smedialink.p031ui.wallet.crypto.create;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.Components.QRCodeBottomSheet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createQRButton$1$1 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$createQRButton$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$createQRButton$1$1(CreateWalletFragment createWalletFragment) {
        super(1);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        QRCodeBottomSheet qrCodeBottomSheet;
        Intrinsics.checkNotNullParameter(it, "it");
        CreateWalletFragment createWalletFragment = this.this$0;
        qrCodeBottomSheet = createWalletFragment.getQrCodeBottomSheet();
        qrCodeBottomSheet.setupWalletTypeBackup(LocaleController.getInternalString(C3301R.string.wallet_backup_secret_words_qr_title), LocaleController.getString("Close", C3301R.string.Close));
        createWalletFragment.showDialog(qrCodeBottomSheet);
    }
}
