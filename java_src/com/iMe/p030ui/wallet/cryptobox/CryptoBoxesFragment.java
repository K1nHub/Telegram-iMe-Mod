package com.iMe.p030ui.wallet.cryptobox;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p023ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.cryptobox.CryptoBoxItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.p030ui.wallet.cryptobox.adapter.CryptoBoxesRecycleAdapter;
import com.iMe.p030ui.wallet.cryptobox.adapter.diff.CryptoBoxesDiffCallback;
import com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxFragment;
import com.iMe.p030ui.wallet.home.details.WalletTokenDetailsFragment;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
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
import org.telegram.messenger.databinding.ForkFragmentCryptoboxesBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ChatRightsEditActivity;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CryptoBoxesFragment.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment */
/* loaded from: classes.dex */
public final class CryptoBoxesFragment extends WalletAuthBaseFragment implements CryptoBoxesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CryptoBoxesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CryptoBoxesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCryptoboxesBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy cryptoBoxesAdapter$delegate;
    private NetworkTypeView networkTypeView;
    private final MoxyKtxDelegate presenter$delegate;

    public static final CryptoBoxesFragment newInstance(TLRPC$Chat tLRPC$Chat) {
        return Companion.newInstance(tLRPC$Chat);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public CryptoBoxesFragment(final TLRPC$Chat tLRPC$Chat) {
        Lazy lazy;
        Function0<CryptoBoxesPresenter> function0 = new Function0<CryptoBoxesPresenter>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoBoxesPresenter invoke() {
                Lazy lazy2;
                final CryptoBoxesFragment cryptoBoxesFragment = CryptoBoxesFragment.this;
                final TLRPC$Chat tLRPC$Chat2 = tLRPC$Chat;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(TLRPC$Chat.this);
                    }
                };
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CryptoBoxesPresenter>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.cryptobox.CryptoBoxesPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CryptoBoxesPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoBoxesPresenter.class), qualifier, function03);
                    }
                });
                return (CryptoBoxesPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CryptoBoxesPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CryptoBoxesRecycleAdapter>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.cryptobox.adapter.CryptoBoxesRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoBoxesRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoBoxesRecycleAdapter.class), qualifier, function02);
            }
        });
        this.cryptoBoxesAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentCryptoboxesBinding>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentCryptoboxesBinding invoke() {
                return ForkFragmentCryptoboxesBinding.inflate(BaseFragmentExtKt.getLayoutInflater(CryptoBoxesFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CryptoBoxesPresenter getPresenter() {
        return (CryptoBoxesPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final CryptoBoxesRecycleAdapter getCryptoBoxesAdapter() {
        return (CryptoBoxesRecycleAdapter) this.cryptoBoxesAdapter$delegate.getValue();
    }

    private final ForkFragmentCryptoboxesBinding getBinding() {
        return (ForkFragmentCryptoboxesBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupRecycleView();
        setupListeners();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem network, List<? extends NetworkItem> availableNetworks) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CryptoBoxesFragment.showChooseNetworkDialog$lambda$0(CryptoBoxesFragment.this, (NetworkItem.Crypto) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$0(CryptoBoxesFragment this$0, NetworkItem.Crypto crypto) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onNetworkSelected(crypto);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void showChooseOrderDialog(DialogModel dialogModel, List<String> titles, int i) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(titles, "titles");
        showDialog(DialogsFactoryKt.createSingleChooserDialog$default(this, dialogModel, null, null, titles, i, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CryptoBoxesFragment.showChooseOrderDialog$lambda$1(CryptoBoxesFragment.this, (Integer) obj);
            }
        }, 6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseOrderDialog$lambda$1(CryptoBoxesFragment this$0, Integer it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CryptoBoxesPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.onOrderStrategySelected(it.intValue());
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        BaseFragment lastFragment = this.parentLayout.getLastFragment();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        lastFragment.showDialog(DialogUtils.createDialog$default(context, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void openAddAdminScreen(long j, TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        ChatRightsEditActivity chatRightsEditActivity = new ChatRightsEditActivity(j, chat.f1602id, null, null, null, null, 0, true, true, null);
        chatRightsEditActivity.setDelegate(new CryptoBoxesFragment$openAddAdminScreen$fragment$1$1(chatRightsEditActivity, j, this));
        presentFragment(chatRightsEditActivity);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void openCryptoBoxCreationScreen(TLRPC$Chat tLRPC$Chat, Network network) {
        presentFragment(CreateCryptoBoxFragment.Companion.newInstance(tLRPC$Chat, network));
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void openCryptoBoxDetailsScreen(CryptoBoxInfo cryptoBoxInfo) {
        Intrinsics.checkNotNullParameter(cryptoBoxInfo, "cryptoBoxInfo");
        presentFragment(WalletTokenDetailsFragment.Companion.newInstance(new TokenDetailsArgs.CryptoBox(cryptoBoxInfo)));
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getCryptoBoxesAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void setupNetwork(NetworkItem networkItem) {
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        NetworkTypeView networkTypeView = this.networkTypeView;
        if (networkTypeView == null) {
            return;
        }
        networkTypeView.setNetwork(networkItem);
    }

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        SwipeRefreshLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final CryptoBoxesRecycleAdapter cryptoBoxesAdapter = getCryptoBoxesAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().recycleCryptoboxes, ThemeDescription.FLAG_BACKGROUND, Theme.key_windowBackgroundWhite), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$$ExternalSyntheticLambda5
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CryptoBoxesRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.cryptoboxes_title));
        c3704ActionBar.setAllowOverlayTitle(true);
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        this.networkTypeView = new NetworkTypeView(parentActivity, null, 0, 6, null);
        ActionBarMenuItem setupActionBar$lambda$4$lambda$3 = c3704ActionBar.createMenu().addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
        setupActionBar$lambda$4$lambda$3.disableRipple();
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$4$lambda$3, "setupActionBar$lambda$4$lambda$3");
        ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$4$lambda$3, AndroidUtilities.m104dp(14));
        setupActionBar$lambda$4$lambda$3.addView(this.networkTypeView, LayoutHelper.createFrame(-2, -2, 8388629));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                CryptoBoxesPresenter presenter;
                if (i == -1) {
                    CryptoBoxesFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.NETWORK_SWITCH) {
                    presenter = CryptoBoxesFragment.this.getPresenter();
                    presenter.onSelectNetworkClick();
                }
            }
        });
    }

    private final void setupColors() {
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setColorSchemeColors(Theme.getColor(Theme.key_chats_actionBackground));
        root.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        final CryptoBoxesRecycleAdapter cryptoBoxesAdapter = getCryptoBoxesAdapter();
        cryptoBoxesAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CryptoBoxesFragment.setupListeners$lambda$8$lambda$6(CryptoBoxesRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        cryptoBoxesAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CryptoBoxesFragment.setupListeners$lambda$8$lambda$7(CryptoBoxesFragment.this, baseQuickAdapter, view, i);
            }
        });
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                CryptoBoxesFragment.setupListeners$lambda$9(CryptoBoxesFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$8$lambda$6(CryptoBoxesRecycleAdapter this_with, CryptoBoxesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof CryptoBoxItem) {
            this$0.getPresenter().onCryptoBoxItemClick((CryptoBoxItem) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$8$lambda$7(CryptoBoxesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        int id = view.getId();
        if (id == C3632R.C3635id.button_action) {
            this$0.getPresenter().onCreateCryptoBoxClick();
        } else if (id == C3632R.C3635id.image_order) {
            this$0.getPresenter().onSelectOrderClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$9(CryptoBoxesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadCryptoBoxes(true);
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleCryptoboxes;
        CryptoBoxesRecycleAdapter cryptoBoxesAdapter = getCryptoBoxesAdapter();
        GlobalStateProvider globalStateProvider = cryptoBoxesAdapter.getGlobalStateProvider();
        globalStateProvider.setWhiteBackground(true);
        globalStateProvider.setCustomElevation(recyclerView.getResources().getDimension(C3632R.dimen.wallet_card_elevation));
        globalStateProvider.setOnRetryButtonClickAction(new Function0<Unit>() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$setupRecycleView$1$1$1$1
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
                CryptoBoxesPresenter presenter;
                presenter = CryptoBoxesFragment.this.getPresenter();
                CryptoBoxesPresenter.loadCryptoBoxes$default(presenter, false, 1, null);
            }
        });
        cryptoBoxesAdapter.setDiffCallback(new CryptoBoxesDiffCallback());
        recyclerView.setAdapter(cryptoBoxesAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerView.setItemAnimator(null);
    }

    /* compiled from: CryptoBoxesFragment.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CryptoBoxesFragment newInstance$default(Companion companion, TLRPC$Chat tLRPC$Chat, int i, Object obj) {
            if ((i & 1) != 0) {
                tLRPC$Chat = null;
            }
            return companion.newInstance(tLRPC$Chat);
        }

        public final CryptoBoxesFragment newInstance(TLRPC$Chat tLRPC$Chat) {
            return new CryptoBoxesFragment(tLRPC$Chat);
        }
    }
}
