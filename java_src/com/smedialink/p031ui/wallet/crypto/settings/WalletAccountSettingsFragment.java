package com.smedialink.p031ui.wallet.crypto.settings;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.smedialink.model.wallet.crypto.settings.WalletSettingsItem;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.crypto.settings.adapter.WalletAccountSettingsRecycleAdapter;
import com.smedialink.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment;
import com.smedialink.p031ui.wallet.crypto.wallet_connect.WalletConnectFragment;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
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
import org.fork.utils.Callbacks$Callback;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.databinding.ForkFragmentWalletEthSettingsBinding;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.PasscodeActivity;
import org.telegram.p048ui.PrivacyControlActivity;
import timber.log.Timber;
/* compiled from: WalletAccountSettingsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment */
/* loaded from: classes3.dex */
public final class WalletAccountSettingsFragment extends WalletAuthFragment implements WalletAccountSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletAccountSettingsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletAccountSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy settingsRecycleAdapter$delegate;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
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

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void setupSettingsItems(List<WalletSettingsItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getSettingsRecycleAdapter().setNewInstance(items);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openBlockchainsScreen() {
        presentFragment(BlockchainsManagementFragment.Companion.newInstance());
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openPrivacySettingsScreen() {
        presentFragment(new PrivacyControlActivity(101));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openWalletConnectScreen() {
        presentFragment(WalletConnectFragment.Companion.newInstance());
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openPinCodeSettingsScreen() {
        presentFragment(PasscodeActivity.newInstanceForWalletPinSettings());
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, "actionBarDefaultSubmenuBackground"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, "actionBarDefaultSubmenuItem"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, "actionBarDefaultSubmenuItemIcon"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletAccountSettingsFragment.m1601getThemeDescriptions$lambda1(WalletAccountSettingsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getThemeDescriptions$lambda-1  reason: not valid java name */
    public static final void m1601getThemeDescriptions$lambda1(WalletAccountSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSettingsRecycleAdapter().notifyDataSetChanged();
    }

    private final void setupActionBar() {
        C3222ActionBar c3222ActionBar = this.actionBar;
        c3222ActionBar.setCastShadows(false);
        c3222ActionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        c3222ActionBar.setAllowOverlayTitle(true);
        c3222ActionBar.setTitle(getResourceManager().getString(C3158R.string.wallet_eth_account_settings_toolbar_title));
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
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
        getBinding().getRoot().setBackgroundColor(Theme.getColor("windowBackgroundGray"));
    }

    private final void setupListeners() {
        getSettingsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletAccountSettingsFragment.m1602setupListeners$lambda5(WalletAccountSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                WalletAccountSettingsPresenter presenter;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents domainRxEvents = (DomainRxEvents) it;
                if (domainRxEvents instanceof DomainRxEvents.SuccessSaveBackup) {
                    presenter = WalletAccountSettingsFragment.this.getPresenter();
                    presenter.drawSettingsItems();
                } else if ((domainRxEvents instanceof DomainRxEvents.SuccessResetWallet) && ((DomainRxEvents.SuccessResetWallet) domainRxEvents).isLastWallet()) {
                    final WalletAccountSettingsFragment walletAccountSettingsFragment = WalletAccountSettingsFragment.this;
                    MvpFragment.postViewActionDelayed$default(walletAccountSettingsFragment, 0L, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupListeners$2$1
                        @Override // org.fork.utils.Callbacks$Callback
                        public final void invoke() {
                            WalletAccountSettingsFragment.this.finishFragment(true);
                        }
                    }, 1, null);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListeners$lambda-5  reason: not valid java name */
    public static final void m1602setupListeners$lambda5(WalletAccountSettingsFragment this$0, BaseQuickAdapter noName_0, View noName_1, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
        this$0.getPresenter().resolveItemClick(this$0.getSettingsRecycleAdapter().getItem(i));
    }

    /* compiled from: WalletAccountSettingsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsFragment$Companion */
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
