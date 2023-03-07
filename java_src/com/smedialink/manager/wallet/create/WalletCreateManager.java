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
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.List;
import java.util.Objects;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.Components.URLSpanReplacement;
import timber.log.Timber;
/* compiled from: WalletCreateManager.kt */
/* loaded from: classes3.dex */
public final class WalletCreateManager {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private String linkedCryptoWalletAddress;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final CompositeDisposable subscriptions;
    private WalletCreateManagerView viewState;

    /* compiled from: WalletCreateManager.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WalletCreationType.values().length];
            iArr[WalletCreationType.CREATE.ordinal()] = 1;
            iArr[WalletCreationType.IMPORT.ordinal()] = 2;
            iArr[WalletCreationType.RESTORE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public WalletCreateManager(CryptoWalletInteractor cryptoWalletInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.subscriptions = new CompositeDisposable();
    }

    public String getLinkedCryptoWalletAddress() {
        return this.linkedCryptoWalletAddress;
    }

    public void setLinkedCryptoWalletAddress(String str) {
        this.linkedCryptoWalletAddress = str;
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
        if (isRestoreAvailable()) {
            DialogModel warningDialogModelByType = getWarningDialogModelByType(walletCreationType);
            String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
            if (linkedCryptoWalletAddress == null) {
                linkedCryptoWalletAddress = "";
            }
            viewState.showAlreadyCreatedWalletWarningDialog(warningDialogModelByType, linkedCryptoWalletAddress, new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda4
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletCreateManager.m1277startWalletCreationFlow$lambda3$lambda1(WalletCreateManagerView.this, this, walletCreationType);
                }
            });
            return;
        }
        viewState.showAnimatedDialog(getAnimatedSpannableDialogModelByType(walletCreationType), new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda3
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletCreateManager.m1279startWalletCreationFlow$lambda3$lambda2(WalletCreateManager.this, walletCreationType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startWalletCreationFlow$lambda-3$lambda-1  reason: not valid java name */
    public static final void m1277startWalletCreationFlow$lambda3$lambda1(WalletCreateManagerView this_with, final WalletCreateManager this$0, final WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        this_with.showAnimatedDialog(this$0.getAnimatedSpannableDialogModelByType(walletCreationType), new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda2
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletCreateManager.m1278startWalletCreationFlow$lambda3$lambda1$lambda0(WalletCreateManager.this, walletCreationType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startWalletCreationFlow$lambda-3$lambda-1$lambda-0  reason: not valid java name */
    public static final void m1278startWalletCreationFlow$lambda3$lambda1$lambda0(WalletCreateManager this$0, WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        this$0.prepareCreateWalletFlow(walletCreationType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startWalletCreationFlow$lambda-3$lambda-2  reason: not valid java name */
    public static final void m1279startWalletCreationFlow$lambda3$lambda2(WalletCreateManager this$0, WalletCreationType walletCreationType) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(walletCreationType, "$walletCreationType");
        this$0.prepareCreateWalletFlow(walletCreationType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void openScreenByWalletCreationType$default(WalletCreateManager walletCreateManager, WalletCreationType walletCreationType, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            list = CollectionsKt__CollectionsKt.emptyList();
        }
        if ((i & 4) != 0) {
            str = "";
        }
        walletCreateManager.openScreenByWalletCreationType(walletCreationType, list, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openScreenByWalletCreationType(WalletCreationType walletCreationType, List<String> list, String str) {
        WalletCreateManagerView viewState = getViewState();
        int i = WhenMappings.$EnumSwitchMapping$0[walletCreationType.ordinal()];
        if (i == 1) {
            viewState.openCreateWalletScreen(list, str);
        } else if (i == 2) {
            WalletCreateManagerView.DefaultImpls.openImportWalletScreen$default(viewState, str, null, 2, null);
        } else if (i != 3) {
        } else {
            viewState.openImportWalletScreen(str, getLinkedCryptoWalletAddress());
        }
    }

    public boolean isRestoreAvailable() {
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null || linkedCryptoWalletAddress.length() == 0) {
            return false;
        }
        Wallet wallet = this.cryptoAccessManager.getWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType());
        return !Intrinsics.areEqual(wallet == null ? null : wallet.getAddress(), getLinkedCryptoWalletAddress());
    }

    public void startChooseWalletOptionsFlow(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        loadCryptoInformation(new Callbacks$Callback() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletCreateManager.m1275startChooseWalletOptionsFlow$lambda6(WalletCreateManager.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startChooseWalletOptionsFlow$lambda-6  reason: not valid java name */
    public static final void m1275startChooseWalletOptionsFlow$lambda6(final WalletCreateManager this$0) {
        List listOfNotNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletCreateManagerView viewState = this$0.getViewState();
        String string = this$0.resourceManager.getString(C3158R.string.wallet_dashboard_create_start_dialog_title);
        String[] strArr = new String[3];
        strArr[0] = this$0.resourceManager.getString(C3158R.string.wallet_dashboard_create_eth_wallet);
        strArr[1] = this$0.resourceManager.getString(C3158R.string.wallet_dashboard_import_eth_wallet);
        strArr[2] = this$0.isRestoreAvailable() ? this$0.resourceManager.getString(C3158R.string.wallet_dashboard_restore_eth_wallet) : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(strArr);
        Object[] array = listOfNotNull.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        viewState.showSelectOptionsDialog(string, (String[]) array, new DialogInterface.OnClickListener() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                WalletCreateManager.m1276startChooseWalletOptionsFlow$lambda6$lambda5(WalletCreateManager.this, dialogInterface, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startChooseWalletOptionsFlow$lambda-6$lambda-5  reason: not valid java name */
    public static final void m1276startChooseWalletOptionsFlow$lambda6$lambda5(WalletCreateManager this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startWalletCreationFlow(WalletCreationType.Companion.getByIndex(i));
    }

    public void loadCryptoInformation(final Callbacks$Callback endAction) {
        Intrinsics.checkNotNullParameter(endAction, "endAction");
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.getLinkedCryptoWalletAddress().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final WalletCreateManagerView viewState = getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                WalletCreateManagerView viewState2;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    WalletCreateManager.this.setLinkedCryptoWalletAddress((String) ((Result.Success) result).getData());
                    endAction.invoke();
                } else if (result instanceof Result.Error) {
                    viewState2 = WalletCreateManager.this.getViewState();
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletCreateManager.this.resourceManager;
                    viewState2.showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$loadCryptoInformation$$inlined$subscribeWithErrorHandle$default$2
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
        com.smedialink.storage.data.utils.extentions.RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    private final void prepareCreateWalletFlow(final WalletCreationType walletCreationType) {
        final String walletPassword = this.cryptoAccessManager.getWalletPassword();
        int i = WhenMappings.$EnumSwitchMapping$0[walletCreationType.ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                openScreenByWalletCreationType$default(this, walletCreationType, null, walletPassword, 2, null);
                return;
            }
            return;
        }
        Observable<Result<String>> observeOn = this.cryptoWalletInteractor.generateMnemonic(this.cryptoAccessManager.getLastLoggedInGuid(), walletPassword).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) getViewState(), false, 2, (Object) null);
        final WalletCreateManagerView walletCreateManagerView = this.viewState;
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                WalletCreateManagerView viewState;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    WalletCreateManager.this.openScreenByWalletCreationType(walletCreationType, StringExtKt.splitBySpace((String) ((Result.Success) result).getData()), walletPassword);
                } else if (result instanceof Result.Error) {
                    viewState = WalletCreateManager.this.getViewState();
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletCreateManager.this.resourceManager;
                    viewState.showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.manager.wallet.create.WalletCreateManager$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$2
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
        com.smedialink.storage.data.utils.extentions.RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletCreateManagerView getViewState() {
        WalletCreateManagerView walletCreateManagerView = this.viewState;
        if (walletCreateManagerView != null) {
            return walletCreateManagerView;
        }
        throw new IllegalStateException("Please call attachViewState(view: ViewManagerDelegate<T>) first!".toString());
    }

    private final AnimatedSpannableDialogModel getAnimatedSpannableDialogModelByType(WalletCreationType walletCreationType) {
        int i = WhenMappings.$EnumSwitchMapping$0[walletCreationType.ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                return getImportWalletAnimatedSpannableDialogModel();
            }
            throw new NoWhenBranchMatchedException();
        }
        return getCreateWalletAnimatedSpannableDialogModel();
    }

    private final AnimatedSpannableDialogModel getCreateWalletAnimatedSpannableDialogModel() {
        List<CharacterStyle> listOf;
        int indexOf$default;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new CharacterStyle[]{new URLSpanReplacement(this.resourceManager.getString(C3158R.string.wallet_dashboard_create_start_dialog_description_privacy_link)), new ForegroundColorSpan(this.resourceManager.getColor(C3158R.C3159color.crypto_product_custom))});
        SpannableStringBuilder valueOf = SpannableStringBuilder.valueOf(this.resourceManager.getString(C3158R.string.wallet_dashboard_create_start_dialog_description_privacy));
        for (CharacterStyle characterStyle : listOf) {
            valueOf.setSpan(characterStyle, 0, valueOf.length(), 33);
        }
        SpannableStringBuilder description = SpannableStringBuilder.valueOf(this.resourceManager.getString(C3158R.string.wallet_dashboard_create_start_dialog_description));
        String spannableStringBuilder = description.toString();
        Intrinsics.checkNotNullExpressionValue(spannableStringBuilder, "toString()");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableStringBuilder, "%s", 0, false, 6, (Object) null);
        description.replace(indexOf$default, indexOf$default + 2, (CharSequence) valueOf);
        int i = C3158R.C3164raw.fork_crypto_wallet;
        String string = this.resourceManager.getString(C3158R.string.wallet_dashboard_create_start_dialog_title);
        Intrinsics.checkNotNullExpressionValue(description, "description");
        return new AnimatedSpannableDialogModel(i, string, description, this.resourceManager.getString(C3158R.string.common_next));
    }

    private final AnimatedSpannableDialogModel getImportWalletAnimatedSpannableDialogModel() {
        return new AnimatedSpannableDialogModel(C3158R.C3164raw.fork_wallet_import, this.resourceManager.getString(C3158R.string.wallet_dashboard_import_start_dialog_title), new SpannableStringBuilder(this.resourceManager.getString(C3158R.string.wallet_dashboard_import_start_dialog_description)), this.resourceManager.getString(C3158R.string.common_next));
    }

    private final DialogModel getWarningDialogModelByType(WalletCreationType walletCreationType) {
        int i = WhenMappings.$EnumSwitchMapping$0[walletCreationType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return getRestoreWalletWarningDialogModel();
                }
                throw new NoWhenBranchMatchedException();
            }
            return getImportWalletWarningDialogModel();
        }
        return getCreateWalletWarningDialogModel();
    }

    private final DialogModel getCreateWalletWarningDialogModel() {
        String string = this.resourceManager.getString(C3158R.string.wallet_dashboard_eth_wallet_warning_dialog_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3158R.string.wallet_dashboard_create_eth_wallet_warning_dialog_description;
        Object[] objArr = new Object[1];
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        objArr[0] = linkedCryptoWalletAddress;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_dashboard_create_eth_wallet_warning_dialog_action_button));
    }

    private final DialogModel getImportWalletWarningDialogModel() {
        String string = this.resourceManager.getString(C3158R.string.wallet_dashboard_eth_wallet_warning_dialog_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3158R.string.wallet_dashboard_import_eth_wallet_warning_dialog_description;
        Object[] objArr = new Object[1];
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        objArr[0] = linkedCryptoWalletAddress;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_dashboard_import_eth_wallet_warning_dialog_action_button));
    }

    private final DialogModel getRestoreWalletWarningDialogModel() {
        String string = this.resourceManager.getString(C3158R.string.wallet_dashboard_eth_wallet_warning_dialog_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3158R.string.wallet_dashboard_restore_eth_wallet_warning_dialog_description;
        Object[] objArr = new Object[1];
        String linkedCryptoWalletAddress = getLinkedCryptoWalletAddress();
        if (linkedCryptoWalletAddress == null) {
            linkedCryptoWalletAddress = "";
        }
        objArr[0] = linkedCryptoWalletAddress;
        return new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3158R.string.common_cancel), this.resourceManager.getString(C3158R.string.wallet_dashboard_restore_eth_wallet_warning_dialog_action_button));
    }
}
