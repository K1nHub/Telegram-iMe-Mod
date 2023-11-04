package com.iMe.p030ui.wallet.send;

import android.app.Activity;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.model.wallet.send.WalletSendScreenType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.ChooseRecipientOptionsView;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.custom.TitledInputFieldView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda4;
import com.iMe.p030ui.wallet.send.WalletSendPresenter;
import com.iMe.p030ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.helper.GlideHelper;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.databinding.ForkFragmentWalletSendBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3706ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.CameraScanActivity;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LinkActionView;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.ContactsActivity;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: WalletSendFragment.kt */
/* renamed from: com.iMe.ui.wallet.send.WalletSendFragment */
/* loaded from: classes4.dex */
public final class WalletSendFragment extends WalletAuthBaseFragment implements WalletSendView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSendFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/send/WalletSendPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSendFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSendBinding;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSendFragment.class, "clipboardManager", "getClipboardManager()Landroid/content/ClipboardManager;", 0))};
    public static final Companion Companion = new Companion(null);
    private static final int INPUT_FIELD_HEIGHT = ViewExtKt.getDpToPx(52);
    private final TransferScreenArgs args;
    private final ResettableLazy binding$delegate;
    private BottomSheet cameraBottomSheet;
    private final ResettableLazy clipboardManager$delegate;
    private final boolean isBinanceTokenReplenish;
    private final MoxyKtxDelegate presenter$delegate;
    private final WalletSendScreenType screenType;
    private final Lazy tokenBuyCoordinator$delegate;

    /* compiled from: WalletSendFragment.kt */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendFragment$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[WalletSendScreenType.values().length];
            try {
                iArr[WalletSendScreenType.WALLET_TRANSFER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WalletSendScreenType.BINANCE_REPLENISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WalletSendScreenType.WALLET_TRANSFER_DONATIONS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[WalletSendPresenter.SendScreenState.values().length];
            try {
                iArr2[WalletSendPresenter.SendScreenState.PREPARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[WalletSendPresenter.SendScreenState.LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[WalletSendPresenter.SendScreenState.SEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final WalletSendFragment newInstance(TransferScreenArgs transferScreenArgs, WalletSendScreenType walletSendScreenType) {
        return Companion.newInstance(transferScreenArgs, walletSendScreenType);
    }

    public WalletSendFragment(TransferScreenArgs args, WalletSendScreenType screenType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.args = args;
        this.screenType = screenType;
        Function0<WalletSendPresenter> function0 = new Function0<WalletSendPresenter>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSendPresenter invoke() {
                Lazy lazy2;
                final WalletSendFragment walletSendFragment = WalletSendFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        WalletSendScreenType walletSendScreenType;
                        walletSendScreenType = WalletSendFragment.this.screenType;
                        return ParametersHolderKt.parametersOf(walletSendScreenType, WalletSendFragment.this.args);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSendPresenter>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.send.WalletSendPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletSendPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSendPresenter.class), qualifier, function03);
                    }
                });
                return (WalletSendPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSendPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TokenBuyCoordinator>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator] */
            @Override // kotlin.jvm.functions.Function0
            public final TokenBuyCoordinator invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TokenBuyCoordinator.class), qualifier, function02);
            }
        });
        this.tokenBuyCoordinator$delegate = lazy;
        boolean z = true;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletSendBinding>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletSendBinding invoke() {
                return ForkFragmentWalletSendBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletSendFragment.this));
            }
        }, 1, (Object) null);
        this.clipboardManager$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ClipboardManager>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$clipboardManager$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ClipboardManager invoke() {
                Object systemService = WalletSendFragment.this.getParentActivity().getSystemService("clipboard");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                return (ClipboardManager) systemService;
            }
        }, 1, (Object) null);
        this.isBinanceTokenReplenish = (screenType != WalletSendScreenType.BINANCE_REPLENISH || args.getTokenItem() == null) ? false : false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletSendPresenter getPresenter() {
        return (WalletSendPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TokenBuyCoordinator getTokenBuyCoordinator() {
        return (TokenBuyCoordinator) this.tokenBuyCoordinator$delegate.getValue();
    }

    private final ForkFragmentWalletSendBinding getBinding() {
        return (ForkFragmentWalletSendBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final ClipboardManager getClipboardManager() {
        return (ClipboardManager) this.clipboardManager$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupViews();
        setupListeners();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onViewCreated() {
        super.onViewCreated();
        setupColors();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onDestroyView() {
        BottomSheet bottomSheet = this.cameraBottomSheet;
        if (bottomSheet != null) {
            bottomSheet.dismiss();
        }
        this.cameraBottomSheet = null;
        super.onDestroyView();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, Theme.key_windowBackgroundWhite));
        return arrayListOf;
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupNetwork(NetworkItem networkItem) {
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        NetworkTypeView networkTypeView = getBinding().networkTypeView;
        networkTypeView.setNetwork(networkItem);
        if (this.isBinanceTokenReplenish) {
            networkTypeView.setImmutable();
        }
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void showChooseNetworkDialog(List<? extends NetworkItem> availableNetworks, NetworkItem network) {
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        Intrinsics.checkNotNullParameter(network, "network");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendFragment.showChooseNetworkDialog$lambda$1(WalletSendFragment.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$1(WalletSendFragment this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onSelectNetworkClick(crypto);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void openChooseContact(Bundle args) {
        Intrinsics.checkNotNullParameter(args, "args");
        ContactsActivity contactsActivity = new ContactsActivity(args);
        contactsActivity.setUserWithCryptoAddressDelegate(new Callbacks$Callback2() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                WalletSendFragment.openChooseContact$lambda$2(WalletSendFragment.this, (TLRPC$User) obj, (String) obj2);
            }
        });
        presentFragment(contactsActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openChooseContact$lambda$2(WalletSendFragment this$0, TLRPC$User user, String address) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getParentActivity() == null) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(address, "address");
        this$0.setupReplenishAddress(address);
        WalletSendPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(user, "user");
        presenter.onSelectContact(address, user);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void openSelectTokenScreen(SelectTokenScreenType selectTokensScreenType, String networkId) {
        Intrinsics.checkNotNullParameter(selectTokensScreenType, "selectTokensScreenType");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        presentFragment(WalletSelectTokenFragment.Companion.newInstance(selectTokensScreenType, null, networkId, true, new Callbacks$Callback2() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                WalletSendFragment.openSelectTokenScreen$lambda$3(WalletSendFragment.this, (TokenDetailed) obj, (FiatValue) obj2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openSelectTokenScreen$lambda$3(WalletSendFragment this$0, TokenDetailed token, FiatValue fiatValue) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletSendPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(token, "token");
        presenter.onTokenSelected(token);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void renderSelectedToken(String tokenText, String tokenLogoUrl, int i, String tokenBalanceText, String insertedAmountInDollarsText) {
        Intrinsics.checkNotNullParameter(tokenText, "tokenText");
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        Intrinsics.checkNotNullParameter(tokenBalanceText, "tokenBalanceText");
        Intrinsics.checkNotNullParameter(insertedAmountInDollarsText, "insertedAmountInDollarsText");
        ForkFragmentWalletSendBinding binding = getBinding();
        if (this.screenType == WalletSendScreenType.BINANCE_REPLENISH) {
            binding.inputRecipient.getInputView().setEditHint(getResourceManager().getString(C3634R.string.common_progress_state_title));
        }
        LinkActionView inputView = binding.inputToken.getInputView();
        inputView.setText(tokenText);
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i2 == 1) {
            Activity parentActivity = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            GlideHelper.loadImageAsBitmap(parentActivity, tokenLogoUrl, new CreateCryptoBoxFragment$$ExternalSyntheticLambda4(inputView), true);
        } else if (i2 == 2) {
            Activity parentActivity2 = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
            GlideHelper.loadBinanceImageAsBitmap(parentActivity2, tokenLogoUrl, new CreateCryptoBoxFragment$$ExternalSyntheticLambda4(inputView));
        }
        LinkActionView inputView2 = binding.inputAmount.getInputView();
        TextView maxButtonView = inputView2.getMaxButtonView();
        if (maxButtonView != null) {
            Intrinsics.checkNotNullExpressionValue(maxButtonView, "maxButtonView");
            ViewExtKt.setEnabledWithAlpha(maxButtonView, true);
        }
        EditTextBoldCursor renderSelectedToken$lambda$7$lambda$6$lambda$5 = inputView2.getEditText();
        Intrinsics.checkNotNullExpressionValue(renderSelectedToken$lambda$7$lambda$6$lambda$5, "renderSelectedToken$lambda$7$lambda$6$lambda$5");
        ViewExtKt.limitInputLength$default(renderSelectedToken$lambda$7$lambda$6$lambda$5, i, 0, 2, null);
        ViewExtKt.clearText(renderSelectedToken$lambda$7$lambda$6$lambda$5);
        showBalance(tokenBalanceText, insertedAmountInDollarsText);
        setupTokenInputErrorState(false);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void renderInsertedAmountInFiat(String insertedAmountInFiat) {
        Intrinsics.checkNotNullParameter(insertedAmountInFiat, "insertedAmountInFiat");
        getBinding().textTokenBalanceInDollars.setText(insertedAmountInFiat);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void showSuccessSend(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showSuccessAlert(this, getResourceManager().getString(C3634R.string.wallet_amount_success_send_title), message, getResourceManager().getString(C3634R.string.common_ok), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.showSuccessSend$lambda$8(WalletSendFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSuccessSend$lambda$8(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        tokenBuyCoordinator.showNoEnoughMoneyDialog(parentLayout, args);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void openBuyScreen(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        TokenBuyCoordinator.start$default(tokenBuyCoordinator, parentLayout, args, false, 4, null);
    }

    public void showAlertError(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3634R.string.common_unexpected_error_title), text, getResourceManager().getString(C3634R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void showRecipientNotFoundError() {
        DialogsFactoryKt.showSuccessAlert(this, getResourceManager().getString(C3634R.string.wallet_amount_error_invalid_user_title), getResourceManager().getString(C3634R.string.wallet_amount_error_invalid_user_description), getResourceManager().getString(C3634R.string.wallet_amount_error_invalid_user_btn_txt), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.showRecipientNotFoundError$lambda$9(WalletSendFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRecipientNotFoundError$lambda$9(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void showRecipientWalletNotActivatedError() {
        DialogsFactoryKt.showSuccessAlert(this, getResourceManager().getString(C3634R.string.wallet_amount_error_invalid_user_title), getResourceManager().getString(C3634R.string.wallet_amount_error_user_wallet_not_activated_description), getResourceManager().getString(C3634R.string.wallet_amount_error_invalid_user_btn_txt), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.showRecipientWalletNotActivatedError$lambda$10(WalletSendFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRecipientWalletNotActivatedError$lambda$10(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void onSuccessValidation(DialogModel model, boolean z) {
        Intrinsics.checkNotNullParameter(model, "model");
        AndroidUtilities.hideKeyboard(this.fragmentView);
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createCheckBoxAlert$default(parentActivity, model, getResourceManager().getString(C3634R.string.wallet_amount_send_message_checkbox_title), z, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSendFragment.onSuccessValidation$lambda$11(Ref$BooleanRef.this, (Boolean) obj);
            }
        }, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda13
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.onSuccessValidation$lambda$12(WalletSendFragment.this, ref$BooleanRef);
            }
        }, null, 64, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSuccessValidation$lambda$11(Ref$BooleanRef shouldSendMessage, Boolean it) {
        Intrinsics.checkNotNullParameter(shouldSendMessage, "$shouldSendMessage");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        shouldSendMessage.element = it.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSuccessValidation$lambda$12(WalletSendFragment this$0, Ref$BooleanRef shouldSendMessage) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(shouldSendMessage, "$shouldSendMessage");
        this$0.getPresenter().send(shouldSendMessage.element);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupReplenishAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        getBinding().inputRecipient.getInputView().setText(address);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupAvatarRecipient(TLRPC$User tLRPC$User) {
        getBinding().inputRecipient.getInputView().setAvatarForEditableMode(tLRPC$User);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void resetScreen() {
        ForkFragmentWalletSendBinding binding = getBinding();
        LinkActionView inputView = binding.inputRecipient.getInputView();
        inputView.setEditHint(getResourceManager().getString(C3634R.string.wallet_amount_send_enter_address_hint));
        inputView.resetField();
        setupRecipientInputErrorState(false);
        binding.inputToken.getInputView().resetField();
        setupTokenInputErrorState(false);
        LinkActionView inputView2 = binding.inputAmount.getInputView();
        inputView2.resetField();
        TextView maxButtonView = inputView2.getMaxButtonView();
        if (maxButtonView != null) {
            Intrinsics.checkNotNullExpressionValue(maxButtonView, "maxButtonView");
            ViewExtKt.setEnabledWithAlpha(maxButtonView, false);
        }
        setupAmountInputErrorState(false, null);
        TextView textTokenBalance = binding.textTokenBalance;
        Intrinsics.checkNotNullExpressionValue(textTokenBalance, "textTokenBalance");
        ViewExtKt.gone$default(textTokenBalance, false, 1, null);
        TextView textTokenBalanceInDollars = binding.textTokenBalanceInDollars;
        Intrinsics.checkNotNullExpressionValue(textTokenBalanceInDollars, "textTokenBalanceInDollars");
        ViewExtKt.gone$default(textTokenBalanceInDollars, false, 1, null);
        FeeView viewFee = binding.viewFee;
        Intrinsics.checkNotNullExpressionValue(viewFee, "viewFee");
        ViewExtKt.gone$default(viewFee, false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void updateFeeView(FeeType feeType) {
        FeeView updateFeeView$lambda$16 = getBinding().viewFee;
        if (feeType != null) {
            Intrinsics.checkNotNullExpressionValue(updateFeeView$lambda$16, "updateFeeView$lambda$16");
            ViewExtKt.visible$default(updateFeeView$lambda$16, false, 1, null);
            updateFeeView$lambda$16.init(this, feeType);
        }
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void hideFeeView() {
        FeeView feeView = getBinding().viewFee;
        Intrinsics.checkNotNullExpressionValue(feeView, "binding.viewFee");
        ViewExtKt.gone$default(feeView, false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void updateStateButtonSend(WalletSendPresenter.SendScreenState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        TransactionActionButtonsView transactionActionButtonsView = getBinding().buttonSend;
        int i = WhenMappings.$EnumSwitchMapping$1[state.ordinal()];
        if (i == 1) {
            transactionActionButtonsView.setActionButtonText(getResourceManager().getString(C3634R.string.wallet_amount_button_txt));
            transactionActionButtonsView.setActionButtonEnabled(false);
        } else if (i == 2) {
            transactionActionButtonsView.setActionButtonText(getResourceManager().getString(C3634R.string.common_progress_state_title));
            transactionActionButtonsView.setActionButtonEnabled(false);
        } else if (i != 3) {
        } else {
            transactionActionButtonsView.setActionButtonText(getResourceManager().getString(C3634R.string.wallet_amount_button_txt));
            transactionActionButtonsView.setActionButtonEnabled(true);
        }
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupAmount(String amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        getBinding().inputAmount.getInputView().setText(amount);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupRecipientInputErrorState(boolean z) {
        TitledInputFieldView titledInputFieldView = getBinding().inputRecipient;
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView, "binding.inputRecipient");
        setErrorStateTitledInputFieldView$default(this, titledInputFieldView, getResourceManager().getString(C3634R.string.wallet_amount_send_error_incorrect_address), z, null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupTokenInputErrorState(boolean z) {
        TitledInputFieldView titledInputFieldView = getBinding().inputToken;
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView, "binding.inputToken");
        setErrorStateTitledInputFieldView$default(this, titledInputFieldView, getResourceManager().getString(C3634R.string.wallet_amount_send_error_unsupported_token), z, null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupAmountInputErrorState(boolean z, String str) {
        TitledInputFieldView titledInputFieldView = getBinding().inputAmount;
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView, "binding.inputAmount");
        String string = getResourceManager().getString(C3634R.string.wallet_amount_send_error_insufficient_funds);
        if (str == null) {
            str = "";
        }
        setErrorStateTitledInputFieldView(titledInputFieldView, string, z, str);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupCommentVisibility(boolean z) {
        TitledInputFieldView titledInputFieldView = getBinding().inputComment;
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView, "binding.inputComment");
        titledInputFieldView.setVisibility(z ? 0 : 8);
    }

    static /* synthetic */ void setErrorStateTitledInputFieldView$default(WalletSendFragment walletSendFragment, TitledInputFieldView titledInputFieldView, String str, boolean z, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = "";
        }
        walletSendFragment.setErrorStateTitledInputFieldView(titledInputFieldView, str, z, str2);
    }

    private final void setErrorStateTitledInputFieldView(TitledInputFieldView titledInputFieldView, String str, boolean z, String str2) {
        TextView textView;
        if (z) {
            titledInputFieldView.getInputView().setErrorState(true);
            View customView = titledInputFieldView.getCustomView();
            textView = customView instanceof TextView ? (TextView) customView : null;
            if (textView != null) {
                if (str2.length() > 0) {
                    textView.setText(str + ' ' + str2);
                    ViewExtKt.setSubstringClickListener(textView, str2, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda8
                        @Override // com.iMe.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            WalletSendFragment.setErrorStateTitledInputFieldView$lambda$20$lambda$19$lambda$18(WalletSendFragment.this);
                        }
                    });
                    return;
                }
                textView.setText(str);
                return;
            }
            return;
        }
        titledInputFieldView.getInputView().setErrorState(false);
        View customView2 = titledInputFieldView.getCustomView();
        textView = customView2 instanceof TextView ? (TextView) customView2 : null;
        if (textView != null) {
            ViewExtKt.clearText(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setErrorStateTitledInputFieldView$lambda$20$lambda$19$lambda$18(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onReplenish();
    }

    private final void showBalance(String str, String str2) {
        ForkFragmentWalletSendBinding binding = getBinding();
        TextView showBalance$lambda$23$lambda$21 = binding.textTokenBalance;
        showBalance$lambda$23$lambda$21.setText(AndroidUtilities.replaceTags(getResourceManager().getString(C3634R.string.wallet_swap_process_my_balance, str)));
        Intrinsics.checkNotNullExpressionValue(showBalance$lambda$23$lambda$21, "showBalance$lambda$23$lambda$21");
        showBalance$lambda$23$lambda$21.setVisibility(0);
        TextView showBalance$lambda$23$lambda$22 = binding.textTokenBalanceInDollars;
        showBalance$lambda$23$lambda$22.setText(str2);
        Intrinsics.checkNotNullExpressionValue(showBalance$lambda$23$lambda$22, "showBalance$lambda$23$lambda$22");
        showBalance$lambda$23$lambda$22.setVisibility(0);
    }

    private final void openScanQrCodeScreen() {
        if (getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
            getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
        } else {
            showCameraScanner();
        }
    }

    private final void showCameraScanner() {
        this.cameraBottomSheet = CameraScanActivity.showAsSheet((BaseFragment) this, true, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$showCameraScanner$1
            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String text) {
                WalletSendPresenter presenter;
                Intrinsics.checkNotNullParameter(text, "text");
                presenter = WalletSendFragment.this.getPresenter();
                presenter.validateRecipientAddress(text);
            }
        }, true);
    }

    private final void setupColors() {
        List<TitledInputFieldView> listOf;
        ForkFragmentWalletSendBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        int i = Theme.key_windowBackgroundWhiteGrayText;
        TextView textHeader = binding.textHeader;
        Intrinsics.checkNotNullExpressionValue(textHeader, "textHeader");
        TextView textTokenBalance = binding.textTokenBalance;
        Intrinsics.checkNotNullExpressionValue(textTokenBalance, "textTokenBalance");
        TextView textTokenBalanceInDollars = binding.textTokenBalanceInDollars;
        Intrinsics.checkNotNullExpressionValue(textTokenBalanceInDollars, "textTokenBalanceInDollars");
        ViewExtKt.setTextsColorKey(i, textHeader, textTokenBalance, textTokenBalanceInDollars);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TitledInputFieldView[]{binding.inputRecipient, binding.inputToken, binding.inputAmount});
        for (TitledInputFieldView titledInputFieldView : listOf) {
            View customView = titledInputFieldView.getCustomView();
            TextView textView = customView instanceof TextView ? (TextView) customView : null;
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
            }
        }
        TextView textView2 = binding.textNetwork;
        int i2 = Theme.key_windowBackgroundWhiteBlueIcon;
        textView2.setTextColor(Theme.getColor(i2));
        AppCompatImageView imageNetwork = binding.imageNetwork;
        Intrinsics.checkNotNullExpressionValue(imageNetwork, "imageNetwork");
        ImageViewExtKt.setImageColor(imageNetwork, Theme.getColor(i2));
        LinearLayout linearLayout = binding.linearCryptoSettings;
        int i3 = Theme.key_windowBackgroundWhite;
        linearLayout.setBackgroundColor(getThemedColor(i3));
        binding.linearSelectNetwork.setBackgroundColor(getThemedColor(i3));
        binding.inputToken.setupColors();
        binding.inputAmount.setupColors();
        binding.inputRecipient.setupColors();
        binding.choiceAddressButtons.setupColors();
        binding.buttonSend.setupColors();
        binding.inputComment.setupColors();
    }

    private final void setupActionBar() {
        C3706ActionBar c3706ActionBar = this.actionBar;
        c3706ActionBar.setBackButtonImage(C3634R.C3636drawable.ic_ab_back);
        c3706ActionBar.setTitle(getResourceManager().getString(C3634R.string.wallet_user_id_dialog_transfer_action));
        c3706ActionBar.setActionBarMenuOnItemClick(new C3706ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3706ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletSendFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupViews() {
        int i;
        ForkFragmentWalletSendBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageHeader;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3634R.raw.fork_crypto_transfers, 96, 96);
        rLottieImageView.playAnimation();
        TextView textView = binding.textHeader;
        ResourceManager resourceManager = getResourceManager();
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.screenType.ordinal()];
        if (i2 == 1) {
            i = C3634R.string.wallet_banner_slide_crypto_transfers_long_description;
        } else if (i2 == 2) {
            i = C3634R.string.binance_replenish_token_description;
        } else if (i2 != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3634R.string.channel_donations_description;
        }
        textView.setText(resourceManager.getString(i));
        WalletSendScreenType walletSendScreenType = this.screenType;
        WalletSendScreenType walletSendScreenType2 = WalletSendScreenType.BINANCE_REPLENISH;
        if (walletSendScreenType == walletSendScreenType2) {
            ChooseRecipientOptionsView choiceAddressButtons = binding.choiceAddressButtons;
            Intrinsics.checkNotNullExpressionValue(choiceAddressButtons, "choiceAddressButtons");
            ViewExtKt.gone$default(choiceAddressButtons, false, 1, null);
        }
        String string = getResourceManager().getString(this.isBinanceTokenReplenish ? C3634R.string.common_progress_state_title : C3634R.string.wallet_amount_send_enter_address_hint);
        TitledInputFieldView titledInputFieldView = binding.inputRecipient;
        titledInputFieldView.setCustomView(new TextView(titledInputFieldView.getContext()));
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView, "this");
        String string2 = getResourceManager().getString(C3634R.string.wallet_binance_receive_choose_contact_hint);
        boolean z = this.screenType != walletSendScreenType2;
        titledInputFieldView.setTitle(string2);
        final LinkActionView inputView = titledInputFieldView.getInputView();
        inputView.setGravity(16);
        inputView.hideAllActionButtons(true);
        inputView.setEditHint(string);
        inputView.setMode(z);
        EditTextBoldCursor setupViews$lambda$42$lambda$31$lambda$30$lambda$29 = inputView.getEditText();
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$42$lambda$31$lambda$30$lambda$29, "setupViews$lambda$42$lambda$31$lambda$30$lambda$29");
        setupViews$lambda$42$lambda$31$lambda$30$lambda$29.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$setupViews$lambda$42$lambda$31$lambda$30$lambda$29$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WalletSendScreenType walletSendScreenType3;
                WalletSendPresenter presenter;
                walletSendScreenType3 = WalletSendFragment.this.screenType;
                if (walletSendScreenType3 != WalletSendScreenType.BINANCE_REPLENISH) {
                    inputView.handleClearEditTextButton();
                }
                presenter = WalletSendFragment.this.getPresenter();
                presenter.validateEnterAddress(String.valueOf(editable));
            }
        });
        setupViews$lambda$42$lambda$31$lambda$30$lambda$29.setInputType(524288);
        if (this.screenType == walletSendScreenType2) {
            FrameLayout frameLayout = inputView.getFrameLayout();
            Intrinsics.checkNotNullExpressionValue(frameLayout, "frameLayout");
            ViewExtKt.safeThrottledClick$default(frameLayout, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$setupViews$1$2$1$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    ResourceManager resourceManager2;
                    Intrinsics.checkNotNullParameter(it, "it");
                    WalletSendFragment walletSendFragment = WalletSendFragment.this;
                    resourceManager2 = walletSendFragment.getResourceManager();
                    walletSendFragment.showAlertError(resourceManager2.getString(C3634R.string.binance_replenish_custom_address_unsupported));
                }
            }, 1, null);
        }
        inputView.showOptions(false);
        int i3 = INPUT_FIELD_HEIGHT;
        titledInputFieldView.setupInputLayoutParams(-1, i3);
        TitledInputFieldView titledInputFieldView2 = binding.inputToken;
        titledInputFieldView2.setCustomView(new TextView(titledInputFieldView2.getContext()));
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView2, "this");
        String string3 = getResourceManager().getString(C3634R.string.wallet_binance_receive_select_token_hint);
        String string4 = getResourceManager().getString(C3634R.string.wallet_binance_receive_select_token_title);
        titledInputFieldView2.setTitle(string3);
        LinkActionView inputView2 = titledInputFieldView2.getInputView();
        inputView2.setGravity(16);
        inputView2.hideAllActionButtons(true);
        inputView2.setEditHint(string4);
        inputView2.setMode(false);
        inputView2.setFieldClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletSendFragment.setupViews$lambda$42$lambda$34$lambda$33$lambda$32(WalletSendFragment.this, view);
            }
        });
        inputView2.showOptions(false);
        titledInputFieldView2.setupInputLayoutParams(-1, i3);
        TitledInputFieldView inputComment = binding.inputComment;
        Intrinsics.checkNotNullExpressionValue(inputComment, "inputComment");
        String string5 = getResourceManager().getString(C3634R.string.wallet_transfer_comment_title);
        String string6 = getResourceManager().getString(C3634R.string.wallet_transfer_comment_hint);
        inputComment.setTitle(string5);
        LinkActionView inputView3 = inputComment.getInputView();
        inputView3.setGravity(16);
        inputView3.hideAllActionButtons(true);
        inputView3.setEditHint(string6);
        inputView3.setMode(true);
        EditTextBoldCursor editText = inputView3.getEditText();
        Intrinsics.checkNotNullExpressionValue(editText, "editText");
        editText.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$setupViews$lambda$42$lambda$36$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WalletSendPresenter presenter;
                presenter = WalletSendFragment.this.getPresenter();
                presenter.onCommentChanged(String.valueOf(editable));
            }
        });
        inputView3.showOptions(false);
        TitledInputFieldView titledInputFieldView3 = binding.inputAmount;
        titledInputFieldView3.setCustomView(new TextView(titledInputFieldView3.getContext()));
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView3, "this");
        String string7 = getResourceManager().getString(C3634R.string.wallet_crypto_buy_amount_title);
        String string8 = getResourceManager().getString(C3634R.string.wallet_binance_receive_amount_title);
        titledInputFieldView3.setTitle(string7);
        LinkActionView inputView4 = titledInputFieldView3.getInputView();
        inputView4.setGravity(16);
        inputView4.hideAllActionButtons(true);
        inputView4.setEditHint(string8);
        inputView4.setMode(true);
        EditTextBoldCursor setupViews$lambda$42$lambda$40$lambda$39$lambda$38 = inputView4.getEditText();
        setupViews$lambda$42$lambda$40$lambda$39$lambda$38.setInputType(8194);
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$42$lambda$40$lambda$39$lambda$38, "setupViews$lambda$42$lambda$40$lambda$39$lambda$38");
        ViewExtKt.limitInputLength$default(setupViews$lambda$42$lambda$40$lambda$39$lambda$38, TokenDetailed.Companion.getBNB().getDecimals(), 0, 2, null);
        setupViews$lambda$42$lambda$40$lambda$39$lambda$38.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$setupViews$lambda$42$lambda$40$lambda$39$lambda$38$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WalletSendPresenter presenter;
                CharSequence trim;
                presenter = WalletSendFragment.this.getPresenter();
                trim = StringsKt__StringsKt.trim(String.valueOf(editable));
                presenter.onAmountChanged(trim.toString());
            }
        });
        inputView4.showOptions(false);
        inputView4.addMaxButton(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$setupInputField$2$1$1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendPresenter presenter;
                presenter = WalletSendFragment.this.getPresenter();
                presenter.onMaxAmountClick();
            }
        });
        TextView maxButtonView = inputView4.getMaxButtonView();
        if (maxButtonView != null) {
            Intrinsics.checkNotNullExpressionValue(maxButtonView, "maxButtonView");
            ViewExtKt.setEnabledWithAlpha(maxButtonView, this.args.getTokenItem() != null);
        }
        titledInputFieldView3.setupInputLayoutParams(-1, i3);
        TransactionActionButtonsView buttonSend = binding.buttonSend;
        Intrinsics.checkNotNullExpressionValue(buttonSend, "buttonSend");
        buttonSend.setupViewData(getResourceManager().getString(C3634R.string.wallet_amount_button_txt), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0 ? false : false, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$0();
            }
        } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda12
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.setupViews$lambda$42$lambda$41(WalletSendFragment.this);
            }
        }, (r14 & 32) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$1();
            }
        } : null, (r14 & 64) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$2();
            }
        } : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$42$lambda$34$lambda$33$lambda$32(WalletSendFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onSelectTokenClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$42$lambda$41(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().resolveAction();
    }

    private final void setupListeners() {
        ForkFragmentWalletSendBinding binding = getBinding();
        NetworkTypeView networkTypeView = binding.networkTypeView;
        Intrinsics.checkNotNullExpressionValue(networkTypeView, "networkTypeView");
        ViewExtKt.safeThrottledClick$default(networkTypeView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$setupListeners$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                WalletSendPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSendFragment.this.getPresenter();
                presenter.startChooseNetworkDialog();
            }
        }, 1, null);
        binding.choiceAddressButtons.setupListeners(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.setupListeners$lambda$46$lambda$43(WalletSendFragment.this);
            }
        }, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda10
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.setupListeners$lambda$46$lambda$44(WalletSendFragment.this);
            }
        }, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.send.WalletSendFragment$$ExternalSyntheticLambda11
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSendFragment.setupListeners$lambda$46$lambda$45(WalletSendFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$46$lambda$43(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.pasteAddressToRecipient();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$46$lambda$44(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onContactsClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$46$lambda$45(WalletSendFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.openScanQrCodeScreen();
    }

    private final void pasteAddressToRecipient() {
        EditTextBoldCursor pasteAddressToRecipient$lambda$47 = getBinding().inputRecipient.getInputView().getEditText();
        pasteAddressToRecipient$lambda$47.setText(getClipboardText());
        pasteAddressToRecipient$lambda$47.requestFocus();
        Intrinsics.checkNotNullExpressionValue(pasteAddressToRecipient$lambda$47, "pasteAddressToRecipient$lambda$47");
        ViewExtKt.setSelectionEnd(pasteAddressToRecipient$lambda$47);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
        r0 = kotlin.text.StringsKt__StringsKt.trim(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String getClipboardText() {
        /*
            r3 = this;
            android.content.ClipboardManager r0 = r3.getClipboardManager()
            android.content.ClipData r0 = r0.getPrimaryClip()
            r1 = 0
            if (r0 == 0) goto L13
            int r0 = r0.getItemCount()
            if (r0 != 0) goto L13
            r0 = 1
            goto L14
        L13:
            r0 = r1
        L14:
            java.lang.String r2 = ""
            if (r0 == 0) goto L19
            goto L3b
        L19:
            android.content.ClipboardManager r0 = r3.getClipboardManager()
            android.content.ClipData r0 = r0.getPrimaryClip()
            if (r0 == 0) goto L37
            android.content.ClipData$Item r0 = r0.getItemAt(r1)
            if (r0 == 0) goto L37
            java.lang.CharSequence r0 = r0.getText()
            if (r0 == 0) goto L37
            java.lang.CharSequence r0 = kotlin.text.StringsKt.trim(r0)
            if (r0 != 0) goto L36
            goto L37
        L36:
            r2 = r0
        L37:
            java.lang.String r2 = r2.toString()
        L3b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.send.WalletSendFragment.getClipboardText():java.lang.String");
    }

    /* compiled from: WalletSendFragment.kt */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletSendFragment newInstance(TransferScreenArgs args, WalletSendScreenType screenType) {
            Intrinsics.checkNotNullParameter(args, "args");
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new WalletSendFragment(args, screenType);
        }
    }
}
