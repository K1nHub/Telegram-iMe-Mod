package com.smedialink.p031ui.wallet.crypto.create.secret_words_count;

import android.app.Activity;
import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkSecretWordsCountLayoutBinding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SecretWordsCountBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.secret_words_count.SecretWordsCountBottomSheetDialog$binding$2 */
/* loaded from: classes3.dex */
public final class SecretWordsCountBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkSecretWordsCountLayoutBinding> {
    final /* synthetic */ SecretWordsCountBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecretWordsCountBottomSheetDialog$binding$2(SecretWordsCountBottomSheetDialog secretWordsCountBottomSheetDialog) {
        super(0);
        this.this$0 = secretWordsCountBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkSecretWordsCountLayoutBinding invoke() {
        Activity activity;
        activity = this.this$0.parentActivity;
        return ForkSecretWordsCountLayoutBinding.inflate(LayoutInflater.from(activity));
    }
}
