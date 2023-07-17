package com.iMe.p031ui.recognition;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkTextRecognitionContentLayoutBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RecognitionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.recognition.RecognitionBottomSheetDialog$binding$2 */
/* loaded from: classes3.dex */
public final class RecognitionBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkTextRecognitionContentLayoutBinding> {
    final /* synthetic */ RecognitionBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecognitionBottomSheetDialog$binding$2(RecognitionBottomSheetDialog recognitionBottomSheetDialog) {
        super(0);
        this.this$0 = recognitionBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkTextRecognitionContentLayoutBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.parentFragment;
        return ForkTextRecognitionContentLayoutBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
