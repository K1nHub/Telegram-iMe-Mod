package com.iMe.p031ui.wallet.swap.process;

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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.exoplayer2.C0475C;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.FeeView;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.p031ui.wallet.swap.fee.WalletSwapFeeFragment;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
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
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProcessBinding;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment extends WalletAuthFragment implements WalletSwapProcessView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapProcessFragment.class, "networkTypeView", "getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final ResettableLazy networkTypeView$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final ScreenType screenType;
    private CountDownTimer timer;
    private final Lazy tokenBuyCoordinator$delegate;

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$NetworkSwitchType */
    /* loaded from: classes4.dex */
    public enum NetworkSwitchType {
        GLOBAL,
        CROSS_CHAIN
    }

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

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
            int[] iArr2 = new int[NetworkSwitchType.values().length];
            try {
                iArr2[NetworkSwitchType.GLOBAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[NetworkSwitchType.CROSS_CHAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public static final WalletSwapProcessFragment newInstance(ScreenType screenType) {
        return Companion.newInstance(screenType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$22$lambda$19$lambda$18(View view) {
    }

    public final ScreenType getScreenType() {
        return this.screenType;
    }

    public WalletSwapProcessFragment(ScreenType screenType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        WalletSwapProcessFragment$presenter$2 walletSwapProcessFragment$presenter$2 = new WalletSwapProcessFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSwapProcessPresenter.class.getName() + ".presenter", walletSwapProcessFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletSwapProcessFragment$special$$inlined$inject$default$1(this, null, null));
        this.tokenBuyCoordinator$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletSwapProcessFragment$binding$2(this), 1, (Object) null);
        this.networkTypeView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletSwapProcessFragment$networkTypeView$2(this), 1, (Object) null);
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

    private final NetworkTypeView getNetworkTypeView() {
        return (NetworkTypeView) this.networkTypeView$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupTexts();
        getBinding().networkTypeInputView.setNetworkType(NetworkType.BINANCE_SMART_CHAIN);
        getBinding().networkTypeOutputView.setNetworkType(NetworkType.POLYGON);
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda10
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSwapProcessFragment.getThemeDescriptions$lambda$0(WalletSwapProcessFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> availableNetworks, final Function1<? super NetworkType, Unit> action) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogsFactoryKt.createSelectNetworkTypeDialog(parentActivity, availableNetworks, networkType, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSwapProcessFragment.showChooseNetworkDialog$lambda$1(Function1.this, (NetworkType) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$1(Function1 action, NetworkType selectedNetworkType) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(selectedNetworkType, "selectedNetworkType");
        action.invoke(selectedNetworkType);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void setupNetworkType(NetworkType networkType, SwapSide side) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(side, "side");
        int i = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
        if (i == 1) {
            getNetworkTypeView().setNetworkType(networkType);
            getBinding().networkTypeInputView.setNetworkType(networkType);
        } else if (i != 2) {
        } else {
            getBinding().networkTypeOutputView.setNetworkType(networkType);
        }
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void setupScreenForSwap(String title, String description, int i, boolean z, NetworkSwitchType networkSwitchType) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(networkSwitchType, "networkSwitchType");
        this.actionBar.setTitle(title);
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.textSwapProtocolDescription.setText(description);
        binding.imageSwapProtocolIcon.setImageResource(i);
        int i2 = WhenMappings.$EnumSwitchMapping$1[networkSwitchType.ordinal()];
        if (i2 == 1) {
            getNetworkTypeView().setVisibility(z ? 0 : 8);
            ActionBarMenuItem item = this.actionBar.menu.getItem(IdFabric$Menu.NETWORK_SWITCH);
            if (item == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue(item, "getItem(IdFabric.Menu.NETWORK_SWITCH)");
            item.setVisibility(z ? 0 : 8);
        } else if (i2 != 2) {
        } else {
            NetworkTypeView networkTypeOutputView = binding.networkTypeOutputView;
            Intrinsics.checkNotNullExpressionValue(networkTypeOutputView, "networkTypeOutputView");
            networkTypeOutputView.setVisibility(z ? 0 : 8);
            NetworkTypeView networkTypeInputView = binding.networkTypeInputView;
            Intrinsics.checkNotNullExpressionValue(networkTypeInputView, "networkTypeInputView");
            networkTypeInputView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void onTokenSelected(SwapSide side, SelectableToken token, int i, int i2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(side, "side");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        int i3 = WhenMappings.$EnumSwitchMapping$0[side.ordinal()];
        if (i3 == 1) {
            LinearLayout linearChooseFrom = binding.linearChooseFrom;
            Intrinsics.checkNotNullExpressionValue(linearChooseFrom, "linearChooseFrom");
            ViewExtKt.gone$default(linearChooseFrom, false, 1, null);
            AppCompatEditText onTokenSelected$lambda$5$lambda$3 = binding.editFromAmount;
            Intrinsics.checkNotNullExpressionValue(onTokenSelected$lambda$5$lambda$3, "onTokenSelected$lambda$5$lambda$3");
            ViewExtKt.limitInputLength(onTokenSelected$lambda$5$lambda$3, i, i2);
            ViewExtKt.setAllowDecimals(onTokenSelected$lambda$5$lambda$3, true);
            onTokenSelected$lambda$5$lambda$3.setHint(getResourceManager().getString(C3290R.string.wallet_amount_input_hint, token.getTicker()));
            AppCompatImageView imageTokenFrom = binding.imageTokenFrom;
            Intrinsics.checkNotNullExpressionValue(imageTokenFrom, "imageTokenFrom");
            ViewExtKt.loadImage(imageTokenFrom, token);
            Group groupFromSelectedToken = binding.groupFromSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupFromSelectedToken, "groupFromSelectedToken");
            ViewExtKt.visible$default(groupFromSelectedToken, false, 1, null);
        } else if (i3 != 2) {
        } else {
            LinearLayout linearChooseTo = binding.linearChooseTo;
            Intrinsics.checkNotNullExpressionValue(linearChooseTo, "linearChooseTo");
            ViewExtKt.gone$default(linearChooseTo, false, 1, null);
            AppCompatEditText onTokenSelected$lambda$5$lambda$4 = binding.editToAmount;
            Intrinsics.checkNotNullExpressionValue(onTokenSelected$lambda$5$lambda$4, "onTokenSelected$lambda$5$lambda$4");
            ViewExtKt.limitInputLength(onTokenSelected$lambda$5$lambda$4, i, i2);
            ViewExtKt.setAllowDecimals(onTokenSelected$lambda$5$lambda$4, true);
            onTokenSelected$lambda$5$lambda$4.setText(token.getTicker());
            AppCompatImageView imageTokenTo = binding.imageTokenTo;
            Intrinsics.checkNotNullExpressionValue(imageTokenTo, "imageTokenTo");
            ViewExtKt.loadImage(imageTokenTo, token);
            Group groupToSelectedToken = binding.groupToSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupToSelectedToken, "groupToSelectedToken");
            ViewExtKt.visible$default(groupToSelectedToken, false, 1, null);
        }
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showTokenBalance(String balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        getBinding().textFromDescription.setText(balance);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void renderState(SwapUiState state) {
        String string;
        Intrinsics.checkNotNullParameter(state, "state");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        if (state instanceof SwapUiState.NeedApprove) {
            ActionButton actionButton = binding.buttonAction;
            actionButton.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_button_approve));
            actionButton.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletSwapProcessFragment.renderState$lambda$22$lambda$8$lambda$7(WalletSwapProcessFragment.this, view);
                }
            });
            SwapUiState.NeedApprove needApprove = (SwapUiState.NeedApprove) state;
            SelectableToken token = needApprove.getToken();
            binding.editToAmount.setText(token != null ? token.getTicker() : null);
            binding.textToDescription.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_to_description));
            binding.feeView.init(this, needApprove.getChooseFeeType());
            FeeView feeView = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView, "feeView");
            ViewExtKt.visible$default(feeView, false, 1, null);
            AppCompatTextView textWhatIsApprove = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove, "textWhatIsApprove");
            ViewExtKt.visible$default(textWhatIsApprove, false, 1, null);
        } else if (state instanceof SwapUiState.PrepareSwap) {
            ActionButton actionButton2 = binding.buttonAction;
            ScreenType screenType = this.screenType;
            if (screenType instanceof ScreenType.Binance) {
                string = getResourceManager().getString(C3290R.string.binance_convert_button_calculate);
            } else if (!(screenType instanceof ScreenType.Crypto)) {
                throw new NoWhenBranchMatchedException();
            } else {
                string = getResourceManager().getString(C3290R.string.wallet_swap_process_button_calculate);
            }
            actionButton2.setText(string);
            actionButton2.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletSwapProcessFragment.renderState$lambda$22$lambda$11$lambda$10(WalletSwapProcessFragment.this, view);
                }
            });
            SelectableToken token2 = ((SwapUiState.PrepareSwap) state).getToken();
            binding.editToAmount.setText(token2 != null ? token2.getTicker() : null);
            binding.textToDescription.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_to_description));
            FeeView feeView2 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView2, "feeView");
            ViewExtKt.gone$default(feeView2, false, 1, null);
            AppCompatTextView textWhatIsApprove2 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove2, "textWhatIsApprove");
            ViewExtKt.gone$default(textWhatIsApprove2, false, 1, null);
        } else if (state instanceof SwapUiState.Swap) {
            AppCompatTextView textWhatIsApprove3 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove3, "textWhatIsApprove");
            ViewExtKt.gone$default(textWhatIsApprove3, false, 1, null);
            SwapUiState.Swap swap = (SwapUiState.Swap) state;
            if (swap instanceof SwapUiState.Swap.Binance) {
                SwapUiState.Swap.Binance binance = (SwapUiState.Swap.Binance) state;
                double outputAmount = binance.getQuote().getOutputAmount() / binance.getQuote().getInputAmount();
                AppCompatTextView appCompatTextView = binding.textToDescription;
                ResourceManager resourceManager = getResourceManager();
                int i = C3290R.string.wallet_swap_process_fee_price_value;
                Float valueOf = Float.valueOf(1.0f);
                TokenInfo.Crypto.Ethereum.BNB bnb = TokenInfo.Crypto.Ethereum.BNB.INSTANCE;
                appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.formatBalance(valueOf, bnb.getDecimals()), binance.getQuote().getInputTokenShortName(), BalanceFormatter.formatBalance(Double.valueOf(outputAmount), bnb.getDecimals()), binance.getQuote().getOutputTokenShortName()));
                AppCompatEditText appCompatEditText = binding.editToAmount;
                appCompatEditText.setText(BalanceFormatter.formatBalance(Double.valueOf(binance.getQuote().getOutputAmount()), bnb.getDecimals()) + ' ' + binance.getQuote().getOutputToken());
                final ActionButton actionButton3 = binding.buttonAction;
                CountDownTimer countDownTimer = new CountDownTimer() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$renderState$1$5$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(C0475C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, 1000L);
                    }

                    @Override // android.os.CountDownTimer
                    public void onTick(long j) {
                        ResourceManager resourceManager2;
                        ActionButton actionButton4 = ActionButton.this;
                        StringBuilder sb = new StringBuilder();
                        resourceManager2 = this.getResourceManager();
                        sb.append(resourceManager2.getString(C3290R.string.wallet_swap_process_button_exchange));
                        sb.append(" (");
                        sb.append((j + 1000) / 1000);
                        sb.append(')');
                        actionButton4.setText(sb.toString());
                    }

                    @Override // android.os.CountDownTimer
                    public void onFinish() {
                        WalletSwapProcessPresenter presenter;
                        presenter = this.getPresenter();
                        presenter.resetStateIfNeed();
                    }
                };
                this.timer = countDownTimer;
                countDownTimer.start();
                actionButton3.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_button_exchange));
                actionButton3.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WalletSwapProcessFragment.renderState$lambda$22$lambda$14$lambda$13(WalletSwapProcessFragment.this, view);
                    }
                });
            } else if (swap instanceof SwapUiState.Swap.Crypto) {
                ActionButton actionButton4 = binding.buttonAction;
                actionButton4.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_button_exchange));
                actionButton4.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WalletSwapProcessFragment.renderState$lambda$22$lambda$16$lambda$15(WalletSwapProcessFragment.this, view);
                    }
                });
                FeeView renderState$lambda$22$lambda$17 = binding.feeView;
                SwapUiState.Swap.Crypto crypto = (SwapUiState.Swap.Crypto) state;
                renderState$lambda$22$lambda$17.init(this, crypto.getChooseFeeType());
                Intrinsics.checkNotNullExpressionValue(renderState$lambda$22$lambda$17, "renderState$lambda$22$lambda$17");
                ViewExtKt.visible$default(renderState$lambda$22$lambda$17, false, 1, null);
                binding.textToDescription.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_fee_price_value, BalanceFormatter.formatBalance(Float.valueOf(1.0f), crypto.getMetadata().getInputTokenInfo().getDecimals()), getResourceManager().getString(crypto.getMetadata().getInputTokenInfo().getShortName()), BalanceFormatter.formatBalance(crypto.getMetadata().getExecutionPrice(), crypto.getMetadata().getOutputTokenInfo().getDecimals()), getResourceManager().getString(crypto.getMetadata().getOutputTokenInfo().getShortName())));
                AppCompatEditText appCompatEditText2 = binding.editToAmount;
                appCompatEditText2.setText(BalanceFormatter.formatBalance(crypto.getMetadata().getAmountOut(), crypto.getMetadata().getOutputTokenInfo().getDecimals()) + ' ' + getResourceManager().getString(crypto.getMetadata().getOutputTokenInfo().getShortName()));
            }
        } else if (state instanceof SwapUiState.ApproveInProgress) {
            ActionButton actionButton5 = binding.buttonAction;
            actionButton5.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_button_approving));
            actionButton5.setOnClickListener(WalletSwapProcessFragment$$ExternalSyntheticLambda5.INSTANCE);
            FeeView feeView3 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView3, "feeView");
            ViewExtKt.gone$default(feeView3, false, 1, null);
            AppCompatTextView textWhatIsApprove4 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove4, "textWhatIsApprove");
            ViewExtKt.visible$default(textWhatIsApprove4, false, 1, null);
        } else if (state instanceof SwapUiState.Idle) {
            ActionButton actionButton6 = binding.buttonAction;
            actionButton6.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_button_calculate));
            actionButton6.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WalletSwapProcessFragment.renderState$lambda$22$lambda$21$lambda$20(WalletSwapProcessFragment.this, view);
                }
            });
            AppCompatEditText editFromAmount = binding.editFromAmount;
            Intrinsics.checkNotNullExpressionValue(editFromAmount, "editFromAmount");
            ViewExtKt.clearText(editFromAmount);
            AppCompatEditText editToAmount = binding.editToAmount;
            Intrinsics.checkNotNullExpressionValue(editToAmount, "editToAmount");
            ViewExtKt.clearText(editToAmount);
            binding.textFromDescription.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_from_description));
            binding.textToDescription.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_to_description));
            FeeView feeView4 = binding.feeView;
            Intrinsics.checkNotNullExpressionValue(feeView4, "feeView");
            ViewExtKt.gone$default(feeView4, false, 1, null);
            LinearLayout linearChooseTo = binding.linearChooseTo;
            Intrinsics.checkNotNullExpressionValue(linearChooseTo, "linearChooseTo");
            ViewExtKt.visible$default(linearChooseTo, false, 1, null);
            AppCompatTextView textWhatIsApprove5 = binding.textWhatIsApprove;
            Intrinsics.checkNotNullExpressionValue(textWhatIsApprove5, "textWhatIsApprove");
            ViewExtKt.gone$default(textWhatIsApprove5, false, 1, null);
            LinearLayout linearChooseFrom = binding.linearChooseFrom;
            Intrinsics.checkNotNullExpressionValue(linearChooseFrom, "linearChooseFrom");
            ViewExtKt.visible$default(linearChooseFrom, false, 1, null);
            Group groupFromSelectedToken = binding.groupFromSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupFromSelectedToken, "groupFromSelectedToken");
            ViewExtKt.gone$default(groupFromSelectedToken, false, 1, null);
            Group groupToSelectedToken = binding.groupToSelectedToken;
            Intrinsics.checkNotNullExpressionValue(groupToSelectedToken, "groupToSelectedToken");
            ViewExtKt.gone$default(groupToSelectedToken, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$22$lambda$8$lambda$7(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showApproveConfirmationDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$22$lambda$11$lambda$10(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().prepareForSwap(String.valueOf(this$0.getBinding().editFromAmount.getText()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$22$lambda$14$lambda$13(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().startSwapFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$22$lambda$16$lambda$15(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().startSwapFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderState$lambda$22$lambda$21$lambda$20(WalletSwapProcessFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().prepareForSwap(String.valueOf(this$0.getBinding().editFromAmount.getText()));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showNotEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        tokenBuyCoordinator.showNoEnoughMoneyDialog(parentLayout, args);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showNotEnoughMoneyBinanceErrorDialog() {
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3290R.string.wallet_common_error_not_enough_money_title), getResourceManager().getString(C3290R.string.binance_convert_not_enough_money_error_description), getResourceManager().getString(C3290R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessSwapAlert() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3290R.string.wallet_swap_process_swap_success_title), getResourceManager().getString(C3290R.string.wallet_swap_process_swap_success_description), null, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment.showSuccessSwapAlert$lambda$23(WalletSwapProcessFragment.this);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSuccessSwapAlert$lambda$23(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessApproveAlert() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3290R.string.wallet_swap_process_approve_success_title), getResourceManager().getString(C3290R.string.wallet_swap_process_approve_success_description), null, null, 12, null);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void openSwapFeeScreen(SwapFeeScreenArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        presentFragment(WalletSwapFeeFragment.Companion.newInstance(args, new WalletSwapProcessFragment$openSwapFeeScreen$1(this)));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showMinMaxInputValues(SelectableToken token, OutputConvertToken information) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(information, "information");
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        AppCompatTextView textFromAdditionalDescription = binding.textFromAdditionalDescription;
        Intrinsics.checkNotNullExpressionValue(textFromAdditionalDescription, "textFromAdditionalDescription");
        ViewExtKt.visible$default(textFromAdditionalDescription, false, 1, null);
        AppCompatTextView appCompatTextView = binding.textFromAdditionalDescription;
        ResourceManager resourceManager = getResourceManager();
        int i = C3290R.string.binance_convert_min_max_convert_value;
        Double valueOf = Double.valueOf(information.getMinLimit());
        TokenInfo.Crypto.Ethereum.BNB bnb = TokenInfo.Crypto.Ethereum.BNB.INSTANCE;
        appCompatTextView.setText(resourceManager.getString(i, BalanceFormatter.formatBalance(valueOf, bnb.getDecimals()), token.getTicker(), BalanceFormatter.formatBalance(Double.valueOf(information.getMaxLimit()), bnb.getDecimals()), token.getTicker()));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void openSelectTokenDialog(SwapSide side, SelectableToken selectableToken, List<? extends SelectableToken> tokens, NetworkType networkType, SelectableType type, boolean z, final Function1<? super SelectableToken, Unit> action) {
        Intrinsics.checkNotNullParameter(side, "side");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(action, "action");
        presentFragment(WalletSelectTokenFragment.Companion.newInstance(type, selectableToken, tokens, networkType, z, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletSwapProcessFragment.openSelectTokenDialog$lambda$25(Function1.this, (SelectableToken) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openSelectTokenDialog$lambda$25(Function1 action, SelectableToken token) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(token, "token");
        action.invoke(token);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSwapConfirmationDialog(DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, model, action, null, 8, null));
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showChangeNetworkHint() {
        HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showChangeNetworkHint(parentLayout);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2) {
            getPresenter().showChangeNetworkHintIfNeeded();
        }
        super.onTransitionAnimationEnd(z, z2);
    }

    private final void setupActionBar() {
        C3356ActionBar c3356ActionBar = this.actionBar;
        c3356ActionBar.setBackButtonImage(C3290R.C3292drawable.ic_ab_back);
        c3356ActionBar.setAllowOverlayTitle(true);
        c3356ActionBar.createMenu();
        c3356ActionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupActionBar$1$1
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
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
        ActionBarMenuItem setupActionBar$lambda$28$lambda$27$lambda$26 = c3356ActionBar.createMenu().addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$28$lambda$27$lambda$26, "setupActionBar$lambda$28$lambda$27$lambda$26");
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$28$lambda$27$lambda$26, AndroidUtilities.m54dp(14));
        setupActionBar$lambda$28$lambda$27$lambda$26.addView(getNetworkTypeView(), LayoutHelper.createFrame(-2, -2, 8388629));
    }

    private final void setupColors() {
        List<ConstraintLayout> listOf;
        List<AppCompatTextView> listOf2;
        List<AppCompatTextView> listOf3;
        List<ConstraintLayout> listOf4;
        List<AppCompatImageView> listOf5;
        List<AppCompatTextView> listOf6;
        List<AppCompatTextView> listOf7;
        List<AppCompatEditText> listOf8;
        List<LinearLayout> listOf9;
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.feeView.setupColors();
        binding.buttonAction.applyColors();
        AppCompatImageView imageExchangeArrow = binding.imageExchangeArrow;
        Intrinsics.checkNotNullExpressionValue(imageExchangeArrow, "imageExchangeArrow");
        ViewExtKt.setImageColor(imageExchangeArrow, Theme.getColor(Theme.key_windowBackgroundWhiteGrayText5));
        listOf = CollectionsKt__CollectionsJVMKt.listOf(binding.getRoot());
        for (ConstraintLayout constraintLayout : listOf) {
            constraintLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        }
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textSwapProtocolDescription, binding.textToDescription, binding.textFromDescription, binding.textWhatIsApprove, binding.textFromAdditionalDescription});
        for (AppCompatTextView appCompatTextView : listOf2) {
            appCompatTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
        }
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textToDescription, binding.textFromDescription});
        for (AppCompatTextView setupColors$lambda$38$lambda$31 : listOf3) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$38$lambda$31, "setupColors$lambda$38$lambda$31");
            ViewExtKt.setGreyShadowBackground$default(setupColors$lambda$38$lambda$31, false, 1, null);
        }
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new ConstraintLayout[]{binding.constraintFromToken, binding.constraintToToken});
        for (ConstraintLayout constraintLayout2 : listOf4) {
            constraintLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatImageView[]{binding.imageFromIcon, binding.imageToIcon});
        for (AppCompatImageView setupColors$lambda$38$lambda$33 : listOf5) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$38$lambda$33, "setupColors$lambda$38$lambda$33");
            ViewExtKt.setImageColor(setupColors$lambda$38$lambda$33, Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        }
        listOf6 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textSelectFromToken, binding.textSelectToToken, binding.textToToken, binding.textFromToken});
        for (AppCompatTextView appCompatTextView2 : listOf6) {
            appCompatTextView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader));
        }
        listOf7 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatTextView[]{binding.textToToken, binding.textFromToken});
        for (AppCompatTextView setupColors$lambda$38$lambda$35 : listOf7) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$38$lambda$35, "setupColors$lambda$38$lambda$35");
            ViewExtKt.withMediumTypeface(setupColors$lambda$38$lambda$35);
        }
        listOf8 = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatEditText[]{binding.editFromAmount, binding.editToAmount});
        for (AppCompatEditText appCompatEditText : listOf8) {
            appCompatEditText.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
            appCompatEditText.setTextColor(Theme.getColor(Theme.key_chat_messagePanelText));
        }
        listOf9 = CollectionsKt__CollectionsKt.listOf((Object[]) new LinearLayout[]{binding.linearChooseTo, binding.linearChooseFrom});
        for (LinearLayout setupColors$lambda$38$lambda$37 : listOf9) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$38$lambda$37, "setupColors$lambda$38$lambda$37");
            ViewExtKt.setRippleForeground$default(setupColors$lambda$38$lambda$37, false, 1, null);
        }
    }

    private final void setupTexts() {
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        binding.textToDescription.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_to_description));
        binding.textFromDescription.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_from_description));
        AppCompatTextView appCompatTextView = binding.textSelectFromToken;
        ResourceManager resourceManager = getResourceManager();
        int i = C3290R.string.wallet_swap_process_select_placeholder;
        appCompatTextView.setText(resourceManager.getString(i));
        binding.textSelectToToken.setText(getResourceManager().getString(i));
        binding.textToToken.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_to_title));
        binding.textFromToken.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_from_title));
        binding.buttonAction.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_button_calculate));
        binding.textWhatIsApprove.setText(getResourceManager().getString(C3290R.string.wallet_swap_process_what_is_approve));
    }

    private final void setupListeners() {
        List<View> listOf;
        List<View> listOf2;
        ForkFragmentWalletSwapProcessBinding binding = getBinding();
        AppCompatEditText editFromAmount = binding.editFromAmount;
        Intrinsics.checkNotNullExpressionValue(editFromAmount, "editFromAmount");
        editFromAmount.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$setupListeners$lambda$43$$inlined$doAfterTextChanged$1
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
                presenter.resetStateIfNeed();
            }
        });
        LinearLayout linearChooseFrom = binding.linearChooseFrom;
        Intrinsics.checkNotNullExpressionValue(linearChooseFrom, "linearChooseFrom");
        AppCompatImageView imageTokenFrom = binding.imageTokenFrom;
        Intrinsics.checkNotNullExpressionValue(imageTokenFrom, "imageTokenFrom");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new View[]{linearChooseFrom, imageTokenFrom});
        for (View view : listOf) {
            ViewExtKt.safeThrottledClick$default(view, 0L, new WalletSwapProcessFragment$setupListeners$1$2$1(this), 1, null);
        }
        LinearLayout linearChooseTo = binding.linearChooseTo;
        Intrinsics.checkNotNullExpressionValue(linearChooseTo, "linearChooseTo");
        AppCompatImageView imageTokenTo = binding.imageTokenTo;
        Intrinsics.checkNotNullExpressionValue(imageTokenTo, "imageTokenTo");
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new View[]{linearChooseTo, imageTokenTo});
        for (View view2 : listOf2) {
            ViewExtKt.safeThrottledClick$default(view2, 0L, new WalletSwapProcessFragment$setupListeners$1$3$1(this), 1, null);
        }
        NetworkTypeView networkTypeInputView = binding.networkTypeInputView;
        Intrinsics.checkNotNullExpressionValue(networkTypeInputView, "networkTypeInputView");
        ViewExtKt.safeThrottledClick$default(networkTypeInputView, 0L, new WalletSwapProcessFragment$setupListeners$1$4(this), 1, null);
        NetworkTypeView networkTypeOutputView = binding.networkTypeOutputView;
        Intrinsics.checkNotNullExpressionValue(networkTypeOutputView, "networkTypeOutputView");
        ViewExtKt.safeThrottledClick$default(networkTypeOutputView, 0L, new WalletSwapProcessFragment$setupListeners$1$5(this), 1, null);
        AppCompatTextView textWhatIsApprove = binding.textWhatIsApprove;
        Intrinsics.checkNotNullExpressionValue(textWhatIsApprove, "textWhatIsApprove");
        ViewExtKt.safeThrottledClick$default(textWhatIsApprove, 0L, new WalletSwapProcessFragment$setupListeners$1$6(this), 1, null);
    }

    private final void showApproveConfirmationDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, getPresenter().getApproveConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment.showApproveConfirmationDialog$lambda$44(WalletSwapProcessFragment.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showApproveConfirmationDialog$lambda$44(WalletSwapProcessFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().approve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openApproveDescriptionDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, getPresenter().getApproveTokenDescriptionModel(), null, null, 12, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworkTypeView initGlobalNetworkView() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        NetworkTypeView networkTypeView = new NetworkTypeView(parentActivity, null, 0, 6, null);
        networkTypeView.setVisibility(8);
        return networkTypeView;
    }

    /* compiled from: WalletSwapProcessFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$ScreenType */
    /* loaded from: classes4.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: WalletSwapProcessFragment.kt */
        /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$ScreenType$Crypto */
        /* loaded from: classes4.dex */
        public static final class Crypto extends ScreenType {
            private final NetworkType forcedNetworkType;
            private final TokenCode fromToken;
            private final SwapProtocol swapProtocol;
            private final SwapProtocolInfo swapProtocolInfo;
            private final TokenCode toToken;

            public /* synthetic */ Crypto(SwapProtocol swapProtocol, TokenCode tokenCode, TokenCode tokenCode2, NetworkType networkType, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(swapProtocol, (i & 2) != 0 ? null : tokenCode, (i & 4) != 0 ? null : tokenCode2, (i & 8) != 0 ? null : networkType);
            }

            public final SwapProtocol getSwapProtocol() {
                return this.swapProtocol;
            }

            public final TokenCode getFromToken() {
                return this.fromToken;
            }

            public final TokenCode getToToken() {
                return this.toToken;
            }

            public final NetworkType getForcedNetworkType() {
                return this.forcedNetworkType;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Crypto(SwapProtocol swapProtocol, TokenCode tokenCode, TokenCode tokenCode2, NetworkType networkType) {
                super(null);
                Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
                this.swapProtocol = swapProtocol;
                this.fromToken = tokenCode;
                this.toToken = tokenCode2;
                this.forcedNetworkType = networkType;
                this.swapProtocolInfo = SwapProtocolInfo.Companion.map(swapProtocol);
            }

            public final SwapProtocolInfo getSwapProtocolInfo() {
                return this.swapProtocolInfo;
            }
        }

        private ScreenType() {
        }

        /* compiled from: WalletSwapProcessFragment.kt */
        /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$ScreenType$Binance */
        /* loaded from: classes4.dex */
        public static final class Binance extends ScreenType {
            private final SelectableToken fromToken;
            private final SelectableToken toToken;

            public Binance() {
                this(null, null, 3, null);
            }

            public /* synthetic */ Binance(SelectableToken selectableToken, SelectableToken selectableToken2, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? null : selectableToken, (i & 2) != 0 ? null : selectableToken2);
            }

            public final SelectableToken getFromToken() {
                return this.fromToken;
            }

            public final SelectableToken getToToken() {
                return this.toToken;
            }

            public Binance(SelectableToken selectableToken, SelectableToken selectableToken2) {
                super(null);
                this.fromToken = selectableToken;
                this.toToken = selectableToken2;
            }
        }
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

        public final WalletSwapProcessFragment newInstance(ScreenType type) {
            Intrinsics.checkNotNullParameter(type, "type");
            return new WalletSwapProcessFragment(type);
        }
    }
}
