package com.iMe.p030ui.wallet.crypto.settings.privacy;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.CryptoWalletsInfo;
import com.iMe.storage.domain.utils.extensions.ResultExtKt;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.utils.extentions.p031rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
import timber.log.Timber;
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

    public final void savePrivacySettings(final ArrayList<Long> prevAllowUsers, final ArrayList<Long> allowUsers, final int i, final int i2, final int i3, final int i4) {
        Intrinsics.checkNotNullParameter(prevAllowUsers, "prevAllowUsers");
        Intrinsics.checkNotNullParameter(allowUsers, "allowUsers");
        final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$savePrivacySettings$action$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Observable saveWalletAddressSettingsObservable;
                Observable saveAccountRankSettingsObservable;
                WalletPrivacySettingPresenter walletPrivacySettingPresenter = WalletPrivacySettingPresenter.this;
                saveWalletAddressSettingsObservable = walletPrivacySettingPresenter.saveWalletAddressSettingsObservable(prevAllowUsers, allowUsers, i, i2);
                saveAccountRankSettingsObservable = WalletPrivacySettingPresenter.this.saveAccountRankSettingsObservable(i3, i4);
                walletPrivacySettingPresenter.saveSettings(saveWalletAddressSettingsObservable, saveAccountRankSettingsObservable);
            }
        };
        if (i != i2 && i2 == 0) {
            ((WalletPrivacySettingsView) getViewState()).showConfirmDialog(getEverybodyWarningDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletPrivacySettingPresenter.savePrivacySettings$lambda$0(Function0.this);
                }
            });
        } else {
            function0.invoke();
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
        Observable<Result<CryptoWalletsInfo>> walletAddressSettingsObservable = getWalletAddressSettingsObservable();
        Observable<Result<Boolean>> accountRankSettingsObservable = getAccountRankSettingsObservable();
        final WalletPrivacySettingPresenter$loadPrivacySettings$1 walletPrivacySettingPresenter$loadPrivacySettings$1 = new Function2<Result<? extends CryptoWalletsInfo>, Result<? extends Boolean>, Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$loadPrivacySettings$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>> invoke(Result<? extends CryptoWalletsInfo> result, Result<? extends Boolean> result2) {
                return invoke2((Result<CryptoWalletsInfo>) result, (Result<Boolean>) result2);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Pair<Result<CryptoWalletsInfo>, Result<Boolean>> invoke2(Result<CryptoWalletsInfo> walletAddressResult, Result<Boolean> accountRankResult) {
                Intrinsics.checkNotNullParameter(walletAddressResult, "walletAddressResult");
                Intrinsics.checkNotNullParameter(accountRankResult, "accountRankResult");
                return TuplesKt.m144to(walletAddressResult, accountRankResult);
            }
        };
        Observable observeOn = Observable.zip(walletAddressSettingsObservable, accountRankSettingsObservable, new BiFunction() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Pair loadPrivacySettings$lambda$1;
                loadPrivacySettings$lambda$1 = WalletPrivacySettingPresenter.loadPrivacySettings$lambda$1(Function2.this, obj, obj2);
                return loadPrivacySettings$lambda$1;
            }
        }).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "zip(\n                get…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>>, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>> pair) {
                m1651invoke(pair);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1651invoke(Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>> it) {
                int resolveAccessTypeBy;
                int resolveAccessTypeBy2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Pair<? extends Result<? extends CryptoWalletsInfo>, ? extends Result<? extends Boolean>> pair = it;
                if (pair.getFirst().isSuccess() && pair.getSecond().isSuccess()) {
                    CryptoWalletsInfo data = pair.getFirst().getData();
                    Intrinsics.checkNotNull(data);
                    List<Long> allowedUsers = data.getAllowedUsers();
                    WalletPrivacySettingPresenter walletPrivacySettingPresenter = WalletPrivacySettingPresenter.this;
                    CryptoWalletsInfo data2 = pair.getFirst().getData();
                    Intrinsics.checkNotNull(data2);
                    resolveAccessTypeBy = walletPrivacySettingPresenter.resolveAccessTypeBy(data2.isVisible());
                    WalletPrivacySettingPresenter walletPrivacySettingPresenter2 = WalletPrivacySettingPresenter.this;
                    Boolean data3 = pair.getSecond().getData();
                    Intrinsics.checkNotNull(data3);
                    resolveAccessTypeBy2 = walletPrivacySettingPresenter2.resolveAccessTypeBy(data3.booleanValue());
                    ((WalletPrivacySettingsView) WalletPrivacySettingPresenter.this.getViewState()).onSuccessLoadPrivacySettings(allowedUsers, resolveAccessTypeBy, resolveAccessTypeBy2);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$loadPrivacySettings$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair loadPrivacySettings$lambda$1(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Pair) tmp0.invoke(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveSettings(Observable<Result<Boolean>> observable, Observable<Result<Boolean>> observable2) {
        final WalletPrivacySettingPresenter$saveSettings$1 walletPrivacySettingPresenter$saveSettings$1 = new Function2<Result<? extends Boolean>, Result<? extends Boolean>, List<? extends Result<? extends Boolean>>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ List<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result, Result<? extends Boolean> result2) {
                return invoke2((Result<Boolean>) result, (Result<Boolean>) result2);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final List<Result<Boolean>> invoke2(Result<Boolean> walletAddressResult, Result<Boolean> accountRankResult) {
                List<Result<Boolean>> listOf;
                Intrinsics.checkNotNullParameter(walletAddressResult, "walletAddressResult");
                Intrinsics.checkNotNullParameter(accountRankResult, "accountRankResult");
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Result[]{walletAddressResult, accountRankResult});
                return listOf;
            }
        };
        Observable observeOn = Observable.zip(observable, observable2, new BiFunction() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                List saveSettings$lambda$3;
                saveSettings$lambda$3 = WalletPrivacySettingPresenter.saveSettings$lambda$3(Function2.this, obj, obj2);
                return saveSettings$lambda$3;
            }
        }).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "zip(\n            walletA…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<List<? extends Result<? extends Boolean>>, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Result<? extends Boolean>> list) {
                m1652invoke(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1652invoke(List<? extends Result<? extends Boolean>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                if (ResultExtKt.isAllSuccess(it)) {
                    ((WalletPrivacySettingsView) WalletPrivacySettingPresenter.this.getViewState()).onSuccessSaveCryptoSettings();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveSettings$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final List saveSettings$lambda$3(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj, obj2);
    }

    private final Observable<Result<CryptoWalletsInfo>> getWalletAddressSettingsObservable() {
        Observable<Result<CryptoWalletsInfo>> observeOn = this.cryptoPermissionInteractor.getCryptoPrivacySettings(false).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        final BaseView baseView = (BaseView) viewState;
        final ResourceManager resourceManager = this.resourceManager;
        Observable map = observeOn.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends CryptoWalletsInfo>, Result<? extends CryptoWalletsInfo>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$getWalletAddressSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends CryptoWalletsInfo> invoke(Result<? extends CryptoWalletsInfo> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Error) {
                    BaseView.this.showErrorToast((Result.Error) result, resourceManager);
                }
                return result;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …   }\n        result\n    }");
        return map;
    }

    private final Observable<Result<Boolean>> getAccountRankSettingsObservable() {
        Observable scheduleIO = SchedulersExtKt.scheduleIO(this.accountLevelInteractor.getLevelVisibility());
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        final BaseView baseView = (BaseView) viewState;
        final ResourceManager resourceManager = this.resourceManager;
        Observable<Result<Boolean>> map = scheduleIO.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends Boolean>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$getAccountRankSettingsObservable$$inlined$mapResultWithDefaultErrorHandle$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends Boolean> invoke(Result<? extends Boolean> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Error) {
                    BaseView.this.showErrorToast((Result.Error) result, resourceManager);
                }
                return result;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …   }\n        result\n    }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<Boolean>> saveWalletAddressSettingsObservable(ArrayList<Long> arrayList, final ArrayList<Long> arrayList2, int i, final int i2) {
        Observable just = Observable.just(Boolean.valueOf((i == i2 && Intrinsics.areEqual(arrayList, arrayList2)) ? false : true));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        final Function1<Boolean, ObservableSource<? extends Result<? extends Boolean>>> function1 = new Function1<Boolean, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<Boolean>> invoke(Boolean isNeedChange) {
                CryptoPermissionInteractor cryptoPermissionInteractor;
                SchedulersProvider schedulersProvider;
                final ResourceManager resourceManager;
                Intrinsics.checkNotNullParameter(isNeedChange, "isNeedChange");
                if (!isNeedChange.booleanValue()) {
                    Observable just2 = Observable.just(Result.Companion.success(Boolean.TRUE));
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    return just2;
                }
                cryptoPermissionInteractor = WalletPrivacySettingPresenter.this.cryptoPermissionInteractor;
                Observable<Result<Boolean>> manageCryptoPrivacySettings = cryptoPermissionInteractor.manageCryptoPrivacySettings(i2 == 0, arrayList2);
                schedulersProvider = WalletPrivacySettingPresenter.this.schedulersProvider;
                Observable<Result<Boolean>> observeOn = manageCryptoPrivacySettings.observeOn(schedulersProvider.mo1009ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
                T viewState = WalletPrivacySettingPresenter.this.getViewState();
                Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                final BaseView baseView = (BaseView) viewState;
                resourceManager = WalletPrivacySettingPresenter.this.resourceManager;
                ObservableSource map = observeOn.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends Boolean>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends Boolean> invoke(Result<? extends Boolean> result) {
                        Intrinsics.checkNotNullParameter(result, "result");
                        if (result instanceof Result.Error) {
                            BaseView.this.showErrorToast((Result.Error) result, resourceManager);
                        }
                        return result;
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …   }\n        result\n    }");
                return map;
            }
        };
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
    public final Observable<Result<Boolean>> saveAccountRankSettingsObservable(int i, final int i2) {
        Observable just = Observable.just(Boolean.valueOf(i != i2));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        Observable scheduleIO = SchedulersExtKt.scheduleIO(just);
        final Function1<Boolean, ObservableSource<? extends Result<? extends Boolean>>> function1 = new Function1<Boolean, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<Boolean>> invoke(Boolean isNeedChange) {
                AccountLevelInteractor accountLevelInteractor;
                SchedulersProvider schedulersProvider;
                final ResourceManager resourceManager;
                Intrinsics.checkNotNullParameter(isNeedChange, "isNeedChange");
                if (!isNeedChange.booleanValue()) {
                    Observable just2 = Observable.just(Result.Companion.success(Boolean.TRUE));
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    return just2;
                }
                accountLevelInteractor = WalletPrivacySettingPresenter.this.accountLevelInteractor;
                Observable<Result<Boolean>> changeLevelVisibility = accountLevelInteractor.changeLevelVisibility(i2 == 0);
                schedulersProvider = WalletPrivacySettingPresenter.this.schedulersProvider;
                Observable<Result<Boolean>> observeOn = changeLevelVisibility.observeOn(schedulersProvider.mo1009ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
                T viewState = WalletPrivacySettingPresenter.this.getViewState();
                Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                final BaseView baseView = (BaseView) viewState;
                resourceManager = WalletPrivacySettingPresenter.this.resourceManager;
                ObservableSource map = observeOn.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends Boolean>, Result<? extends Boolean>>() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1$invoke$$inlined$mapResultWithDefaultErrorHandle$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends Boolean> invoke(Result<? extends Boolean> result) {
                        Intrinsics.checkNotNullParameter(result, "result");
                        if (result instanceof Result.Error) {
                            BaseView.this.showErrorToast((Result.Error) result, resourceManager);
                        }
                        return result;
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …   }\n        result\n    }");
                return map;
            }
        };
        Observable<Result<Boolean>> flatMap = scheduleIO.flatMap(new Function() { // from class: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource saveAccountRankSettingsObservable$lambda$6;
                saveAccountRankSettingsObservable$lambda$6 = WalletPrivacySettingPresenter.saveAccountRankSettingsObservable$lambda$6(Function1.this, obj);
                return saveAccountRankSettingsObservable$lambda$6;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "private fun saveAccountR…essObservable()\n        }");
        return flatMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource saveAccountRankSettingsObservable$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final DialogModel getEverybodyWarningDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3630R.string.wallet_crypto_privacy_everyone_dialog_confirm_title), this.resourceManager.getString(C3630R.string.wallet_crypto_privacy_everyone_dialog_confirm_description), this.resourceManager.getString(C3630R.string.common_cancel), this.resourceManager.getString(C3630R.string.common_confirm));
    }
}
