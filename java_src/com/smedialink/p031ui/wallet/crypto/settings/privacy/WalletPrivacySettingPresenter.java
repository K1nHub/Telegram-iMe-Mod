package com.smedialink.p031ui.wallet.crypto.settings.privacy;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.smedialink.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.utils.extentions.ResultExtKt;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$mapResultWithDefaultErrorHandle$1;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: WalletPrivacySettingPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter */
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
            ((WalletPrivacySettingsView) getViewState()).showConfirmDialog(getEverybodyWarningDialogModel(), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda4
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletPrivacySettingPresenter.m1611savePrivacySettings$lambda0(Function0.this);
                }
            });
        } else {
            walletPrivacySettingPresenter$savePrivacySettings$action$1.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: savePrivacySettings$lambda-0  reason: not valid java name */
    public static final void m1611savePrivacySettings$lambda0(Function0 action) {
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
        Observable observeOn = Observable.zip(getWalletAddressSettingsObservable(), getAccountRankSettingsObservable(), WalletPrivacySettingPresenter$$ExternalSyntheticLambda1.INSTANCE).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "zip(getWalletAddressSett…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                int resolveAccessTypeBy;
                int resolveAccessTypeBy2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Pair pair = (Pair) it;
                if (((Result) pair.getFirst()).isSuccess() && ((Result) pair.getSecond()).isSuccess()) {
                    Object data = ((Result) pair.getFirst()).getData();
                    Intrinsics.checkNotNull(data);
                    List<Long> usersWithAccessToEthAddress = ((CryptoWalletInfo) data).getUsersWithAccessToEthAddress();
                    WalletPrivacySettingPresenter walletPrivacySettingPresenter = WalletPrivacySettingPresenter.this;
                    Object data2 = ((Result) pair.getFirst()).getData();
                    Intrinsics.checkNotNull(data2);
                    resolveAccessTypeBy = walletPrivacySettingPresenter.resolveAccessTypeBy(((CryptoWalletInfo) data2).isEthAddressOpenedForEverybody());
                    WalletPrivacySettingPresenter walletPrivacySettingPresenter2 = WalletPrivacySettingPresenter.this;
                    Object data3 = ((Result) pair.getSecond()).getData();
                    Intrinsics.checkNotNull(data3);
                    resolveAccessTypeBy2 = walletPrivacySettingPresenter2.resolveAccessTypeBy(((Boolean) data3).booleanValue());
                    ((WalletPrivacySettingsView) WalletPrivacySettingPresenter.this.getViewState()).onSuccessLoadPrivacySettings(usersWithAccessToEthAddress, resolveAccessTypeBy, resolveAccessTypeBy2);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadPrivacySettings$lambda-1  reason: not valid java name */
    public static final Pair m1609loadPrivacySettings$lambda1(Result walletAddressResult, Result accountRankResult) {
        Intrinsics.checkNotNullParameter(walletAddressResult, "walletAddressResult");
        Intrinsics.checkNotNullParameter(accountRankResult, "accountRankResult");
        return TuplesKt.m100to(walletAddressResult, accountRankResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveSettings(Observable<Result<Boolean>> observable, Observable<Result<Boolean>> observable2) {
        Observable observeOn = Observable.zip(observable, observable2, WalletPrivacySettingPresenter$$ExternalSyntheticLambda0.INSTANCE).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "zip(walletAddressObserva…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                if (ResultExtKt.isAllSuccess((List) it)) {
                    ((WalletPrivacySettingsView) WalletPrivacySettingPresenter.this.getViewState()).onSuccessSaveCryptoSettings();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: saveSettings$lambda-3  reason: not valid java name */
    public static final List m1612saveSettings$lambda3(Result walletAddressResult, Result accountRankResult) {
        List listOf;
        Intrinsics.checkNotNullParameter(walletAddressResult, "walletAddressResult");
        Intrinsics.checkNotNullParameter(accountRankResult, "accountRankResult");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Result[]{walletAddressResult, accountRankResult});
        return listOf;
    }

    private final Observable<Result<CryptoWalletInfo>> getWalletAddressSettingsObservable() {
        Observable<Result<CryptoWalletInfo>> observeOn = this.cryptoPermissionInteractor.getCryptoPrivacySettings(false).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable map = observeOn.map(new RxExtKt$mapResultWithDefaultErrorHandle$1((BaseView) viewState, this.resourceManager));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …ager))\n    }\n    result\n}");
        return map;
    }

    private final Observable<Result<Boolean>> getAccountRankSettingsObservable() {
        Observable<Result<Boolean>> observeOn = this.accountLevelInteractor.getLevelVisibility().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable map = observeOn.map(new RxExtKt$mapResultWithDefaultErrorHandle$1((BaseView) viewState, this.resourceManager));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …ager))\n    }\n    result\n}");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> saveWalletAddressSettingsObservable(ArrayList<Long> arrayList, final ArrayList<Long> arrayList2, int i, final int i2) {
        Observable just = Observable.just(Boolean.valueOf((i == i2 && Intrinsics.areEqual(arrayList, arrayList2)) ? false : true));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        Observable<Result<Boolean>> flatMap = just.flatMap(new Function() { // from class: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1613saveWalletAddressSettingsObservable$lambda5;
                m1613saveWalletAddressSettingsObservable$lambda5 = WalletPrivacySettingPresenter.m1613saveWalletAddressSettingsObservable$lambda5(WalletPrivacySettingPresenter.this, i2, arrayList2, (Boolean) obj);
                return m1613saveWalletAddressSettingsObservable$lambda5;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "prevPublicWalletAllowTyp…bservable()\n            }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: saveWalletAddressSettingsObservable$lambda-5  reason: not valid java name */
    public static final ObservableSource m1613saveWalletAddressSettingsObservable$lambda5(WalletPrivacySettingPresenter this$0, int i, ArrayList allowUsers, Boolean isNeedChange) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(allowUsers, "$allowUsers");
        Intrinsics.checkNotNullParameter(isNeedChange, "isNeedChange");
        if (!isNeedChange.booleanValue()) {
            Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Observable observeOn = CryptoPermissionInteractor.manageCryptoPrivacySettings$default(this$0.cryptoPermissionInteractor, null, i == 0, allowUsers, 1, null).observeOn(this$0.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        T viewState = this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable map = observeOn.map(new RxExtKt$mapResultWithDefaultErrorHandle$1((BaseView) viewState, this$0.resourceManager));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …ager))\n    }\n    result\n}");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> saveAccountRankSettingsObservable(int i, final int i2) {
        Observable just = Observable.just(Boolean.valueOf(i != i2));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        Observable<Result<Boolean>> flatMap = just.flatMap(new Function() { // from class: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1610saveAccountRankSettingsObservable$lambda6;
                m1610saveAccountRankSettingsObservable$lambda6 = WalletPrivacySettingPresenter.m1610saveAccountRankSettingsObservable$lambda6(WalletPrivacySettingPresenter.this, i2, (Boolean) obj);
                return m1610saveAccountRankSettingsObservable$lambda6;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "prevAccountRankAllowType…bservable()\n            }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: saveAccountRankSettingsObservable$lambda-6  reason: not valid java name */
    public static final ObservableSource m1610saveAccountRankSettingsObservable$lambda6(WalletPrivacySettingPresenter this$0, int i, Boolean isNeedChange) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(isNeedChange, "isNeedChange");
        if (!isNeedChange.booleanValue()) {
            Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Observable<Result<Boolean>> observeOn = this$0.accountLevelInteractor.changeLevelVisibility(i == 0).observeOn(this$0.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        T viewState = this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        ObservableSource map = observeOn.map(new RxExtKt$mapResultWithDefaultErrorHandle$1((BaseView) viewState, this$0.resourceManager));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …ager))\n    }\n    result\n}");
        return map;
    }

    private final DialogModel getEverybodyWarningDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3158R.string.wallet_crypto_privacy_everyone_dialog_confirm_title), this.resourceManager.getString(C3158R.string.wallet_crypto_privacy_everyone_dialog_confirm_description), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.common_confirm));
    }
}
