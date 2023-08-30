package com.iMe.p031ui.wallet.cryptobox;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.iMe.common.AppRxEvents;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.manager.TelegramApi;
import com.iMe.mapper.cryptobox.CryptoBoxUiMappingKt;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.common.NoChildNode;
import com.iMe.model.cryptobox.CryptoBoxItem;
import com.iMe.model.cryptobox.CryptoBoxesChatItem;
import com.iMe.model.cryptobox.CryptoBoxesHeaderItem;
import com.iMe.model.cryptobox.CryptoBoxesListHeaderItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxOrderType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.telegram.ChatExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: CryptoBoxesPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter */
/* loaded from: classes4.dex */
public final class CryptoBoxesPresenter extends BasePresenter<CryptoBoxesView> {
    private final List<NetworkItem> availableNetworks;
    private final TLRPC$Chat chat;
    private final CryptoBoxInteractor cryptoBoxInteractor;
    private final List<CryptoBoxInfo> cryptoBoxes;
    private final List<CryptoBoxItem> cryptoBoxesItems;
    private final String cryptoBoxesListHeaderTitle;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ResourceManager resourceManager;
    private final Lazy rootItems$delegate;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private NetworkItem.Crypto selectedNetworkItem;
    private final TelegramApi telegramApi;
    private final Lazy walletBotId$delegate;
    private final Lazy walletBotUsername$delegate;

