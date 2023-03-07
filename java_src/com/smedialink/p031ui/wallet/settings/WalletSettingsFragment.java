package com.smedialink.p031ui.wallet.settings;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.smedialink.model.wallet.settings.SettingMenuItem;
import com.smedialink.model.wallet.settings.SettingUiItem;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.common.WalletTabFragment;
import com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsFragment;
import com.smedialink.p031ui.wallet.settings.adapter.WalletSettingsRecycleAdapter;
import com.smedialink.p031ui.wallet.settings.appearance.WalletAppearanceSettingsFragment;
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
import org.fork.p046ui.dialog.SettingsHelpBottomSheet;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.databinding.ForkFragmentWalletSettingsBinding;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import timber.log.Timber;
/* compiled from: WalletSettingsFragment.kt */
/* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsFragment */
/* loaded from: classes3.dex */
public final class WalletSettingsFragment extends WalletTabFragment implements WalletSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSettingsFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSettingsFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy settingsRecycleAdapter$delegate;

    /* compiled from: WalletSettingsFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsFragment$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SettingMenuItem.values().length];
            iArr[SettingMenuItem.HELP.ordinal()] = 1;
            iArr[SettingMenuItem.ETH_ACCOUNT.ordinal()] = 2;
            iArr[SettingMenuItem.INTERFACE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletSettingsFragment() {
        Lazy lazy;
        WalletSettingsFragment$presenter$2 walletSettingsFragment$presenter$2 = new WalletSettingsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSettingsPresenter.class.getName() + ".presenter", walletSettingsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletSettingsFragment$special$$inlined$inject$default$1(this, null, null));
        this.settingsRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletSettingsFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletSettingsPresenter getPresenter() {
        return (WalletSettingsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletSettingsRecycleAdapter getSettingsRecycleAdapter() {
        return (WalletSettingsRecycleAdapter) this.settingsRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletSettingsBinding getBinding() {
        return (ForkFragmentWalletSettingsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.wallet.common.BottomNavigationTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleSettings;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupRecycleView();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.wallet.settings.WalletSettingsView
    public void setupSettingsItems(List<SettingUiItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        getSettingsRecycleAdapter().setNewInstance(items);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getThemeDescriptions$lambda-1  reason: not valid java name */
    public static final void m1719getThemeDescriptions$lambda1(WalletSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSettingsRecycleAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.settings.WalletSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletSettingsFragment.m1719getThemeDescriptions$lambda1(WalletSettingsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
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
        getSettingsRecycleAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.settings.WalletSettingsFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletSettingsFragment.m1720setupListeners$lambda4(WalletSettingsFragment.this, baseQuickAdapter, view, i);
            }
        });
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.settings.WalletSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                WalletSettingsPresenter presenter;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = (DomainRxEvents.CryptoEvent) it;
                if (cryptoEvent instanceof DomainRxEvents.SuccessResetWallet ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessCreateWallet.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRestoreWallet.INSTANCE)) {
                    presenter = WalletSettingsFragment.this.getPresenter();
                    presenter.loadSettingsMenu();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.settings.WalletSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2
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
    /* renamed from: setupListeners$lambda-4  reason: not valid java name */
    public static final void m1720setupListeners$lambda4(WalletSettingsFragment this$0, BaseQuickAdapter noName_0, View noName_1, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
        int i2 = WhenMappings.$EnumSwitchMapping$0[this$0.getSettingsRecycleAdapter().getItem(i).getItem().ordinal()];
        if (i2 == 1) {
            this$0.openFAQ();
        } else if (i2 == 2) {
            this$0.openWalletAccountSettings();
        } else if (i2 != 3) {
        } else {
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
    /* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsFragment$Companion */
    /* loaded from: classes3.dex */
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
