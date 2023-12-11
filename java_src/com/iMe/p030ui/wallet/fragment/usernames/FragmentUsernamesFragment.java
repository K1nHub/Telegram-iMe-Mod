package com.iMe.p030ui.wallet.fragment.usernames;

import android.app.Activity;
import android.content.Context;
import android.text.InputFilter;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.adapter.provider.GlobalStateProvider;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.fragment.usernames.adapter.TonFragmentProductsRecycleAdapter;
import com.iMe.p030ui.wallet.fragment.usernames.adapter.diff.TonFragmentProductsDiffCallback;
import com.iMe.p030ui.wallet.fragment.usernames.details.TonFragmentProductDetailsBottomSheetDialog;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
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
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentFragmentProductsBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.EditTextBoldCursor;
/* compiled from: FragmentUsernamesFragment.kt */
/* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment */
/* loaded from: classes4.dex */
public final class FragmentUsernamesFragment extends WalletAuthBaseFragment implements FragmentUsernamesView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(FragmentUsernamesFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(FragmentUsernamesFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentProductsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy productsRecycleAdapter$delegate;

    public static final FragmentUsernamesFragment newInstance() {
        return Companion.newInstance();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public FragmentUsernamesFragment() {
        Lazy lazy;
        Function0<FragmentUsernamesPresenter> function0 = new Function0<FragmentUsernamesPresenter>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FragmentUsernamesPresenter invoke() {
                Lazy lazy2;
                final FragmentUsernamesFragment fragmentUsernamesFragment = FragmentUsernamesFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<FragmentUsernamesPresenter>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final FragmentUsernamesPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(FragmentUsernamesPresenter.class), qualifier, function02);
                    }
                });
                return (FragmentUsernamesPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, FragmentUsernamesPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TonFragmentProductsRecycleAdapter>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.fragment.usernames.adapter.TonFragmentProductsRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TonFragmentProductsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TonFragmentProductsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.productsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentFragmentProductsBinding>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentFragmentProductsBinding invoke() {
                return ForkFragmentFragmentProductsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(FragmentUsernamesFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentUsernamesPresenter getPresenter() {
        return (FragmentUsernamesPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final TonFragmentProductsRecycleAdapter getProductsRecycleAdapter() {
        return (TonFragmentProductsRecycleAdapter) this.productsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentFragmentProductsBinding getBinding() {
        return (ForkFragmentFragmentProductsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupRecycleView();
        setupColors();
        setupListeners();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createFormattedDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                FragmentUsernamesFragment.showConfirmationDialog$lambda$0(FragmentUsernamesFragment.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmationDialog$lambda$0(FragmentUsernamesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().buyUsername();
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showActionSuccess() {
        DialogsFactoryKt.showSuccessAlert(this, getResourceManager().getString(C3632R.string.cryptobox_create_success_title), getResourceManager().getString(C3632R.string.fragment_usernames_buy_success_description), getResourceManager().getString(C3632R.string.common_ok), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda5
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                FragmentUsernamesFragment.showActionSuccess$lambda$1(FragmentUsernamesFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showActionSuccess$lambda$1(FragmentUsernamesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentUsernamesPresenter.loadProducts$default(this$0.getPresenter(), false, 1, null);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showActionError(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3632R.string.common_error), message, getResourceManager().getString(C3632R.string.common_ok), null, 8, null);
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showChooseSortingTypeDialog(DialogModel dialogModel, List<String> titles, int i) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(titles, "titles");
        showDialog(DialogsFactoryKt.createSingleChooserDialog$default(this, dialogModel, null, null, titles, i, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                FragmentUsernamesFragment.showChooseSortingTypeDialog$lambda$2(FragmentUsernamesFragment.this, (Integer) obj);
            }
        }, 6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseSortingTypeDialog$lambda$2(FragmentUsernamesFragment this$0, Integer it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentUsernamesPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.onSortingTypeSelected(it.intValue());
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void showProductDetailsDialog(TonFragmentItem.Product productItem) {
        Intrinsics.checkNotNullParameter(productItem, "productItem");
        showDialog(TonFragmentProductDetailsBottomSheetDialog.Companion.newInstance(this, productItem, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda6
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                FragmentUsernamesFragment.showProductDetailsDialog$lambda$3(FragmentUsernamesFragment.this);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showProductDetailsDialog$lambda$3(FragmentUsernamesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onBuyClick();
    }

    @Override // com.iMe.p030ui.wallet.fragment.usernames.FragmentUsernamesView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getProductsRecycleAdapter(), items, null, 2, null);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda7
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                FragmentUsernamesFragment.getThemeDescriptions$lambda$4(FragmentUsernamesFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$4(FragmentUsernamesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getProductsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setTitle(getResourceManager().getString(C3632R.string.fragment_usernames_title));
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    FragmentUsernamesFragment.this.finishFragment();
                }
            }
        });
        ActionBarMenuItem actionBarMenuItemSearchListener = c3704ActionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3632R.C3634drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                FragmentUsernamesPresenter presenter;
                presenter = FragmentUsernamesFragment.this.getPresenter();
                presenter.onQueryUpdate("");
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                FragmentUsernamesPresenter presenter;
                Intrinsics.checkNotNullParameter(editText, "editText");
                presenter = FragmentUsernamesFragment.this.getPresenter();
                presenter.onQueryUpdate(editText.getText().toString());
            }
        });
        EditTextBoldCursor searchField = actionBarMenuItemSearchListener.getSearchField();
        searchField.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(32)});
        searchField.setImeOptions(Integer.MIN_VALUE);
        actionBarMenuItemSearchListener.setSearchFieldHint(getResourceManager().getString(C3632R.string.fragment_usernames_search_hint));
        actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", C3632R.string.Search));
    }

    private final void setupColors() {
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        root.setColorSchemeColors(getThemedColor(Theme.key_chats_actionBackground));
    }

    private final void setupListeners() {
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                FragmentUsernamesFragment.setupListeners$lambda$10$lambda$9(FragmentUsernamesFragment.this);
            }
        });
        final TonFragmentProductsRecycleAdapter productsRecycleAdapter = getProductsRecycleAdapter();
        productsRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                FragmentUsernamesFragment.setupListeners$lambda$13$lambda$11(TonFragmentProductsRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        productsRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                FragmentUsernamesFragment.setupListeners$lambda$13$lambda$12(FragmentUsernamesFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$10$lambda$9(FragmentUsernamesFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadProducts(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$13$lambda$11(TonFragmentProductsRecycleAdapter this_with, FragmentUsernamesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof TonFragmentItem.Product) {
            this$0.getPresenter().onProductItemClick((TonFragmentItem.Product) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$13$lambda$12(FragmentUsernamesFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getId() == C3632R.C3635id.image_order) {
            this$0.getPresenter().onSelectSortingTypeClick();
        }
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recyclerProducts;
        TonFragmentProductsRecycleAdapter productsRecycleAdapter = getProductsRecycleAdapter();
        GlobalStateProvider globalStateProvider = productsRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setWhiteBackground(true);
        globalStateProvider.setCustomElevation(recyclerView.getResources().getDimension(C3632R.dimen.wallet_card_elevation));
        globalStateProvider.setOnRetryButtonClickAction(new Function0<Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$setupRecycleView$1$1$1$1
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
                FragmentUsernamesPresenter presenter;
                presenter = FragmentUsernamesFragment.this.getPresenter();
                FragmentUsernamesPresenter.loadProducts$default(presenter, false, 1, null);
            }
        });
        productsRecycleAdapter.setDiffCallback(new TonFragmentProductsDiffCallback());
        recyclerView.setAdapter(productsRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerView.setItemAnimator(null);
    }

    /* compiled from: FragmentUsernamesFragment.kt */
    /* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FragmentUsernamesFragment newInstance() {
            return new FragmentUsernamesFragment();
        }
    }
}
