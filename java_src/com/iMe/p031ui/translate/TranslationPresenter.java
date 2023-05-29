package com.iMe.p031ui.translate;

import com.iMe.fork.enums.TranslationDialogType;
import com.iMe.model.translation.TranslationArgs;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.translate.TranslationInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import com.iMe.storage.domain.model.translation.Translation;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: TranslationPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.translate.TranslationPresenter */
/* loaded from: classes3.dex */
public final class TranslationPresenter extends BasePresenter<TranslationView> {
    private final TranslationArgs args;
    private final Lazy currentLanguage$delegate;
    private boolean isSource;
    private TranslationLanguageUiModel outLanguage;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private TranslationLanguageUiModel sourceLanguage;
    private List<TranslationLanguageUiModel> supportedLanguages;
    private TranslationLanguageUiModel targetLanguage;
    private final TelegramGateway telegramGateway;
    private final TranslationInteractor translationInteractor;

    public TranslationPresenter(TranslationArgs translationArgs, TranslationInteractor translationInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager, TelegramGateway telegramGateway) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(translationInteractor, "translationInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.args = translationArgs;
        this.translationInteractor = translationInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        this.telegramGateway = telegramGateway;
        lazy = LazyKt__LazyJVMKt.lazy(new TranslationPresenter$currentLanguage$2(this));
        this.currentLanguage$delegate = lazy;
        this.supportedLanguages = new ArrayList();
        this.sourceLanguage = TranslationLanguageUiModel.Companion.getAutoDetectionLanguage(resourceManager);
        this.targetLanguage = getTargetLanguageByType();
        this.outLanguage = getTargetLanguageByType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getCurrentLanguage() {
        return (String) this.currentLanguage$delegate.getValue();
    }

    public final void loadLanguages(boolean z) {
        Observable<Result<List<TranslationLanguage>>> observeOn = this.translationInteractor.languages().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2077xba424fcb(this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2078xba424fcc((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public static /* synthetic */ void translate$default(TranslationPresenter translationPresenter, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            TranslationArgs translationArgs = translationPresenter.args;
            str = translationArgs != null ? translationArgs.getTextToTranslate() : null;
            if (str == null) {
                str = "";
            }
        }
        if ((i & 2) != 0) {
            z = false;
        }
        translationPresenter.translate(str, z);
    }

    public final void translate(String text, boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (isValidToTranslate()) {
            TranslationInteractor translationInteractor = this.translationInteractor;
            String languageCode = this.targetLanguage.getLanguageCode();
            Intrinsics.checkNotNull(languageCode);
            Observable<Result<Translation>> observeOn = translationInteractor.translate(text, languageCode, this.sourceLanguage.getLanguageCode()).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2079xa655ab44(this, text, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2080xa655ab45((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
            return;
        }
        ((TranslationView) getViewState()).showTranslation(text, this.sourceLanguage.getDisplayLanguage(), this.targetLanguage.getDisplayLanguage());
    }

    public static /* synthetic */ void translateSource$default(TranslationPresenter translationPresenter, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            TranslationArgs translationArgs = translationPresenter.args;
            str = translationArgs != null ? translationArgs.getTextToTranslate() : null;
            if (str == null) {
                str = "";
            }
        }
        if ((i & 2) != 0) {
            z = false;
        }
        translationPresenter.translateSource(str, z);
    }

    public final void translateSource(String text, boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        TranslationInteractor translationInteractor = this.translationInteractor;
        String languageCode = this.sourceLanguage.getLanguageCode();
        Intrinsics.checkNotNull(languageCode);
        Observable<Result<Translation>> observeOn = translationInteractor.translate(text, languageCode, this.outLanguage.getLanguageCode()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2081x31d12e3f(this, text)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2082x31d12e40((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void replaceLanguage(boolean z, String translateText) {
        Intrinsics.checkNotNullParameter(translateText, "translateText");
        if (z) {
            ((TranslationView) getViewState()).showTranslation(translateText, this.targetLanguage.getDisplayLanguage(), this.sourceLanguage.getDisplayLanguage());
        } else {
            ((TranslationView) getViewState()).showTranslation(translateText, this.sourceLanguage.getDisplayLanguage(), this.targetLanguage.getDisplayLanguage());
        }
    }

    public final void selectLanguage(String selectedLanguageCode) {
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(selectedLanguageCode, "selectedLanguageCode");
        if (this.isSource) {
            this.outLanguage = this.sourceLanguage;
            Iterator<T> it = this.supportedLanguages.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (Intrinsics.areEqual(((TranslationLanguageUiModel) obj2).getLanguageCode(), selectedLanguageCode)) {
                    break;
                }
            }
            TranslationLanguageUiModel translationLanguageUiModel = (TranslationLanguageUiModel) obj2;
            if (translationLanguageUiModel == null) {
                return;
            }
            this.sourceLanguage = translationLanguageUiModel;
            translateSource$default(this, null, false, 3, null);
            return;
        }
        Iterator<T> it2 = this.supportedLanguages.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((TranslationLanguageUiModel) obj).getLanguageCode(), selectedLanguageCode)) {
                break;
            }
        }
        TranslationLanguageUiModel translationLanguageUiModel2 = (TranslationLanguageUiModel) obj;
        if (translationLanguageUiModel2 == null) {
            return;
        }
        this.targetLanguage = translationLanguageUiModel2;
        translate$default(this, null, true, 1, null);
    }

    public final void prepareReplyDialog() {
        TranslationView translationView = (TranslationView) getViewState();
        DialogTranslationSettings dialogTranslationSettings = new DialogTranslationSettings(false, null, false, null, 0L, false, null, null, 255, null);
        dialogTranslationSettings.setInTextTranslateLangCode(this.sourceLanguage.getLanguageCode());
        String languageCode = this.targetLanguage.getLanguageCode();
        if (languageCode == null) {
            languageCode = "en";
        }
        dialogTranslationSettings.setOutTextTranslateLangCode(languageCode);
        translationView.openReplyDialog(dialogTranslationSettings);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.args == null) {
            return;
        }
        ((TranslationView) getViewState()).configureScreenWith(this.sourceLanguage.getDisplayLanguage(), this.targetLanguage.getDisplayLanguage());
        if (this.args.getType() != TranslationDialogType.REPLY) {
            translate$default(this, null, false, 3, null);
        }
    }

    private final boolean isSourceAndTargetLanguagesIsSame() {
        return Intrinsics.areEqual(this.targetLanguage.getLanguageCode(), this.sourceLanguage.getLanguageCode());
    }

    private final boolean isValidToTranslate() {
        return (this.targetLanguage.isAutoDetection() || isSourceAndTargetLanguagesIsSame()) ? false : true;
    }

    private final TranslationLanguageUiModel getTargetLanguageByType() {
        TranslationLanguageUiModel.Companion companion = TranslationLanguageUiModel.Companion;
        TranslationArgs translationArgs = this.args;
        String str = null;
        if ((translationArgs != null ? translationArgs.getType() : null) == TranslationDialogType.REPLY) {
            DialogTranslationSettings translationSettings = this.args.getTranslationSettings();
            if (translationSettings != null) {
                str = translationSettings.getInTextTranslateLangCode();
            }
        } else {
            TranslationArgs translationArgs2 = this.args;
            if (translationArgs2 != null) {
                str = translationArgs2.getLangCodeByType();
            }
        }
        if (str == null) {
            str = getCurrentLanguage();
        }
        return companion.createByLangCode(str, getCurrentLanguage());
    }
}
