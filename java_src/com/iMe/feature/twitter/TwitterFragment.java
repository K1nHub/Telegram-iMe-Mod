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
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentTwitterBinding;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.PhotoViewer;
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
        TwitterFragment$presenter$2 twitterFragment$presenter$2 = new TwitterFragment$presenter$2(this);
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

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.feature.twitter.TwitterFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                TwitterFragment.getThemeDescriptions$lambda$2(TwitterFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
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
        C3356ActionBar c3356ActionBar = this.actionBar;
        c3356ActionBar.setBackButtonImage(C3290R.C3292drawable.ic_ab_back);
        c3356ActionBar.setAllowOverlayTitle(true);
        c3356ActionBar.setTitle(LocaleController.getInternalString(C3290R.string.twitter_title));
        ActionBarMenuItem addItem = c3356ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3290R.C3292drawable.ic_ab_other);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3290R.string.AccDescrMoreOptions));
        addItem.addSubItem(IdFabric$Menu.OPEN_IN_TWITTER, C3290R.C3292drawable.fork_drawer_social_twitter, getResourceManager().getString(C3290R.string.twitter_open_in_twitter));
        if (this.socialNetwork.getHasEditAccess()) {
            addItem.addSubItem(IdFabric$Menu.RESET_TWITTER, C3290R.C3292drawable.fork_ic_recycler_22, getResourceManager().getString(C3290R.string.social_reset_menu_item));
        }
        c3356ActionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.feature.twitter.TwitterFragment$setupActionBar$1$2
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
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
            if (id == C3290R.C3293id.image_share) {
                this$0.getPresenter().onShareClick((TweetItem) baseNode);
            } else if (id == C3290R.C3293id.image_menu) {
                this$0.showItemMenu(view, (TweetItem) baseNode);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15(TwitterFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().reload();
    }

    private final void showItemMenu(View view, TweetItem tweetItem) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new MenuItem(getResourceManager().getString(C3290R.string.common_translate), C3290R.C3292drawable.msg_premium_translate, 0, 0, new TwitterFragment$showItemMenu$menuItems$1(this, tweetItem), 12, null));
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
