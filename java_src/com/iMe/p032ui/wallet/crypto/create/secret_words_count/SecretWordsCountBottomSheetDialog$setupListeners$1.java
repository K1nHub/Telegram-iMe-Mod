package com.iMe.p032ui.wallet.crypto.create.secret_words_count;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SecretWordsCountBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountBottomSheetDialog$setupListeners$1 */
/* loaded from: classes3.dex */
final class SecretWordsCountBottomSheetDialog$setupListeners$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ SecretWordsCountBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecretWordsCountBottomSheetDialog$setupListeners$1(SecretWordsCountBottomSheetDialog secretWordsCountBottomSheetDialog) {
        super(1);
        this.this$0 = secretWordsCountBottomSheetDialog;
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
