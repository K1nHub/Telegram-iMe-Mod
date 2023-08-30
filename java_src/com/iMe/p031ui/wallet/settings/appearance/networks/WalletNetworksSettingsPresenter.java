package com.iMe.p031ui.wallet.settings.appearance.networks;

import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.settings.NetworkSettingsItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletNetworksSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter */
/* loaded from: classes4.dex */
public final class WalletNetworksSettingsPresenter extends BasePresenter<WalletNetworksSettingsView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final List<NetworkSettingsItem> networksItems;
    private String query;
    private final PublishSubject<String> querySubject;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final List<NetworkSettingsItem> searchResultsItems;

    public WalletNetworksSettingsPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.networksItems = new ArrayList();
        this.searchResultsItems = new ArrayList();
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.querySubject = create;
        this.query = "";
    }

    public final void onItemClick(NetworkSettingsItem item) {
        int i;
        List<NetworkSettingsItem> list;
        List<NetworkSettingsItem> mutableList;
        Intrinsics.checkNotNullParameter(item, "item");
        int indexOf = this.networksItems.indexOf(item);
        if (indexOf == -1) {
            return;
        }
        List<NetworkSettingsItem> list2 = this.networksItems;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            i = 0;
        } else {
            i = 0;
            for (NetworkSettingsItem networkSettingsItem : list2) {
                if (networkSettingsItem.isEnabled() && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        if (i == 1 && item.isEnabled()) {
            return;
        }
        this.networksItems.set(indexOf, NetworkSettingsItem.copy$default(item, null, !item.isEnabled(), 1, null));
        WalletNetworksSettingsView walletNetworksSettingsView = (WalletNetworksSettingsView) getViewState();
        if (this.query.length() > 0) {
            int indexOf2 = this.searchResultsItems.indexOf(item);
            if (indexOf2 == -1) {
                return;
            }
            this.searchResultsItems.set(indexOf2, NetworkSettingsItem.copy$default(item, null, !item.isEnabled(), 1, null));
            list = this.searchResultsItems;
        } else {
            list = this.networksItems;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        walletNetworksSettingsView.renderItems(mutableList);
    }

    public final void onQueryUpdate(String newQuery) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        PublishSubject<String> publishSubject = this.querySubject;
        trim = StringsKt__StringsKt.trim(newQuery);
        publishSubject.onNext(trim.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        int collectionSizeOrDefault;
        List<NetworkSettingsItem> mutableList;
        subscribeToQueryChanges();
        List<NetworkSettingsItem> list = this.networksItems;
        List<Network> supportedNetworks = NetworksHelper.INSTANCE.getSupportedNetworks();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedNetworks, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Network network : supportedNetworks) {
            arrayList.add(new NetworkSettingsItem(NetworkUiMappingKt.mapToUI(network), NetworksHelper.INSTANCE.getEnabledNetworks().contains(network)));
        }
        list.addAll(arrayList);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.networksItems);
        ((WalletNetworksSettingsView) getViewState()).renderItems(mutableList);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        int collectionSizeOrDefault;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        List<NetworkSettingsItem> list = this.networksItems;
        ArrayList<NetworkSettingsItem> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((NetworkSettingsItem) obj).isEnabled()) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (NetworkSettingsItem networkSettingsItem : arrayList) {
            arrayList2.add(networkSettingsItem.getNetworkItem().getNetworkId());
        }
        cryptoPreferenceHelper.setEnabledNetworksIds(arrayList2);
        if (!cryptoPreferenceHelper.isAllNetworksSelected() && NetworksHelper.INSTANCE.isNetworkEnabled(cryptoPreferenceHelper.getNetwork().getId())) {
            cryptoPreferenceHelper.setAllNetworksSelected(true);
        }
        this.rxEventBus.publish(DomainRxEvents.NetworksSettingsChanged.INSTANCE);
        super.onDestroy();
    }

    private final void subscribeToQueryChanges() {
        Observable<String> distinctUntilChanged = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS).distinctUntilChanged();
        final Function1<String, Unit> function1 = new Function1<String, Unit>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$subscribeToQueryChanges$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(String newQuery) {
                WalletNetworksSettingsPresenter walletNetworksSettingsPresenter = WalletNetworksSettingsPresenter.this;
                Intrinsics.checkNotNullExpressionValue(newQuery, "newQuery");
                walletNetworksSettingsPresenter.query = newQuery;
            }
        };
        Observable<String> observeOn = distinctUntilChanged.doOnNext(new Consumer() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletNetworksSettingsPresenter.subscribeToQueryChanges$lambda$5(Function1.this, obj);
            }
        }).observeOn(this.schedulersProvider.mo716ui());
        final Function1<String, Boolean> function12 = new Function1<String, Boolean>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$subscribeToQueryChanges$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String rawQuery) {
                List list;
                List<NetworkSettingsItem> mutableList;
                Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
                boolean z = true;
                if (rawQuery.length() == 0) {
                    list = WalletNetworksSettingsPresenter.this.networksItems;
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
                    ((WalletNetworksSettingsView) WalletNetworksSettingsPresenter.this.getViewState()).renderItems(mutableList);
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        };
        Observable<String> observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToQueryChanges$lambda$6;
                subscribeToQueryChanges$lambda$6 = WalletNetworksSettingsPresenter.subscribeToQueryChanges$lambda$6(Function1.this, obj);
                return subscribeToQueryChanges$lambda$6;
            }
        }).observeOn(this.schedulersProvider.mo717io());
        final Function1<String, List<? extends NetworkSettingsItem>> function13 = new Function1<String, List<? extends NetworkSettingsItem>>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$subscribeToQueryChanges$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<NetworkSettingsItem> invoke(String it) {
                List list;
                String str;
                boolean contains;
                String str2;
                boolean contains2;
                Intrinsics.checkNotNullParameter(it, "it");
                list = WalletNetworksSettingsPresenter.this.networksItems;
                WalletNetworksSettingsPresenter walletNetworksSettingsPresenter = WalletNetworksSettingsPresenter.this;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    NetworkItem.Crypto networkItem = ((NetworkSettingsItem) obj).getNetworkItem();
                    String fullName = networkItem.getFullName();
                    str = walletNetworksSettingsPresenter.query;
                    boolean z = true;
                    contains = StringsKt__StringsKt.contains((CharSequence) fullName, (CharSequence) str, true);
                    if (!contains) {
                        String shortName = networkItem.getShortName();
                        str2 = walletNetworksSettingsPresenter.query;
                        contains2 = StringsKt__StringsKt.contains((CharSequence) shortName, (CharSequence) str2, true);
                        if (!contains2) {
                            z = false;
                        }
                    }
                    if (z) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            }
        };
        Observable<R> map = observeOn2.map(new Function() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List subscribeToQueryChanges$lambda$7;
                subscribeToQueryChanges$lambda$7 = WalletNetworksSettingsPresenter.subscribeToQueryChanges$lambda$7(Function1.this, obj);
                return subscribeToQueryChanges$lambda$7;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(map, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<List<? extends NetworkSettingsItem>, Unit>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends NetworkSettingsItem> list) {
                m1580invoke(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1580invoke(List<? extends NetworkSettingsItem> it) {
                List list;
                List<NetworkSettingsItem> mutableList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                list = WalletNetworksSettingsPresenter.this.searchResultsItems;
                list.clear();
                list.addAll(it);
                if (list.isEmpty()) {
                    ((WalletNetworksSettingsView) WalletNetworksSettingsPresenter.this.getViewState()).renderEmptySearchResults();
                    return;
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
                ((WalletNetworksSettingsView) WalletNetworksSettingsPresenter.this.getViewState()).renderItems(mutableList);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2
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
    public static final void subscribeToQueryChanges$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean subscribeToQueryChanges$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List subscribeToQueryChanges$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }
}
