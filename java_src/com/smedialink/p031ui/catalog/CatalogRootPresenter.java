package com.smedialink.p031ui.catalog;

import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.mapper.catalog.CatalogLanguagesUiMappingKt;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.catalog.CatalogInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.catalog.CatalogLanguage;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: CatalogRootPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.catalog.CatalogRootPresenter */
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
        lazy = LazyKt__LazyJVMKt.lazy(new CatalogRootPresenter$notificationCenter$2(this));
        this.notificationCenter$delegate = lazy;
        this.selectedTabId = C3158R.C3161id.catalog_root_bottom_navigation_channels;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.languages = emptyList;
    }

    private final NotificationCenter getNotificationCenter() {
        return (NotificationCenter) this.notificationCenter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSelectedLanguageId() {
        Long catalogSelectedLanguageId = this.preferenceHelper.getCatalogSelectedLanguageId();
        if (catalogSelectedLanguageId == null) {
            return -1;
        }
        return (int) catalogSelectedLanguageId.longValue();
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
        selectTab(C3158R.C3161id.catalog_root_bottom_navigation_channels);
        getNotificationCenter().addObserver(this, NotificationCenter.needDeleteDialog);
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        getNotificationCenter().removeObserver(this, NotificationCenter.needDeleteDialog);
        super.onDestroy();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.needDeleteDialog) {
            Object obj = args[0];
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Long");
            long longValue = ((Long) obj).longValue();
            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) args[2];
            Object obj2 = args[3];
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            MessagesController messagesController$default = TelegramControllersGateway.DefaultImpls.getMessagesController$default(this.telegramControllersGateway, 0, 1, null);
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
        Observable<Result<List<CatalogLanguage>>> observeOn = this.catalogInteractor.getLanguages().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.catalog.CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                LocaleController.LocaleInfo allLanguagesLocaleInfo;
                List listOf;
                List plus;
                int selectedLanguageId;
                List<? extends LocaleController.LocaleInfo> list;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
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
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = CatalogRootPresenter.this.resourceManager;
                    ((CatalogRootView) CatalogRootPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.catalog.CatalogRootPresenter$loadLanguages$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LocaleController.LocaleInfo getAllLanguagesLocaleInfo() {
        LocaleController.LocaleInfo localeInfo = new LocaleController.LocaleInfo();
        localeInfo.name = this.resourceManager.getString(C3158R.string.catalog_all);
        localeInfo.nameEnglish = this.resourceManager.getString(C3158R.string.catalog_all_languages);
        localeInfo.serverIndex = -1;
        return localeInfo;
    }
}
