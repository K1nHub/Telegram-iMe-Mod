package com.iMe.feature.twitter.search;

import android.app.Activity;
import android.content.Context;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.common.IdFabric$Menu;
import com.iMe.feature.twitter.search.adapter.TwitterUsersRecycleAdapter;
import com.iMe.feature.twitter.search.adapter.diff.TwitterSearchDiffCallback;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.twitter.TwitterInviteItem;
import com.iMe.model.twitter.TwitterUserItem;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
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
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkFragmentTwitterSearchBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.EditTextBoldCursor;
/* compiled from: TwitterSearchFragment.kt */
/* loaded from: classes4.dex */
public final class TwitterSearchFragment extends MvpFragment implements TwitterSearchView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TwitterSearchFragment.class, "presenter", "getPresenter()Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(TwitterSearchFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterSearchBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Callbacks$Callback2<TwitterUserItem, String> onUserSelectedAction;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private ActionBarMenuItem searchItem;
    private final Lazy twitterUsersRecycleAdapter$delegate;

    public static final TwitterSearchFragment newInstance(BlockchainType blockchainType, Callbacks$Callback2<TwitterUserItem, String> callbacks$Callback2) {
        return Companion.newInstance(blockchainType, callbacks$Callback2);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public TwitterSearchFragment(final BlockchainType blockchainType, Callbacks$Callback2<TwitterUserItem, String> onUserSelectedAction) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(onUserSelectedAction, "onUserSelectedAction");
        this.onUserSelectedAction = onUserSelectedAction;
        Function0<TwitterSearchPresenter> function0 = new Function0<TwitterSearchPresenter>() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TwitterSearchPresenter invoke() {
                Lazy lazy3;
                final TwitterSearchFragment twitterSearchFragment = TwitterSearchFragment.this;
                final BlockchainType blockchainType2 = blockchainType;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(BlockchainType.this);
                    }
                };
                lazy3 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TwitterSearchPresenter>() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.feature.twitter.search.TwitterSearchPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final TwitterSearchPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(TwitterSearchPresenter.class), qualifier, function03);
                    }
                });
                return (TwitterSearchPresenter) lazy3.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, TwitterSearchPresenter.class.getName() + ".presenter", function0);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$special$$inlined$inject$default$1
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
        this.resourceManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TwitterUsersRecycleAdapter>() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.feature.twitter.search.adapter.TwitterUsersRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TwitterUsersRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TwitterUsersRecycleAdapter.class), qualifier, function02);
            }
        });
        this.twitterUsersRecycleAdapter$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentTwitterSearchBinding>() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentTwitterSearchBinding invoke() {
                return ForkFragmentTwitterSearchBinding.inflate(BaseFragmentExtKt.getLayoutInflater(TwitterSearchFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TwitterSearchPresenter getPresenter() {
        return (TwitterSearchPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final TwitterUsersRecycleAdapter getTwitterUsersRecycleAdapter() {
        return (TwitterUsersRecycleAdapter) this.twitterUsersRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentTwitterSearchBinding getBinding() {
        return (ForkFragmentTwitterSearchBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupListeners();
        setupRecycleView();
        setupColors();
        RecyclerView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        ActionBarMenuItem actionBarMenuItem;
        if (!z || z2 || (actionBarMenuItem = this.searchItem) == null) {
            return;
        }
        actionBarMenuItem.performClick();
    }

    @Override // com.iMe.feature.twitter.search.TwitterSearchView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getTwitterUsersRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getTwitterUsersRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getTwitterUsersRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.feature.twitter.search.TwitterSearchView
    public void onUserSelected(TwitterUserItem twitterUserItem, String address) {
        Intrinsics.checkNotNullParameter(twitterUserItem, "twitterUserItem");
        Intrinsics.checkNotNullParameter(address, "address");
        this.onUserSelectedAction.invoke(twitterUserItem, address);
        finishFragment();
    }

    @Override // com.iMe.feature.twitter.search.TwitterSearchView
    public void showInviteConfirmationDialog(DialogModel dialogModel, final long j) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialog$default(context, dialogModel, new Callbacks$Callback() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TwitterSearchFragment.showInviteConfirmationDialog$lambda$1(TwitterSearchFragment.this, j);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInviteConfirmationDialog$lambda$1(TwitterSearchFragment this$0, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().sendInvite(j);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void onRecipientSelected(String id, String address, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(address, "address");
        getPresenter().processSelectedRecipient(id, address);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionDialog(String recipient, DialogModel model, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog(parentActivity, model, action, null));
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showErrorDialog(String title, String description, String buttonText) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        DialogsFactoryKt.showErrorAlert(this, title, description, buttonText, null);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionSuccessDialog(String title, String message, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(action, "action");
        DialogsFactoryKt.showSuccessAlert(this, title, message, getResourceManager().getString(C3473R.string.common_ok), action);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void openChatScreen(long j) {
        presentFragment(ChatActivity.newInstanceForDialogId(j));
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                TwitterSearchFragment.getThemeDescriptions$lambda$2(TwitterSearchFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2(TwitterSearchFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getTwitterUsersRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3541ActionBar c3541ActionBar = this.actionBar;
        c3541ActionBar.setBackButtonImage(C3473R.C3475drawable.ic_ab_back);
        c3541ActionBar.setAllowOverlayTitle(true);
        c3541ActionBar.setTitle(getResourceManager().getString(C3473R.string.wallet_binance_receive_choose_contact_title));
        ActionBarMenuItem actionBarMenuItemSearchListener = c3541ActionBar.createMenu().addItem(IdFabric$Menu.SEARCH, C3473R.C3475drawable.ic_ab_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                TwitterSearchPresenter presenter;
                presenter = TwitterSearchFragment.this.getPresenter();
                presenter.onQueryUpdate("");
            }

            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                TwitterSearchPresenter presenter;
                Intrinsics.checkNotNullParameter(editText, "editText");
                presenter = TwitterSearchFragment.this.getPresenter();
                presenter.onQueryUpdate(editText.getText().toString());
            }
        });
        EditTextBoldCursor searchField = actionBarMenuItemSearchListener.getSearchField();
        searchField.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(15)});
        searchField.setImeOptions(Integer.MIN_VALUE);
        actionBarMenuItemSearchListener.setSearchFieldHint(getResourceManager().getString(C3473R.string.twitter_search_hint));
        actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString("Search", C3473R.string.Search));
        this.searchItem = actionBarMenuItemSearchListener;
        c3541ActionBar.setActionBarMenuOnItemClick(new C3541ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$setupActionBar$1$3
            @Override // org.telegram.p043ui.ActionBar.C3541ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    TwitterSearchFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleTweets;
        TwitterUsersRecycleAdapter twitterUsersRecycleAdapter = getTwitterUsersRecycleAdapter();
        GlobalStateProvider globalStateProvider = twitterUsersRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setMatchParentHeight(true);
        globalStateProvider.setOnRetryButtonClickAction(new Function0<Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$setupRecycleView$1$1$1$1
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
                TwitterSearchPresenter presenter;
                presenter = TwitterSearchFragment.this.getPresenter();
                presenter.reload();
            }
        });
        twitterUsersRecycleAdapter.setDiffCallback(new TwitterSearchDiffCallback());
        setupLoadMore(twitterUsersRecycleAdapter);
        recyclerView.setAdapter(twitterUsersRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(TwitterUsersRecycleAdapter twitterUsersRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = twitterUsersRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                TwitterSearchFragment.setupLoadMore$lambda$12$lambda$11$lambda$10(TwitterSearchFragment.this);
            }
        });
        twitterUsersRecycleAdapter.setAnimationEnable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$12$lambda$11$lambda$10(TwitterSearchFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TwitterSearchPresenter.searchByQuery$default(this$0.getPresenter(), false, 1, null);
    }

    private final void setupListeners() {
        final TwitterUsersRecycleAdapter twitterUsersRecycleAdapter = getTwitterUsersRecycleAdapter();
        twitterUsersRecycleAdapter.getTwitterInviteProvider().setOnInviteClickAction(new Callbacks$Callback1() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                TwitterSearchFragment.setupListeners$lambda$15$lambda$13(TwitterSearchFragment.this, (TwitterInviteItem) obj);
            }
        });
        twitterUsersRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.feature.twitter.search.TwitterSearchFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TwitterSearchFragment.setupListeners$lambda$15$lambda$14(TwitterUsersRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15$lambda$13(TwitterSearchFragment this$0, TwitterInviteItem item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TwitterSearchPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(item, "item");
        presenter.onInviteClick(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15$lambda$14(TwitterUsersRecycleAdapter this_with, TwitterSearchFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof TwitterUserItem) {
            this$0.getPresenter().onUserClick((TwitterUserItem) baseNode);
        }
    }

    /* compiled from: TwitterSearchFragment.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TwitterSearchFragment newInstance(BlockchainType blockchainType, Callbacks$Callback2<TwitterUserItem, String> onUserSelectedAction) {
            Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
            Intrinsics.checkNotNullParameter(onUserSelectedAction, "onUserSelectedAction");
            return new TwitterSearchFragment(blockchainType, onUserSelectedAction);
        }
    }
}
