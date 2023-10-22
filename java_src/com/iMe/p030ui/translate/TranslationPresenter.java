package com.iMe.p030ui.translate;

import com.iMe.fork.enums.TranslationDialogType;
import com.iMe.mapper.translation.TranslationUiMappingKt;
import com.iMe.model.translation.TranslationArgs;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.translate.TranslationInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import com.iMe.storage.domain.model.translation.Translation;
import com.iMe.storage.domain.model.translation.TranslationLanguage;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.iMe.ui.translate.TranslationPresenter$currentLanguage$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                TelegramGateway telegramGateway2;
                telegramGateway2 = TranslationPresenter.this.telegramGateway;
                return telegramGateway2.getCurrentLanguage();
            }
        });
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

    public final void loadLanguages(final boolean z) {
        Observable<Result<List<TranslationLanguage>>> observeOn = this.translationInteractor.languages().observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<TranslationLanguage>>, Unit>() { // from class: com.iMe.ui.translate.TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<TranslationLanguage>> result) {
                m1610invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1610invoke(Result<? extends List<TranslationLanguage>> it) {
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                String currentLanguage;
                List sortedWith;
                List mutableList;
                List<TranslationLanguageUiModel> list;
                String currentLanguage2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<TranslationLanguage>> result = it;
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
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.translate.TranslationPresenter$loadLanguages$lambda$2$$inlined$compareBy$1
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
                    resourceManager = TranslationPresenter.this.resourceManager;
                    ((TranslationView) TranslationPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.translate.TranslationPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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

    public final void translate(final String text, final boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (isValidToTranslate()) {
            TranslationInteractor translationInteractor = this.translationInteractor;
            String languageCode = this.targetLanguage.getLanguageCode();
            Intrinsics.checkNotNull(languageCode);
            Observable<Result<Translation>> observeOn = translationInteractor.translate(text, languageCode, this.sourceLanguage.getLanguageCode()).observeOn(this.schedulersProvider.mo1009ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Translation>, Unit>() { // from class: com.iMe.ui.translate.TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Translation> result) {
                    m1611invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1611invoke(Result<? extends Translation> it) {
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
                        if (!(status == FirebaseFunctionsErrorHandler.ErrorStatus.TRANSLATION_UNSUPPORTED_LANGUAGE || status == ApiErrorHandler.ErrorStatus.RATE_LIMIT)) {
                            resourceManager = TranslationPresenter.this.resourceManager;
                            ((TranslationView) TranslationPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                            ((TranslationView) TranslationPresenter.this.getViewState()).finishScreen();
                            return;
                        }
                        String str = text;
                        translationLanguageUiModel = TranslationPresenter.this.sourceLanguage;
                        String displayLanguage2 = translationLanguageUiModel.getDisplayLanguage();
                        translationLanguageUiModel2 = TranslationPresenter.this.targetLanguage;
                        ((TranslationView) TranslationPresenter.this.getViewState()).showTranslation(str, displayLanguage2, translationLanguageUiModel2.getDisplayLanguage());
                        resourceManager2 = TranslationPresenter.this.resourceManager;
                        ((TranslationView) TranslationPresenter.this.getViewState()).showErrorToast(error, resourceManager2);
                    } else if (result instanceof Result.Loading) {
                        ((TranslationView) TranslationPresenter.this.getViewState()).onLoadingState(text, z);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.translate.TranslationPresenter$translate$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable error) {
                    Timber.m6e(error);
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = error.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                    Intrinsics.checkNotNullExpressionValue(error, "error");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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

    public final void translateSource(final String text, boolean z) {
        Intrinsics.checkNotNullParameter(text, "text");
        TranslationInteractor translationInteractor = this.translationInteractor;
        String languageCode = this.sourceLanguage.getLanguageCode();
        Intrinsics.checkNotNull(languageCode);
        Observable<Result<Translation>> observeOn = translationInteractor.translate(text, languageCode, this.outLanguage.getLanguageCode()).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "translationInteractor\n  …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Translation>, Unit>() { // from class: com.iMe.ui.translate.TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Translation> result) {
                m1612invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1612invoke(Result<? extends Translation> it) {
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
                    if (!z2) {
                        resourceManager = TranslationPresenter.this.resourceManager;
                        ((TranslationView) TranslationPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                        ((TranslationView) TranslationPresenter.this.getViewState()).finishScreen();
                        return;
                    }
                    String str = text;
                    translationLanguageUiModel = TranslationPresenter.this.sourceLanguage;
                    String displayLanguage2 = translationLanguageUiModel.getDisplayLanguage();
                    translationLanguageUiModel2 = TranslationPresenter.this.targetLanguage;
                    ((TranslationView) TranslationPresenter.this.getViewState()).showTranslation(str, displayLanguage2, translationLanguageUiModel2.getDisplayLanguage());
                    resourceManager2 = TranslationPresenter.this.resourceManager;
                    ((TranslationView) TranslationPresenter.this.getViewState()).showErrorToast(error, resourceManager2);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.translate.TranslationPresenter$translateSource$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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
