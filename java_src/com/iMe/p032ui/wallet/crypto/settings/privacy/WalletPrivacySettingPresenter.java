package com.iMe.p032ui.wallet.crypto.settings.privacy;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p034rx.RxExtKt;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3316R;
/* compiled from: WalletPrivacySettingPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter */
/* loaded from: classes3.dex */
public final class WalletPrivacySettingPresenter extends BasePresenter<WalletPrivacySettingsView> {
    private final AccountLevelInteractor accountLevelInteractor;
    private final CryptoPermissionInteractor cryptoPermissionInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final int settingsType;

    /* JADX INFO: Access modifiers changed from: private */
    public final int resolveAccessTypeBy(boolean z) {
        return !z ? 1 : 0;
    }

    public WalletPrivacySettingPresenter(int i, AccountLevelInteractor accountLevelInteractor, CryptoPermissionInteractor cryptoPermissionInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(accountLevelInteractor, "accountLevelInteractor");
        Intrinsics.checkNotNullParameter(cryptoPermissionInteractor, "cryptoPermissionInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.settingsType = i;
        this.accountLevelInteractor = accountLevelInteractor;
        this.cryptoPermissionInteractor = cryptoPermissionInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
    }

    public final void savePrivacySettings(ArrayList<Long> prevAllowUsers, ArrayList<Long> allowUsers, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(prevAllowUsers, "prevAllowUsers");
        Intrinsics.checkNotNullParameter(allowUsers, "allowUsers");
        final WalletPrivacySettingPresenter$savePrivacySettings$action$1 walletPrivacySettingPresenter$savePrivacySettings$action$1 = new WalletPrivacySettingPresenter$savePrivacySettings$action$1(this, prevAllowUsers, allowUsers, i, i2, i3, i4);
        if (i != i2 && i2 == 0) {
            ((WalletPrivacySettingsView) getViewState()).showConfirmDialog(getEverybodyWarningDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletPrivacySettingPresenter.savePrivacySettings$lambda$0(Function0.this);
                }
            });
        } else {
            walletPrivacySettingPresenter$savePrivacySettings$action$1.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void savePrivacySettings$lambda$0(Function0 action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.settingsType == 101) {
            loadPrivacySettings();
        }
    }

    private final void loadPrivacySettings() {
        Observable<Result<CryptoWalletInfo>> walletAddressSettingsObservable = getWalletAddressSettingsObservable();
        Observable<Result<Boolean>> accountRankSettingsObservable = getAccountRankSettingsObservable();
        final WalletPrivacySettingPresenter$loadPrivacySettings$1 walletPrivacySettingPresenter$loadPrivacySettings$1 = WalletPrivacySettingPresenter$loadPrivacySettings$1.INSTANCE;
        Observable observeOn = Observable.zip(walletAddressSettingsObservable, accountRankSettingsObservable, new BiFunction() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Pair loadPrivacySettings$lambda$1;
                loadPrivacySettings$lambda$1 = WalletPrivacySettingPresenter.loadPrivacySettings$lambda$1(Function2.this, obj, obj2);
                return loadPrivacySettings$lambda$1;
            }
        }).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "zip(getWalletAddressSett…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2162xca859c2b(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2163xca859c2c((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair loadPrivacySettings$lambda$1(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Pair) tmp0.invoke(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveSettings(Observable<Result<Boolean>> observable, Observable<Result<Boolean>> observable2) {
        final WalletPrivacySettingPresenter$saveSettings$1 walletPrivacySettingPresenter$saveSettings$1 = WalletPrivacySettingPresenter$saveSettings$1.INSTANCE;
        Observable observeOn = Observable.zip(observable, observable2, new BiFunction() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                List saveSettings$lambda$3;
                saveSettings$lambda$3 = WalletPrivacySettingPresenter.saveSettings$lambda$3(Function2.this, obj, obj2);
                return saveSettings$lambda$3;
            }
        }).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "zip(walletAddressObserva…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2165x708bde00(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2166x708bde01((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List saveSettings$lambda$3(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj, obj2);
    }

    private final Observable<Result<CryptoWalletInfo>> getWalletAddressSettingsObservable() {
        Observable<Result<CryptoWalletInfo>> observeOn = this.cryptoPermissionInteractor.getCryptoPrivacySettings(false).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable map = observeOn.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C2161x78f2e5da((BaseView) viewState, this.resourceManager)));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …ager))\n    }\n    result\n}");
        return map;
    }

    private final Observable<Result<Boolean>> getAccountRankSettingsObservable() {
        Observable<Result<Boolean>> observeOn = this.accountLevelInteractor.getLevelVisibility().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable map = observeOn.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C2160x14057a9c((BaseView) viewState, this.resourceManager)));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …ager))\n    }\n    result\n}");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> saveWalletAddressSettingsObservable(ArrayList<Long> arrayList, ArrayList<Long> arrayList2, int i, int i2) {
        Observable just = Observable.just(Boolean.valueOf((i == i2 && Intrinsics.areEqual(arrayList, arrayList2)) ? false : true));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        final C2169x88ce73d4 c2169x88ce73d4 = new C2169x88ce73d4(this, i2, arrayList2);
        Observable<Result<Boolean>> flatMap = just.flatMap(new Function() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource saveWalletAddressSettingsObservable$lambda$5;
                saveWalletAddressSettingsObservable$lambda$5 = WalletPrivacySettingPresenter.saveWalletAddressSettingsObservable$lambda$5(Function1.this, obj);
                return saveWalletAddressSettingsObservable$lambda$5;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "private fun saveWalletAd…bservable()\n            }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource saveWalletAddressSettingsObservable$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> saveAccountRankSettingsObservable(int i, int i2) {
        Observable just = Observable.just(Boolean.valueOf(i != i2));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        final C2168x1efe2092 c2168x1efe2092 = new C2168x1efe2092(this, i2);
        Observable<Result<Boolean>> flatMap = just.flatMap(new Function() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource saveAccountRankSettingsObservable$lambda$6;
                saveAccountRankSettingsObservable$lambda$6 = WalletPrivacySettingPresenter.saveAccountRankSettingsObservable$lambda$6(Function1.this, obj);
                return saveAccountRankSettingsObservable$lambda$6;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "private fun saveAccountR…bservable()\n            }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource saveAccountRankSettingsObservable$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final DialogModel getEverybodyWarningDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3316R.string.wallet_crypto_privacy_everyone_dialog_confirm_title), this.resourceManager.getString(C3316R.string.wallet_crypto_privacy_everyone_dialog_confirm_description), this.resourceManager.getString(C3316R.string.common_cancel), this.resourceManager.getString(C3316R.string.common_confirm));
    }
}
