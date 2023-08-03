package com.iMe.feature.twitter;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.iMe.common.IdFabric$Menu;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.twitter.adapter.TweetsRecycleAdapter;
import com.iMe.feature.twitter.adapter.diff.TweetsDiffCallback;
import com.iMe.fork.enums.TranslationDialogType;
import com.iMe.fork.p024ui.dialog.TranslateAlert;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.translation.TranslationArgs;
import com.iMe.model.twitter.TweetItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.p031ui.popupMenu.MenuItem;
import com.iMe.p031ui.popupMenu.PopupMenuExtKt;
import com.iMe.storage.domain.model.twitter.MediaInfoDomain;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
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
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentTwitterBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.PhotoViewer;
/* compiled from: TwitterFragment.kt */
/* loaded from: classes3.dex */
public final class TwitterFragment extends MvpFragment implements TwitterView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TwitterFragment.class, "presenter", "getPresenter()Lcom/iMe/feature/twitter/TwitterPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(TwitterFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final SocialNetwork socialNetwork;
    private final long telegramProfileId;
    private final Lazy tweetsRecycleAdapter$delegate;

    public static final TwitterFragment newInstance(long j, SocialNetwork socialNetwork) {
        return Companion.newInstance(j, socialNetwork);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public TwitterFragment(long j, SocialNetwork socialNetwork) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        this.telegramProfileId = j;
        this.socialNetwork = socialNetwork;
        Function0<TwitterPresenter> function0 = new Function0<TwitterPresenter>() { // from class: com.iMe.feature.twitter.TwitterFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TwitterPresenter invoke() {
                Lazy lazy3;
                final TwitterFragment twitterFragment = TwitterFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.feature.twitter.TwitterFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        long j2;
                        SocialNetwork socialNetwork2;
                        j2 = TwitterFragment.this.telegramProfileId;
                        socialNetwork2 = TwitterFragment.this.socialNetwork;
                        return ParametersHolderKt.parametersOf(Long.valueOf(j2), socialNetwork2);
                    }
                };
                lazy3 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<TwitterPresenter>() { // from class: com.iMe.feature.twitter.TwitterFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.feature.twitter.TwitterPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final TwitterPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(TwitterPresenter.class), qualifier, function03);
                    }
                });
                return (TwitterPresenter) lazy3.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, TwitterPresenter.class.getName() + ".presenter", function0);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.feature.twitter.TwitterFragment$special$$inlined$inject$default$1
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
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TweetsRecycleAdapter>() { // from class: com.iMe.feature.twitter.TwitterFragment$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.feature.twitter.adapter.TweetsRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TweetsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TweetsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.tweetsRecycleAdapter$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentTwitterBinding>() { // from class: com.iMe.feature.twitter.TwitterFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentTwitterBinding invoke() {
                return ForkFragmentTwitterBinding.inflate(BaseFragmentExtKt.getLayoutInflater(TwitterFragment.this));
            }
        }, 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TwitterPresenter getPresenter() {
        return (TwitterPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final TweetsRecycleAdapter getTweetsRecycleAdapter() {
        return (TweetsRecycleAdapter) this.tweetsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentTwitterBinding getBinding() {
        return (ForkFragmentTwitterBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupListeners();
        setupRecycleView();
        setupColors();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.feature.twitter.TwitterView
    public void renderInitialItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getTweetsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.iMe.feature.twitter.TwitterView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getTweetsRecycleAdapter(), items, null, 2, null);
    }

    public void openPhotoViewer(TweetItem tweetItem) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(tweetItem, "tweetItem");
        List<MediaInfoDomain> mediaInfo = tweetItem.getMediaInfo();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mediaInfo, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (MediaInfoDomain mediaInfoDomain : mediaInfo) {
            arrayList.add(new MediaController.PhotoEntry(0, 0, 0L, mediaInfoDomain.getUrl(), 0, false, 0, 0, 0L));
        }
        PhotoViewer.EmptyPhotoViewerProvider emptyPhotoViewerProvider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: com.iMe.feature.twitter.TwitterFragment$openPhotoViewer$provider$1
        };
        PhotoViewer.getInstance().setParentActivity(getParentActivity());
        PhotoViewer.getInstance().openPhotoForSelect(new ArrayList<>(arrayList), 0, -1, false, emptyPhotoViewerProvider, null);
    }

    @Override // com.iMe.feature.twitter.TwitterView
    public void showResetTwitterDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        final TwitterPresenter presenter = getPresenter();
        AlertDialog createDialog$default = DialogUtils.createDialog$default(context, dialogModel, new Callbacks$Callback() { // from class: com.iMe.feature.twitter.TwitterFragment$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TwitterPresenter.this.onResetConfirmClicked();
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        createDialog$default.redPositive();
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        TweetsRecycleAdapter tweetsRecycleAdapter = getTweetsRecycleAdapter();
        tweetsRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(tweetsRecycleAdapter, items, null, 2, null);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getTweetsRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getTweetsRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.feature.twitter.TwitterView
    public void openBrowserUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Browser.openUrl(getParentActivity(), url);
    }

    @Override // com.iMe.feature.twitter.TwitterView
    public void shareLink(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        ContextExtKt.share(parentActivity, url);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.feature.twitter.TwitterFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                TwitterFragment.getThemeDescriptions$lambda$2(TwitterFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2(TwitterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getTweetsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3485ActionBar c3485ActionBar = this.actionBar;
        c3485ActionBar.setBackButtonImage(C3419R.C3421drawable.ic_ab_back);
        c3485ActionBar.setAllowOverlayTitle(true);
        c3485ActionBar.setTitle(LocaleController.getInternalString(C3419R.string.twitter_title));
        ActionBarMenuItem addItem = c3485ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3419R.C3421drawable.ic_ab_other);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3419R.string.AccDescrMoreOptions));
        addItem.addSubItem(IdFabric$Menu.OPEN_IN_TWITTER, C3419R.C3421drawable.fork_drawer_social_twitter, getResourceManager().getString(C3419R.string.twitter_open_in_twitter));
        if (this.socialNetwork.getHasEditAccess()) {
            addItem.addSubItem(IdFabric$Menu.RESET_TWITTER, C3419R.C3421drawable.fork_ic_recycler_22, getResourceManager().getString(C3419R.string.social_reset_menu_item));
        }
        c3485ActionBar.setActionBarMenuOnItemClick(new C3485ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.feature.twitter.TwitterFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.C3485ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                TwitterPresenter presenter;
                TwitterPresenter presenter2;
                if (i == -1) {
                    TwitterFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.OPEN_IN_TWITTER) {
                    presenter2 = TwitterFragment.this.getPresenter();
                    presenter2.onOpenInTwitterClick();
                } else if (i == IdFabric$Menu.RESET_TWITTER) {
                    presenter = TwitterFragment.this.getPresenter();
                    presenter.onResetMenuClicked();
                }
            }
        });
    }

    private final void setupColors() {
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        root.setColorSchemeColors(getThemedColor(Theme.key_chats_actionBackground));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleTweets;
        TweetsRecycleAdapter tweetsRecycleAdapter = getTweetsRecycleAdapter();
        tweetsRecycleAdapter.setDiffCallback(new TweetsDiffCallback());
        setupLoadMore(tweetsRecycleAdapter);
        recyclerView.setAdapter(tweetsRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(TweetsRecycleAdapter tweetsRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = tweetsRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.feature.twitter.TwitterFragment$$ExternalSyntheticLambda2
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                TwitterFragment.setupLoadMore$lambda$12$lambda$11$lambda$10(TwitterFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupLoadMore$lambda$12$lambda$11$lambda$10(TwitterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TwitterPresenter.loadTweets$default(this$0.getPresenter(), false, false, 3, null);
    }

    private final void setupListeners() {
        final TweetsRecycleAdapter tweetsRecycleAdapter = getTweetsRecycleAdapter();
        tweetsRecycleAdapter.getTweetProvider().setOnTweetItemClick(new TwitterFragment$setupListeners$1$1(this));
        tweetsRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.feature.twitter.TwitterFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TwitterFragment.setupListeners$lambda$14$lambda$13(TweetsRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.feature.twitter.TwitterFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                TwitterFragment.setupListeners$lambda$15(TwitterFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$14$lambda$13(TweetsRecycleAdapter this_with, TwitterFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof TweetItem) {
            int id = view.getId();
            if (id == C3419R.C3422id.image_share) {
                this$0.getPresenter().onShareClick((TweetItem) baseNode);
            } else if (id == C3419R.C3422id.image_menu) {
                this$0.showItemMenu(view, (TweetItem) baseNode);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15(TwitterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reload();
    }

    private final void showItemMenu(View view, final TweetItem tweetItem) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new MenuItem(getResourceManager().getString(C3419R.string.common_translate), C3419R.C3421drawable.msg_premium_translate, 0, 0, new Function0<Unit>() { // from class: com.iMe.feature.twitter.TwitterFragment$showItemMenu$menuItems$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                TwitterFragment.this.showTranslationDialog(tweetItem);
            }
        }, 12, null));
        PopupMenuExtKt.showPopupMenu(view, listOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Dialog showTranslationDialog(TweetItem tweetItem) {
        return showDialog(TranslateAlert.createInstanceForForkTranslation(this.parentLayout.getLastFragment(), new TranslationArgs(TranslationDialogType.INCOMING, tweetItem.getText(), null), null, false));
    }

    /* compiled from: TwitterFragment.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TwitterFragment newInstance(long j, SocialNetwork socialNetwork) {
            Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
            return new TwitterFragment(j, socialNetwork);
        }
    }
}
