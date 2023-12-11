package com.iMe.p030ui.wallet.swap.process;

import android.app.Activity;
import android.content.Context;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.model.wallet.swap.WalletSwapScreenType;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import com.iMe.p030ui.wallet.swap.fee.WalletSwapFeeFragment;
import com.iMe.p030ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
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
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.hints.HintUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProcessBinding;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment extends WalletAuthBaseFragment implements WalletSwapProcessView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final WalletSwapScreenType screenType;
    private CountDownTimer timer;
    private final Lazy tokenBuyCoordinator$delegate;

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SwapSide.values().length];
            try {
                iArr[SwapSide.INPUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SwapSide.OUTPUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final WalletSwapProcessFragment newInstance(WalletSwapScreenType walletSwapScreenType) {
        return Companion.newInstance(walletSwapScreenType);
    }

    public final WalletSwapScreenType getScreenType() {
        return this.screenType;
    }

    public WalletSwapProcessFragment(WalletSwapScreenType screenType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        Function0<WalletSwapProcessPresenter> function0 = new Function0<WalletSwapProcessPresenter>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSwapProcessPresenter invoke() {
                Lazy lazy2;
                final WalletSwapProcessFragment walletSwapProcessFragment = WalletSwapProcessFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(WalletSwapProcessFragment.this.getScreenType());
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSwapProcessPresenter>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.swap.process.WalletSwapProcessPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletSwapProcessPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSwapProcessPresenter.class), qualifier, function03);
                    }
                });
                return (WalletSwapProcessPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSwapProcessPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TokenBuyCoordinator>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$special$$inlined$inject$default$1
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
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletSwapProcessBinding>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletSwapProcessBinding invoke() {
                return ForkFragmentWalletSwapProcessBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletSwapProcessFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletSwapProcessPresenter getPresenter() {
        return (WalletSwapProcessPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TokenBuyCoordinator getTokenBuyCoordinator() {
        return (TokenBuyCoordinator) this.tokenBuyCoordinator$delegate.getValue();
    }

    private final ForkFragmentWalletSwapProcessBinding getBinding() {
        return (ForkFragmentWalletSwapProcessBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupViews();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda10
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSwapProcessFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworks) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSwapProcessFragment.showChooseNetworkDialog$lambda$0(WalletSwapProcessFragment.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$0(WalletSwapProcessFragment this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onNetworkSelected(crypto);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void setupNetwork(NetworkItem network, SwapSide side) {
        NetworkTypeView networkTypeView;
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(side, "side");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
        if (i == 1) {
            networkTypeView = binding.viewInputNetwork;
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            networkTypeView = binding.viewOutputNetwork;
        }
        networkTypeView.setNetwork(network);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void setInputFiatText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        getBinding().textInputFiat.setText(text);
        setupErrorDependedColors$default(this, 0, 0, 3, null);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void setInputError(String errorText) {
        Intrinsics.checkNotNullParameter(errorText, "errorText");
        AppCompatTextView setInputError$lambda$2 = getBinding().textInputFiat;
        Intrinsics.checkNotNullExpressionValue(setInputError$lambda$2, "setInputError$lambda$2");
        ViewExtKt.visible$default(setInputError$lambda$2, false, 1, null);
        setInputError$lambda$2.setText(errorText);
        int i = Theme.key_text_RedRegular;
        setupErrorDependedColors(i, i);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void setupScreenForSwap(String title, String description, int i, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        this.actionBar.setTitle(title);
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.textSwapProtocolDescription.setText(description);
        binding.imageSwapProtocolLogo.setImageResource(i);
        NetworkTypeView viewInputNetwork = binding.viewInputNetwork;
        Intrinsics.checkNotNullExpressionValue(viewInputNetwork, "viewInputNetwork");
        viewInputNetwork.setVisibility(z ? 0 : 8);
        NetworkTypeView viewOutputNetwork = binding.viewOutputNetwork;
        Intrinsics.checkNotNullExpressionValue(viewOutputNetwork, "viewOutputNetwork");
        viewOutputNetwork.setVisibility(z2 && z ? 0 : 8);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void onTokenSelected(SwapSide side, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(side, "side");
        Intrinsics.checkNotNullParameter(token, "token");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
        if (i == 1) {
            AppCompatEditText onTokenSelected$lambda$7$lambda$4 = binding.editInputAmount;
            Intrinsics.checkNotNullExpressionValue(onTokenSelected$lambda$7$lambda$4, "onTokenSelected$lambda$7$lambda$4");
            ViewExtKt.visible$default(onTokenSelected$lambda$7$lambda$4, false, 1, null);
            ViewExtKt.limitInputLength$default(onTokenSelected$lambda$7$lambda$4, token.getDecimals(), 0, 2, null);
            ViewExtKt.setAllowDecimals(onTokenSelected$lambda$7$lambda$4, true);
            ViewExtKt.clearText(onTokenSelected$lambda$7$lambda$4);
            binding.textInputToken.setText(token.getTicker());
            AppCompatImageView onTokenSelected$lambda$7$lambda$5 = binding.imageInputToken;
            Intrinsics.checkNotNullExpressionValue(onTokenSelected$lambda$7$lambda$5, "onTokenSelected$lambda$7$lambda$5");
            ViewExtKt.visible$default(onTokenSelected$lambda$7$lambda$5, false, 1, null);
            ViewExtKt.loadImage(onTokenSelected$lambda$7$lambda$5, token);
        } else if (i == 2) {
            AppCompatEditText editOutputAmount = binding.editOutputAmount;
            Intrinsics.checkNotNullExpressionValue(editOutputAmount, "editOutputAmount");
            ViewExtKt.visible$default(editOutputAmount, false, 1, null);
            binding.textOutputToken.setText(token.getTicker());
            AppCompatImageView onTokenSelected$lambda$7$lambda$6 = binding.imageOutputToken;
            Intrinsics.checkNotNullExpressionValue(onTokenSelected$lambda$7$lambda$6, "onTokenSelected$lambda$7$lambda$6");
            ViewExtKt.visible$default(onTokenSelected$lambda$7$lambda$6, false, 1, null);
            ViewExtKt.loadImage(onTokenSelected$lambda$7$lambda$6, token);
        }
        AppCompatEditText editOutputAmount2 = binding.editOutputAmount;
        Intrinsics.checkNotNullExpressionValue(editOutputAmount2, "editOutputAmount");
        ViewExtKt.clearText(editOutputAmount2);
        AppCompatTextView textOutputRate = binding.textOutputRate;
        Intrinsics.checkNotNullExpressionValue(textOutputRate, "textOutputRate");
        ViewExtKt.clearText(textOutputRate);
        AppCompatTextView textOutputFiat = binding.textOutputFiat;
        Intrinsics.checkNotNullExpressionValue(textOutputFiat, "textOutputFiat");
        ViewExtKt.clearText(textOutputFiat);
        AppCompatImageView imageSwapTokensPositions = binding.imageSwapTokensPositions;
        Intrinsics.checkNotNullExpressionValue(imageSwapTokensPositions, "imageSwapTokensPositions");
        ViewExtKt.setEnabledWithAlpha(imageSwapTokensPositions, true);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showTokenBalance(String balanceText, String clickablePartText) {
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        Intrinsics.checkNotNullParameter(clickablePartText, "clickablePartText");
        AppCompatTextView showTokenBalance$lambda$9 = getBinding().textBalance;
        Intrinsics.checkNotNullExpressionValue(showTokenBalance$lambda$9, "showTokenBalance$lambda$9");
        ViewExtKt.visible$default(showTokenBalance$lambda$9, false, 1, null);
        showTokenBalance$lambda$9.setText(balanceText);
        if (clickablePartText.length() > 0) {
            ViewExtKt.setSubstringClickListener(showTokenBalance$lambda$9, clickablePartText, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda5
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessFragment.showTokenBalance$lambda$9$lambda$8(WalletSwapProcessFragment.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTokenBalance$lambda$9$lambda$8(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onMaxClick();
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void setAmount(SwapSide side, String amountText) {
        Intrinsics.checkNotNullParameter(side, "side");
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            binding.editOutputAmount.setText(amountText);
            return;
        }
        AppCompatEditText setAmount$lambda$11$lambda$10 = binding.editInputAmount;
        setAmount$lambda$11$lambda$10.setText(amountText);
        Intrinsics.checkNotNullExpressionValue(setAmount$lambda$11$lambda$10, "setAmount$lambda$11$lambda$10");
        ViewExtKt.setSelectionEnd(setAmount$lambda$11$lambda$10);
        ViewExtKt.showKeyboard(setAmount$lambda$11$lambda$10);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void renderState(SwapUiState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        if (state instanceof SwapUiState.Approval) {
            TransactionActionButtonsView viewActionButtons = binding.viewActionButtons;
            Intrinsics.checkNotNullExpressionValue(viewActionButtons, "viewActionButtons");
            viewActionButtons.setupViewData(getResourceManager().getString(C3632R.string.wallet_swap_process_button_approve), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TransactionActionButtonsView.setupViewData$lambda$0();
                }
            } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda7
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessFragment.renderState$lambda$20$lambda$12(WalletSwapProcessFragment.this);
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
            } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda8
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessFragment.renderState$lambda$20$lambda$13(WalletSwapProcessFragment.this);
                }
            });
            FeeView renderState$lambda$20$lambda$14 = binding.feeView;
            renderState$lambda$20$lambda$14.init(this, ((SwapUiState.Approval) state).getFeeType());
            Intrinsics.checkNotNullExpressionValue(renderState$lambda$20$lambda$14, "renderState$lambda$20$lambda$14");
            ViewExtKt.visible$default(renderState$lambda$20$lambda$14, false, 1, null);
        } else if (state instanceof SwapUiState.Loading) {
            TransactionActionButtonsView viewActionButtons2 = binding.viewActionButtons;
            Intrinsics.checkNotNullExpressionValue(viewActionButtons2, "viewActionButtons");
            viewActionButtons2.setupViewData(getResourceManager().getString(C3632R.string.common_progress_state_title), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0 ? false : false, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TransactionActionButtonsView.setupViewData$lambda$0();
                }
            } : null, (r14 & 32) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda2
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
            FeeView feeView = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView, "feeView");
            ViewExtKt.gone$default(feeView, false, 1, null);
        } else if (state instanceof SwapUiState.Swap) {
            SwapUiState.Swap swap = (SwapUiState.Swap) state;
            if (swap instanceof SwapUiState.Swap.Binance) {
                SwapUiState.Swap.Binance binance = (SwapUiState.Swap.Binance) state;
                double outputAmount = binance.getQuote().getOutputAmount() / binance.getQuote().getInputAmount();
                AppCompatTextView appCompatTextView = binding.textOutputRate;
                ResourceManager resourceManager = getResourceManager();
                int i = C3632R.string.wallet_swap_process_fee_price_value;
                Float valueOf = Float.valueOf(1.0f);
                TokenDetailed.Companion companion = TokenDetailed.Companion;
                appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.format(valueOf, Integer.valueOf(companion.getBNB().getDecimals())), binance.getQuote().getInputTokenShortName(), BalanceFormatter.format(Double.valueOf(outputAmount), Integer.valueOf(companion.getBNB().getDecimals())), binance.getQuote().getOutputTokenShortName()));
                AppCompatEditText appCompatEditText = binding.editOutputAmount;
                appCompatEditText.setText(BalanceFormatter.format(Double.valueOf(binance.getQuote().getOutputAmount()), Integer.valueOf(companion.getBNB().getDecimals())) + ' ' + binance.getQuote().getOutputToken());
                WalletSwapProcessFragment$renderState$1$4 walletSwapProcessFragment$renderState$1$4 = new WalletSwapProcessFragment$renderState$1$4(binding, this);
                walletSwapProcessFragment$renderState$1$4.start();
                this.timer = walletSwapProcessFragment$renderState$1$4;
            } else if (swap instanceof SwapUiState.Swap.Crypto) {
                TransactionActionButtonsView viewActionButtons3 = binding.viewActionButtons;
                Intrinsics.checkNotNullExpressionValue(viewActionButtons3, "viewActionButtons");
                viewActionButtons3.setupViewData(getResourceManager().getString(C3632R.string.wallet_swap_process_button_exchange), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0 ? false : false, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        TransactionActionButtonsView.setupViewData$lambda$0();
                    }
                } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda3
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        WalletSwapProcessFragment.renderState$lambda$20$lambda$16(WalletSwapProcessFragment.this);
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
                FeeView renderState$lambda$20$lambda$17 = binding.feeView;
                SwapUiState.Swap.Crypto crypto = (SwapUiState.Swap.Crypto) state;
                renderState$lambda$20$lambda$17.init(this, crypto.getFeeType());
                Intrinsics.checkNotNullExpressionValue(renderState$lambda$20$lambda$17, "renderState$lambda$20$lambda$17");
                ViewExtKt.visible$default(renderState$lambda$20$lambda$17, false, 1, null);
                binding.textOutputRate.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_fee_price_value, BalanceFormatter.format(Float.valueOf(1.0f), Integer.valueOf(crypto.getMetadata().getInputToken().getDecimals())), crypto.getMetadata().getInputToken().getTicker(), BalanceFormatter.format(crypto.getMetadata().getExecutionPrice(), Integer.valueOf(crypto.getMetadata().getOutputToken().getDecimals())), crypto.getMetadata().getOutputToken().getTicker()));
                binding.textOutputFiat.setText(crypto.getOutputFiatAmountText());
                binding.editOutputAmount.setText(BalanceFormatter.format(crypto.getMetadata().getAmountOut(), Integer.valueOf(crypto.getMetadata().getOutputToken().getDecimals())));
            }
        } else if (state instanceof SwapUiState.ApprovalPending) {
            TransactionActionButtonsView viewActionButtons4 = binding.viewActionButtons;
            Intrinsics.checkNotNullExpressionValue(viewActionButtons4, "viewActionButtons");
            viewActionButtons4.setupViewData(getResourceManager().getString(C3632R.string.wallet_swap_process_button_approving), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TransactionActionButtonsView.setupViewData$lambda$0();
                }
            } : null, (r14 & 32) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda2
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TransactionActionButtonsView.setupViewData$lambda$1();
                }
            } : null, (r14 & 64) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TransactionActionButtonsView.setupViewData$lambda$2();
                }
            } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda4
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletSwapProcessFragment.renderState$lambda$20$lambda$18(WalletSwapProcessFragment.this);
                }
            });
            FeeView feeView2 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView2, "feeView");
            ViewExtKt.gone$default(feeView2, false, 1, null);
        } else if (state instanceof SwapUiState.Idle) {
            TransactionActionButtonsView viewActionButtons5 = binding.viewActionButtons;
            Intrinsics.checkNotNullExpressionValue(viewActionButtons5, "viewActionButtons");
            viewActionButtons5.setupViewData(getResourceManager().getString(C3632R.string.wallet_swap_process_button_exchange), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0 ? false : false, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TransactionActionButtonsView.setupViewData$lambda$0();
                }
            } : null, (r14 & 32) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda2
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
            FeeView feeView3 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView3, "feeView");
            ViewExtKt.gone$default(feeView3, false, 1, null);
            AppCompatEditText editOutputAmount = binding.editOutputAmount;
            Intrinsics.checkNotNullExpressionValue(editOutputAmount, "editOutputAmount");
            ViewExtKt.clearText(editOutputAmount);
            AppCompatTextView textOutputFiat = binding.textOutputFiat;
            Intrinsics.checkNotNullExpressionValue(textOutputFiat, "textOutputFiat");
            ViewExtKt.clearText(textOutputFiat);
            AppCompatTextView textOutputRate = binding.textOutputRate;
            Intrinsics.checkNotNullExpressionValue(textOutputRate, "textOutputRate");
            ViewExtKt.clearText(textOutputRate);
            AppCompatTextView textInputFiat = binding.textInputFiat;
            Intrinsics.checkNotNullExpressionValue(textInputFiat, "textInputFiat");
            ViewExtKt.invisible(textInputFiat, this.screenType instanceof WalletSwapScreenType.Binance);
            SwapUiState.Idle idle = (SwapUiState.Idle) state;
            if (idle.isReset()) {
                if (idle.getKeepSide() != SwapSide.INPUT) {
                    AppCompatImageView imageInputToken = binding.imageInputToken;
                    Intrinsics.checkNotNullExpressionValue(imageInputToken, "imageInputToken");
                    ViewExtKt.gone$default(imageInputToken, false, 1, null);
                    binding.textInputToken.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_select_token_header));
                    AppCompatEditText renderState$lambda$20$lambda$19 = binding.editInputAmount;
                    Intrinsics.checkNotNullExpressionValue(renderState$lambda$20$lambda$19, "renderState$lambda$20$lambda$19");
                    ViewExtKt.clearText(renderState$lambda$20$lambda$19);
                    ViewExtKt.gone$default(renderState$lambda$20$lambda$19, false, 1, null);
                    AppCompatTextView textBalance = binding.textBalance;
                    Intrinsics.checkNotNullExpressionValue(textBalance, "textBalance");
                    ViewExtKt.clearText(textBalance);
                    AppCompatTextView textInputFiat2 = binding.textInputFiat;
                    Intrinsics.checkNotNullExpressionValue(textInputFiat2, "textInputFiat");
                    ViewExtKt.clearText(textInputFiat2);
                }
                if (idle.getKeepSide() != SwapSide.OUTPUT) {
                    AppCompatImageView imageOutputToken = binding.imageOutputToken;
                    Intrinsics.checkNotNullExpressionValue(imageOutputToken, "imageOutputToken");
                    ViewExtKt.gone$default(imageOutputToken, false, 1, null);
                    binding.textOutputToken.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_select_token_header));
                    AppCompatEditText editOutputAmount2 = binding.editOutputAmount;
                    Intrinsics.checkNotNullExpressionValue(editOutputAmount2, "editOutputAmount");
                    ViewExtKt.gone$default(editOutputAmount2, false, 1, null);
                }
                if (idle.getKeepSide() == null) {
                    AppCompatImageView imageSwapTokensPositions = binding.imageSwapTokensPositions;
                    Intrinsics.checkNotNullExpressionValue(imageSwapTokensPositions, "imageSwapTokensPositions");
                    ViewExtKt.setEnabledWithAlpha(imageSwapTokensPositions, false);
                }
                if (this.screenType instanceof WalletSwapScreenType.Binance) {
                    AppCompatTextView textInputAdditionalDescription = binding.textInputAdditionalDescription;
                    Intrinsics.checkNotNullExpressionValue(textInputAdditionalDescription, "textInputAdditionalDescription");
                    ViewExtKt.invisible$default(textInputAdditionalDescription, false, 1, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$12(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onApproveClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$13(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onApprovalInfoClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$16(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().startSwapFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$20$lambda$18(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onApprovalInfoClick();
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showNotEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        tokenBuyCoordinator.showNoEnoughMoneyDialog(parentLayout, args);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showCommonErrorDialog(String errorText) {
        Intrinsics.checkNotNullParameter(errorText, "errorText");
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3632R.string.common_error), errorText, getResourceManager().getString(C3632R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessSwapAlert() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3632R.string.wallet_swap_process_swap_success_title), getResourceManager().getString(C3632R.string.wallet_swap_process_swap_success_description), null, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment.showSuccessSwapAlert$lambda$21(WalletSwapProcessFragment.this);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSuccessSwapAlert$lambda$21(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessApproveAlert() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3632R.string.wallet_swap_process_approve_success_title), getResourceManager().getString(C3632R.string.wallet_swap_process_approve_success_description), null, null, 12, null);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showApprovalInfoDialog(String title, String description) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        showDialog(DialogsFactoryKt.createDialogInfoWithAnimation$default(this, 0, title, description, 0, null, null, 57, null));
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showApprovalConfirmationDialog(DialogModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment.showApprovalConfirmationDialog$lambda$22(WalletSwapProcessFragment.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showApprovalConfirmationDialog$lambda$22(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().approve();
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void openSwapFeeScreen(SwapFeeScreenArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        presentFragment(WalletSwapFeeFragment.Companion.newInstance(args, new Function1<SwapFeeScreenArgs, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$openSwapFeeScreen$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SwapFeeScreenArgs swapFeeScreenArgs) {
                invoke2(swapFeeScreenArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(SwapFeeScreenArgs it) {
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.processSwapFee(it);
            }
        }));
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showMinMaxInputValues(TokenDetailed token, OutputConvertToken information) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(information, "information");
        AppCompatTextView showMinMaxInputValues$lambda$23 = getBinding().textInputAdditionalDescription;
        Intrinsics.checkNotNullExpressionValue(showMinMaxInputValues$lambda$23, "showMinMaxInputValues$lambda$23");
        ViewExtKt.visible$default(showMinMaxInputValues$lambda$23, false, 1, null);
        ResourceManager resourceManager = getResourceManager();
        int i = C3632R.string.binance_convert_min_max_convert_value;
        Double valueOf = Double.valueOf(information.getMinLimit());
        TokenDetailed.Companion companion = TokenDetailed.Companion;
        showMinMaxInputValues$lambda$23.setText(resourceManager.getString(i, BalanceFormatter.format(valueOf, Integer.valueOf(companion.getBNB().getDecimals())), token.getTicker(), BalanceFormatter.format(Double.valueOf(information.getMaxLimit()), Integer.valueOf(companion.getBNB().getDecimals())), token.getTicker()));
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void openSelectTokenScreen(TokenDetailed tokenDetailed, SelectTokenScreenType selectTokensScreenType, String networkId, boolean z, final Function2<? super TokenDetailed, ? super FiatValue, Unit> action) {
        Intrinsics.checkNotNullParameter(selectTokensScreenType, "selectTokensScreenType");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(action, "action");
        presentFragment(WalletSelectTokenFragment.Companion.newInstance(selectTokensScreenType, tokenDetailed, networkId, z, new Callbacks$Callback2() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                WalletSwapProcessFragment.openSelectTokenScreen$lambda$24(Function2.this, (TokenDetailed) obj, (FiatValue) obj2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openSelectTokenScreen$lambda$24(Function2 action, TokenDetailed token, FiatValue fiatValue) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(token, "token");
        action.invoke(token, fiatValue);
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showSwapConfirmationDialog(DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createFormattedDialog$default(parentActivity, model, action, null, 8, null));
    }

    @Override // com.iMe.p030ui.wallet.swap.process.WalletSwapProcessView
    public void showChangeNetworkHint() {
        HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showChangeNetworkHint(parentLayout);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2) {
            getPresenter().showChangeNetworkHintIfNeeded();
        }
        super.onTransitionAnimationEnd(z, z2);
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                WalletSwapProcessPresenter presenter;
                if (i == -1) {
                    WalletSwapProcessFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.NETWORK_SWITCH) {
                    presenter = WalletSwapProcessFragment.this.getPresenter();
                    WalletSwapProcessPresenter.startChooseNetworkDialog$default(presenter, null, 1, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        List<View> listOf;
        List<AppCompatImageView> listOf2;
        List<AppCompatTextView> listOf3;
        List<AppCompatTextView> listOf4;
        List<LinearLayout> listOf5;
        setupErrorDependedColors$default(this, 0, 0, 3, null);
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.feeView.setupColors();
        binding.viewActionButtons.setupColors();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new View[]{binding.getRoot(), binding.viewDividerLeft, binding.viewDividerRight});
        for (View view : listOf) {
            view.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        }
        int i = Theme.key_windowBackgroundWhiteGrayText;
        AppCompatTextView textSwapProtocolDescription = binding.textSwapProtocolDescription;
        Intrinsics.checkNotNullExpressionValue(textSwapProtocolDescription, "textSwapProtocolDescription");
        AppCompatTextView textBalance = binding.textBalance;
        Intrinsics.checkNotNullExpressionValue(textBalance, "textBalance");
        AppCompatTextView textOutputRate = binding.textOutputRate;
        Intrinsics.checkNotNullExpressionValue(textOutputRate, "textOutputRate");
        AppCompatTextView textOutputFiat = binding.textOutputFiat;
        Intrinsics.checkNotNullExpressionValue(textOutputFiat, "textOutputFiat");
        AppCompatTextView textInputAdditionalDescription = binding.textInputAdditionalDescription;
        Intrinsics.checkNotNullExpressionValue(textInputAdditionalDescription, "textInputAdditionalDescription");
        ViewExtKt.setTextsColorKey(i, textSwapProtocolDescription, textBalance, textOutputRate, textOutputFiat, textInputAdditionalDescription);
        binding.linearContent.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatImageView[]{binding.imageInputArrow, binding.imageOutputArrow});
        for (AppCompatImageView setupColors$lambda$33$lambda$27 : listOf2) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$33$lambda$27, "setupColors$lambda$33$lambda$27");
            ImageViewExtKt.setImageColor(setupColors$lambda$33$lambda$27, getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        }
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textInputTitle, binding.textOutputTitle});
        for (AppCompatTextView setupColors$lambda$33$lambda$28 : listOf3) {
            setupColors$lambda$33$lambda$28.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$33$lambda$28, "setupColors$lambda$33$lambda$28");
            ViewExtKt.withMediumTypeface(setupColors$lambda$33$lambda$28);
        }
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textInputToken, binding.textOutputToken});
        for (AppCompatTextView setupColors$lambda$33$lambda$29 : listOf4) {
            setupColors$lambda$33$lambda$29.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$33$lambda$29, "setupColors$lambda$33$lambda$29");
            ViewExtKt.withMediumTypeface(setupColors$lambda$33$lambda$29);
        }
        AppCompatEditText setupColors$lambda$33$lambda$30 = binding.editOutputAmount;
        setupColors$lambda$33$lambda$30.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        setupColors$lambda$33$lambda$30.setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$33$lambda$30, "setupColors$lambda$33$lambda$30");
        ViewExtKt.withMediumTypeface(setupColors$lambda$33$lambda$30);
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new LinearLayout[]{binding.linearInputToken, binding.linearOutputToken});
        for (LinearLayout linearLayout : listOf5) {
            linearLayout.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m104dp(4), 0, Theme.getColor(Theme.key_listSelector)));
        }
        AppCompatImageView setupColors$lambda$33$lambda$32 = binding.imageSwapTokensPositions;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$33$lambda$32, "setupColors$lambda$33$lambda$32");
        ImageViewExtKt.setImageColor(setupColors$lambda$33$lambda$32, getThemedColor(Theme.key_windowBackgroundWhiteBlueIcon));
        setupColors$lambda$33$lambda$32.setForeground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 3));
    }

    static /* synthetic */ void setupErrorDependedColors$default(WalletSwapProcessFragment walletSwapProcessFragment, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = Theme.key_windowBackgroundWhiteGrayText;
        }
        if ((i3 & 2) != 0) {
            i2 = Theme.key_windowBackgroundWhiteBlackText;
        }
        walletSwapProcessFragment.setupErrorDependedColors(i, i2);
    }

    private final void setupErrorDependedColors(int i, int i2) {
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.textInputFiat.setTextColor(getThemedColor(i));
        AppCompatEditText setupErrorDependedColors$lambda$35$lambda$34 = binding.editInputAmount;
        setupErrorDependedColors$lambda$35$lambda$34.setTextColor(getThemedColor(i2));
        setupErrorDependedColors$lambda$35$lambda$34.setHintTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
        Intrinsics.checkNotNullExpressionValue(setupErrorDependedColors$lambda$35$lambda$34, "setupErrorDependedColors$lambda$35$lambda$34");
        ViewExtKt.withMediumTypeface(setupErrorDependedColors$lambda$35$lambda$34);
    }

    private final void setupViews() {
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.textInputTitle.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_from_title));
        binding.textOutputTitle.setText(getResourceManager().getString(C3632R.string.wallet_swap_process_to_title));
        AppCompatTextView appCompatTextView = binding.textInputToken;
        ResourceManager resourceManager = getResourceManager();
        int i = C3632R.string.wallet_swap_process_select_token_header;
        appCompatTextView.setText(resourceManager.getString(i));
        binding.textOutputToken.setText(getResourceManager().getString(i));
        AppCompatEditText appCompatEditText = binding.editInputAmount;
        appCompatEditText.setHint(SessionDescription.SUPPORTED_SDP_VERSION);
        appCompatEditText.setImeOptions(6);
        binding.editOutputAmount.setHint(SessionDescription.SUPPORTED_SDP_VERSION);
        if (this.screenType instanceof WalletSwapScreenType.Crypto) {
            AppCompatTextView textInputAdditionalDescription = binding.textInputAdditionalDescription;
            Intrinsics.checkNotNullExpressionValue(textInputAdditionalDescription, "textInputAdditionalDescription");
            ViewExtKt.gone$default(textInputAdditionalDescription, false, 1, null);
        }
    }

    private final void setupListeners() {
        final ForkFragmentWalletSwapProcessBinding binding = getBinding();
        AppCompatEditText setupListeners$lambda$41$lambda$40 = binding.editInputAmount;
        Intrinsics.checkNotNullExpressionValue(setupListeners$lambda$41$lambda$40, "setupListeners$lambda$41$lambda$40");
        setupListeners$lambda$41$lambda$40.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$lambda$41$lambda$40$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WalletSwapProcessPresenter presenter;
                presenter = WalletSwapProcessFragment.this.getPresenter();
                String obj = editable != null ? editable.toString() : null;
                if (obj == null) {
                    obj = "";
                }
                presenter.onAmountChanged(obj);
            }
        });
        ViewExtKt.onAction(setupListeners$lambda$41$lambda$40, 6, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment.setupListeners$lambda$41$lambda$40$lambda$39(ForkFragmentWalletSwapProcessBinding.this);
            }
        });
        LinearLayout linearInputToken = binding.linearInputToken;
        Intrinsics.checkNotNullExpressionValue(linearInputToken, "linearInputToken");
        ViewExtKt.safeThrottledClick$default(linearInputToken, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$2
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
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.startSelectTokenScreen(SwapSide.INPUT);
            }
        }, 1, null);
        LinearLayout linearOutputToken = binding.linearOutputToken;
        Intrinsics.checkNotNullExpressionValue(linearOutputToken, "linearOutputToken");
        ViewExtKt.safeThrottledClick$default(linearOutputToken, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$3
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
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.startSelectTokenScreen(SwapSide.OUTPUT);
            }
        }, 1, null);
        NetworkTypeView viewInputNetwork = binding.viewInputNetwork;
        Intrinsics.checkNotNullExpressionValue(viewInputNetwork, "viewInputNetwork");
        ViewExtKt.safeThrottledClick$default(viewInputNetwork, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$4
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
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.startChooseNetworkDialog(SwapSide.INPUT);
            }
        }, 1, null);
        NetworkTypeView viewOutputNetwork = binding.viewOutputNetwork;
        Intrinsics.checkNotNullExpressionValue(viewOutputNetwork, "viewOutputNetwork");
        ViewExtKt.safeThrottledClick$default(viewOutputNetwork, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$5
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
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.startChooseNetworkDialog(SwapSide.OUTPUT);
            }
        }, 1, null);
        AppCompatImageView imageSwapTokensPositions = binding.imageSwapTokensPositions;
        Intrinsics.checkNotNullExpressionValue(imageSwapTokensPositions, "imageSwapTokensPositions");
        ViewExtKt.safeThrottledClick$default(imageSwapTokensPositions, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$1$6
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
                WalletSwapProcessPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = WalletSwapProcessFragment.this.getPresenter();
                presenter.swapPositions();
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$41$lambda$40$lambda$39(ForkFragmentWalletSwapProcessBinding this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.viewActionButtons.performActionButtonClick();
    }

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletSwapProcessFragment newInstance(WalletSwapScreenType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new WalletSwapProcessFragment(type);
        }
    }
}
