package com.iMe.p030ui.catalog;

import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.mapper.catalog.CatalogLanguagesUiMappingKt;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.manager.analytics.AnalyticsManager;
import com.iMe.storage.data.manager.analytics.AnalyticsManagerKt;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: CatalogRootPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.catalog.CatalogRootPresenter */
/* loaded from: classes3.dex */
public final class CatalogRootPresenter extends BasePresenter<CatalogRootView> implements NotificationCenter.NotificationCenterDelegate {
    private final CatalogInteractor catalogInteractor;
    private List<? extends LocaleController.LocaleInfo> languages;
    private final Lazy notificationCenter$delegate;
    private final PreferenceHelper preferenceHelper;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private int selectedTabId;
    private final TelegramControllersGateway telegramControllersGateway;

    public CatalogRootPresenter(CatalogInteractor catalogInteractor, PreferenceHelper preferenceHelper, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway) {
        Lazy lazy;
        List<? extends LocaleController.LocaleInfo> emptyList;
        Intrinsics.checkNotNullParameter(catalogInteractor, "catalogInteractor");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        this.catalogInteractor = catalogInteractor;
        this.preferenceHelper = preferenceHelper;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NotificationCenter>() { // from class: com.iMe.ui.catalog.CatalogRootPresenter$notificationCenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final NotificationCenter invoke() {
                TelegramControllersGateway telegramControllersGateway2;
                telegramControllersGateway2 = CatalogRootPresenter.this.telegramControllersGateway;
                return TelegramControllersGateway.CC.getNotificationCenterInstance$default(telegramControllersGateway2, 0, 1, null);
            }
        });
        this.notificationCenter$delegate = lazy;
        this.selectedTabId = C3630R.C3633id.catalog_root_bottom_navigation_channels;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.languages = emptyList;
    }

    private final NotificationCenter getNotificationCenter() {
        return (NotificationCenter) this.notificationCenter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSelectedLanguageId() {
        Long catalogSelectedLanguageId = this.preferenceHelper.getCatalogSelectedLanguageId();
        if (catalogSelectedLanguageId != null) {
            return (int) catalogSelectedLanguageId.longValue();
        }
        return -1;
    }

    public final void selectTab(int i) {
        this.selectedTabId = i;
        ((CatalogRootView) getViewState()).onTabSelected(this.selectedTabId);
    }

    public final void onSelectLanguageClick() {
        if (!this.languages.isEmpty()) {
            ((CatalogRootView) getViewState()).openSelectLanguageScreen(getSelectedLanguageId(), this.languages);
        } else {
            loadLanguages();
        }
    }

    public final void onSelectedLanguageChanged(int i) {
        this.preferenceHelper.setCatalogSelectedLanguageId(i == -1 ? null : Long.valueOf(i));
        ((CatalogRootView) getViewState()).onSelectedLanguageChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        AnalyticsManagerKt.getAnalytics();
        AnalyticsManager.trackEvent(AnalyticsEvent.CatalogEvent.OpenCatalogScreen.INSTANCE);
        selectTab(C3630R.C3633id.catalog_root_bottom_navigation_channels);
        getNotificationCenter().addObserver(this, NotificationCenter.needDeleteDialog);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.needDeleteDialog);
        super.onDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.needDeleteDialog) {
            Object obj = args[0];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Long");
            long longValue = ((Long) obj).longValue();
            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) args[2];
            Object obj2 = args[3];
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            MessagesController messagesController$default = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null);
            if (tLRPC$Chat == null) {
                messagesController$default.deleteDialog(longValue, 0, booleanValue);
            } else if (ChatObject.isNotInChat(tLRPC$Chat)) {
                messagesController$default.deleteDialog(longValue, 0, booleanValue);
            } else {
                messagesController$default.deleteParticipantFromChat(-longValue, messagesController$default.getUser(0L), null, booleanValue, booleanValue);
            }
        }
    }

    private final void loadLanguages() {
        Observable<Result<List<CatalogLanguage>>> observeOn = this.catalogInteractor.getLanguages().observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends CatalogLanguage>>, Unit>() { // from class: com.iMe.ui.catalog.CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends CatalogLanguage>> result) {
                m1573invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1573invoke(Result<? extends List<? extends CatalogLanguage>> it) {
                ResourceManager resourceManager;
                LocaleController.LocaleInfo allLanguagesLocaleInfo;
                List listOf;
                List plus;
                int selectedLanguageId;
                List<? extends LocaleController.LocaleInfo> list;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends CatalogLanguage>> result = it;
                if (result instanceof Result.Success) {
                    CatalogRootPresenter catalogRootPresenter = CatalogRootPresenter.this;
                    allLanguagesLocaleInfo = catalogRootPresenter.getAllLanguagesLocaleInfo();
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(allLanguagesLocaleInfo);
                    plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) CatalogLanguagesUiMappingKt.mapToUI((List) ((Result.Success) result).getData()));
                    catalogRootPresenter.languages = plus;
                    selectedLanguageId = CatalogRootPresenter.this.getSelectedLanguageId();
                    list = CatalogRootPresenter.this.languages;
                    ((CatalogRootView) CatalogRootPresenter.this.getViewState()).openSelectLanguageScreen(selectedLanguageId, list);
                } else if (result instanceof Result.Error) {
                    resourceManager = CatalogRootPresenter.this.resourceManager;
                    ((CatalogRootView) CatalogRootPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LocaleController.LocaleInfo getAllLanguagesLocaleInfo() {
        LocaleController.LocaleInfo localeInfo = new LocaleController.LocaleInfo();
        localeInfo.name = this.resourceManager.getString(C3630R.string.catalog_all);
        localeInfo.nameEnglish = this.resourceManager.getString(C3630R.string.catalog_all_languages);
        localeInfo.serverIndex = -1;
        return localeInfo;
    }
}
