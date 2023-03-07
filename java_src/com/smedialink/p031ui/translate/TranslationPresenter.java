package com.smedialink.p031ui.translate;

import com.smedialink.mapper.translation.TranslationUiMappingKt;
import com.smedialink.model.translation.TranslationArgs;
import com.smedialink.model.translation.TranslationLanguageUiModel;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.translate.TranslationInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.dialogs.DialogTranslationSettings;
import com.smedialink.storage.domain.model.translation.Translation;
import com.smedialink.storage.domain.model.translation.TranslationLanguage;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.enums.TranslationDialogType;
import timber.log.Timber;
/* compiled from: TranslationPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.translate.TranslationPresenter */
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
        this.sourceLanguage = getSourceLanguageByType();
        this.targetLanguage = getTargetLanguageByType();
        this.outLanguage = getTargetLanguageByType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getCurrentLanguage() {
        return (String) this.currentLanguage$delegate.getValue();
    }

    public final void loadLanguages(final boolean z) {
        Observable<Result<List<TranslationLanguage>>> observeOn = this.translationInteractor.languages().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.translate.TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                String currentLanguage;
                List sortedWith;
                List mutableList;
                List<TranslationLanguageUiModel> list;
                String currentLanguage2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    TranslationPresenter.this.isSource = z;
                    TranslationLanguageUiModel translationLanguageUiModel = z ? TranslationPresenter.this.sourceLanguage : TranslationPresenter.this.targetLanguage;
                    TranslationPresenter translationPresenter = TranslationPresenter.this;
                    Iterable<TranslationLanguage> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (TranslationLanguage translationLanguage : iterable) {
                        currentLanguage2 = TranslationPresenter.this.getCurrentLanguage();
                        arrayList.add(TranslationUiMappingKt.mapToUI(translationLanguage, currentLanguage2));
                    }
                    currentLanguage = TranslationPresenter.this.getCurrentLanguage();
                    final Collator collator = Collator.getInstance(new Locale(currentLanguage));
                    Intrinsics.checkNotNullExpressionValue(collator, "getInstance(Locale(currentLanguage))");
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.smedialink.ui.translate.TranslationPresenter$loadLanguages$lambda-2$$inlined$compareBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            return collator.compare(((TranslationLanguageUiModel) t).getDisplayLanguage(), ((TranslationLanguageUiModel) t2).getDisplayLanguage());
                        }
                    });
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
                    translationPresenter.supportedLanguages = mutableList;
                    list = TranslationPresenter.this.supportedLanguages;
                    ((TranslationView) TranslationPresenter.this.getViewState()).showLanguages(list, translationLanguageUiModel.getLanguageCode());
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = TranslationPresenter.this.resourceManager;
                    ((TranslationView) TranslationPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.translate.TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public static /* synthetic */ void translate$default(TranslationPresenter translationPresenter, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            TranslationArgs translationArgs = translationPresenter.args;
            str = translationArgs == null ? null : translationArgs.getTextToTranslate();
            if (str == null) {
                str = "";
            }
        }
        if ((i & 2) != 0) {
            z = false;
        }
        translationPresenter.translate(str, z);
    }

    public final void translate(final String text, final boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (isValidToTranslate()) {
            TranslationInteractor translationInteractor = this.translationInteractor;
            String languageCode = this.targetLanguage.getLanguageCode();
            Intrinsics.checkNotNull(languageCode);
            Observable<Result<Translation>> observeOn = translationInteractor.translate(text, languageCode, this.sourceLanguage.getLanguageCode()).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.translate.TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1
                @Override // io.reactivex.functions.Consumer
                public final void accept(T it) {
                    ResourceManager resourceManager;
                    TranslationLanguageUiModel translationLanguageUiModel;
                    TranslationLanguageUiModel translationLanguageUiModel2;
                    ResourceManager resourceManager2;
                    TranslationLanguageUiModel translationLanguageUiModel3;
                    TranslationLanguageUiModel translationLanguageUiModel4;
                    String currentLanguage;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result result = (Result) it;
                    if (result instanceof Result.Success) {
                        Result.Success success = (Result.Success) result;
                        if (((Translation) success.getData()).getSourceLang().length() > 0) {
                            TranslationPresenter translationPresenter = TranslationPresenter.this;
                            TranslationLanguageUiModel.Companion companion = TranslationLanguageUiModel.Companion;
                            String sourceLang = ((Translation) success.getData()).getSourceLang();
                            currentLanguage = TranslationPresenter.this.getCurrentLanguage();
                            translationPresenter.sourceLanguage = companion.createByLangCode(sourceLang, currentLanguage);
                        }
                        String text2 = ((Translation) success.getData()).getText();
                        translationLanguageUiModel3 = TranslationPresenter.this.sourceLanguage;
                        String displayLanguage = translationLanguageUiModel3.getDisplayLanguage();
                        translationLanguageUiModel4 = TranslationPresenter.this.targetLanguage;
                        ((TranslationView) TranslationPresenter.this.getViewState()).showTranslation(text2, displayLanguage, translationLanguageUiModel4.getDisplayLanguage());
                    } else if (result instanceof Result.Error) {
                        Result.Error error = (Result.Error) result;
                        IErrorStatus status = error.getError().getStatus();
                        if (status == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                            ((TranslationView) TranslationPresenter.this.getViewState()).showAppUpdateDialog();
                            return;
                        }
                        if (status == FirebaseFunctionsErrorHandler.ErrorStatus.TRANSLATION_UNSUPPORTED_LANGUAGE || status == ApiErrorHandler.ErrorStatus.RATE_LIMIT) {
                            String str = text;
                            translationLanguageUiModel = TranslationPresenter.this.sourceLanguage;
                            String displayLanguage2 = translationLanguageUiModel.getDisplayLanguage();
                            translationLanguageUiModel2 = TranslationPresenter.this.targetLanguage;
                            ((TranslationView) TranslationPresenter.this.getViewState()).showTranslation(str, displayLanguage2, translationLanguageUiModel2.getDisplayLanguage());
                            ErrorModel error2 = error.getError();
                            resourceManager2 = TranslationPresenter.this.resourceManager;
                            ((TranslationView) TranslationPresenter.this.getViewState()).showToast(error2.getMessage(resourceManager2));
                            return;
                        }
                        ErrorModel error3 = error.getError();
                        resourceManager = TranslationPresenter.this.resourceManager;
                        ((TranslationView) TranslationPresenter.this.getViewState()).showToast(error3.getMessage(resourceManager));
                        ((TranslationView) TranslationPresenter.this.getViewState()).finishScreen();
                    } else if (result instanceof Result.Loading) {
                        ((TranslationView) TranslationPresenter.this.getViewState()).onLoadingState(text, z);
                    }
                }
            }, new Consumer() { // from class: com.smedialink.ui.translate.TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Throwable th) {
                    Timber.m4e(th);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 == null) {
                        return;
                    }
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
            return;
        }
        ((TranslationView) getViewState()).showTranslation(text, this.sourceLanguage.getDisplayLanguage(), this.targetLanguage.getDisplayLanguage());
    }

    public static /* synthetic */ void translateSource$default(TranslationPresenter translationPresenter, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            TranslationArgs translationArgs = translationPresenter.args;
            str = translationArgs == null ? null : translationArgs.getTextToTranslate();
            if (str == null) {
                str = "";
            }
        }
        if ((i & 2) != 0) {
            z = false;
        }
        translationPresenter.translateSource(str, z);
    }

    public final void translateSource(final String text, boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        TranslationInteractor translationInteractor = this.translationInteractor;
        String languageCode = this.sourceLanguage.getLanguageCode();
        Intrinsics.checkNotNull(languageCode);
        Observable<Result<Translation>> observeOn = translationInteractor.translate(text, languageCode, this.outLanguage.getLanguageCode()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.translate.TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                TranslationLanguageUiModel translationLanguageUiModel;
                TranslationLanguageUiModel translationLanguageUiModel2;
                ResourceManager resourceManager2;
                TranslationArgs translationArgs;
                TranslationLanguageUiModel translationLanguageUiModel3;
                TranslationLanguageUiModel translationLanguageUiModel4;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    translationArgs = TranslationPresenter.this.args;
                    if (translationArgs != null) {
                        translationArgs.setTextToTranslate(((Translation) ((Result.Success) result).getData()).getText());
                    }
                    translationLanguageUiModel3 = TranslationPresenter.this.sourceLanguage;
                    String displayLanguage = translationLanguageUiModel3.getDisplayLanguage();
                    translationLanguageUiModel4 = TranslationPresenter.this.targetLanguage;
                    ((TranslationView) TranslationPresenter.this.getViewState()).showSubtitleLanguage(displayLanguage, translationLanguageUiModel4.getDisplayLanguage());
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    IErrorStatus status = error.getError().getStatus();
                    if (status == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                        ((TranslationView) TranslationPresenter.this.getViewState()).showAppUpdateDialog();
                        return;
                    }
                    boolean z2 = true;
                    if (status != FirebaseFunctionsErrorHandler.ErrorStatus.TRANSLATION_UNSUPPORTED_LANGUAGE && status != ApiErrorHandler.ErrorStatus.RATE_LIMIT) {
                        z2 = false;
                    }
                    if (z2) {
                        String str = text;
                        translationLanguageUiModel = TranslationPresenter.this.sourceLanguage;
                        String displayLanguage2 = translationLanguageUiModel.getDisplayLanguage();
                        translationLanguageUiModel2 = TranslationPresenter.this.targetLanguage;
                        ((TranslationView) TranslationPresenter.this.getViewState()).showTranslation(str, displayLanguage2, translationLanguageUiModel2.getDisplayLanguage());
                        ErrorModel error2 = error.getError();
                        resourceManager2 = TranslationPresenter.this.resourceManager;
                        ((TranslationView) TranslationPresenter.this.getViewState()).showToast(error2.getMessage(resourceManager2));
                        return;
                    }
                    ErrorModel error3 = error.getError();
                    resourceManager = TranslationPresenter.this.resourceManager;
                    ((TranslationView) TranslationPresenter.this.getViewState()).showToast(error3.getMessage(resourceManager));
                    ((TranslationView) TranslationPresenter.this.getViewState()).finishScreen();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.translate.TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
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
        Unit unit = Unit.INSTANCE;
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

    private final TranslationLanguageUiModel getSourceLanguageByType() {
        TranslationArgs translationArgs = this.args;
        if ((translationArgs == null ? null : translationArgs.getType()) == TranslationDialogType.REPLY) {
            TranslationLanguageUiModel.Companion companion = TranslationLanguageUiModel.Companion;
            DialogTranslationSettings translationSettings = this.args.getTranslationSettings();
            String outTextTranslateLangCode = translationSettings != null ? translationSettings.getOutTextTranslateLangCode() : null;
            if (outTextTranslateLangCode == null) {
                outTextTranslateLangCode = getCurrentLanguage();
            }
            return companion.createByLangCode(outTextTranslateLangCode, getCurrentLanguage());
        }
        return TranslationLanguageUiModel.Companion.getAutoDetectionLanguage(this.resourceManager);
    }

    private final TranslationLanguageUiModel getTargetLanguageByType() {
        TranslationLanguageUiModel.Companion companion = TranslationLanguageUiModel.Companion;
        TranslationArgs translationArgs = this.args;
        String str = null;
        if ((translationArgs == null ? null : translationArgs.getType()) == TranslationDialogType.REPLY) {
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
