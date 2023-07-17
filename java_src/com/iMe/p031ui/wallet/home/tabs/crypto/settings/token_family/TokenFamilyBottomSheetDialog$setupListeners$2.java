package com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: TokenFamilyBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$setupListeners$2 */
/* loaded from: classes4.dex */
final class TokenFamilyBottomSheetDialog$setupListeners$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ TokenFamilyBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenFamilyBottomSheetDialog$setupListeners$2(TokenFamilyBottomSheetDialog tokenFamilyBottomSheetDialog) {
        super(1);
        this.this$0 = tokenFamilyBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.dismiss();
    }
}