    public CryptoBoxesPresenter(TLRPC$Chat tLRPC$Chat, CryptoBoxInteractor cryptoBoxInteractor, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, TelegramApi telegramApi) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(cryptoBoxInteractor, "cryptoBoxInteractor");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        this.chat = tLRPC$Chat;
        this.cryptoBoxInteractor = cryptoBoxInteractor;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.telegramApi = telegramApi;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends BaseNode>>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$rootItems$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends BaseNode> invoke() {
                List<? extends BaseNode> initRootItems;
                initRootItems = CryptoBoxesPresenter.this.initRootItems();
                return initRootItems;
            }
        });
        this.rootItems$delegate = lazy;
        this.cryptoBoxes = new ArrayList();
        this.cryptoBoxesItems = new ArrayList();
        this.cryptoBoxesListHeaderTitle = initCryptoBoxesListHeaderTitle();
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Long>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$walletBotId$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Long invoke() {
                return Long.valueOf(AppConfiguration$Wallet.getWalletBotId());
            }
        });
        this.walletBotId$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$walletBotUsername$2
            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return AppConfiguration$Wallet.getWalletBotUsernameLowerCase();
            }
        });
        this.walletBotUsername$delegate = lazy3;
        this.availableNetworks = NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getEVMNetworks());
        this.selectedNetworkItem = getInitialNetwork();
    }

    private final List<BaseNode> getRootItems() {
        return (List) this.rootItems$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getWalletBotId() {
        return ((Number) this.walletBotId$delegate.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getWalletBotUsername() {
        return (String) this.walletBotUsername$delegate.getValue();
    }

    private final CryptoBoxOrderType getSelectedOrderType() {
        return this.cryptoPreferenceHelper.getCryptoBoxesOrderType();
    }

    private final void setSelectedOrderType(CryptoBoxOrderType cryptoBoxOrderType) {
        this.cryptoPreferenceHelper.setCryptoBoxesOrderType(cryptoBoxOrderType);
    }

    public final void onSelectNetworkClick() {
        ((CryptoBoxesView) getViewState()).showChooseNetworkDialog(this.selectedNetworkItem, this.availableNetworks);
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        if (crypto != null) {
            this.cryptoPreferenceHelper.setNetwork(NetworkUiMappingKt.mapToDomain(crypto));
            ((CryptoBoxesView) getViewState()).setupNetwork(crypto);
            this.selectedNetworkItem = crypto;
            loadCryptoBoxes$default(this, false, 1, null);
        }
    }

    public final void onSelectOrderClick() {
        CryptoBoxesView cryptoBoxesView = (CryptoBoxesView) getViewState();
        DialogModel dialogModel = new DialogModel(this.resourceManager.getString(C3558R.string.choose_tokens_order_type_dialog_title), null, null, this.resourceManager.getString(C3558R.string.common_cancel), 6, null);
        CryptoBoxOrderType[] values = CryptoBoxOrderType.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (CryptoBoxOrderType cryptoBoxOrderType : values) {
            arrayList.add(this.resourceManager.getString(cryptoBoxOrderType.getTextResId()));
        }
        cryptoBoxesView.showChooseOrderDialog(dialogModel, arrayList, getSelectedOrderType().ordinal());
    }

    public final void onOrderStrategySelected(int i) {
        setSelectedOrderType(CryptoBoxOrderType.Companion.mapByOrdinal(i));
        loadCryptoBoxes$default(this, false, 1, null);
    }

    public final void onCreateCryptoBoxClick() {
        TLRPC$Chat tLRPC$Chat = this.chat;
        if (tLRPC$Chat != null) {
            prepareCryptoBoxCreation(tLRPC$Chat);
        } else {
            openCryptoBoxCreationScreen();
        }
    }

    public final void openCryptoBoxCreationScreen() {
        ((CryptoBoxesView) getViewState()).openCryptoBoxCreationScreen(this.chat, NetworkUiMappingKt.mapToDomain(this.selectedNetworkItem));
    }

    public final void onCryptoBoxItemClick(CryptoBoxItem item) {
        Object obj;
        Intrinsics.checkNotNullParameter(item, "item");
        CryptoBoxesView cryptoBoxesView = (CryptoBoxesView) getViewState();
        Iterator<T> it = this.cryptoBoxes.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((CryptoBoxInfo) obj).getId(), item.getId())) {
                break;
            }
        }
        CryptoBoxInfo cryptoBoxInfo = (CryptoBoxInfo) obj;
        if (cryptoBoxInfo == null) {
            return;
        }
        cryptoBoxesView.openCryptoBoxDetailsScreen(cryptoBoxInfo);
    }

    public static /* synthetic */ void loadCryptoBoxes$default(CryptoBoxesPresenter cryptoBoxesPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        cryptoBoxesPresenter.loadCryptoBoxes(z);
    }

    public final void loadCryptoBoxes(final boolean z) {
        if (!z) {
            renderGlobalState(GlobalState.Progress.INSTANCE);
        }
        CryptoBoxInteractor cryptoBoxInteractor = this.cryptoBoxInteractor;
        TLRPC$Chat tLRPC$Chat = this.chat;
        Observable<Result<List<CryptoBoxInfo>>> observeOn = cryptoBoxInteractor.getCryptoBoxesList(tLRPC$Chat != null ? Long.valueOf(ChatExtKt.getBotApiId(tLRPC$Chat)) : null, this.selectedNetworkItem.getNetworkId(), getSelectedOrderType()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoBoxInteractor\n    …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends CryptoBoxInfo>>, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends CryptoBoxInfo>> result) {
                m1490invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1490invoke(Result<? extends List<? extends CryptoBoxInfo>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends CryptoBoxInfo>> result = it;
                if (result instanceof Result.Success) {
                    CryptoBoxesPresenter.this.renderCryptoBoxesItems((List) ((Result.Success) result).getData());
                    ((CryptoBoxesView) CryptoBoxesPresenter.this.getViewState()).showRefreshing(false);
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        return;
                    }
                    CryptoBoxesPresenter.this.renderGlobalState(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    CryptoBoxesPresenter.this.renderGlobalState(((Result.Error) result).getError().isNoConnectionStatus() ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
                    ((CryptoBoxesView) CryptoBoxesPresenter.this.getViewState()).showRefreshing(false);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        listenEvents();
        ((CryptoBoxesView) getViewState()).setupNetwork(this.selectedNetworkItem);
        loadCryptoBoxes$default(this, false, 1, null);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1489invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1489invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (rxEvent instanceof AppRxEvents.UpdateWalletScreen ? true : rxEvent instanceof DomainRxEvents.CryptoBoxCreated) {
                    CryptoBoxesPresenter.loadCryptoBoxes$default(CryptoBoxesPresenter.this, false, 1, null);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderGlobalState(GlobalState globalState) {
        renderItems(new GlobalStateItem(globalState));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderCryptoBoxesItems(List<CryptoBoxInfo> list) {
        int collectionSizeOrDefault;
        List<CryptoBoxInfo> list2 = this.cryptoBoxes;
        list2.clear();
        list2.addAll(list);
        List<CryptoBoxItem> list3 = this.cryptoBoxesItems;
        list3.clear();
        List<CryptoBoxInfo> list4 = this.cryptoBoxes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CryptoBoxInfo cryptoBoxInfo : list4) {
            arrayList.add(CryptoBoxUiMappingKt.mapToUi(cryptoBoxInfo, this.resourceManager));
        }
        list3.addAll(arrayList);
        if (!this.cryptoBoxesItems.isEmpty()) {
            CryptoBoxItem[] cryptoBoxItemArr = (CryptoBoxItem[]) this.cryptoBoxesItems.toArray(new CryptoBoxItem[0]);
            renderItems((BaseNode[]) Arrays.copyOf(cryptoBoxItemArr, cryptoBoxItemArr.length));
            return;
        }
        renderGlobalState(GlobalState.Empty.Common.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseNode> initRootItems() {
        List<BaseNode> listOfNotNull;
        NoChildNode[] noChildNodeArr = new NoChildNode[2];
        noChildNodeArr[0] = new CryptoBoxesHeaderItem();
        TLRPC$Chat tLRPC$Chat = this.chat;
        noChildNodeArr[1] = tLRPC$Chat != null ? new CryptoBoxesChatItem(tLRPC$Chat) : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) noChildNodeArr);
        return listOfNotNull;
    }

    private final String initCryptoBoxesListHeaderTitle() {
        return this.resourceManager.getString(this.chat != null ? C3558R.string.cryptoboxes_last_list_title : C3558R.string.cryptoboxes_all_list_title);
    }

    private final void renderItems(BaseNode... baseNodeArr) {
        List<BaseNode> mutableList;
        CryptoBoxesView cryptoBoxesView = (CryptoBoxesView) getViewState();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getRootItems());
        mutableList.add(new CryptoBoxesListHeaderItem(this.cryptoBoxesListHeaderTitle));
        CollectionsKt__MutableCollectionsKt.addAll(mutableList, baseNodeArr);
        cryptoBoxesView.renderItems(mutableList);
    }

    private final void prepareCryptoBoxCreation(final TLRPC$Chat tLRPC$Chat) {
        Observable fullChatInfoById$default = TelegramApi.CC.getFullChatInfoById$default(this.telegramApi, tLRPC$Chat.f1531id, null, 2, null);
        final CryptoBoxesPresenter$prepareCryptoBoxCreation$1 cryptoBoxesPresenter$prepareCryptoBoxCreation$1 = new CryptoBoxesPresenter$prepareCryptoBoxCreation$1(this, tLRPC$Chat);
        Observable observeOn = fullChatInfoById$default.flatMap(new Function() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource prepareCryptoBoxCreation$lambda$9;
                prepareCryptoBoxCreation$lambda$9 = CryptoBoxesPresenter.prepareCryptoBoxCreation$lambda$9(Function1.this, obj);
                return prepareCryptoBoxCreation$lambda$9;
            }
        }).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun prepareCrypt…     .autoDispose()\n    }");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Boolean, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                m1491invoke(bool);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1491invoke(Boolean it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Boolean bool = it;
                if (!TLRPC$Chat.this.creator) {
                    resourceManager = this.resourceManager;
                    ((CryptoBoxesView) this.getViewState()).showToast(resourceManager.getString(C3558R.string.cryptobox_create_user_not_owner));
                } else if (bool.booleanValue()) {
                    this.openCryptoBoxCreationScreen();
                } else {
                    this.onWalletBotAdminRightsRequired(TLRPC$Chat.this);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$prepareCryptoBoxCreation$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource prepareCryptoBoxCreation$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onWalletBotAdminRightsRequired(final TLRPC$Chat tLRPC$Chat) {
        ((CryptoBoxesView) getViewState()).showConfirmDialog(new DialogModel(this.resourceManager.getString(C3558R.string.cryptobox_create_wallet_bot_amin_rights_confirmation_title), this.resourceManager.getString(C3558R.string.cryptobox_create_wallet_bot_amin_rights_confirmation_description), this.resourceManager.getString(C3558R.string.common_cancel), LocaleController.getString(RtspHeaders.ALLOW, C3558R.string.Allow)), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CryptoBoxesPresenter.onWalletBotAdminRightsRequired$lambda$11(CryptoBoxesPresenter.this, tLRPC$Chat);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onWalletBotAdminRightsRequired$lambda$11(CryptoBoxesPresenter this$0, TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(chat, "$chat");
        ((CryptoBoxesView) this$0.getViewState()).openAddAdminScreen(this$0.getWalletBotId(), chat);
    }

    private final NetworkItem.Crypto getInitialNetwork() {
        Network network = this.cryptoPreferenceHelper.getNetwork();
        if (!network.isEVM()) {
            network = null;
        }
        if (network == null) {
            network = NetworksHelper.getBSCNetwork();
        }
        return NetworkUiMappingKt.mapToUI(network);
    }
}
