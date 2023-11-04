package com.iMe.manager.wallet.create;

import android.content.DialogInterface;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import timber.log.Timber;
/* compiled from: WalletCreateManager.kt */
/* loaded from: classes3.dex */
public final class WalletCreateManager implements WalletCreateManagerDelegate {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private Map<BlockchainType, String> linkedWalletsAddresses;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final CompositeDisposable subscriptions;
    private WalletCreateManagerView viewState;

    public WalletCreateManager(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider) {
        Map<BlockchainType, String> emptyMap;
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        emptyMap = MapsKt__MapsKt.emptyMap();
        this.linkedWalletsAddresses = emptyMap;
        this.subscriptions = new CompositeDisposable();
    }

    public Map<BlockchainType, String> getLinkedWalletsAddresses() {
        return this.linkedWalletsAddresses;
    }

    public void setLinkedWalletsAddresses(Map<BlockchainType, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.linkedWalletsAddresses = map;
    }

    private final BlockchainType getCurrentBlockchainType() {
        return this.cryptoPreferenceHelper.getCurrentBlockchainType();
    }

    public void attachViewState(WalletCreateManagerView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.viewState = view;
    }

    public void onDetachViewState() {
        this.viewState = null;
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerDelegate
    public void startWalletCreationFlow(final WalletCreationType walletCreationType, final BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        if (blockchainType == null) {
            blockchainType = this.cryptoPreferenceHelper.getCurrentBlockchainType();
        }
        runWithCryptoInformationCheck(new Callbacks$Callback() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletCreateManager.startWalletCreationFlow$lambda$2(WalletCreateManager.this, walletCreationType, blockchainType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWalletCreationFlow$lambda$2(final WalletCreateManager this$0, WalletCreationType walletCreationType, final BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        Intrinsics.checkNotNullParameter(blockchainType, "$blockchainType");
        WalletCreateManagerView viewState = this$0.getViewState();
        if (walletCreationType instanceof WalletCreationType.Initial) {
            String str = this$0.getLinkedWalletsAddresses().get(blockchainType);
            if (str == null) {
                str = "";
            }
            viewState.openCreateWalletIntroScreen(blockchainType, str, (WalletCreationType.Initial) walletCreationType);
        } else if (walletCreationType instanceof WalletCreationType.Activate) {
            viewState.showActivationConfirmationDialog(this$0.getActivationConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda2
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletCreateManager.startWalletCreationFlow$lambda$2$lambda$1$lambda$0(WalletCreateManager.this, blockchainType);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWalletCreationFlow$lambda$2$lambda$1$lambda$0(WalletCreateManager this$0, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(blockchainType, "$blockchainType");
        this$0.activateBib39BasedWallet(blockchainType);
    }

    public void startChooseWalletOptionsFlow(final BlockchainType blockchainType) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        List<WalletCreationType> availableWalletCreationTypes = getAvailableWalletCreationTypes(blockchainType);
        if (CollectionExtKt.isSingletonList(availableWalletCreationTypes)) {
            startWalletCreationFlow((WalletCreationType) CollectionsKt.first((List<? extends Object>) availableWalletCreationTypes), blockchainType);
            return;
        }
        WalletCreateManagerView viewState = getViewState();
        String string = this.resourceManager.getString(C3634R.string.wallet_dashboard_create_start_dialog_title);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(availableWalletCreationTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletCreationType walletCreationType : availableWalletCreationTypes) {
            arrayList.add(this.resourceManager.getString(walletCreationType.getButtonTextResId()));
        }
        viewState.showSelectOptionsDialog(string, (String[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WalletCreateManager.startChooseWalletOptionsFlow$lambda$4(WalletCreateManager.this, blockchainType, dialogInterface, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startChooseWalletOptionsFlow$lambda$4(WalletCreateManager this$0, BlockchainType blockchainType, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(blockchainType, "$blockchainType");
        this$0.startWalletCreationFlow(WalletCreationType.Initial.Companion.getByIndex(i), blockchainType);
    }

    public List<WalletCreationType> getAvailableWalletCreationTypes(BlockchainType blockchainType) {
        List<WalletCreationType> listOf;
        List<WalletCreationType> listOf2;
        if (blockchainType != null && blockchainType.isBip39PhraseBased() && this.cryptoAccessManager.isAnyBip39PhraseBasedWalletCreated()) {
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(new WalletCreationType.Activate(blockchainType));
            return listOf2;
        } else if (blockchainType == null && getCurrentBlockchainType().isBip39PhraseBased() && this.cryptoAccessManager.isAnyBip39PhraseBasedWalletCreated() && !this.cryptoPreferenceHelper.isAllNetworksSelected()) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new WalletCreationType.Activate(getCurrentBlockchainType()));
            return listOf;
        } else {
            return WalletCreationType.Initial.Companion.getValuesOrdered();
        }
    }

    public void runWithCryptoInformationCheck(final Callbacks$Callback endAction) {
        Intrinsics.checkNotNullParameter(endAction, "endAction");
        if (getLinkedWalletsAddresses().get(getCurrentBlockchainType()) != null) {
            endAction.invoke();
            return;
        }
        Observable<Result<Map<BlockchainType, String>>> observeOn = this.cryptoWalletInteractor.getLinkedWalletsAddresses().observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final WalletCreateManagerView viewState = getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Map<BlockchainType, ? extends String>>, Unit>() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Map<BlockchainType, ? extends String>> result) {
                m1536invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1536invoke(Result<? extends Map<BlockchainType, ? extends String>> it) {
                WalletCreateManagerView viewState2;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Map<BlockchainType, ? extends String>> result = it;
                if (result instanceof Result.Success) {
                    WalletCreateManager.this.setLinkedWalletsAddresses((Map) ((Result.Success) result).getData());
                    endAction.invoke();
                } else if (result instanceof Result.Error) {
                    viewState2 = WalletCreateManager.this.getViewState();
                    resourceManager = WalletCreateManager.this.resourceManager;
                    viewState2.showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$2
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
        com.iMe.storage.data.utils.extentions.RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    private final void activateBib39BasedWallet(BlockchainType blockchainType) {
        Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.activateBip39BasedWallet(blockchainType).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) getViewState(), false);
        final WalletCreateManagerView walletCreateManagerView = this.viewState;
        Intrinsics.checkNotNullExpressionValue(withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Wallet>, Unit>() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
                m1535invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1535invoke(Result<? extends Wallet> it) {
                WalletCreateManagerView viewState;
                ResourceManager resourceManager;
                RxEventBus rxEventBus;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Wallet> result = it;
                if (result instanceof Result.Success) {
                    rxEventBus = WalletCreateManager.this.rxEventBus;
                    rxEventBus.publish(DomainRxEvents.WalletCreated.INSTANCE);
                } else if (result instanceof Result.Error) {
                    viewState = WalletCreateManager.this.getViewState();
                    resourceManager = WalletCreateManager.this.resourceManager;
                    viewState.showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletCreateManagerView getViewState() {
        WalletCreateManagerView walletCreateManagerView = this.viewState;
        if (walletCreateManagerView != null) {
            return walletCreateManagerView;
        }
        throw new IllegalStateException("Please call attachViewState(view: ViewManagerDelegate<T>) first!".toString());
    }

    private final DialogModel getActivationConfirmationDialogModel() {
        return new DialogModel(this.resourceManager.getString(C3634R.string.wallet_activation_confirmation_title), this.resourceManager.getString(C3634R.string.wallet_activation_confirmation_description), this.resourceManager.getString(C3634R.string.common_cancel), this.resourceManager.getString(C3634R.string.common_ok));
    }
}
