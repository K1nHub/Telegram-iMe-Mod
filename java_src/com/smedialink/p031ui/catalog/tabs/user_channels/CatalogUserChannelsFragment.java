package com.smedialink.p031ui.catalog.tabs.user_channels;

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
import com.smedialink.p031ui.catalog.tabs.CatalogTabFragment;
import com.smedialink.p031ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
import com.smedialink.p031ui.custom.ActionButton;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
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
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.databinding.ForkFragmentCatalogUserChannelsBinding;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.ActionIntroActivity;
import org.telegram.p048ui.Components.RLottieImageView;
/* compiled from: CatalogUserChannelsFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment */
/* loaded from: classes3.dex */
public final class CatalogUserChannelsFragment extends CatalogTabFragment implements CatalogUserChannelsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CatalogUserChannelsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CatalogUserChannelsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final ChatType chatType;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy userChannelsRecycleAdapter$delegate;

    /* compiled from: CatalogUserChannelsFragment.kt */
    /* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatType.values().length];
            iArr[ChatType.CHANNEL.ordinal()] = 1;
            iArr[ChatType.GROUP.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.smedialink.p031ui.catalog.tabs.CatalogTabFragment
    public void onSelectedLanguageChanged() {
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogUserChannelsFragment.m1433getThemeDescriptions$lambda0(CatalogUserChannelsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getThemeDescriptions$lambda-0  reason: not valid java name */
    public static final void m1433getThemeDescriptions$lambda0(CatalogUserChannelsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getUserChannelsRecycleAdapter().notifyDataSetChanged();
    }

    @Override // com.smedialink.p031ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void showItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getUserChannelsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void openAddChannelScreen() {
        presentFragment(new ActionIntroActivity(104));
    }

    @Override // com.smedialink.p031ui.catalog.tabs.CatalogTabFragment
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
        AppCompatTextView appCompatTextView = binding.textEmptyTitle;
        appCompatTextView.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.withMediumTypeface(appCompatTextView);
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
        getUserChannelsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CatalogUserChannelsFragment.m1434setupListeners$lambda8$lambda7(CatalogUserChannelsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListeners$lambda-8$lambda-7  reason: not valid java name */
    public static final void m1434setupListeners$lambda8$lambda7(CatalogUserChannelsFragment this$0, BaseQuickAdapter noName_0, View noName_1, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
        this$0.getPresenter().onAddChannelClick();
    }

    private final void setupViews() {
        ForkFragmentCatalogUserChannelsBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageEmpty;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3158R.C3164raw.fork_catalog_empty, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
        int i = WhenMappings.$EnumSwitchMapping$0[getChatType().ordinal()];
        if (i == 1) {
            binding.textEmptyTitle.setText(getResourceManager().getString(C3158R.string.catalog_user_channels_empty_title));
            binding.textEmptyDescription.setText(getResourceManager().getString(C3158R.string.catalog_user_channels_empty_description));
            binding.buttonAdd.setText(getResourceManager().getString(C3158R.string.catalog_user_channels_empty_create));
        } else if (i != 2) {
        } else {
            binding.textEmptyTitle.setText(getResourceManager().getString(C3158R.string.catalog_user_groups_empty_title));
            binding.textEmptyDescription.setText(getResourceManager().getString(C3158R.string.catalog_user_groups_empty_description));
            binding.buttonAdd.setText(getResourceManager().getString(C3158R.string.catalog_user_groups_empty_create));
        }
    }

    /* compiled from: CatalogUserChannelsFragment.kt */
    /* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$Companion */
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
