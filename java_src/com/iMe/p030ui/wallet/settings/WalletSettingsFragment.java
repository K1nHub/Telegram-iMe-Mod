package com.iMe.p030ui.wallet.settings;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.fork.p023ui.dialog.SettingsHelpBottomSheet;
import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p030ui.wallet.common.WalletTabFragment;
import com.iMe.p030ui.wallet.crypto.settings.WalletAccountSettingsFragment;
import com.iMe.p030ui.wallet.settings.adapter.WalletSettingsRecycleAdapter;
import com.iMe.p030ui.wallet.settings.appearance.WalletAppearanceSettingsFragment;
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
import org.telegram.messenger.databinding.ForkFragmentWalletSettingsBinding;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
/* compiled from: WalletSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.settings.WalletSettingsFragment */
/* loaded from: classes4.dex */
public final class WalletSettingsFragment extends WalletTabFragment implements WalletSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSettingsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/settings/WalletSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy settingsRecycleAdapter$delegate;

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletSettingsFragment() {
        Lazy lazy;
        Function0<WalletSettingsPresenter> function0 = new Function0<WalletSettingsPresenter>() { // from class: com.iMe.ui.wallet.settings.WalletSettingsFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSettingsPresenter invoke() {
                Lazy lazy2;
                final WalletSettingsFragment walletSettingsFragment = WalletSettingsFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSettingsPresenter>() { // from class: com.iMe.ui.wallet.settings.WalletSettingsFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.settings.WalletSettingsPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletSettingsPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSettingsPresenter.class), qualifier, function02);
                    }
                });
                return (WalletSettingsPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        new MoxyKtxDelegate(mvpDelegate, WalletSettingsPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSettingsRecycleAdapter>() { // from class: com.iMe.ui.wallet.settings.WalletSettingsFragment$special$$inlined$inject$default$1
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
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentWalletSettingsBinding>() { // from class: com.iMe.ui.wallet.settings.WalletSettingsFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentWalletSettingsBinding invoke() {
                return ForkFragmentWalletSettingsBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletSettingsFragment.this));
            }
        }, 1, (Object) null);
    }

    private final WalletSettingsRecycleAdapter getSettingsRecycleAdapter() {
        return (WalletSettingsRecycleAdapter) this.settingsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletSettingsBinding getBinding() {
        return (ForkFragmentWalletSettingsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.wallet.common.BottomNavigationTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleSettings;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.recycleSettings");
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupRecycleView();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.settings.WalletSettingsView
    public void renderSettingsItems(List<WalletSettingsItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getSettingsRecycleAdapter().setNewInstance(items);
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.settings.WalletSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSettingsFragment.getThemeDescriptions$lambda$0(WalletSettingsFragment.this);
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSettingsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleSettings;
        recyclerView.setAdapter(getSettingsRecycleAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupColors() {
        getBinding().getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
    }

    private final void setupListeners() {
        getSettingsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.settings.WalletSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletSettingsFragment.setupListeners$lambda$2(WalletSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$2(WalletSettingsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        WalletSettingsItem item = this$0.getSettingsRecycleAdapter().getItem(i);
        if (Intrinsics.areEqual(item, WalletSettingsItem.Main.Help.INSTANCE)) {
            this$0.openFAQ();
        } else if (Intrinsics.areEqual(item, WalletSettingsItem.Main.CryptoAccount.INSTANCE)) {
            this$0.openWalletAccountSettings();
        } else if (Intrinsics.areEqual(item, WalletSettingsItem.Main.Interface.INSTANCE)) {
            this$0.openInterfaceSettings();
        }
    }

    private final void openWalletAccountSettings() {
        presentFragment(WalletAccountSettingsFragment.Companion.newInstance());
    }

    private final void openInterfaceSettings() {
        presentFragment(WalletAppearanceSettingsFragment.Companion.newInstance());
    }

    private final void openFAQ() {
        showDialog(new SettingsHelpBottomSheet(SettingsHelpBottomSheet.ScreenType.WALLET_SETTINGS, this));
    }

    /* compiled from: WalletSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.settings.WalletSettingsFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletSettingsFragment newInstance() {
            return new WalletSettingsFragment();
        }
    }
}
