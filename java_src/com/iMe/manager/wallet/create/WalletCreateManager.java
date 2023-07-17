package com.iMe.manager.wallet.create;

import android.content.DialogInterface;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
/* compiled from: WalletCreateManager.kt */
/* loaded from: classes3.dex */
public final class WalletCreateManager {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private String linkedWalletAddress;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final CompositeDisposable subscriptions;
    private WalletCreateManagerView viewState;

    public WalletCreateManager(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider) {
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
        this.subscriptions = new CompositeDisposable();
    }

    public String getLinkedWalletAddress() {
        return this.linkedWalletAddress;
    }

    public void setLinkedWalletAddress(String str) {
        this.linkedWalletAddress = str;
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

    public void startWalletCreationFlow(final WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        runWithCryptoInformationCheck(new Callbacks$Callback() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletCreateManager.startWalletCreationFlow$lambda$1(WalletCreateManager.this, walletCreationType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWalletCreationFlow$lambda$1(final WalletCreateManager this$0, WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        WalletCreateManagerView viewState = this$0.getViewState();
        if (walletCreationType instanceof WalletCreationType.Initial) {
            String linkedWalletAddress = this$0.getLinkedWalletAddress();
            if (linkedWalletAddress == null) {
                linkedWalletAddress = "";
            }
            viewState.openCreateWalletIntroScreen(linkedWalletAddress, (WalletCreationType.Initial) walletCreationType);
        } else if (walletCreationType instanceof WalletCreationType.Activate) {
            viewState.showActivationConfirmationDialog(this$0.getActivationConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletCreateManager.this.activateBib39BasedWallet();
                }
            });
        }
    }

    public void startChooseWalletOptionsFlow(BlockchainType blockchainType) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        final List<WalletCreationType> availableWalletCreationTypes = getAvailableWalletCreationTypes();
        WalletCreateManagerView viewState = getViewState();
        String string = this.resourceManager.getString(C3417R.string.wallet_dashboard_create_start_dialog_title);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(availableWalletCreationTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletCreationType walletCreationType : availableWalletCreationTypes) {
            arrayList.add(this.resourceManager.getString(walletCreationType.getButtonTextResId()));
        }
        viewState.showSelectOptionsDialog(string, (String[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.iMe.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WalletCreateManager.startChooseWalletOptionsFlow$lambda$3(WalletCreateManager.this, availableWalletCreationTypes, dialogInterface, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startChooseWalletOptionsFlow$lambda$3(WalletCreateManager this$0, List walletCreationTypes, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationTypes, "$walletCreationTypes");
        WalletCreationType walletCreationType = (WalletCreationType) CollectionsKt.firstOrNull(walletCreationTypes);
        if (!(walletCreationType instanceof WalletCreationType.Activate)) {
            walletCreationType = WalletCreationType.Initial.Companion.getByIndex(i);
        }
        this$0.startWalletCreationFlow(walletCreationType);
    }

    public List<WalletCreationType> getAvailableWalletCreationTypes() {
        List<WalletCreationType> listOf;
        if (getCurrentBlockchainType().isBip39PhraseBased() && this.cryptoAccessManager.isAnyBip39PhraseBasedWalletCreated()) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new WalletCreationType.Activate(getCurrentBlockchainType()));
            return listOf;
        }
        return WalletCreationType.Initial.Companion.getValuesOrdered();
    }

    public void runWithCryptoInformationCheck(Callbacks$Callback endAction) {
        Intrinsics.checkNotNullParameter(endAction, "endAction");
        if (getLinkedWalletAddress() != null) {
            endAction.invoke();
            return;
        }
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.getLinkedCryptoWalletAddress(getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1608xd7d1f05(this, endAction)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1609xd7d1f06(getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        com.iMe.storage.data.utils.extentions.RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void activateBib39BasedWallet() {
        Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.activateBip39BasedWallet(getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) getViewState(), false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1606x5bee52ad(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1607x5bee52ae(this.viewState))), "viewState: BaseView? = n…Error.invoke()\n        })");
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
        return new DialogModel(this.resourceManager.getString(C3417R.string.wallet_activation_confirmation_title), this.resourceManager.getString(C3417R.string.wallet_activation_confirmation_description), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.common_ok));
    }
}
