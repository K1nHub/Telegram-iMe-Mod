package com.iMe.p031ui.translate;

import com.iMe.model.translation.TranslationArgs;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.translation.Translation;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.translate.TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2081x31d12e3f extends Lambda implements Function1<Result<? extends Translation>, Unit> {
    final /* synthetic */ String $text$inlined;
    final /* synthetic */ TranslationPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2081x31d12e3f(TranslationPresenter translationPresenter, String str) {
        super(1);
        this.this$0 = translationPresenter;
        this.$text$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Translation> result) {
        m1381invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1381invoke(Result<? extends Translation> it) {
        ResourceManager resourceManager;
        TranslationLanguageUiModel translationLanguageUiModel;
        TranslationLanguageUiModel translationLanguageUiModel2;
        ResourceManager resourceManager2;
        TranslationArgs translationArgs;
        TranslationLanguageUiModel translationLanguageUiModel3;
        TranslationLanguageUiModel translationLanguageUiModel4;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Translation> result = it;
        if (result instanceof Result.Success) {
            translationArgs = this.this$0.args;
            if (translationArgs != null) {
                translationArgs.setTextToTranslate(((Translation) ((Result.Success) result).getData()).getText());
            }
            translationLanguageUiModel3 = this.this$0.sourceLanguage;
            String displayLanguage = translationLanguageUiModel3.getDisplayLanguage();
            translationLanguageUiModel4 = this.this$0.targetLanguage;
            ((TranslationView) this.this$0.getViewState()).showSubtitleLanguage(displayLanguage, translationLanguageUiModel4.getDisplayLanguage());
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            IErrorStatus status = error.getError().getStatus();
            if (status == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                ((TranslationView) this.this$0.getViewState()).showAppUpdateDialog();
                return;
            }
            boolean z = true;
            if (status != FirebaseFunctionsErrorHandler.ErrorStatus.TRANSLATION_UNSUPPORTED_LANGUAGE && status != ApiErrorHandler.ErrorStatus.RATE_LIMIT) {
                z = false;
            }
            if (z) {
                String str = this.$text$inlined;
                translationLanguageUiModel = this.this$0.sourceLanguage;
                String displayLanguage2 = translationLanguageUiModel.getDisplayLanguage();
                translationLanguageUiModel2 = this.this$0.targetLanguage;
                ((TranslationView) this.this$0.getViewState()).showTranslation(str, displayLanguage2, translationLanguageUiModel2.getDisplayLanguage());
                resourceManager2 = this.this$0.resourceManager;
                ((TranslationView) this.this$0.getViewState()).showErrorToast(error, resourceManager2);
                return;
            }
            resourceManager = this.this$0.resourceManager;
            ((TranslationView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
            ((TranslationView) this.this$0.getViewState()).finishScreen();
        }
    }
}