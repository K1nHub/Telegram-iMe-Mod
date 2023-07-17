package com.iMe.p031ui.catalog;

import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.tgnet.TLRPC$Chat;
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
        lazy = LazyKt__LazyJVMKt.lazy(new CatalogRootPresenter$notificationCenter$2(this));
        this.notificationCenter$delegate = lazy;
        this.selectedTabId = C3417R.C3420id.catalog_root_bottom_navigation_channels;
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
        selectTab(C3417R.C3420id.catalog_root_bottom_navigation_channels);
        getNotificationCenter().addObserver(this, NotificationCenter.needDeleteDialog);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
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
        Observable<Result<List<CatalogLanguage>>> observeOn = this.catalogInteractor.getLanguages().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2003xc92b31a1(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2004xc92b31a2(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LocaleController.LocaleInfo getAllLanguagesLocaleInfo() {
        LocaleController.LocaleInfo localeInfo = new LocaleController.LocaleInfo();
        localeInfo.name = this.resourceManager.getString(C3417R.string.catalog_all);
        localeInfo.nameEnglish = this.resourceManager.getString(C3417R.string.catalog_all_languages);
        localeInfo.serverIndex = -1;
        return localeInfo;
    }
}
