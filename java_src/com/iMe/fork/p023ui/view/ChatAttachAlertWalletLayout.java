package com.iMe.fork.p023ui.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.p023ui.view.ChatAttachAlertWalletLayout;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.ActionItem;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.send.WalletSendScreenType;
import com.iMe.model.wallet.transaction.TransactionActionItem;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.model.wallet.transaction.WalletTransactionDetailsScreenType;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.custom.state.GlobalStateLayout;
import com.iMe.p030ui.wallet.home.attach.WalletAttachAlertPresenter;
import com.iMe.p030ui.wallet.home.attach.WalletAttachAlertView;
import com.iMe.p030ui.wallet.send.WalletSendFragment;
import com.iMe.p030ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter;
import com.iMe.p030ui.wallet.transaction.adapter.diff.TransactionDiffCallback;
import com.iMe.p030ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.java.KoinJavaComponent;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.ChatAttachAlert;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: ChatAttachAlertWalletLayout.kt */
/* renamed from: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout */
/* loaded from: classes3.dex */
public final class ChatAttachAlertWalletLayout extends ChatAttachAlert.AttachAlertLayout implements WalletAttachAlertView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ChatAttachAlertWalletLayout.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;", 0))};
    private int accountsHeaderRow;
    private int accountsSectionRow;
    private Dialog activeDialog;
    private List<TokenBalance> balances;
    private int balancesEndRow;
    private int balancesStartRow;
    private int chooseAccountHintRow;
    private boolean ignoreLayout;
    private final Lazy listAdapter$delegate;
    private LinearLayoutManager listLayoutManager;
    private RecyclerListView listView;
    private int paddingRow;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy progressDialog$delegate;
    private final Lazy resourceManager$delegate;
    private int rowCount;
    private TokenBalance selectedBalance;
    private int sendHeaderRow;
    private int sendSectionRow;
    private int topPadding;
    private final Lazy transactionAdapter$delegate;
    private GlobalState transactionState;
    private List<? extends BaseNode> transactions;
    private int transactionsHeaderRow;
    private int transactionsRow;
    private final Lazy walletFlowCoordinator$delegate;

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, org.koin.core.component.KoinComponent
    public /* bridge */ /* synthetic */ Koin getKoin() {
        Koin koin;
        koin = KoinJavaComponent.getKoin();
        return koin;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout, com.iMe.p030ui.base.mvp.view.MvpFrameLayout, com.iMe.p030ui.base.mvp.view.ICustomMvpView, moxy.MvpDelegateHolder
    public /* bridge */ /* synthetic */ MvpDelegate<T> getMvpDelegate() {
        MvpDelegate<T> mMvpDelegate;
        mMvpDelegate = getMMvpDelegate();
        return mMvpDelegate;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int needsActionBar() {
        return 1;
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void showErrorToast(Result.Error error, ResourceManager resourceManager) {
        BaseView.CC.$default$showErrorToast(this, error, resourceManager);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertWalletLayout(final ChatAttachAlert alert, Theme.ResourcesProvider resourcesProvider) {
        super(alert, alert.getContext(), resourcesProvider);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        List<? extends BaseNode> emptyList;
        List<TokenBalance> emptyList2;
        Intrinsics.checkNotNullParameter(alert, "alert");
        Intrinsics.checkNotNullParameter(resourcesProvider, "resourcesProvider");
        Function0<WalletAttachAlertPresenter> function0 = new Function0<WalletAttachAlertPresenter>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletAttachAlertPresenter invoke() {
                Lazy lazy6;
                final ChatAttachAlertWalletLayout chatAttachAlertWalletLayout = ChatAttachAlertWalletLayout.this;
                lazy6 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletAttachAlertPresenter>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletAttachAlertPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletAttachAlertPresenter.class), qualifier, function02);
                    }
                });
                return (WalletAttachAlertPresenter) lazy6.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletAttachAlertPresenter.class.getName() + ".presenter", function0);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<WalletTransactionsRecycleAdapter>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.transaction.adapter.WalletTransactionsRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletTransactionsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletTransactionsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.transactionAdapter$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<WalletFlowCoordinator>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletFlowCoordinator invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletFlowCoordinator.class), qualifier, function02);
            }
        });
        this.walletFlowCoordinator$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function02);
            }
        });
        this.resourceManager$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<AlertDialog>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$progressDialog$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AlertDialog invoke() {
                AlertDialog alertDialog = new AlertDialog(ChatAttachAlert.this.getBaseFragment().getParentActivity(), 3);
                alertDialog.setCanCancel(false);
                return alertDialog;
            }
        });
        this.progressDialog$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChatAttachAlertWalletLayout.ListAdapter invoke() {
                ChatAttachAlertWalletLayout chatAttachAlertWalletLayout = ChatAttachAlertWalletLayout.this;
                Context context = chatAttachAlertWalletLayout.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                return new ChatAttachAlertWalletLayout.ListAdapter(chatAttachAlertWalletLayout, context);
            }
        });
        this.listAdapter$delegate = lazy5;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.transactions = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.balances = emptyList2;
        this.transactionState = GlobalState.Progress.INSTANCE;
        onCreateMvpView();
        updateRows();
        final RecyclerListView recyclerListView = new RecyclerListView(alert.getContext());
        recyclerListView.setItemAnimator(new DefaultItemAnimator() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$1$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder holder) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                if (holder.getAdapterPosition() == 0) {
                    ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertWalletLayout.this).parentAlert.updateLayout(ChatAttachAlertWalletLayout.this, true, 0);
                }
            }
        });
        recyclerListView.setClipToPadding(false);
        recyclerListView.setVerticalScrollBarEnabled(false);
        DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) recyclerListView.getItemAnimator();
        if (defaultItemAnimator != null) {
            defaultItemAnimator.setDelayAnimations(false);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerListView.getContext());
        this.listLayoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setPreserveFocusAfterLayout(true);
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ChatAttachAlertWalletLayout.lambda$1$lambda$0(ChatAttachAlertWalletLayout.this, view, i);
            }
        });
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$1$3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertWalletLayout.this).parentAlert.updateLayout(ChatAttachAlertWalletLayout.this, true, i2);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                RecyclerListView.Holder holder;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if (i == 0) {
                    int m108dp = AndroidUtilities.m108dp(13.0f);
                    int backgroundPaddingTop = ((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertWalletLayout.this).parentAlert.getBackgroundPaddingTop();
                    if (((((ChatAttachAlert.AttachAlertLayout) ChatAttachAlertWalletLayout.this).parentAlert.scrollOffsetY[0] - backgroundPaddingTop) - m108dp) + backgroundPaddingTop >= C3704ActionBar.getCurrentActionBarHeight() || (holder = (RecyclerListView.Holder) recyclerListView.findViewHolderForAdapterPosition(1)) == null || holder.itemView.getTop() <= AndroidUtilities.m108dp(53.0f)) {
                        return;
                    }
                    recyclerListView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.m108dp(53.0f));
                }
            }
        });
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView = recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletAttachAlertPresenter getPresenter() {
        return (WalletAttachAlertPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletTransactionsRecycleAdapter getTransactionAdapter() {
        return (WalletTransactionsRecycleAdapter) this.transactionAdapter$delegate.getValue();
    }

    private final WalletFlowCoordinator getWalletFlowCoordinator() {
        return (WalletFlowCoordinator) this.walletFlowCoordinator$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final AlertDialog getProgressDialog() {
        return (AlertDialog) this.progressDialog$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lambda$1$lambda$0(ChatAttachAlertWalletLayout this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i2 = this$0.balancesStartRow;
        boolean z = false;
        if (i < this$0.balancesEndRow && i2 <= i) {
            z = true;
        }
        if (z) {
            TokenBalance tokenBalance = this$0.balances.get(i - i2);
            if (Intrinsics.areEqual(this$0.selectedBalance, tokenBalance)) {
                return;
            }
            this$0.getPresenter().selectBalance(tokenBalance);
            this$0.selectedBalance = tokenBalance;
            this$0.getListAdapter().notifyItemRangeChanged(this$0.balancesStartRow, this$0.balancesEndRow);
        }
    }

    @Override // com.iMe.p030ui.wallet.home.attach.WalletAttachAlertView
    public void showBalances(List<TokenBalance> balances) {
        Intrinsics.checkNotNullParameter(balances, "balances");
        this.balances = balances;
        this.selectedBalance = (TokenBalance) CollectionsKt.firstOrNull((List<? extends Object>) balances);
        updateRows();
        getListAdapter().notifyItemRangeChanged(this.balancesStartRow, this.balancesEndRow);
    }

    @Override // com.iMe.p030ui.wallet.home.attach.WalletAttachAlertView
    public void showTransactions(List<BaseNode> transactions) {
        Intrinsics.checkNotNullParameter(transactions, "transactions");
        this.transactionState = GlobalState.Content.INSTANCE;
        if (!transactions.isEmpty()) {
            this.transactions = transactions;
            getListAdapter().notifyItemChanged(this.transactionsRow);
        }
    }

    @Override // com.iMe.p030ui.wallet.home.attach.WalletAttachAlertView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworks) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = this.parentAlert.getBaseFragment().getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                ChatAttachAlertWalletLayout.showChooseNetworkDialog$lambda$3(ChatAttachAlertWalletLayout.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SelectNetworkBottomSheet newInstance = companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1);
        this.activeDialog = newInstance;
        if (newInstance != null) {
            newInstance.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$3(ChatAttachAlertWalletLayout this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onNetworkSelected(crypto);
        this$0.getListAdapter().notifyItemChanged(this$0.chooseAccountHintRow);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void onRecipientSelected(String id, String address, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(address, "address");
        WalletFlowCoordinator walletFlowCoordinator = getWalletFlowCoordinator();
        INavigationLayout parentLayout = this.parentAlert.getBaseFragment().getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentAlert.baseFragment.parentLayout");
        WalletSendFragment.Companion companion = WalletSendFragment.Companion;
        TokenBalance tokenBalance = this.selectedBalance;
        Intrinsics.checkNotNull(tokenBalance);
        WalletFlowCoordinator.start$default(walletFlowCoordinator, parentLayout, companion.newInstance(new TransferScreenArgs(TokenUiMappingKt.mapToUI(tokenBalance.getToken()), address, Long.valueOf(Long.parseLong(id)), null, null, 24, null), WalletSendScreenType.WALLET_TRANSFER), false, 4, null);
        this.parentAlert.dismiss();
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionDialog(String recipient, DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = this.parentAlert.getBaseFragment().getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentAlert.baseFragment.parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, model, action, null, 8, null);
        createDialog$default.show();
        this.activeDialog = createDialog$default;
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showErrorDialog(int i, String title, String description, String buttonText, Long l) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        BaseFragment baseFragment = this.parentAlert.getBaseFragment();
        Intrinsics.checkNotNullExpressionValue(baseFragment, "parentAlert.baseFragment");
        Dialog createErrorAlert$default = DialogsFactoryKt.createErrorAlert$default(baseFragment, title, description, buttonText, null, null, 24, null);
        createErrorAlert$default.show();
        this.activeDialog = createErrorAlert$default;
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionSuccessDialog(String title, String message, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(action, "action");
        BaseFragment baseFragment = this.parentAlert.getBaseFragment();
        Intrinsics.checkNotNullExpressionValue(baseFragment, "parentAlert.baseFragment");
        Dialog createSuccessAlert$default = DialogsFactoryKt.createSuccessAlert$default(baseFragment, title, message, getResourceManager().getString(C3632R.string.common_ok), null, action, 8, null);
        createSuccessAlert$default.show();
        this.activeDialog = createSuccessAlert$default;
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        this.transactionState = GlobalState.NoInternet.INSTANCE;
        getListAdapter().notifyItemChanged(this.transactionsRow);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        this.transactionState = GlobalState.Unexpected.INSTANCE;
        getListAdapter().notifyItemChanged(this.transactionsRow);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onEmptyState() {
        this.transactionState = GlobalState.Empty.Common.INSTANCE;
        getListAdapter().notifyItemChanged(this.transactionsRow);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onLoadingState() {
        this.transactionState = GlobalState.Progress.INSTANCE;
        getListAdapter().notifyItemChanged(this.transactionsRow);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void openChatScreen(long j) {
        this.parentAlert.getBaseFragment().presentFragment(ChatActivity.newInstanceForDialogId(j));
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public void showToast(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        ContextExtKt.toast(text);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public void showLoadingDialog(final boolean z, final boolean z2, final Disposable disposable) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ChatAttachAlertWalletLayout.showLoadingDialog$lambda$10(ChatAttachAlertWalletLayout.this, z, z2, disposable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingDialog$lambda$10(ChatAttachAlertWalletLayout this$0, boolean z, boolean z2, final Disposable disposable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AlertDialog progressDialog = this$0.getProgressDialog();
        if (z) {
            progressDialog.setCanCancel(z2);
            progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    ChatAttachAlertWalletLayout.showLoadingDialog$lambda$10$lambda$9$lambda$8(Disposable.this, dialogInterface);
                }
            });
            progressDialog.show();
            return;
        }
        progressDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoadingDialog$lambda$10$lambda$9$lambda$8(Disposable disposable, DialogInterface dialogInterface) {
        if (disposable != null) {
            disposable.dispose();
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onResume() {
        getListAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onMenuItemClick(int i) {
        if (i == 40) {
            BaseFragment baseFragment = this.parentAlert.getBaseFragment();
            Intrinsics.checkNotNull(baseFragment, "null cannot be cast to non-null type org.telegram.ui.ChatActivity");
            TLRPC$User currentUser = ((ChatActivity) baseFragment).getCurrentUser();
            if (this.selectedBalance != null) {
                getPresenter().loadAddressInfoById(String.valueOf(currentUser.f1751id));
            } else {
                showToast(getResourceManager().getString(C3632R.string.transfer_via_wallet_transfer_empty_selected_account));
            }
        }
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        View childAt;
        if (this.listView.getChildCount() > 0 && (childAt = this.listView.getChildAt(1)) != null) {
            RecyclerView.ViewHolder findContainingViewHolder = this.listView.findContainingViewHolder(childAt);
            int y = ((int) childAt.getY()) - AndroidUtilities.m108dp(8.0f);
            int i = (y <= 0 || findContainingViewHolder == null || findContainingViewHolder.getAdapterPosition() != 1) ? 0 : y;
            if (y < 0 || findContainingViewHolder == null || findContainingViewHolder.getAdapterPosition() != 0) {
                y = i;
            }
            return y + AndroidUtilities.m108dp(25.0f);
        }
        return Integer.MAX_VALUE;
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m108dp(17.0f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.topPadding;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPreMeasure(int r4, int r5) {
        /*
            r3 = this;
            org.telegram.ui.Components.ChatAttachAlert r4 = r3.parentAlert
            org.telegram.ui.Components.SizeNotifierFrameLayout r4 = r4.sizeNotifierFrameLayout
            int r4 = r4.measureKeyboardHeight()
            r0 = 1101004800(0x41a00000, float:20.0)
            int r0 = org.telegram.messenger.AndroidUtilities.m108dp(r0)
            r1 = 1
            r2 = 0
            if (r4 <= r0) goto L1e
            r4 = 1112539136(0x42500000, float:52.0)
            int r4 = org.telegram.messenger.AndroidUtilities.m108dp(r4)
            org.telegram.ui.Components.ChatAttachAlert r5 = r3.parentAlert
            r5.setAllowNestedScroll(r2)
            goto L45
        L1e:
            boolean r4 = org.telegram.messenger.AndroidUtilities.isTablet()
            if (r4 != 0) goto L32
            android.graphics.Point r4 = org.telegram.messenger.AndroidUtilities.displaySize
            int r0 = r4.x
            int r4 = r4.y
            if (r0 <= r4) goto L32
            float r4 = (float) r5
            r5 = 1080033280(0x40600000, float:3.5)
            float r4 = r4 / r5
            int r4 = (int) r4
            goto L36
        L32:
            int r5 = r5 / 5
            int r4 = r5 * 2
        L36:
            r5 = 1095761920(0x41500000, float:13.0)
            int r5 = org.telegram.messenger.AndroidUtilities.m108dp(r5)
            int r4 = r4 - r5
            if (r4 >= 0) goto L40
            r4 = r2
        L40:
            org.telegram.ui.Components.ChatAttachAlert r5 = r3.parentAlert
            r5.setAllowNestedScroll(r1)
        L45:
            r3.ignoreLayout = r1
            int r5 = r3.topPadding
            if (r5 == r4) goto L5c
            r3.topPadding = r4
            org.telegram.ui.Components.RecyclerListView r4 = r3.listView
            r5 = 0
            r4.setItemAnimator(r5)
            com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter r4 = r3.getListAdapter()
            int r5 = r3.paddingRow
            r4.notifyItemChanged(r5)
        L5c:
            r3.ignoreLayout = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p023ui.view.ChatAttachAlertWalletLayout.onPreMeasure(int, int):void");
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getButtonsHideOffset() {
        return AndroidUtilities.m108dp(70.0f);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.ignoreLayout) {
            return;
        }
        super.requestLayout();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onDestroy() {
        super.onDestroy();
        getProgressDialog().dismiss();
        Dialog dialog = this.activeDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        onDestroyMvpView();
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void scrollToTop() {
        this.listView.smoothScrollToPosition(1);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onShow(ChatAttachAlert.AttachAlertLayout attachAlertLayout) {
        this.parentAlert.actionBar.setTitle(LocaleController.getInternalString(C3632R.string.transfer_via_wallet_toolbar_title));
        ActionBarMenuItem onShow$lambda$11 = this.parentAlert.doneItem;
        Intrinsics.checkNotNullExpressionValue(onShow$lambda$11, "onShow$lambda$11");
        ViewExtKt.visible$default(onShow$lambda$11, false, 1, null);
        String internalString = LocaleController.getInternalString(C3632R.string.transfer_via_wallet_action_item);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…r_via_wallet_action_item)");
        String upperCase = internalString.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        onShow$lambda$11.setText(upperCase);
        this.listLayoutManager.scrollToPositionWithOffset(0, 0);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public void onHide() {
        ActionBarMenuItem onHide$lambda$12 = this.parentAlert.doneItem;
        Intrinsics.checkNotNullExpressionValue(onHide$lambda$12, "onHide$lambda$12");
        ViewExtKt.invisible$default(onHide$lambda$12, false, 1, null);
        String string = LocaleController.getString("Create", C3632R.string.Create);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Create\", R.string.Create)");
        String upperCase = string.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        onHide$lambda$12.setText(upperCase);
    }

    @Override // org.telegram.p043ui.Components.ChatAttachAlert.AttachAlertLayout
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        int i = Theme.key_switchTrackChecked;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow), new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular), new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3), new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i), new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText4), new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i), new ThemeDescription(this.listView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_checkboxCheck));
        return arrayListOf;
    }

    private final void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.paddingRow = 0;
        int i2 = i + 1;
        this.rowCount = i2;
        this.sendHeaderRow = i;
        int i3 = i2 + 1;
        this.rowCount = i3;
        this.chooseAccountHintRow = i2;
        int i4 = i3 + 1;
        this.rowCount = i4;
        this.sendSectionRow = i3;
        this.rowCount = i4 + 1;
        this.accountsHeaderRow = i4;
        if (!this.balances.isEmpty()) {
            int i5 = this.rowCount;
            this.balancesStartRow = i5;
            int size = i5 + this.balances.size();
            this.rowCount = size;
            this.balancesEndRow = size;
        } else {
            this.balancesStartRow = -1;
            this.balancesEndRow = -1;
        }
        int i6 = this.rowCount;
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.accountsSectionRow = i6;
        int i8 = i7 + 1;
        this.rowCount = i8;
        this.transactionsHeaderRow = i7;
        this.rowCount = i8 + 1;
        this.transactionsRow = i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChatAttachAlertWalletLayout.kt */
    /* renamed from: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context mContext;
        final /* synthetic */ ChatAttachAlertWalletLayout this$0;

        public ListAdapter(ChatAttachAlertWalletLayout chatAttachAlertWalletLayout, Context mContext) {
            Intrinsics.checkNotNullParameter(mContext, "mContext");
            this.this$0 = chatAttachAlertWalletLayout;
            this.mContext = mContext;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            List mutableList;
            int indexOf;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = holder.getItemViewType();
            if (itemViewType == IdFabric$ViewTypes.HEADER_CELL) {
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type org.telegram.ui.Cells.HeaderCell");
                HeaderCell headerCell = (HeaderCell) view;
                ChatAttachAlertWalletLayout chatAttachAlertWalletLayout = this.this$0;
                if (i == chatAttachAlertWalletLayout.sendHeaderRow) {
                    headerCell.getTextView().setGravity(19);
                    headerCell.setText(LocaleController.getInternalString(C3632R.string.transfer_via_wallet_transfer_title));
                    return;
                }
                headerCell.getTextView().setGravity((LocaleController.isRTL ? 5 : 3) | 16);
                if (i != chatAttachAlertWalletLayout.accountsHeaderRow) {
                    if (i == chatAttachAlertWalletLayout.transactionsHeaderRow) {
                        headerCell.setText(LocaleController.getInternalString(C3632R.string.transfer_via_wallet_transaction_title));
                        return;
                    }
                    return;
                }
                headerCell.setText(LocaleController.getInternalString(C3632R.string.transfer_via_wallet_my_accounts_title));
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_NETWORK_SWITCHER) {
                View view2 = holder.itemView;
                Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type com.iMe.fork.ui.view.TextNetworkSwitcherCell");
                TextNetworkSwitcherCell textNetworkSwitcherCell = (TextNetworkSwitcherCell) view2;
                final ChatAttachAlertWalletLayout chatAttachAlertWalletLayout2 = this.this$0;
                if (i == chatAttachAlertWalletLayout2.chooseAccountHintRow) {
                    textNetworkSwitcherCell.setNetworkType(chatAttachAlertWalletLayout2.getPresenter().getCurrentNetworkItem());
                    textNetworkSwitcherCell.setNetworkTypeClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            ChatAttachAlertWalletLayout.ListAdapter.onBindViewHolder$lambda$2$lambda$1(ChatAttachAlertWalletLayout.this, view3);
                        }
                    });
                    String internalString = LocaleController.getInternalString(C3632R.string.transfer_via_wallet_choose_account_hint);
                    Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…llet_choose_account_hint)");
                    textNetworkSwitcherCell.setText(internalString);
                    textNetworkSwitcherCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
                }
            } else if (itemViewType == IdFabric$ViewTypes.IMAGE_RADIO) {
                View view3 = holder.itemView;
                Intrinsics.checkNotNull(view3, "null cannot be cast to non-null type com.iMe.fork.ui.view.ImageRadioCell");
                ImageRadioCell imageRadioCell = (ImageRadioCell) view3;
                ChatAttachAlertWalletLayout chatAttachAlertWalletLayout3 = this.this$0;
                int i2 = i - chatAttachAlertWalletLayout3.balancesStartRow;
                TokenBalance tokenBalance = (TokenBalance) CollectionsKt.getOrNull(chatAttachAlertWalletLayout3.balances, i2);
                if (tokenBalance != null) {
                    String totalBalanceShortText = TokenBalanceExtKt.getTotalBalanceShortText(tokenBalance);
                    indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends Object>) ((List) chatAttachAlertWalletLayout3.balances), (Object) chatAttachAlertWalletLayout3.selectedBalance);
                    imageRadioCell.setText(totalBalanceShortText, indexOf == i2, i == chatAttachAlertWalletLayout3.balancesEndRow);
                    imageRadioCell.setImageUrl(tokenBalance.getToken().getAvatarUrl());
                }
            } else if (itemViewType == IdFabric$ViewTypes.TRANSACTION) {
                ((GlobalStateLayout) holder.itemView.findViewById(C3632R.C3635id.global_state_layout)).setInternalState(this.this$0.transactionState);
                if (Intrinsics.areEqual(this.this$0.transactionState, GlobalState.Content.INSTANCE)) {
                    WalletTransactionsRecycleAdapter transactionAdapter = this.this$0.getTransactionAdapter();
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.this$0.transactions);
                    transactionAdapter.setNewInstance(mutableList);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$2$lambda$1(ChatAttachAlertWalletLayout this$0, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.getPresenter().startChooseNetworkDialog();
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            int i = this.this$0.balancesStartRow;
            int i2 = this.this$0.balancesEndRow;
            int adapterPosition = holder.getAdapterPosition();
            return i <= adapterPosition && adapterPosition < i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            View imageRadioCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.HEADER_CELL) {
                imageRadioCell = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 21, 15, false);
            } else if (i == IdFabric$ViewTypes.SHADOW_SECTION) {
                imageRadioCell = new ShadowSectionCell(this.mContext);
                CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawable(this.mContext, C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                combinedDrawable.setFullsize(true);
                imageRadioCell.setBackground(combinedDrawable);
            } else if (i == IdFabric$ViewTypes.TEXT_NETWORK_SWITCHER) {
                imageRadioCell = new TextNetworkSwitcherCell(this.mContext, false, 2, null);
            } else if (i == IdFabric$ViewTypes.TOP_PADDING) {
                final Context context = this.mContext;
                final ChatAttachAlertWalletLayout chatAttachAlertWalletLayout = this.this$0;
                imageRadioCell = new View(context) { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$2
                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        int i4;
                        int size = View.MeasureSpec.getSize(i2);
                        i4 = ChatAttachAlertWalletLayout.this.topPadding;
                        setMeasuredDimension(size, i4);
                    }
                };
            } else if (i == IdFabric$ViewTypes.TRANSACTION) {
                imageRadioCell = LayoutInflater.from(((ChatAttachAlert.AttachAlertLayout) this.this$0).parentAlert.getBaseFragment().getParentActivity()).inflate(C3632R.layout.fork_recycle_item_wallet_attach_transactions, parent, false);
                final ChatAttachAlertWalletLayout chatAttachAlertWalletLayout2 = this.this$0;
                RecyclerView recyclerView = (RecyclerView) imageRadioCell.findViewById(C3632R.C3635id.recycle_transactions);
                WalletTransactionsRecycleAdapter transactionAdapter = chatAttachAlertWalletLayout2.getTransactionAdapter();
                transactionAdapter.getHeaderProvider().setExtraPadding(6.0f);
                transactionAdapter.getTokenTransactionProvider().setExtraPadding(6.0f);
                transactionAdapter.setDiffCallback(new TransactionDiffCallback());
                transactionAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda1
                    @Override // com.chad.library.adapter.base.listener.OnItemClickListener
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                        ChatAttachAlertWalletLayout.ListAdapter.onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6(ChatAttachAlertWalletLayout.this, baseQuickAdapter, view, i2);
                    }
                });
                recyclerView.setAdapter(transactionAdapter);
                recyclerView.setNestedScrollingEnabled(false);
                recyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
                ((GlobalStateLayout) imageRadioCell.findViewById(C3632R.C3635id.global_state_layout)).setRetryButtonClickListener(new Function0<Unit>() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter$onCreateViewHolder$3$2$1
                    /* JADX INFO: Access modifiers changed from: package-private */
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
                        ChatAttachAlertWalletLayout.this.getPresenter().getWalletData(true);
                    }
                });
            } else {
                imageRadioCell = new ImageRadioCell(this.mContext, false, 0, 6, null);
            }
            imageRadioCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(imageRadioCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6(final ChatAttachAlertWalletLayout this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
            Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
            BaseNode baseNode = (BaseNode) this$0.getTransactionAdapter().getItem(i);
            if (baseNode instanceof TransactionItem) {
                TransactionItem transactionItem = (TransactionItem) baseNode;
                if (transactionItem.isUnsupported()) {
                    return;
                }
                WalletTransactionDetailsBottomSheetDialog.Companion companion = WalletTransactionDetailsBottomSheetDialog.Companion;
                BaseFragment baseFragment = ((ChatAttachAlert.AttachAlertLayout) this$0).parentAlert.getBaseFragment();
                Intrinsics.checkNotNullExpressionValue(baseFragment, "parentAlert.baseFragment");
                this$0.activeDialog = companion.newInstance(baseFragment, new WalletTransactionDetailsScreenType.TransactionDetails(transactionItem), new Callbacks$Callback1() { // from class: com.iMe.fork.ui.view.ChatAttachAlertWalletLayout$ListAdapter$$ExternalSyntheticLambda2
                    @Override // com.iMe.fork.utils.Callbacks$Callback1
                    public final void invoke(Object obj) {
                        ChatAttachAlertWalletLayout.ListAdapter.onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6$lambda$5(ChatAttachAlertWalletLayout.this, (ActionItem) obj);
                    }
                });
                Dialog dialog = this$0.activeDialog;
                if (dialog != null) {
                    dialog.show();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$10$lambda$8$lambda$7$lambda$6$lambda$5(ChatAttachAlertWalletLayout this$0, ActionItem actionItem) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (actionItem instanceof TransactionActionItem.Copy) {
                return;
            }
            ((ChatAttachAlert.AttachAlertLayout) this$0).parentAlert.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            boolean z = false;
            if ((i == this.this$0.sendHeaderRow || i == this.this$0.accountsHeaderRow) || i == this.this$0.transactionsHeaderRow) {
                return IdFabric$ViewTypes.HEADER_CELL;
            }
            if (i == this.this$0.sendSectionRow || i == this.this$0.accountsSectionRow) {
                return IdFabric$ViewTypes.SHADOW_SECTION;
            }
            int i2 = this.this$0.balancesStartRow;
            if (i <= this.this$0.balancesEndRow && i2 <= i) {
                z = true;
            }
            return z ? IdFabric$ViewTypes.IMAGE_RADIO : i == this.this$0.chooseAccountHintRow ? IdFabric$ViewTypes.TEXT_NETWORK_SWITCHER : i == this.this$0.paddingRow ? IdFabric$ViewTypes.TOP_PADDING : IdFabric$ViewTypes.TRANSACTION;
        }
    }
}
