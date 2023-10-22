package com.iMe.p030ui.wallet.settings.appearance;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.model.wallet.settings.InterfaceSettingItem;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter;
import com.iMe.p030ui.wallet.settings.appearance.networks.WalletNetworksSettingsFragment;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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
import org.telegram.messenger.C3630R;
import org.telegram.messenger.databinding.ForkFragmentWalletInterfaceSettingsBinding;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
/* compiled from: WalletAppearanceSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment */
/* loaded from: classes4.dex */
public final class WalletAppearanceSettingsFragment extends WalletAuthBaseFragment implements WalletAppearanceSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletAppearanceSettingsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletAppearanceSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy appearanceSettingsRecycleAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletAppearanceSettingsFragment() {
        Lazy lazy;
        Function0<WalletAppearanceSettingsPresenter> function0 = new Function0<WalletAppearanceSettingsPresenter>() { // from class: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletAppearanceSettingsPresenter invoke() {
                Lazy lazy2;
                final WalletAppearanceSettingsFragment walletAppearanceSettingsFragment = WalletAppearanceSettingsFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletAppearanceSettingsPresenter>() { // from class: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletAppearanceSettingsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsPresenter.class), qualifier, function02);
                    }
                });
                return (WalletAppearanceSettingsPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletAppearanceSettingsPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletAppearanceSettingsRecycleAdapter>() { // from class: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletAppearanceSettingsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletAppearanceSettingsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.appearanceSettingsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletInterfaceSettingsBinding>() { // from class: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletInterfaceSettingsBinding invoke() {
                return ForkFragmentWalletInterfaceSettingsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletAppearanceSettingsFragment.this));
            }
        }, 1, (Object) null);
    }

    private final WalletAppearanceSettingsPresenter getPresenter() {
        return (WalletAppearanceSettingsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletAppearanceSettingsRecycleAdapter getAppearanceSettingsRecycleAdapter() {
        return (WalletAppearanceSettingsRecycleAdapter) this.appearanceSettingsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletInterfaceSettingsBinding getBinding() {
        return (ForkFragmentWalletInterfaceSettingsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupRecycleView();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.settings.appearance.WalletAppearanceSettingsView
    public void setupSettingsItems(List<InterfaceSettingItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getAppearanceSettingsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.iMe.p030ui.wallet.settings.appearance.WalletAppearanceSettingsView
    public void openNetworksSettingsScreen() {
        presentFragment(WalletNetworksSettingsFragment.Companion.newInstance());
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        FrameLayout root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final WalletAppearanceSettingsRecycleAdapter appearanceSettingsRecycleAdapter = getAppearanceSettingsRecycleAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarDefaultSelector), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, Theme.key_actionBarDefaultSubmenuBackground), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, Theme.key_actionBarDefaultSubmenuItem), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, Theme.key_actionBarDefaultSubmenuItemIcon), new ThemeDescription(root, i, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletAppearanceSettingsRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3702ActionBar c3702ActionBar = this.actionBar;
        c3702ActionBar.setCastShadows(false);
        c3702ActionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        c3702ActionBar.setAllowOverlayTitle(true);
        c3702ActionBar.setTitle(getResourceManager().getString(C3630R.string.wallet_settings_interface));
        c3702ActionBar.setActionBarMenuOnItemClick(new C3702ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$setupActionBar$1$1
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletAppearanceSettingsFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleSettings;
        recyclerView.setAdapter(getAppearanceSettingsRecycleAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        getAppearanceSettingsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletAppearanceSettingsFragment.setupListeners$lambda$3(WalletAppearanceSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3(WalletAppearanceSettingsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().resolveItemClick(this$0.getAppearanceSettingsRecycleAdapter().getItem(i));
    }

    /* compiled from: WalletAppearanceSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletAppearanceSettingsFragment newInstance() {
            return new WalletAppearanceSettingsFragment();
        }
    }
}
