package com.iMe.p030ui.wallet.staking.transaction;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.staking.StakingScreenType;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.StakingPercentageView;
import com.iMe.p030ui.custom.StakingSafeWithdrawalView;
import com.iMe.p030ui.custom.StakingWithdrawalFeeView;
import com.iMe.p030ui.custom.TitledInputFieldView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import com.iMe.p030ui.wallet.staking.conditions.StakingConditionsBottomSheetDialog;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentStakingTransactionBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LinkActionView;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: StakingTransactionFragment.kt */
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment */
/* loaded from: classes4.dex */
public final class StakingTransactionFragment extends WalletAuthBaseFragment implements StakingTransactionView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(StakingTransactionFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(StakingTransactionFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingTransactionBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final int inputFieldHeight;
    private final MoxyKtxDelegate presenter$delegate;
    private final StakingScreenType screenType;
    private final StakingDetailsItem stakingDetails;
    private final Lazy tokenBuyCoordinator$delegate;

    public static final StakingTransactionFragment newInstance(Double d, StakingScreenType stakingScreenType, StakingDetailsItem stakingDetailsItem) {
        return Companion.newInstance(d, stakingScreenType, stakingDetailsItem);
    }

    public StakingTransactionFragment(final Double d, StakingScreenType screenType, StakingDetailsItem stakingDetailsItem) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        this.stakingDetails = stakingDetailsItem;
        Function0<StakingTransactionPresenter> function0 = new Function0<StakingTransactionPresenter>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StakingTransactionPresenter invoke() {
                Lazy lazy2;
                final StakingTransactionFragment stakingTransactionFragment = StakingTransactionFragment.this;
                final Double d2 = d;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$presenter$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        StakingScreenType stakingScreenType;
                        StakingDetailsItem stakingDetailsItem2;
                        stakingScreenType = stakingTransactionFragment.screenType;
                        stakingDetailsItem2 = stakingTransactionFragment.stakingDetails;
                        return ParametersHolderKt.parametersOf(d2, stakingScreenType, stakingDetailsItem2);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<StakingTransactionPresenter>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.staking.transaction.StakingTransactionPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final StakingTransactionPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(StakingTransactionPresenter.class), qualifier, function03);
                    }
                });
                return (StakingTransactionPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, StakingTransactionPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TokenBuyCoordinator>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$special$$inlined$inject$default$1
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
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentStakingTransactionBinding>() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentStakingTransactionBinding invoke() {
                return ForkFragmentStakingTransactionBinding.inflate(BaseFragmentExtKt.getLayoutInflater(StakingTransactionFragment.this));
            }
        }, 1, (Object) null);
        this.inputFieldHeight = ViewExtKt.getDpToPx(52);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StakingTransactionPresenter getPresenter() {
        return (StakingTransactionPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TokenBuyCoordinator getTokenBuyCoordinator() {
        return (TokenBuyCoordinator) this.tokenBuyCoordinator$delegate.getValue();
    }

    private final ForkFragmentStakingTransactionBinding getBinding() {
        return (ForkFragmentStakingTransactionBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupViews();
        setupColors();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, Theme.key_windowBackgroundWhite));
        return arrayListOf;
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        showDialog(StakingConditionsBottomSheetDialog.Companion.newInstance(stakingDetails, this));
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        tokenBuyCoordinator.showNoEnoughMoneyDialog(parentLayout, args);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showActionSuccess(String title, String message) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showSuccessAlert$default(this, title, message, null, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionFragment.showActionSuccess$lambda$0(StakingTransactionFragment.this);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showActionSuccess$lambda$0(StakingTransactionFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showActionError$lambda$1(StakingTransactionFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showActionError(String title, String message) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showErrorAlert$default(this, title, message, null, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionFragment.showActionError$lambda$1(StakingTransactionFragment.this);
            }
        }, 4, null);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog(parentActivity, dialogModel, action, null));
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showBalance(String balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        getBinding().textBalance.setText(AndroidUtilities.replaceTags(balance));
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void setupAmountInputErrorState(boolean z, String errorText, String clickableText) {
        Intrinsics.checkNotNullParameter(errorText, "errorText");
        Intrinsics.checkNotNullParameter(clickableText, "clickableText");
        TitledInputFieldView titledInputFieldView = getBinding().inputAmount;
        titledInputFieldView.getInputView().setErrorState(z);
        View customView = titledInputFieldView.getCustomView();
        TextView textView = customView instanceof TextView ? (TextView) customView : null;
        if (textView != null) {
            if ((clickableText.length() == 0) && z) {
                textView.setText(errorText);
            } else if (z) {
                textView.setText(errorText + ' ' + clickableText);
                ViewExtKt.setSubstringClickListener(textView, clickableText, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda2
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        StakingTransactionFragment.setupAmountInputErrorState$lambda$4$lambda$3$lambda$2(StakingTransactionFragment.this);
                    }
                });
            } else {
                ViewExtKt.clearText(textView);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAmountInputErrorState$lambda$4$lambda$3$lambda$2(StakingTransactionFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onReplenishClick();
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void openBuyScreen(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        TokenBuyCoordinator.start$default(tokenBuyCoordinator, parentLayout, args, false, 4, null);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void setupAmount(String amountText) {
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        LinkActionView inputView = getBinding().inputAmount.getInputView();
        inputView.setText(amountText);
        EditTextBoldCursor editText = inputView.getEditText();
        Intrinsics.checkNotNullExpressionValue(editText, "editText");
        ViewExtKt.setSelectionEnd(editText);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateStakingStep(TransactionStep transactionStep) {
        Intrinsics.checkNotNullParameter(transactionStep, "transactionStep");
        TransactionActionButtonsView transactionActionButtonsView = getBinding().buttonSend;
        transactionActionButtonsView.setActionButtonText(transactionStep.getButtonText(getResourceManager()));
        transactionActionButtonsView.setActionButtonEnabled(transactionStep.isButtonEnabled());
        if (this.screenType == StakingScreenType.STAKING_REPLENISH_SCREEN_TYPE) {
            transactionActionButtonsView.setApproveInfoButtonVisibility((transactionStep instanceof TransactionStep.ApprovalProcessing) || (transactionStep instanceof TransactionStep.ApprovalNeeded));
        }
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void renderStakingPercentage(StakingAnnualPercentageData stakingAnnualPercentageData) {
        StakingPercentageView renderStakingPercentage$lambda$8 = getBinding().stakingPercentageView;
        renderStakingPercentage$lambda$8.setupViewData(stakingAnnualPercentageData, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionFragment.renderStakingPercentage$lambda$8$lambda$7(StakingTransactionFragment.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(renderStakingPercentage$lambda$8, "renderStakingPercentage$lambda$8");
        ViewExtKt.visible$default(renderStakingPercentage$lambda$8, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void renderStakingPercentage$lambda$8$lambda$7(StakingTransactionFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        showCommonInfoAlert$default(this$0, null, this$0.getResourceManager().getString(C3632R.string.staking_replenishment_percentage_info_alert), 1, null);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateProgress(float f) {
        getBinding().stakingPercentageView.updateProgress(f);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateWithdrawalFee(String feeValue, String timeValue) {
        Intrinsics.checkNotNullParameter(feeValue, "feeValue");
        Intrinsics.checkNotNullParameter(timeValue, "timeValue");
        StakingWithdrawalFeeView updateWithdrawalFee$lambda$9 = getBinding().stakingWithdrawalFeeView;
        updateWithdrawalFee$lambda$9.setupViewData(feeValue, timeValue);
        Intrinsics.checkNotNullExpressionValue(updateWithdrawalFee$lambda$9, "updateWithdrawalFee$lambda$9");
        ViewExtKt.visible$default(updateWithdrawalFee$lambda$9, false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void setupSafeWithdrawal(boolean z, final String alertTitleText, final String alertMessageText) {
        Intrinsics.checkNotNullParameter(alertTitleText, "alertTitleText");
        Intrinsics.checkNotNullParameter(alertMessageText, "alertMessageText");
        StakingSafeWithdrawalView setupSafeWithdrawal$lambda$11 = getBinding().stakingSafeWithdrawalView;
        final StakingTransactionPresenter presenter = getPresenter();
        setupSafeWithdrawal$lambda$11.setupViewData(z, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingTransactionPresenter.this.switchSafeWithdrawal(((Boolean) obj).booleanValue());
            }
        }, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionFragment.setupSafeWithdrawal$lambda$11$lambda$10(StakingTransactionFragment.this, alertTitleText, alertMessageText);
            }
        });
        Intrinsics.checkNotNullExpressionValue(setupSafeWithdrawal$lambda$11, "setupSafeWithdrawal$lambda$11");
        ViewExtKt.visible$default(setupSafeWithdrawal$lambda$11, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSafeWithdrawal$lambda$11$lambda$10(StakingTransactionFragment this$0, String alertTitleText, String alertMessageText) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(alertTitleText, "$alertTitleText");
        Intrinsics.checkNotNullParameter(alertMessageText, "$alertMessageText");
        this$0.showCommonInfoAlert(alertTitleText, alertMessageText);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateFeeView(FeeType feeType) {
        FeeView updateFeeView$lambda$12 = getBinding().viewFee;
        if (feeType != null) {
            Intrinsics.checkNotNullExpressionValue(updateFeeView$lambda$12, "updateFeeView$lambda$12");
            ViewExtKt.visible$default(updateFeeView$lambda$12, false, 1, null);
            updateFeeView$lambda$12.init(this, feeType);
        } else {
            Intrinsics.checkNotNullExpressionValue(updateFeeView$lambda$12, "updateFeeView$lambda$12");
            ViewExtKt.gone$default(updateFeeView$lambda$12, false, 1, null);
        }
        if (this.screenType == StakingScreenType.STAKING_WITHDRAW_SCREEN_TYPE) {
            updateFeeView$lambda$12.setPadding(updateFeeView$lambda$12.getPaddingLeft(), updateFeeView$lambda$12.getPaddingTop(), AndroidUtilities.m107dp(2), updateFeeView$lambda$12.getPaddingBottom());
        }
        StakingWithdrawalFeeView updateFeeView$lambda$13 = getBinding().stakingWithdrawalFeeView;
        if (feeType != null) {
            Intrinsics.checkNotNullExpressionValue(updateFeeView$lambda$13, "updateFeeView$lambda$13");
            updateFeeView$lambda$13.setPadding(updateFeeView$lambda$13.getPaddingLeft(), updateFeeView$lambda$13.getPaddingTop(), updateFeeView$lambda$13.getPaddingRight(), 0);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(updateFeeView$lambda$13, "updateFeeView$lambda$13");
        updateFeeView$lambda$13.setPadding(updateFeeView$lambda$13.getPaddingLeft(), updateFeeView$lambda$13.getPaddingTop(), updateFeeView$lambda$13.getPaddingRight(), AndroidUtilities.m107dp(12));
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showWithdrawHelpAlert(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        showCommonInfoAlert$default(this, null, message, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void showCommonInfoAlert$default(StakingTransactionFragment stakingTransactionFragment, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = stakingTransactionFragment.getResourceManager().getString(C3632R.string.wallet_crypto_buy_information_dialog_title);
        }
        stakingTransactionFragment.showCommonInfoAlert(str, str2);
    }

    private final void showCommonInfoAlert(String str, String str2) {
        showDialog(DialogsFactoryKt.createDialogInfoWithAnimation$default(this, 0, str, str2, 0, null, null, 57, null));
    }

    private final void setupActionBar() {
        final C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(this.screenType.getActionBarTitleTextId()));
        if (this.screenType != StakingScreenType.STAKING_REPLENISH_SCREEN_TYPE) {
            c3704ActionBar.createMenu().addItem(IdFabric$Menu.STAKING_HELP, C3632R.C3634drawable.msg_info);
        } else {
            ActionBarMenuItem addItem = c3704ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3632R.C3634drawable.ic_ab_other);
            addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
            addItem.addSubItem(IdFabric$Menu.SMART_CONTRACT, C3632R.C3634drawable.fork_ic_web_26, getResourceManager().getString(C3632R.string.staking_details_contract_action));
            addItem.addSubItem(IdFabric$Menu.STAKING_CONDITIONS, C3632R.C3634drawable.fork_ic_description_26, getResourceManager().getString(C3632R.string.staking_deposit_conditions));
        }
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$setupActionBar$1$2

            /* compiled from: StakingTransactionFragment.kt */
            /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$setupActionBar$1$2$WhenMappings */
            /* loaded from: classes4.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[StakingScreenType.values().length];
                    try {
                        iArr[StakingScreenType.STAKING_PROFIT_SCREEN_TYPE.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[StakingScreenType.STAKING_WITHDRAW_SCREEN_TYPE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                StakingScreenType stakingScreenType;
                ResourceManager resourceManager;
                StakingTransactionPresenter presenter;
                StakingDetailsItem stakingDetailsItem;
                StakingTransactionPresenter presenter2;
                if (i == -1) {
                    StakingTransactionFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.STAKING_CONDITIONS) {
                    presenter2 = StakingTransactionFragment.this.getPresenter();
                    presenter2.startStakingConditionsDialog();
                } else {
                    if (i == IdFabric$Menu.SMART_CONTRACT) {
                        Context context = c3704ActionBar.getContext();
                        stakingDetailsItem = StakingTransactionFragment.this.stakingDetails;
                        String contractUrl = stakingDetailsItem != null ? stakingDetailsItem.getContractUrl() : null;
                        if (contractUrl == null) {
                            contractUrl = "";
                        }
                        Browser.openUrl(context, contractUrl);
                    } else if (i == IdFabric$Menu.STAKING_HELP) {
                        stakingScreenType = StakingTransactionFragment.this.screenType;
                        int i2 = WhenMappings.$EnumSwitchMapping$0[stakingScreenType.ordinal()];
                        if (i2 == 1) {
                            StakingTransactionFragment stakingTransactionFragment = StakingTransactionFragment.this;
                            resourceManager = stakingTransactionFragment.getResourceManager();
                            StakingTransactionFragment.showCommonInfoAlert$default(stakingTransactionFragment, null, resourceManager.getString(C3632R.string.staking_profit_help_alert), 1, null);
                        } else if (i2 != 2) {
                        } else {
                            presenter = StakingTransactionFragment.this.getPresenter();
                            presenter.onWithdrawHelpClick();
                        }
                    }
                }
            }
        });
    }

    private final void setupViews() {
        ForkFragmentStakingTransactionBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageHeader;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(this.screenType.getAnimationId(), 96, 96);
        rLottieImageView.playAnimation();
        binding.textHeader.setText(getResourceManager().getString(this.screenType.getHeaderTextId()));
        TitledInputFieldView titledInputFieldView = binding.inputAmount;
        titledInputFieldView.setCustomView(new TextView(titledInputFieldView.getContext()));
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView, "this");
        String string = getResourceManager().getString(C3632R.string.wallet_crypto_buy_amount_title);
        String string2 = getResourceManager().getString(C3632R.string.wallet_binance_receive_amount_title);
        StakingScreenType stakingScreenType = this.screenType;
        boolean z = stakingScreenType != StakingScreenType.STAKING_PROFIT_SCREEN_TYPE;
        boolean z2 = stakingScreenType == StakingScreenType.STAKING_REPLENISH_SCREEN_TYPE || stakingScreenType == StakingScreenType.STAKING_WITHDRAW_SCREEN_TYPE;
        titledInputFieldView.setTitle(string);
        LinkActionView inputView = titledInputFieldView.getInputView();
        inputView.setGravity(16);
        inputView.hideAllActionButtons(true);
        inputView.setEditHint(string2);
        inputView.setMode(z);
        EditTextBoldCursor setupViews$lambda$24$lambda$20$lambda$19$lambda$18 = inputView.getEditText();
        setupViews$lambda$24$lambda$20$lambda$19$lambda$18.setInputType(8194);
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$24$lambda$20$lambda$19$lambda$18, "setupViews$lambda$24$lambda$20$lambda$19$lambda$18");
        ViewExtKt.limitInputLength$default(setupViews$lambda$24$lambda$20$lambda$19$lambda$18, TokenDetailed.Companion.getBNB().getDecimals(), 0, 2, null);
        setupViews$lambda$24$lambda$20$lambda$19$lambda$18.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$setupViews$lambda$24$lambda$20$lambda$19$lambda$18$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                StakingTransactionPresenter presenter;
                CharSequence trim;
                presenter = StakingTransactionFragment.this.getPresenter();
                trim = StringsKt__StringsKt.trim(String.valueOf(editable));
                presenter.onAmountChanged(trim.toString());
            }
        });
        inputView.showOptions(false);
        if (z2) {
            inputView.addMaxButton(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$setupInputField$2$1$1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    StakingTransactionPresenter presenter;
                    presenter = StakingTransactionFragment.this.getPresenter();
                    presenter.setMaxAmount();
                }
            });
        }
        titledInputFieldView.setupInputLayoutParams(-1, this.inputFieldHeight);
        TransactionActionButtonsView buttonSend = binding.buttonSend;
        Intrinsics.checkNotNullExpressionValue(buttonSend, "buttonSend");
        buttonSend.setupViewData(getResourceManager().getString(C3632R.string.staking_action_button_loading), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0 ? false : false, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$0();
            }
        } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionFragment.setupViews$lambda$24$lambda$21(StakingTransactionFragment.this);
            }
        }, (r14 & 32) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$1();
            }
        } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionFragment.setupViews$lambda$24$lambda$22(StakingTransactionFragment.this);
            }
        }, (r14 & 64) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$2();
            }
        } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingTransactionFragment.setupViews$lambda$24$lambda$23(StakingTransactionFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$24$lambda$21(StakingTransactionFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onActionClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$24$lambda$22(StakingTransactionFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().startStakingConditionsDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$24$lambda$23(StakingTransactionFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showCommonInfoAlert(this$0.getResourceManager().getString(C3632R.string.wallet_swap_process_what_is_approve), this$0.getResourceManager().getString(C3632R.string.wallet_swap_process_what_is_approve_dialog_description));
    }

    private final void setupColors() {
        ForkFragmentStakingTransactionBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        int i = Theme.key_windowBackgroundWhiteGrayText;
        TextView textHeader = binding.textHeader;
        Intrinsics.checkNotNullExpressionValue(textHeader, "textHeader");
        TextView textBalance = binding.textBalance;
        Intrinsics.checkNotNullExpressionValue(textBalance, "textBalance");
        ViewExtKt.setTextsColor(i, textHeader, textBalance);
        View customView = binding.inputAmount.getCustomView();
        TextView textView = customView instanceof TextView ? (TextView) customView : null;
        if (textView != null) {
            textView.setTextColor(getThemedColor(Theme.key_text_RedRegular));
        }
        binding.linearStakingSettings.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        binding.inputAmount.setupColors();
        binding.buttonSend.setupColors();
        binding.stakingSafeWithdrawalView.setupColors();
        binding.stakingPercentageView.setupColors();
        binding.stakingWithdrawalFeeView.setupColors();
    }

    /* compiled from: StakingTransactionFragment.kt */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final StakingTransactionFragment newInstance(Double d, StakingScreenType screenType, StakingDetailsItem args) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            Intrinsics.checkNotNullParameter(args, "args");
            return new StakingTransactionFragment(d, screenType, args);
        }
    }
}
