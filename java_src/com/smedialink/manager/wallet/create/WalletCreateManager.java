package com.smedialink.manager.wallet.create;

import android.content.DialogInterface;
import android.text.SpannableStringBuilder;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import com.smedialink.manager.wallet.create.WalletCreateManagerView;
import com.smedialink.model.dialog.AnimatedSpannableDialogModel;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.create.WalletCreationType;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.Components.URLSpanReplacement;
/* compiled from: WalletCreateManager.kt */
/* loaded from: classes3.dex */
public final class WalletCreateManager {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private String linkedCryptoWalletAddress;
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

    public String getLinkedCryptoWalletAddress() {
        return this.linkedCryptoWalletAddress;
    }

    public void setLinkedCryptoWalletAddress(String str) {
        this.linkedCryptoWalletAddress = str;
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
        final WalletCreateManagerView viewState = getViewState();
        if (walletCreationType instanceof WalletCreationType.Initial) {
            if (isRestoreAvailable()) {
                DialogModel warningDialogModelByType = getWarningDialogModelByType((WalletCreationType.Initial) walletCreationType);
                String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
                if (linkedCryptoWalletAddress == null) {
                    linkedCryptoWalletAddress = "";
                }
                viewState.showAlreadyCreatedWalletWarningDialog(warningDialogModelByType, linkedCryptoWalletAddress, new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda5
                    @Override // org.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletCreateManager.startWalletCreationFlow$lambda$3$lambda$1(WalletCreateManagerView.this, this, walletCreationType);
                    }
                });
                return;
            }
            viewState.showAnimatedDialog(getAnimatedSpannableDialogModelByType((WalletCreationType.Initial) walletCreationType), new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda2
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletCreateManager.startWalletCreationFlow$lambda$3$lambda$2(WalletCreateManager.this, walletCreationType);
                }
            });
        } else if (walletCreationType instanceof WalletCreationType.Activate) {
            viewState.showActivationConfirmationDialog(getActivationConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda1
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletCreateManager.this.activateBib39BasedWallet();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWalletCreationFlow$lambda$3$lambda$1(WalletCreateManagerView this_with, final WalletCreateManager this$0, final WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        this_with.showAnimatedDialog(this$0.getAnimatedSpannableDialogModelByType((WalletCreationType.Initial) walletCreationType), new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda3
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletCreateManager.startWalletCreationFlow$lambda$3$lambda$1$lambda$0(WalletCreateManager.this, walletCreationType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWalletCreationFlow$lambda$3$lambda$1$lambda$0(WalletCreateManager this$0, WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        this$0.prepareCreateWalletFlow((WalletCreationType.Initial) walletCreationType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWalletCreationFlow$lambda$3$lambda$2(WalletCreateManager this$0, WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        this$0.prepareCreateWalletFlow((WalletCreationType.Initial) walletCreationType);
    }

    public boolean isRestoreAvailable() {
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null || linkedCryptoWalletAddress.length() == 0) {
            return false;
        }
        Wallet wallet2 = this.cryptoAccessManager.getWallet(getCurrentBlockchainType());
        return !Intrinsics.areEqual(wallet2 != null ? wallet2.getAddress() : null, getLinkedCryptoWalletAddress());
    }

    public void startChooseWalletOptionsFlow(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        final List<WalletCreationType> availableWalletCreationTypes = getAvailableWalletCreationTypes();
        loadCryptoInformation(new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda4
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletCreateManager.startChooseWalletOptionsFlow$lambda$6(WalletCreateManager.this, availableWalletCreationTypes);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startChooseWalletOptionsFlow$lambda$6(final WalletCreateManager this$0, final List walletCreationTypes) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationTypes, "$walletCreationTypes");
        WalletCreateManagerView viewState = this$0.getViewState();
        String string = this$0.resourceManager.getString(C3301R.string.wallet_dashboard_create_start_dialog_title);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(walletCreationTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = walletCreationTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(this$0.resourceManager.getString(((WalletCreationType) it.next()).getStringResId()));
        }
        viewState.showSelectOptionsDialog(string, (String[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WalletCreateManager.startChooseWalletOptionsFlow$lambda$6$lambda$5(WalletCreateManager.this, walletCreationTypes, dialogInterface, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startChooseWalletOptionsFlow$lambda$6$lambda$5(WalletCreateManager this$0, List walletCreationTypes, DialogInterface dialogInterface, int i) {
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
        return WalletCreationType.Initial.Companion.getValuesOrdered(isRestoreAvailable());
    }

    public void loadCryptoInformation(Callbacks$Callback endAction) {
        Intrinsics.checkNotNullParameter(endAction, "endAction");
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.getLinkedCryptoWalletAddress(getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1485xf0d1187c(this, endAction)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1486xf0d1187d(getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        com.smedialink.storage.data.utils.extentions.RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void activateBib39BasedWallet() {
        Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.activateBip39BasedWallet(getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) getViewState(), false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1483x5bee52ad(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1484x5bee52ae(this.viewState))), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }

    private final void prepareCreateWalletFlow(WalletCreationType.Initial initial) {
        String walletPassword = this.cryptoAccessManager.getWalletPassword();
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Create.INSTANCE)) {
            Observable<Result<String>> observeOn = this.cryptoWalletInteractor.generateMnemonic(this.cryptoAccessManager.getLastLoggedInGuid(), walletPassword).observeOn(this.schedulersProvider.mo706ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
            Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1487x1a054ca1(this, initial, walletPassword)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1488x1a054ca2(this.viewState)));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            com.smedialink.storage.data.utils.extentions.RxExtKt.autoDispose(subscribe, this.subscriptions);
            return;
        }
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Import.INSTANCE) ? true : Intrinsics.areEqual(initial, WalletCreationType.Initial.Restore.INSTANCE)) {
            openScreenByWalletCreationType$default(this, initial, null, walletPassword, 2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void openScreenByWalletCreationType$default(WalletCreateManager walletCreateManager, WalletCreationType.Initial initial, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        if ((i & 4) != 0) {
            str = "";
        }
        walletCreateManager.openScreenByWalletCreationType(initial, list, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openScreenByWalletCreationType(WalletCreationType.Initial initial, List<String> list, String str) {
        WalletCreateManagerView viewState = getViewState();
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Create.INSTANCE)) {
            viewState.openCreateWalletScreen(list, str);
        } else if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Import.INSTANCE)) {
            WalletCreateManagerView.DefaultImpls.openImportWalletScreen$default(viewState, str, null, 2, null);
        } else if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Restore.INSTANCE)) {
            viewState.openImportWalletScreen(str, getLinkedCryptoWalletAddress());
        }
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
        return new DialogModel(this.resourceManager.getString(C3301R.string.wallet_activation_confirmation_title), this.resourceManager.getString(C3301R.string.wallet_activation_confirmation_description), this.resourceManager.getString(C3301R.string.common_cancel), this.resourceManager.getString(C3301R.string.common_ok));
    }

    private final AnimatedSpannableDialogModel getAnimatedSpannableDialogModelByType(WalletCreationType.Initial initial) {
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Create.INSTANCE)) {
            return getCreateWalletAnimatedSpannableDialogModel();
        }
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Import.INSTANCE) ? true : Intrinsics.areEqual(initial, WalletCreationType.Initial.Restore.INSTANCE)) {
            return getImportWalletAnimatedSpannableDialogModel();
        }
        throw new NoWhenBranchMatchedException();
    }

    private final AnimatedSpannableDialogModel getCreateWalletAnimatedSpannableDialogModel() {
        List<CharacterStyle> listOf;
        int indexOf$default;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new CharacterStyle[]{new URLSpanReplacement(this.resourceManager.getString(C3301R.string.wallet_dashboard_create_start_dialog_description_privacy_link)), new ForegroundColorSpan(this.resourceManager.getColor(C3301R.C3302color.crypto_product_custom))});
        SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(this.resourceManager.getString(C3301R.string.wallet_dashboard_create_start_dialog_description_privacy));
        for (CharacterStyle characterStyle : listOf) {
            valueOf.setSpan(characterStyle, 0, valueOf.length(), 33);
        }
        SpannableStringBuilder description = SpannableStringBuilder.valueOf(this.resourceManager.getString(C3301R.string.wallet_dashboard_create_start_dialog_description));
        String spannableStringBuilder = description.toString();
        Intrinsics.checkNotNullExpressionValue(spannableStringBuilder, "toString()");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableStringBuilder, "%s", 0, false, 6, (Object) null);
        description.replace(indexOf$default, indexOf$default + 2, (CharSequence) valueOf);
        int i = C3301R.C3306raw.fork_crypto_wallet;
        String string = this.resourceManager.getString(C3301R.string.wallet_dashboard_create_start_dialog_title);
        Intrinsics.checkNotNullExpressionValue(description, "description");
        return new AnimatedSpannableDialogModel(i, string, description, this.resourceManager.getString(C3301R.string.common_next));
    }

    private final AnimatedSpannableDialogModel getImportWalletAnimatedSpannableDialogModel() {
        return new AnimatedSpannableDialogModel(C3301R.C3306raw.fork_wallet_import, this.resourceManager.getString(C3301R.string.wallet_dashboard_import_start_dialog_title), new SpannableStringBuilder(this.resourceManager.getString(C3301R.string.wallet_dashboard_import_start_dialog_description)), this.resourceManager.getString(C3301R.string.common_next));
    }

    private final DialogModel getWarningDialogModelByType(WalletCreationType.Initial initial) {
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Create.INSTANCE)) {
            return getCreateWalletWarningDialogModel();
        }
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Import.INSTANCE)) {
            return getImportWalletWarningDialogModel();
        }
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Restore.INSTANCE)) {
            return getRestoreWalletWarningDialogModel();
        }
        throw new NoWhenBranchMatchedException();
    }

    private final DialogModel getCreateWalletWarningDialogModel() {
        String string = this.resourceManager.getString(C3301R.string.wallet_dashboard_eth_wallet_warning_dialog_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3301R.string.wallet_dashboard_create_eth_wallet_warning_dialog_description;
        Object[] objArr = new Object[1];
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        objArr[0] = linkedCryptoWalletAddress;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3301R.string.common_cancel), this.resourceManager.getString(C3301R.string.wallet_dashboard_create_eth_wallet_warning_dialog_action_button));
    }

    private final DialogModel getImportWalletWarningDialogModel() {
        String string = this.resourceManager.getString(C3301R.string.wallet_dashboard_eth_wallet_warning_dialog_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3301R.string.wallet_dashboard_import_eth_wallet_warning_dialog_description;
        Object[] objArr = new Object[1];
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        objArr[0] = linkedCryptoWalletAddress;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3301R.string.common_cancel), this.resourceManager.getString(C3301R.string.wallet_dashboard_import_eth_wallet_warning_dialog_action_button));
    }

    private final DialogModel getRestoreWalletWarningDialogModel() {
        String string = this.resourceManager.getString(C3301R.string.wallet_dashboard_eth_wallet_warning_dialog_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3301R.string.wallet_dashboard_restore_eth_wallet_warning_dialog_description;
        Object[] objArr = new Object[1];
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        objArr[0] = linkedCryptoWalletAddress;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3301R.string.common_cancel), this.resourceManager.getString(C3301R.string.wallet_dashboard_restore_eth_wallet_warning_dialog_action_button));
    }
}
