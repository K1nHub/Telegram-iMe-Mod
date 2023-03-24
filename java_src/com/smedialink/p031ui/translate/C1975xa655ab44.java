package com.smedialink.p031ui.translate;

import com.smedialink.model.translation.TranslationLanguageUiModel;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.translation.Translation;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.translate.TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1975xa655ab44 extends Lambda implements Function1<Result<? extends Translation>, Unit> {
    final /* synthetic */ boolean $onLanguageChanged$inlined;
    final /* synthetic */ String $text$inlined;
    final /* synthetic */ TranslationPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1975xa655ab44(TranslationPresenter translationPresenter, String str, boolean z) {
        super(1);
        this.this$0 = translationPresenter;
        this.$text$inlined = str;
        this.$onLanguageChanged$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Translation> result) {
        m1282invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1282invoke(Result<? extends Translation> it) {
        ResourceManager resourceManager;
        TranslationLanguageUiModel translationLanguageUiModel;
        TranslationLanguageUiModel translationLanguageUiModel2;
        ResourceManager resourceManager2;
        TranslationLanguageUiModel translationLanguageUiModel3;
        TranslationLanguageUiModel translationLanguageUiModel4;
        String currentLanguage;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Translation> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            if (((Translation) success.getData()).getSourceLang().length() > 0) {
                TranslationPresenter translationPresenter = this.this$0;
                TranslationLanguageUiModel.Companion companion = TranslationLanguageUiModel.Companion;
                String sourceLang = ((Translation) success.getData()).getSourceLang();
                currentLanguage = this.this$0.getCurrentLanguage();
                translationPresenter.sourceLanguage = companion.createByLangCode(sourceLang, currentLanguage);
            }
            String text = ((Translation) success.getData()).getText();
            translationLanguageUiModel3 = this.this$0.sourceLanguage;
            String displayLanguage = translationLanguageUiModel3.getDisplayLanguage();
            translationLanguageUiModel4 = this.this$0.targetLanguage;
            ((TranslationView) this.this$0.getViewState()).showTranslation(text, displayLanguage, translationLanguageUiModel4.getDisplayLanguage());
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            IErrorStatus status = error.getError().getStatus();
            if (status == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                ((TranslationView) this.this$0.getViewState()).showAppUpdateDialog();
                return;
            }
            if (status == FirebaseFunctionsErrorHandler.ErrorStatus.TRANSLATION_UNSUPPORTED_LANGUAGE || status == ApiErrorHandler.ErrorStatus.RATE_LIMIT) {
                String str = this.$text$inlined;
                translationLanguageUiModel = this.this$0.sourceLanguage;
                String displayLanguage2 = translationLanguageUiModel.getDisplayLanguage();
                translationLanguageUiModel2 = this.this$0.targetLanguage;
                ((TranslationView) this.this$0.getViewState()).showTranslation(str, displayLanguage2, translationLanguageUiModel2.getDisplayLanguage());
                ErrorModel error2 = error.getError();
                resourceManager2 = this.this$0.resourceManager;
                ((TranslationView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager2));
                return;
            }
            ErrorModel error3 = error.getError();
            resourceManager = this.this$0.resourceManager;
            ((TranslationView) this.this$0.getViewState()).showToast(error3.getMessage(resourceManager));
            ((TranslationView) this.this$0.getViewState()).finishScreen();
        } else if (result instanceof Result.Loading) {
            ((TranslationView) this.this$0.getViewState()).onLoadingState(this.$text$inlined, this.$onLanguageChanged$inlined);
        }
    }
}
