package com.iMe.p030ui.wallet.cryptobox.create;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.cryptobox.CryptoBoxCreationRulesItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.navigation.wallet.coordinator.TokenBuyCoordinator;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.CryptoboxInfoView;
import com.iMe.p030ui.custom.FeeView;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.custom.TitledInputFieldView;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import com.iMe.p030ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.helper.GlideHelper;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
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
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkFragmentCreateCryptoboxBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3706ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ChatRightsEditActivity;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.InviteMembersBottomSheet;
import org.telegram.p043ui.Components.LinkActionView;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CreateCryptoBoxFragment.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment */
/* loaded from: classes3.dex */
public final class CreateCryptoBoxFragment extends WalletAuthBaseFragment implements CreateCryptoBoxView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CreateCryptoBoxFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateCryptoBoxFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateCryptoboxBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final int inputFieldHeight;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy tokenBuyCoordinator$delegate;

    public CreateCryptoBoxFragment(final TLRPC$Chat tLRPC$Chat, final Network network) {
        Lazy lazy;
        Function0<CreateCryptoBoxPresenter> function0 = new Function0<CreateCryptoBoxPresenter>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreateCryptoBoxPresenter invoke() {
                Lazy lazy2;
                final CreateCryptoBoxFragment createCryptoBoxFragment = CreateCryptoBoxFragment.this;
                final TLRPC$Chat tLRPC$Chat2 = tLRPC$Chat;
                final Network network2 = network;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$presenter$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(TLRPC$Chat.this, network2);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CreateCryptoBoxPresenter>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CreateCryptoBoxPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CreateCryptoBoxPresenter.class), qualifier, function03);
                    }
                });
                return (CreateCryptoBoxPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CreateCryptoBoxPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TokenBuyCoordinator>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$special$$inlined$inject$default$1
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
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentCreateCryptoboxBinding>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentCreateCryptoboxBinding invoke() {
                return ForkFragmentCreateCryptoboxBinding.inflate(BaseFragmentExtKt.getLayoutInflater(CreateCryptoBoxFragment.this));
            }
        }, 1, (Object) null);
        this.inputFieldHeight = ViewExtKt.getDpToPx(52);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateCryptoBoxPresenter getPresenter() {
        return (CreateCryptoBoxPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TokenBuyCoordinator getTokenBuyCoordinator() {
        return (TokenBuyCoordinator) this.tokenBuyCoordinator$delegate.getValue();
    }

    private final ForkFragmentCreateCryptoboxBinding getBinding() {
        return (ForkFragmentCreateCryptoboxBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupViews();
        setupColors();
        setupListeners();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderCryptoBoxCreationRules(CryptoBoxCreationRulesItem item, boolean z) {
        Intrinsics.checkNotNullParameter(item, "item");
        CryptoboxInfoView renderCryptoBoxCreationRules$lambda$0 = getBinding().viewCryptoboxInfo;
        Intrinsics.checkNotNullExpressionValue(renderCryptoBoxCreationRules$lambda$0, "renderCryptoBoxCreationRules$lambda$0");
        ViewExtKt.visible$default(renderCryptoBoxCreationRules$lambda$0, false, 1, null);
        renderCryptoBoxCreationRules$lambda$0.setupViewData(item, z);
        TextView renderCryptoBoxCreationRules$lambda$1 = getBinding().textTotalTokens;
        if (item.getTotalAmountText().length() > 0) {
            renderCryptoBoxCreationRules$lambda$1.setText(AndroidUtilities.replaceTags(item.getTotalAmountText()));
            Intrinsics.checkNotNullExpressionValue(renderCryptoBoxCreationRules$lambda$1, "renderCryptoBoxCreationRules$lambda$1");
            ViewExtKt.visible$default(renderCryptoBoxCreationRules$lambda$1, false, 1, null);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(renderCryptoBoxCreationRules$lambda$1, "renderCryptoBoxCreationRules$lambda$1");
        ViewExtKt.gone$default(renderCryptoBoxCreationRules$lambda$1, false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderSelectedChat(TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        LinkActionView inputView = getBinding().inputChat.getInputView();
        inputView.setAvatar(chat);
        inputView.setText(chat.title);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderSelectedToken(String tokenText, String tokenLogoUrl, int i, String tokenBalanceText) {
        Intrinsics.checkNotNullParameter(tokenText, "tokenText");
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        Intrinsics.checkNotNullParameter(tokenBalanceText, "tokenBalanceText");
        ForkFragmentCreateCryptoboxBinding binding = getBinding();
        LinkActionView inputView = binding.inputToken.getInputView();
        inputView.setText(tokenText);
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        GlideHelper.loadImageAsBitmap(parentActivity, tokenLogoUrl, new CreateCryptoBoxFragment$$ExternalSyntheticLambda4(inputView), true);
        EditTextBoldCursor editText = binding.inputAmount.getInputView().getEditText();
        Intrinsics.checkNotNullExpressionValue(editText, "inputAmount.inputView.editText");
        ViewExtKt.limitInputLength$default(editText, i, 0, 2, null);
        TextView renderSelectedToken$lambda$5$lambda$4 = binding.textTokenBalance;
        renderSelectedToken$lambda$5$lambda$4.setText(AndroidUtilities.replaceTags(getResourceManager().getString(C3634R.string.wallet_swap_process_my_balance, tokenBalanceText)));
        Intrinsics.checkNotNullExpressionValue(renderSelectedToken$lambda$5$lambda$4, "renderSelectedToken$lambda$5$lambda$4");
        ViewExtKt.visible$default(renderSelectedToken$lambda$5$lambda$4, false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void resetSelectedToken() {
        ForkFragmentCreateCryptoboxBinding binding = getBinding();
        binding.inputToken.getInputView().resetField();
        TextView textTokenBalance = binding.textTokenBalance;
        Intrinsics.checkNotNullExpressionValue(textTokenBalance, "textTokenBalance");
        ViewExtKt.gone$default(textTokenBalance, false, 1, null);
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void setupNetwork(NetworkItem networkItem) {
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        View customView = getBinding().inputToken.getCustomView();
        NetworkTypeView networkTypeView = customView instanceof NetworkTypeView ? (NetworkTypeView) customView : null;
        if (networkTypeView == null) {
            return;
        }
        networkTypeView.setNetwork(networkItem);
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworks) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CreateCryptoBoxFragment.showChooseNetworkDialog$lambda$7(CreateCryptoBoxFragment.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$7(CreateCryptoBoxFragment this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onNetworkSelected(crypto);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void openSelectTokenScreen(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        presentFragment(WalletSelectTokenFragment.Companion.newInstance(new SelectTokenScreenType.Send(null, 1, null), null, networkId, true, new Callbacks$Callback2() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback2
            public final void invoke(Object obj, Object obj2) {
                CreateCryptoBoxFragment.openSelectTokenScreen$lambda$8(CreateCryptoBoxFragment.this, (TokenDetailed) obj, (FiatValue) obj2);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openSelectTokenScreen$lambda$8(CreateCryptoBoxFragment this$0, TokenDetailed token, FiatValue fiatValue) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CreateCryptoBoxPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(token, "token");
        presenter.onTokenSelected(token);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void openSelectChatScreen(Long l) {
        InviteMembersBottomSheet inviteMembersBottomSheet = new InviteMembersBottomSheet(getContext(), this.currentAccount, null, 0L, this, null);
        inviteMembersBottomSheet.setCryptoboxChatSelectionScreen(l, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CreateCryptoBoxFragment.openSelectChatScreen$lambda$10$lambda$9(CreateCryptoBoxFragment.this, (Long) obj);
            }
        });
        showDialog(inviteMembersBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void openSelectChatScreen$lambda$10$lambda$9(CreateCryptoBoxFragment this$0, Long l) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onChatSelected(l);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderTransactionActionBlock(TransactionStep transactionStep, FeeType feeType) {
        Intrinsics.checkNotNullParameter(transactionStep, "transactionStep");
        TransactionActionButtonsView transactionActionButtonsView = getBinding().viewActionButtons;
        transactionActionButtonsView.setActionButtonText(transactionStep.getButtonText(getResourceManager()));
        transactionActionButtonsView.setActionButtonEnabled(transactionStep.isButtonEnabled());
        FeeView renderTransactionActionBlock$lambda$12 = getBinding().viewFee;
        if (feeType != null) {
            Intrinsics.checkNotNullExpressionValue(renderTransactionActionBlock$lambda$12, "renderTransactionActionBlock$lambda$12");
            ViewExtKt.visible$default(renderTransactionActionBlock$lambda$12, false, 1, null);
            renderTransactionActionBlock$lambda$12.init(this, feeType);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(renderTransactionActionBlock$lambda$12, "renderTransactionActionBlock$lambda$12");
        ViewExtKt.gone$default(renderTransactionActionBlock$lambda$12, false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showCryptoBoxInfoDialog(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        showDialog(DialogsFactoryKt.createDialogInfoWithAnimation$default(this, 0, null, description, 8388611, null, null, 51, null));
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void openBuyScreen(TokenBuyCoordinatorArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        TokenBuyCoordinator tokenBuyCoordinator = getTokenBuyCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        TokenBuyCoordinator.start$default(tokenBuyCoordinator, parentLayout, args, false, 4, null);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showCreationSuccess() {
        DialogsFactoryKt.showSuccessAlert(this, getResourceManager().getString(C3634R.string.cryptobox_create_success_title), getResourceManager().getString(C3634R.string.cryptobox_create_success_description), getResourceManager().getString(C3634R.string.common_ok), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxFragment.this.finishFragment();
            }
        });
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showActionError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3634R.string.common_error), message, getResourceManager().getString(C3634R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        BaseFragment lastFragment = this.parentLayout.getLastFragment();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        lastFragment.showDialog(DialogUtils.createDialog$default(context, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void openAddAdminScreen(long j, TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, chat.f1602id, null, null, null, null, 0, true, true, null);
        chatRightsEditActivity.setDelegate(new CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1(chatRightsEditActivity, j, this, chat));
        presentFragment(chatRightsEditActivity);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda12
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CreateCryptoBoxFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
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
                ViewExtKt.setSubstringClickListener(textView, clickableText, true, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda7
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        CreateCryptoBoxFragment.setupAmountInputErrorState$lambda$16$lambda$15$lambda$14(CreateCryptoBoxFragment.this);
                    }
                });
            } else {
                ViewExtKt.clearText(textView);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAmountInputErrorState$lambda$16$lambda$15$lambda$14(CreateCryptoBoxFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onReplenishClick();
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void setupCapacityInputErrorState(boolean z, String errorText) {
        Intrinsics.checkNotNullParameter(errorText, "errorText");
        TitledInputFieldView titledInputFieldView = getBinding().inputCapacity;
        titledInputFieldView.getInputView().setErrorState(z);
        View customView = titledInputFieldView.getCustomView();
        TextView textView = customView instanceof TextView ? (TextView) customView : null;
        if (textView == null) {
            return;
        }
        textView.setText(errorText);
    }

    private final void setupActionBar() {
        C3706ActionBar c3706ActionBar = this.actionBar;
        c3706ActionBar.setBackButtonImage(C3634R.C3636drawable.ic_ab_back);
        c3706ActionBar.setTitle(getResourceManager().getString(C3634R.string.cryptobox_create_title));
        c3706ActionBar.setActionBarMenuOnItemClick(new C3706ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3706ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CreateCryptoBoxFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupViews() {
        final ForkFragmentCreateCryptoboxBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageHeader;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3634R.raw.fork_new_cryptobox, 96, 96);
        rLottieImageView.playAnimation();
        binding.textHeader.setText(getResourceManager().getString(C3634R.string.cryptobox_create_header));
        binding.textDescription.setText(getResourceManager().getString(C3634R.string.cryptobox_create_description));
        TitledInputFieldView titledInputFieldView = binding.inputToken;
        Context context = titledInputFieldView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        NetworkTypeView networkTypeView = new NetworkTypeView(context, null, 0, 6, null);
        ViewExtKt.safeThrottledClick$default(networkTypeView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$setupViews$1$2$1$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }
        }, 1, null);
        titledInputFieldView.setCustomView(networkTypeView);
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView, "this");
        String string = getResourceManager().getString(C3634R.string.wallet_binance_receive_select_token_hint);
        String string2 = getResourceManager().getString(C3634R.string.wallet_binance_receive_select_token_title);
        int i = C3634R.C3636drawable.fork_ic_select_token_24;
        titledInputFieldView.setTitle(string);
        titledInputFieldView.setupInputLayoutParams(-1, this.inputFieldHeight);
        LinkActionView inputView = titledInputFieldView.getInputView();
        inputView.hideAllActionButtons(true);
        inputView.setEditHint(string2);
        inputView.setMode(false);
        inputView.setOptionsViewIcon(i);
        inputView.setFieldClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateCryptoBoxFragment.setupViews$lambda$40$lambda$23$lambda$22$lambda$21(CreateCryptoBoxFragment.this, view);
            }
        });
        TitledInputFieldView titledInputFieldView2 = binding.inputAmount;
        titledInputFieldView2.setCustomView(new TextView(titledInputFieldView2.getContext()));
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView2, "this");
        String string3 = getResourceManager().getString(C3634R.string.cryptobox_create_amount_title);
        String string4 = getResourceManager().getString(C3634R.string.wallet_binance_receive_amount_title);
        int i2 = C3634R.C3636drawable.fork_ic_custom_tokens;
        titledInputFieldView2.setTitle(string3);
        titledInputFieldView2.setupInputLayoutParams(-1, this.inputFieldHeight);
        LinkActionView inputView2 = titledInputFieldView2.getInputView();
        inputView2.hideAllActionButtons(true);
        inputView2.setEditHint(string4);
        inputView2.setMode(true);
        inputView2.setOptionsViewIcon(i2);
        EditTextBoldCursor setupViews$lambda$40$lambda$28$lambda$27$lambda$26 = inputView2.getEditText();
        setupViews$lambda$40$lambda$28$lambda$27$lambda$26.setInputType(8194);
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$40$lambda$28$lambda$27$lambda$26, "setupViews$lambda$40$lambda$28$lambda$27$lambda$26");
        ViewExtKt.limitInputLength$default(setupViews$lambda$40$lambda$28$lambda$27$lambda$26, TokenDetailed.Companion.getBNB().getDecimals(), 0, 2, null);
        setupViews$lambda$40$lambda$28$lambda$27$lambda$26.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$setupViews$lambda$40$lambda$28$lambda$27$lambda$26$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CreateCryptoBoxPresenter presenter;
                presenter = CreateCryptoBoxFragment.this.getPresenter();
                presenter.onAmountChanged(String.valueOf(editable));
            }
        });
        ViewExtKt.onAction(setupViews$lambda$40$lambda$28$lambda$27$lambda$26, 5, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda11
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxFragment.setupViews$lambda$40$lambda$28$lambda$27$lambda$26$lambda$25(ForkFragmentCreateCryptoboxBinding.this);
            }
        });
        TitledInputFieldView titledInputFieldView3 = binding.inputCapacity;
        titledInputFieldView3.setCustomView(new TextView(titledInputFieldView3.getContext()));
        Intrinsics.checkNotNullExpressionValue(titledInputFieldView3, "this");
        String string5 = getResourceManager().getString(C3634R.string.cryptobox_create_capacity_title);
        String string6 = getResourceManager().getString(C3634R.string.cryptobox_create_capacity_hint);
        int i3 = C3634R.C3636drawable.fork_filter_icon_users;
        titledInputFieldView3.setTitle(string5);
        titledInputFieldView3.setupInputLayoutParams(-1, this.inputFieldHeight);
        LinkActionView inputView3 = titledInputFieldView3.getInputView();
        inputView3.hideAllActionButtons(true);
        inputView3.setEditHint(string6);
        inputView3.setMode(true);
        inputView3.setOptionsViewIcon(i3);
        EditTextBoldCursor setupViews$lambda$40$lambda$32$lambda$31$lambda$30 = inputView3.getEditText();
        setupViews$lambda$40$lambda$32$lambda$31$lambda$30.setInputType(2);
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$40$lambda$32$lambda$31$lambda$30, "setupViews$lambda$40$lambda$32$lambda$31$lambda$30");
        ViewExtKt.limitInputLength$default(setupViews$lambda$40$lambda$32$lambda$31$lambda$30, 0, 0, 2, null);
        setupViews$lambda$40$lambda$32$lambda$31$lambda$30.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$setupViews$lambda$40$lambda$32$lambda$31$lambda$30$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CreateCryptoBoxPresenter presenter;
                presenter = CreateCryptoBoxFragment.this.getPresenter();
                presenter.onCapacityChanged(String.valueOf(editable));
            }
        });
        TitledInputFieldView inputChat = binding.inputChat;
        Intrinsics.checkNotNullExpressionValue(inputChat, "inputChat");
        String string7 = getResourceManager().getString(C3634R.string.cryptobox_create_chat_title);
        String string8 = getResourceManager().getString(C3634R.string.cryptobox_create_chat_hint);
        int i4 = C3634R.C3636drawable.msg_channel;
        inputChat.setTitle(string7);
        inputChat.setupInputLayoutParams(-1, this.inputFieldHeight);
        LinkActionView inputView4 = inputChat.getInputView();
        inputView4.hideAllActionButtons(true);
        inputView4.setEditHint(string8);
        inputView4.setMode(false);
        inputView4.setOptionsViewIcon(i4);
        inputView4.setFieldClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateCryptoBoxFragment.setupViews$lambda$40$lambda$34$lambda$33(CreateCryptoBoxFragment.this, view);
            }
        });
        TitledInputFieldView inputDescription = binding.inputDescription;
        Intrinsics.checkNotNullExpressionValue(inputDescription, "inputDescription");
        String string9 = getResourceManager().getString(C3634R.string.cryptobox_create_description_title);
        String string10 = getResourceManager().getString(C3634R.string.cryptobox_create_description_hint);
        int i5 = C3634R.C3636drawable.msg_edit;
        inputDescription.setTitle(string9);
        inputDescription.setupInputLayoutParams(-1, this.inputFieldHeight);
        LinkActionView inputView5 = inputDescription.getInputView();
        inputView5.hideAllActionButtons(true);
        inputView5.setEditHint(string10);
        inputView5.setMode(true);
        inputView5.setOptionsViewIcon(i5);
        EditTextBoldCursor setupViews$lambda$40$lambda$38$lambda$37 = inputView5.getEditText();
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$40$lambda$38$lambda$37, "setupViews$lambda$40$lambda$38$lambda$37");
        setupViews$lambda$40$lambda$38$lambda$37.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$setupViews$lambda$40$lambda$38$lambda$37$$inlined$doAfterTextChanged$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CreateCryptoBoxPresenter presenter;
                presenter = CreateCryptoBoxFragment.this.getPresenter();
                presenter.onDescriptionChanged(String.valueOf(editable));
            }
        });
        ViewExtKt.onAction(setupViews$lambda$40$lambda$38$lambda$37, 6, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxFragment.setupViews$lambda$40$lambda$38$lambda$37$lambda$36(CreateCryptoBoxFragment.this);
            }
        });
        TransactionActionButtonsView viewActionButtons = binding.viewActionButtons;
        Intrinsics.checkNotNullExpressionValue(viewActionButtons, "viewActionButtons");
        viewActionButtons.setupViewData(getResourceManager().getString(C3634R.string.common_progress_state_title), (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0 ? false : false, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$0();
            }
        } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxFragment.setupViews$lambda$40$lambda$39(CreateCryptoBoxFragment.this);
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
    public static final void setupViews$lambda$40$lambda$23$lambda$22$lambda$21(CreateCryptoBoxFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onSelectTokenClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$40$lambda$28$lambda$27$lambda$26$lambda$25(ForkFragmentCreateCryptoboxBinding this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.inputCapacity.getInputView().getEditText().requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$40$lambda$34$lambda$33(CreateCryptoBoxFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onSelectChatClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$40$lambda$38$lambda$37$lambda$36(CreateCryptoBoxFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onActionClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViews$lambda$40$lambda$39(CreateCryptoBoxFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onActionClick();
    }

    private final void setupListeners() {
        ForkFragmentCreateCryptoboxBinding binding = getBinding();
        View customView = binding.inputToken.getCustomView();
        if (customView != null) {
            ViewExtKt.safeThrottledClick$default(customView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$setupListeners$1$1
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
                    CreateCryptoBoxPresenter presenter;
                    Intrinsics.checkNotNullParameter(it, "it");
                    presenter = CreateCryptoBoxFragment.this.getPresenter();
                    presenter.onSelectNetworkClick();
                }
            }, 1, null);
        }
        binding.viewCryptoboxInfo.setInfoButtonClickAction(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$$ExternalSyntheticLambda10
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateCryptoBoxFragment.setupListeners$lambda$44$lambda$43(CreateCryptoBoxFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$44$lambda$43(CreateCryptoBoxFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onCryptoBoxInfoClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        ForkFragmentCreateCryptoboxBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        int i = Theme.key_windowBackgroundWhiteGrayText;
        TextView textHeader = binding.textHeader;
        Intrinsics.checkNotNullExpressionValue(textHeader, "textHeader");
        TextView textDescription = binding.textDescription;
        Intrinsics.checkNotNullExpressionValue(textDescription, "textDescription");
        TextView textTokenBalance = binding.textTokenBalance;
        Intrinsics.checkNotNullExpressionValue(textTokenBalance, "textTokenBalance");
        TextView textTotalTokens = binding.textTotalTokens;
        Intrinsics.checkNotNullExpressionValue(textTotalTokens, "textTotalTokens");
        ViewExtKt.setTextsColorKey(i, textHeader, textDescription, textTokenBalance, textTotalTokens);
        View customView = binding.inputAmount.getCustomView();
        TextView textView = customView instanceof TextView ? (TextView) customView : null;
        if (textView != null) {
            textView.setTextColor(getThemedColor(Theme.key_text_RedRegular));
        }
        View customView2 = binding.inputCapacity.getCustomView();
        TextView textView2 = customView2 instanceof TextView ? (TextView) customView2 : null;
        if (textView2 != null) {
            textView2.setTextColor(getThemedColor(Theme.key_text_RedRegular));
        }
        LinearLayout linearLayout = binding.linearCryptoSettings;
        int i2 = Theme.key_windowBackgroundWhite;
        linearLayout.setBackgroundColor(getThemedColor(i2));
        binding.inputToken.setupColors();
        binding.inputAmount.setupColors();
        binding.inputCapacity.setupColors();
        binding.viewCryptoboxInfo.setupColors();
        binding.linearChatSettings.setBackgroundColor(getThemedColor(i2));
        binding.inputChat.setupColors();
        binding.inputDescription.setupColors();
        binding.viewActionButtons.setupColors();
        binding.viewFee.setupColors();
    }

    /* compiled from: CreateCryptoBoxFragment.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CreateCryptoBoxFragment newInstance(TLRPC$Chat tLRPC$Chat, Network network) {
            return new CreateCryptoBoxFragment(tLRPC$Chat, network);
        }
    }
}
