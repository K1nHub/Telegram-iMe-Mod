package com.iMe.p031ui.wallet.crypto.buy;

import android.content.DialogInterface;
import android.widget.TextView;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.AlertDialog;
/* compiled from: BuyCryptoProductFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$showErrorPurchase$1 */
/* loaded from: classes3.dex */
final class BuyCryptoProductFragment$showErrorPurchase$1 extends Lambda implements Function2<TextView, AlertDialog, Unit> {
    final /* synthetic */ String $orderId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuyCryptoProductFragment$showErrorPurchase$1(String str) {
        super(2);
        this.$orderId = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(TextView textView, AlertDialog alertDialog) {
        invoke2(textView, alertDialog);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BuyCryptoProductFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductFragment$showErrorPurchase$1$1 */
    /* loaded from: classes3.dex */
    public static final class C20801 extends Lambda implements Function1<DialogInterface, Unit> {
        final /* synthetic */ String $orderId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20801(String str) {
            super(1);
            this.$orderId = str;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(DialogInterface dialogInterface) {
            invoke2(dialogInterface);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(DialogInterface it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ContextExtKt.copyToClipboard$default(this.$orderId, null, 2, null);
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TextView view, AlertDialog dialog) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        String str = this.$orderId;
        DialogExtKt.makeClickableDescription(dialog, view, str, new C20801(str));
    }
}
