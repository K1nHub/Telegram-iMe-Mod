package com.iMe.p030ui.catalog.tabs.user_channels;

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
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.catalog.tabs.CatalogTabFragment;
import com.iMe.p030ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter;
import com.iMe.p030ui.custom.ActionButton;
import com.iMe.p030ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.databinding.ForkFragmentCatalogUserChannelsBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.ActionIntroActivity;
import org.telegram.p043ui.Components.RLottieImageView;
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

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onEmptyState() {
        GlobalStateView.CC.$default$onEmptyState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onLoadingState() {
        GlobalStateView.CC.$default$onLoadingState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onNoInternetErrorState() {
        GlobalStateView.CC.$default$onNoInternetErrorState(this);
    }

    @Override // com.iMe.p030ui.catalog.tabs.CatalogTabFragment
    public void onSelectedLanguageChanged() {
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onUnexpectedErrorState() {
        GlobalStateView.CC.$default$onUnexpectedErrorState(this);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
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
        Function0<CatalogUserChannelsPresenter> function0 = new Function0<CatalogUserChannelsPresenter>() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CatalogUserChannelsPresenter invoke() {
                Lazy lazy3;
                final CatalogUserChannelsFragment catalogUserChannelsFragment = CatalogUserChannelsFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(CatalogUserChannelsFragment.this.getChatType());
                    }
                };
                lazy3 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CatalogUserChannelsPresenter>() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CatalogUserChannelsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CatalogUserChannelsPresenter.class), qualifier, function03);
                    }
                });
                return (CatalogUserChannelsPresenter) lazy3.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CatalogUserChannelsPresenter.class.getName() + ".presenter", function0);
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CatalogUserChannelsRecycleAdapter>() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CatalogUserChannelsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CatalogUserChannelsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.userChannelsRecycleAdapter$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$special$$inlined$inject$default$2
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
        this.resourceManager$delegate = lazy2;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentCatalogUserChannelsBinding>() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentCatalogUserChannelsBinding invoke() {
                return ForkFragmentCatalogUserChannelsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(CatalogUserChannelsFragment.this));
            }
        }, 1, (Object) null);
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
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

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CatalogUserChannelsFragment.getThemeDescriptions$lambda$0(CatalogUserChannelsFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(CatalogUserChannelsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getUserChannelsRecycleAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p030ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void showItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getUserChannelsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.iMe.p030ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void openAddChannelScreen() {
        presentFragment(new ActionIntroActivity(104));
    }

    @Override // com.iMe.p030ui.catalog.tabs.CatalogTabFragment
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
        setupColors$lambda$4$lambda$3.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$3);
        binding.textEmptyDescription.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
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
        ViewExtKt.safeThrottledClick$default(actionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$setupListeners$1
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
                CatalogUserChannelsPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = CatalogUserChannelsFragment.this.getPresenter();
                presenter.onAddChannelClick();
            }
        }, 1, null);
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
        rLottieImageView.setAnimation(C3632R.raw.fork_catalog_empty, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
        int i = WhenMappings.$EnumSwitchMapping$0[this.chatType.ordinal()];
        if (i == 1) {
            binding.textEmptyTitle.setText(getResourceManager().getString(C3632R.string.catalog_user_channels_empty_title));
            binding.textEmptyDescription.setText(getResourceManager().getString(C3632R.string.catalog_user_channels_empty_description));
            binding.buttonAdd.setText(getResourceManager().getString(C3632R.string.catalog_user_channels_empty_create));
        } else if (i != 2) {
        } else {
            binding.textEmptyTitle.setText(getResourceManager().getString(C3632R.string.catalog_user_groups_empty_title));
            binding.textEmptyDescription.setText(getResourceManager().getString(C3632R.string.catalog_user_groups_empty_description));
            binding.buttonAdd.setText(getResourceManager().getString(C3632R.string.catalog_user_groups_empty_create));
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
