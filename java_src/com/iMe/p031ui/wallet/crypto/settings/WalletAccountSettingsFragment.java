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
import com.iMe.p031ui.base.WalletAuthFragment;
import com.iMe.p031ui.wallet.crypto.settings.adapter.WalletAccountSettingsRecycleAdapter;
import com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment;
import com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectFragment;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
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
import org.telegram.messenger.C3295R;
import org.telegram.messenger.databinding.ForkFragmentWalletEthSettingsBinding;
import org.telegram.p044ui.ActionBar.C3361ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.PasscodeActivity;
import org.telegram.p044ui.PrivacyControlActivity;
/* compiled from: WalletAccountSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment */
/* loaded from: classes3.dex */
public final class WalletAccountSettingsFragment extends WalletAuthFragment implements WalletAccountSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletAccountSettingsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletAccountSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy settingsRecycleAdapter$delegate;

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletAccountSettingsFragment() {
        Lazy lazy;
        WalletAccountSettingsFragment$presenter$2 walletAccountSettingsFragment$presenter$2 = new WalletAccountSettingsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletAccountSettingsPresenter.class.getName() + ".presenter", walletAccountSettingsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletAccountSettingsFragment$special$$inlined$inject$default$1(this, null, null));
        this.settingsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletAccountSettingsFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletAccountSettingsPresenter getPresenter() {
        return (WalletAccountSettingsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletAccountSettingsRecycleAdapter getSettingsRecycleAdapter() {
        return (WalletAccountSettingsRecycleAdapter) this.settingsRecycleAdapter$delegate.getValue();
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
    public void setupSettingsItems(List<WalletSettingsItem> items) {
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
    public void openPinCodeSettingsScreen() {
        presentFragment(PasscodeActivity.newInstanceForWalletPinSettings());
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletAccountSettingsFragment.getThemeDescriptions$lambda$1(WalletAccountSettingsFragment.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$1(WalletAccountSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSettingsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3361ActionBar c3361ActionBar = this.actionBar;
        c3361ActionBar.setCastShadows(false);
        c3361ActionBar.setBackButtonImage(C3295R.C3297drawable.ic_ab_back);
        c3361ActionBar.setAllowOverlayTitle(true);
        c3361ActionBar.setTitle(getResourceManager().getString(C3295R.string.wallet_eth_account_settings_toolbar_title));
        c3361ActionBar.setActionBarMenuOnItemClick(new C3361ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupActionBar$1$1
            @Override // org.telegram.p044ui.ActionBar.C3361ActionBar.ActionBarMenuOnItemClick
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
                WalletAccountSettingsFragment.setupListeners$lambda$5(WalletAccountSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2176xdd3a1942(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2177xdd3a1943(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$5(WalletAccountSettingsFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.getPresenter().resolveItemClick(this$0.getSettingsRecycleAdapter().getItem(i));
    }

    /* compiled from: WalletAccountSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsFragment$Companion */
    /* loaded from: classes3.dex */
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
