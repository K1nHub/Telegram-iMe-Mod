package com.iMe.p031ui.wallet.crypto.settings;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment;
import com.iMe.p031ui.wallet.crypto.settings.custom_tokens.CustomTokensFragment;
import com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectFragment;
import com.iMe.p031ui.wallet.settings.adapter.WalletSettingsRecycleAdapter;
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
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.databinding.ForkFragmentWalletEthSettingsBinding;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.PasscodeActivity;
import org.telegram.p043ui.PrivacyControlActivity;
/* compiled from: WalletAccountSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment */
/* loaded from: classes4.dex */
public final class WalletAccountSettingsFragment extends WalletAuthBaseFragment implements WalletAccountSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletAccountSettingsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletAccountSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy settingsRecycleAdapter$delegate;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletAccountSettingsFragment() {
        Lazy lazy;
        Function0<WalletAccountSettingsPresenter> function0 = new Function0<WalletAccountSettingsPresenter>() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletAccountSettingsPresenter invoke() {
                Lazy lazy2;
                final WalletAccountSettingsFragment walletAccountSettingsFragment = WalletAccountSettingsFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletAccountSettingsPresenter>() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletAccountSettingsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletAccountSettingsPresenter.class), qualifier, function02);
                    }
                });
                return (WalletAccountSettingsPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletAccountSettingsPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSettingsRecycleAdapter>() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.settings.adapter.WalletSettingsRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSettingsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSettingsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.settingsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletEthSettingsBinding>() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletEthSettingsBinding invoke() {
                return ForkFragmentWalletEthSettingsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletAccountSettingsFragment.this));
            }
        }, 1, (Object) null);
    }

    private final WalletAccountSettingsPresenter getPresenter() {
        return (WalletAccountSettingsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletSettingsRecycleAdapter getSettingsRecycleAdapter() {
        return (WalletSettingsRecycleAdapter) this.settingsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletEthSettingsBinding getBinding() {
        return (ForkFragmentWalletEthSettingsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
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

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void renderSettingsItems(List<WalletSettingsItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getSettingsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openBlockchainsScreen() {
        presentFragment(BlockchainsManagementFragment.Companion.newInstance());
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openPrivacySettingsScreen() {
        presentFragment(new PrivacyControlActivity(101));
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openWalletConnectScreen() {
        presentFragment(WalletConnectFragment.Companion.newInstance());
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openCustomTokensScreen() {
        presentFragment(CustomTokensFragment.Companion.newInstance());
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openPinCodeSettingsScreen() {
        presentFragment(PasscodeActivity.newInstanceForWalletPinSettings());
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletAccountSettingsFragment.getThemeDescriptions$lambda$0(WalletAccountSettingsFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletAccountSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSettingsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3485ActionBar c3485ActionBar = this.actionBar;
        c3485ActionBar.setCastShadows(false);
        c3485ActionBar.setBackButtonImage(C3419R.C3421drawable.ic_ab_back);
        c3485ActionBar.setAllowOverlayTitle(true);
        c3485ActionBar.setTitle(getResourceManager().getString(C3419R.string.wallet_eth_account_settings_toolbar_title));
        c3485ActionBar.setActionBarMenuOnItemClick(new C3485ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3485ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletAccountSettingsFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleSettings;
        recyclerView.setAdapter(getSettingsRecycleAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        getSettingsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletAccountSettingsFragment.setupListeners$lambda$4(WalletAccountSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$4(WalletAccountSettingsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().resolveItemClick(this$0.getSettingsRecycleAdapter().getItem(i));
    }

    /* compiled from: WalletAccountSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletAccountSettingsFragment newInstance() {
            return new WalletAccountSettingsFragment();
        }
    }
}
