package com.smedialink.p031ui.wallet.settings.appearance;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.smedialink.model.wallet.settings.InterfaceSettingItem;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter;
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
import org.telegram.messenger.C3286R;
import org.telegram.messenger.databinding.ForkFragmentWalletInterfaceSettingsBinding;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: WalletAppearanceSettingsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment */
/* loaded from: classes3.dex */
public final class WalletAppearanceSettingsFragment extends WalletAuthFragment implements WalletAppearanceSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletAppearanceSettingsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletAppearanceSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy appearanceSettingsRecycleAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletAppearanceSettingsFragment() {
        Lazy lazy;
        WalletAppearanceSettingsFragment$presenter$2 walletAppearanceSettingsFragment$presenter$2 = new WalletAppearanceSettingsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletAppearanceSettingsPresenter.class.getName() + ".presenter", walletAppearanceSettingsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2230x1bdf1139(this, null, null));
        this.appearanceSettingsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletAppearanceSettingsFragment$binding$2(this), 1, (Object) null);
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    @Override // com.smedialink.p031ui.wallet.settings.appearance.WalletAppearanceSettingsView
    public void setupSettingsItems(List<InterfaceSettingItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getAppearanceSettingsRecycleAdapter().setNewInstance(items);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, "actionBarDefaultSubmenuBackground"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, "actionBarDefaultSubmenuItem"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "actionBarDefaultSubmenuItemIcon"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletAppearanceSettingsFragment.getThemeDescriptions$lambda$0(WalletAppearanceSettingsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletAppearanceSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getAppearanceSettingsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3351ActionBar c3351ActionBar = this.actionBar;
        c3351ActionBar.setCastShadows(false);
        c3351ActionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        c3351ActionBar.setAllowOverlayTitle(true);
        c3351ActionBar.setTitle(getResourceManager().getString(C3286R.string.wallet_settings_interface));
        c3351ActionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
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
        getBinding().getRoot().setBackgroundColor(Theme.getColor("windowBackgroundGray"));
    }

    private final void setupListeners() {
        getAppearanceSettingsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletAppearanceSettingsFragment.setupListeners$lambda$4(WalletAppearanceSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$4(WalletAppearanceSettingsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().resolveItemClick(this$0.getAppearanceSettingsRecycleAdapter().getItem(i));
    }

    /* compiled from: WalletAppearanceSettingsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.settings.appearance.WalletAppearanceSettingsFragment$Companion */
    /* loaded from: classes3.dex */
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
