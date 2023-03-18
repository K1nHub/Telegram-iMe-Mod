package com.smedialink.p031ui.wallet.home.p032v2.details;

import android.content.DialogInterface;
import com.smedialink.utils.extentions.common.ContextExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsFragment$showAlreadyCreatedWalletWarningDialog$1$1 */
/* loaded from: classes3.dex */
final class C2150xbd1ed966 extends Lambda implements Function1<DialogInterface, Unit> {
    final /* synthetic */ String $walletAddress;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2150xbd1ed966(String str) {
        super(1);
        this.$walletAddress = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DialogInterface dialogInterface) {
        invoke2(dialogInterface);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(DialogInterface it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ContextExtKt.copyToClipboard$default(this.$walletAddress, null, 2, null);
    }
}
