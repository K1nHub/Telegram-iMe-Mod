package com.iMe.p031ui.recognition;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.databinding.ForkTextRecognitionContentLayoutBinding;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: RecognitionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.recognition.RecognitionBottomSheetDialog */
/* loaded from: classes3.dex */
public final class RecognitionBottomSheetDialog extends MvpBottomSheet {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(RecognitionBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkTextRecognitionContentLayoutBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final int iconResId;
    private final BaseFragment parentFragment;
    private final Lazy resourceManager$delegate;
    private final String textToRecognize;
    private final int titleResId;
    private final TranslationDelegate translationDelegate;

    /* compiled from: RecognitionBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.recognition.RecognitionBottomSheetDialog$TranslationDelegate */
    /* loaded from: classes3.dex */
    public interface TranslationDelegate {
        void onTranslateAction(String str);
    }

    public static final RecognitionBottomSheetDialog newInstance(BaseFragment baseFragment, String str, TranslationDelegate translationDelegate, int i, int i2) {
        return Companion.newInstance(baseFragment, str, translationDelegate, i, i2);
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RecognitionBottomSheetDialog(org.telegram.p044ui.ActionBar.BaseFragment r3, java.lang.String r4, com.iMe.p031ui.recognition.RecognitionBottomSheetDialog.TranslationDelegate r5, int r6, int r7) {
        /*
            r2 = this;
            java.lang.String r0 = "parentFragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "textToRecognize"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "translationDelegate"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            android.app.Activity r0 = r3.getParentActivity()
            java.lang.String r1 = "parentFragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r2.<init>(r0, r1)
            r2.parentFragment = r3
            r2.textToRecognize = r4
            r2.translationDelegate = r5
            r2.titleResId = r6
            r2.iconResId = r7
            org.koin.mp.KoinPlatformTools r3 = org.koin.p043mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r3 = r3.defaultLazyMode()
            com.iMe.ui.recognition.RecognitionBottomSheetDialog$special$$inlined$inject$default$1 r4 = new com.iMe.ui.recognition.RecognitionBottomSheetDialog$special$$inlined$inject$default$1
            r5 = 0
            r4.<init>(r2, r5, r5)
            kotlin.Lazy r3 = kotlin.LazyKt.lazy(r3, r4)
            r2.resourceManager$delegate = r3
            com.iMe.ui.recognition.RecognitionBottomSheetDialog$binding$2 r3 = new com.iMe.ui.recognition.RecognitionBottomSheetDialog$binding$2
            r3.<init>(r2)
            com.iMe.utils.extentions.delegate.ResettableLazy r3 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r2, r5, r3, r1, r5)
            r2.binding$delegate = r3
            r3 = 0
            r2.setApplyBottomPadding(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.recognition.RecognitionBottomSheetDialog.<init>(org.telegram.ui.ActionBar.BaseFragment, java.lang.String, com.iMe.ui.recognition.RecognitionBottomSheetDialog$TranslationDelegate, int, int):void");
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkTextRecognitionContentLayoutBinding getBinding() {
        return (ForkTextRecognitionContentLayoutBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupStyles();
        setupListeners();
        setupScreen();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    private final void setupScreen() {
        ForkTextRecognitionContentLayoutBinding binding = getBinding();
        binding.recognizedText.setText(this.textToRecognize);
        binding.textCompany.setText(getResourceManager().getString(this.titleResId));
        binding.imageServiceLogo.setImageResource(this.iconResId);
    }

    private final void setupStyles() {
        Drawable drawable = this.shadowDrawable;
        int i = Theme.key_actionBarDefault;
        drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.SRC_IN));
        ForkTextRecognitionContentLayoutBinding binding = getBinding();
        binding.textRecognitionContainer.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        binding.constraintLayoutHeader.setBackgroundColor(Theme.getColor(i));
        AppCompatImageView imageClose = binding.imageClose;
        Intrinsics.checkNotNullExpressionValue(imageClose, "imageClose");
        int i2 = Theme.key_chat_status;
        ViewExtKt.setImageColor(imageClose, Theme.getColor(i2));
        binding.textCompany.setTextColor(Theme.getColor(i2));
        AppCompatTextView textCompany = binding.textCompany;
        Intrinsics.checkNotNullExpressionValue(textCompany, "textCompany");
        ViewExtKt.withMediumTypeface(textCompany);
        AppCompatImageView imageServiceLogo = binding.imageServiceLogo;
        Intrinsics.checkNotNullExpressionValue(imageServiceLogo, "imageServiceLogo");
        ViewExtKt.setImageColor(imageServiceLogo, Theme.getColor(i2));
        AppCompatTextView appCompatTextView = binding.recognizedText;
        appCompatTextView.setTextSize(1, SharedConfig.fontSize);
        appCompatTextView.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        AppCompatImageView imageCopy = binding.imageCopy;
        Intrinsics.checkNotNullExpressionValue(imageCopy, "imageCopy");
        int i3 = Theme.key_chats_actionBackground;
        ViewExtKt.setImageColor(imageCopy, Theme.getColor(i3));
        AppCompatImageView imageShare = binding.imageShare;
        Intrinsics.checkNotNullExpressionValue(imageShare, "imageShare");
        ViewExtKt.setImageColor(imageShare, Theme.getColor(i3));
        AppCompatImageView imageTranslate = binding.imageTranslate;
        Intrinsics.checkNotNullExpressionValue(imageTranslate, "imageTranslate");
        ViewExtKt.setImageColor(imageTranslate, Theme.getColor(i3));
        AppCompatImageView imageCopy2 = binding.imageCopy;
        Intrinsics.checkNotNullExpressionValue(imageCopy2, "imageCopy");
        ViewExtKt.setCircleRippleBackground(imageCopy2);
        AppCompatImageView imageTranslate2 = binding.imageTranslate;
        Intrinsics.checkNotNullExpressionValue(imageTranslate2, "imageTranslate");
        ViewExtKt.setCircleRippleBackground(imageTranslate2);
        AppCompatImageView imageShare2 = binding.imageShare;
        Intrinsics.checkNotNullExpressionValue(imageShare2, "imageShare");
        ViewExtKt.setCircleRippleBackground(imageShare2);
        AppCompatImageView imageClose2 = binding.imageClose;
        Intrinsics.checkNotNullExpressionValue(imageClose2, "imageClose");
        ViewExtKt.setCircleRippleBackground(imageClose2);
    }

    private final void setupListeners() {
        ForkTextRecognitionContentLayoutBinding binding = getBinding();
        binding.imageClose.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.recognition.RecognitionBottomSheetDialog$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionBottomSheetDialog.setupListeners$lambda$7$lambda$3(RecognitionBottomSheetDialog.this, view);
            }
        });
        binding.imageCopy.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.recognition.RecognitionBottomSheetDialog$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionBottomSheetDialog.setupListeners$lambda$7$lambda$4(RecognitionBottomSheetDialog.this, view);
            }
        });
        binding.imageTranslate.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.recognition.RecognitionBottomSheetDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionBottomSheetDialog.setupListeners$lambda$7$lambda$5(RecognitionBottomSheetDialog.this, view);
            }
        });
        binding.imageShare.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.recognition.RecognitionBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecognitionBottomSheetDialog.setupListeners$lambda$7$lambda$6(RecognitionBottomSheetDialog.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7$lambda$3(RecognitionBottomSheetDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7$lambda$4(RecognitionBottomSheetDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.actionCopyToClipboard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7$lambda$5(RecognitionBottomSheetDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.translateText();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7$lambda$6(RecognitionBottomSheetDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.shareText();
    }

    private final void actionCopyToClipboard() {
        ContextExtKt.copyToClipboard$default(getBinding().recognizedText.getText().toString(), null, 2, null);
    }

    private final void translateText() {
        AppCompatTextView appCompatTextView = getBinding().recognizedText;
        if (appCompatTextView.getSelectionStart() > 0 || appCompatTextView.getSelectionEnd() > 0) {
            TranslationDelegate translationDelegate = this.translationDelegate;
            CharSequence text = appCompatTextView.getText();
            Intrinsics.checkNotNullExpressionValue(text, "text");
            translationDelegate.onTranslateAction(text.subSequence(appCompatTextView.getSelectionStart(), appCompatTextView.getSelectionEnd()).toString());
        } else {
            this.translationDelegate.onTranslateAction(appCompatTextView.getText().toString());
        }
        dismiss();
    }

    private final void shareText() {
        Activity parentActivity = this.parentFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentFragment.parentActivity");
        ContextExtKt.share(parentActivity, getBinding().recognizedText.getText().toString());
    }

    /* compiled from: RecognitionBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.recognition.RecognitionBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RecognitionBottomSheetDialog newInstance(BaseFragment parentFragment, String result, TranslationDelegate delegate, int i, int i2) {
            Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            return new RecognitionBottomSheetDialog(parentFragment, result, delegate, i, i2);
        }
    }
}
