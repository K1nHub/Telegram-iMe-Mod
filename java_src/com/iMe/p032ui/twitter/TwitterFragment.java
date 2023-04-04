package com.iMe.p032ui.twitter;

import android.app.Activity;
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
import com.iMe.model.twitter.TweetItem;
import com.iMe.p032ui.adapter.provider.GlobalStateProvider;
import com.iMe.p032ui.base.mvp.LoadMoreView;
import com.iMe.p032ui.base.mvp.MvpFragment;
import com.iMe.p032ui.twitter.adapter.TweetsRecycleAdapter;
import com.iMe.p032ui.twitter.adapter.diff.TweetsDiffCallback;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentTwitterBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: TwitterFragment.kt */
/* renamed from: com.iMe.ui.twitter.TwitterFragment */
/* loaded from: classes3.dex */
public final class TwitterFragment extends MvpFragment implements TwitterView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(TwitterFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/twitter/TwitterPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(TwitterFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentTwitterBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy tweetsRecycleAdapter$delegate;

    public static final TwitterFragment newInstance(long j, long j2, String str) {
        return Companion.newInstance(j, j2, str);
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public TwitterFragment(long j, long j2, String twitterUserNickname) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(twitterUserNickname, "twitterUserNickname");
        TwitterFragment$presenter$2 twitterFragment$presenter$2 = new TwitterFragment$presenter$2(this, j, j2, twitterUserNickname);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, TwitterPresenter.class.getName() + ".presenter", twitterFragment$presenter$2);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new TwitterFragment$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new TwitterFragment$special$$inlined$inject$default$2(this, null, null));
        this.tweetsRecycleAdapter$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new TwitterFragment$binding$2(this), 1, (Object) null);
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

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
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

    @Override // com.iMe.p032ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    @Override // com.iMe.p032ui.twitter.TwitterView
    public void renderInitialItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getTweetsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.iMe.p032ui.twitter.TwitterView
    public void renderItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getTweetsRecycleAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        TweetsRecycleAdapter tweetsRecycleAdapter = getTweetsRecycleAdapter();
        tweetsRecycleAdapter.getLoadMoreModule().loadMoreComplete();
        BaseQuickAdapter.setDiffNewData$default(tweetsRecycleAdapter, items, null, 2, null);
    }

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        getTweetsRecycleAdapter().getLoadMoreModule().loadMoreEnd(true);
    }

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        getTweetsRecycleAdapter().getLoadMoreModule().loadMoreFail();
    }

    @Override // com.iMe.p032ui.twitter.TwitterView
    public void openBrowserUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Browser.openUrl(getParentActivity(), url);
    }

    @Override // com.iMe.p032ui.twitter.TwitterView
    public void shareLink(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        ContextExtKt.share(parentActivity, url);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.twitter.TwitterFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                TwitterFragment.getThemeDescriptions$lambda$1(TwitterFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$1(TwitterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getTweetsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3381ActionBar c3381ActionBar = this.actionBar;
        c3381ActionBar.setBackButtonImage(C3316R.C3318drawable.ic_ab_back);
        c3381ActionBar.setAllowOverlayTitle(true);
        c3381ActionBar.setTitle(LocaleController.getInternalString(C3316R.string.twitter_title));
        ActionBarMenuItem addItem = c3381ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3316R.C3318drawable.ic_ab_other);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3316R.string.AccDescrMoreOptions));
        addItem.addSubItem(IdFabric$Menu.OPEN_IN_TWITTER, C3316R.C3318drawable.fork_drawer_social_twitter, getResourceManager().getString(C3316R.string.twitter_open_in_twitter));
        c3381ActionBar.setActionBarMenuOnItemClick(new C3381ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.twitter.TwitterFragment$setupActionBar$1$2
            @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                TwitterPresenter presenter;
                if (i == -1) {
                    TwitterFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.OPEN_IN_TWITTER) {
                    presenter = TwitterFragment.this.getPresenter();
                    presenter.onOpenInTwitterClick();
                }
            }
        });
    }

    private final void setupColors() {
        SwipeRefreshLayout root = getBinding().getRoot();
        root.setBackgroundColor(getThemedColor("windowBackgroundGray"));
        root.setColorSchemeColors(getThemedColor("chats_actionBackground"));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleTweets;
        TweetsRecycleAdapter tweetsRecycleAdapter = getTweetsRecycleAdapter();
        GlobalStateProvider globalStateProvider = tweetsRecycleAdapter.getGlobalStateProvider();
        globalStateProvider.setMatchParentHeight(true);
        globalStateProvider.setOnRetryButtonClickAction(new TwitterFragment$setupRecycleView$1$1$1$1(this));
        tweetsRecycleAdapter.setDiffCallback(new TweetsDiffCallback());
        setupLoadMore(tweetsRecycleAdapter);
        recyclerView.setAdapter(tweetsRecycleAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupLoadMore(TweetsRecycleAdapter tweetsRecycleAdapter) {
        BaseLoadMoreModule loadMoreModule = tweetsRecycleAdapter.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(5);
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.twitter.TwitterFragment$$ExternalSyntheticLambda2
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
        tweetsRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.twitter.TwitterFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                TwitterFragment.setupListeners$lambda$14$lambda$13(TweetsRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.twitter.TwitterFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                TwitterFragment.setupListeners$lambda$16$lambda$15(TwitterFragment.this);
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
        if ((baseNode instanceof TweetItem) && view.getId() == C3316R.C3319id.image_share) {
            this$0.getPresenter().onShareClick((TweetItem) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$16$lambda$15(TwitterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reload();
    }

    /* compiled from: TwitterFragment.kt */
    /* renamed from: com.iMe.ui.twitter.TwitterFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TwitterFragment newInstance(long j, long j2, String twitterUserNickname) {
            Intrinsics.checkNotNullParameter(twitterUserNickname, "twitterUserNickname");
            return new TwitterFragment(j, j2, twitterUserNickname);
        }
    }
}
