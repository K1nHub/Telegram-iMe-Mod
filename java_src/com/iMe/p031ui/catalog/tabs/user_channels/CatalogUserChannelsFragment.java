package com.iMe.p031ui.catalog.tabs.user_channels;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.catalog.tabs.CatalogTabFragment;
import com.iMe.p031ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
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
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.databinding.ForkFragmentCatalogUserChannelsBinding;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.ActionIntroActivity;
import org.telegram.p044ui.Components.RLottieImageView;
/* compiled from: CatalogUserChannelsFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment */
/* loaded from: classes3.dex */
public final class CatalogUserChannelsFragment extends CatalogTabFragment implements CatalogUserChannelsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogUserChannelsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogUserChannelsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final ChatType chatType;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy userChannelsRecycleAdapter$delegate;

    /* compiled from: CatalogUserChannelsFragment.kt */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatType.values().length];
            try {
                iArr[ChatType.CHANNEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onEmptyState() {
        GlobalStateView.CC.$default$onEmptyState(this);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onLoadingState() {
        GlobalStateView.CC.$default$onLoadingState(this);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onNoInternetErrorState() {
        GlobalStateView.CC.$default$onNoInternetErrorState(this);
    }

    @Override // com.iMe.p031ui.catalog.tabs.CatalogTabFragment
    public void onSelectedLanguageChanged() {
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onUnexpectedErrorState() {
        GlobalStateView.CC.$default$onUnexpectedErrorState(this);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    public final ChatType getChatType() {
        return this.chatType;
    }

    public CatalogUserChannelsFragment(ChatType chatType) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        this.chatType = chatType;
        CatalogUserChannelsFragment$presenter$2 catalogUserChannelsFragment$presenter$2 = new CatalogUserChannelsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogUserChannelsPresenter.class.getName() + ".presenter", catalogUserChannelsFragment$presenter$2);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new CatalogUserChannelsFragment$special$$inlined$inject$default$1(this, null, null));
        this.userChannelsRecycleAdapter$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new CatalogUserChannelsFragment$special$$inlined$inject$default$2(this, null, null));
        this.resourceManager$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CatalogUserChannelsFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CatalogUserChannelsPresenter getPresenter() {
        return (CatalogUserChannelsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final CatalogUserChannelsRecycleAdapter getUserChannelsRecycleAdapter() {
        return (CatalogUserChannelsRecycleAdapter) this.userChannelsRecycleAdapter$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkFragmentCatalogUserChannelsBinding getBinding() {
        return (ForkFragmentCatalogUserChannelsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupRecycleView();
        setupViews();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogUserChannelsFragment.getThemeDescriptions$lambda$0(CatalogUserChannelsFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(CatalogUserChannelsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getUserChannelsRecycleAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p031ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void showItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getUserChannelsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.iMe.p031ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void openAddChannelScreen() {
        presentFragment(new ActionIntroActivity(104));
    }

    @Override // com.iMe.p031ui.catalog.tabs.CatalogTabFragment
    public void handleBottomPadding(int i) {
        List<ViewGroup> listOf;
        ForkFragmentCatalogUserChannelsBinding binding = getBinding();
        RecyclerView recycleUserChannels = binding.recycleUserChannels;
        Intrinsics.checkNotNullExpressionValue(recycleUserChannels, "recycleUserChannels");
        NestedScrollView viewEmpty = binding.viewEmpty;
        Intrinsics.checkNotNullExpressionValue(viewEmpty, "viewEmpty");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Object[]{recycleUserChannels, viewEmpty});
        for (ViewGroup viewGroup : listOf) {
            viewGroup.setPadding(viewGroup.getPaddingLeft(), viewGroup.getPaddingTop(), viewGroup.getPaddingRight(), i);
        }
    }

    private final void setupColors() {
        ForkFragmentCatalogUserChannelsBinding binding = getBinding();
        AppCompatTextView setupColors$lambda$4$lambda$3 = binding.textEmptyTitle;
        setupColors$lambda$4$lambda$3.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$3);
        binding.textEmptyDescription.setTextColor(getThemedColor("windowBackgroundWhiteGrayText"));
        binding.buttonAdd.applyColors();
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleUserChannels;
        recyclerView.setAdapter(getUserChannelsRecycleAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupListeners() {
        ActionButton actionButton = getBinding().buttonAdd;
        Intrinsics.checkNotNullExpressionValue(actionButton, "binding.buttonAdd");
        ViewExtKt.safeThrottledClick$default(actionButton, 0L, new CatalogUserChannelsFragment$setupListeners$1(this), 1, null);
        getUserChannelsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CatalogUserChannelsFragment.setupListeners$lambda$8$lambda$7(CatalogUserChannelsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$8$lambda$7(CatalogUserChannelsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().onAddChannelClick();
    }

    private final void setupViews() {
        ForkFragmentCatalogUserChannelsBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageEmpty;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3242R.raw.fork_catalog_empty, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
        int i = WhenMappings.$EnumSwitchMapping$0[this.chatType.ordinal()];
        if (i == 1) {
            binding.textEmptyTitle.setText(getResourceManager().getString(C3242R.string.catalog_user_channels_empty_title));
            binding.textEmptyDescription.setText(getResourceManager().getString(C3242R.string.catalog_user_channels_empty_description));
            binding.buttonAdd.setText(getResourceManager().getString(C3242R.string.catalog_user_channels_empty_create));
        } else if (i != 2) {
        } else {
            binding.textEmptyTitle.setText(getResourceManager().getString(C3242R.string.catalog_user_groups_empty_title));
            binding.textEmptyDescription.setText(getResourceManager().getString(C3242R.string.catalog_user_groups_empty_description));
            binding.buttonAdd.setText(getResourceManager().getString(C3242R.string.catalog_user_groups_empty_create));
        }
    }

    /* compiled from: CatalogUserChannelsFragment.kt */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CatalogUserChannelsFragment newInstance(ChatType chatType) {
            Intrinsics.checkNotNullParameter(chatType, "chatType");
            return new CatalogUserChannelsFragment(chatType);
        }
    }
}