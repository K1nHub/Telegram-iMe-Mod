package com.smedialink.p031ui.wallet.crypto.tutorial;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.ViewPager;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.tutorial.TutorialPage;
import com.smedialink.model.wallet.crypto.tutorial.TutorialType;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.custom.ActionButton;
import com.smedialink.p031ui.custom.WrapContentViewPager;
import com.smedialink.p031ui.wallet.crypto.tutorial.adapter.CreateEthWalletTutorialAdapter;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.dialogs.DialogExtKt;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.extentions.common.ActionBarExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
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
import org.fork.utils.Callbacks$Callback;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.databinding.ForkFragmentWalletEthTutorialBinding;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BackDrawable;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.PasscodeActivity;
/* compiled from: CreateWalletTutorialFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment */
/* loaded from: classes3.dex */
public final class CreateWalletTutorialFragment extends WalletAuthFragment implements CreateWalletTutorialView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CreateWalletTutorialFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletTutorialFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthTutorialBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private boolean swipeBackEnabled;
    private final Lazy tutorialAdapter$delegate;
    private final TutorialType tutorialType;

    public static final CreateWalletTutorialFragment newInstance(TutorialType tutorialType) {
        return Companion.newInstance(tutorialType);
    }

    public CreateWalletTutorialFragment(TutorialType tutorialType) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(tutorialType, "tutorialType");
        this.tutorialType = tutorialType;
        CreateWalletTutorialFragment$presenter$2 createWalletTutorialFragment$presenter$2 = new CreateWalletTutorialFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CreateWalletTutorialPresenter.class.getName() + ".presenter", createWalletTutorialFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new CreateWalletTutorialFragment$special$$inlined$inject$default$1(this, null, null));
        this.tutorialAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletTutorialFragment$binding$2(this), 1, (Object) null);
        this.swipeBackEnabled = true;
    }

    public final CreateWalletTutorialPresenter getPresenter() {
        return (CreateWalletTutorialPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    public final CreateEthWalletTutorialAdapter getTutorialAdapter() {
        return (CreateEthWalletTutorialAdapter) this.tutorialAdapter$delegate.getValue();
    }

    public final ForkFragmentWalletEthTutorialBinding getBinding() {
        return (ForkFragmentWalletEthTutorialBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return this.swipeBackEnabled;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        handleBackPressed();
        return false;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupViewPager();
        setupListeners();
        setupTexts();
        RelativeLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void openPasscodeScreen() {
        presentFragment(PasscodeActivity.newInstanceForWalletPasscode(""));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void openTutorialPassedScreen(TutorialType.Backup tutorialType) {
        Intrinsics.checkNotNullParameter(tutorialType, "tutorialType");
        presentFragment(tutorialType.getOnTutorialPassedFragmentCreator().invoke());
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        if (this.tutorialType instanceof TutorialType.Backup) {
            getRxEventBus().publish(DomainRxEvents.BackupFlowStarted.INSTANCE);
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "windowBackgroundWhiteGrayIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarWhiteSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CreateWalletTutorialFragment.getThemeDescriptions$lambda$0(CreateWalletTutorialFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundWhite"), new ThemeDescription(null, 0, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CreateWalletTutorialFragment.getThemeDescriptions$lambda$2(CreateWalletTutorialFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "chats_actionBackground"));
        return arrayListOf;
    }

    public static final void getThemeDescriptions$lambda$0(CreateWalletTutorialFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getTutorialAdapter().notifyDataSetChanged();
    }

    public static final void getThemeDescriptions$lambda$2(CreateWalletTutorialFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ForkFragmentWalletEthTutorialBinding binding = this$0.getBinding();
        binding.buttonAction.applyColors();
        binding.dotsIndicatorTutorial.setSelectedDotColor(Theme.getColor("chats_actionBackground"));
        binding.dotsIndicatorTutorial.setDotsColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void showTutorialPages(List<TutorialPage> pages) {
        Intrinsics.checkNotNullParameter(pages, "pages");
        getTutorialAdapter().setItems(pages);
    }

    private final void setupActionBar() {
        C3351ActionBar setupActionBar$lambda$3 = this.actionBar;
        setupActionBar$lambda$3.setCastShadows(false);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$3, "setupActionBar$lambda$3");
        ActionBarExtKt.applyColorsWithWhiteBackground(setupActionBar$lambda$3);
        setupActionBar$lambda$3.setAllowOverlayTitle(true);
        setupActionBar$lambda$3.setBackButtonDrawable(new BackDrawable(false));
        setupActionBar$lambda$3.createMenu();
        setupActionBar$lambda$3.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CreateWalletTutorialFragment.this.handleBackPressed();
                }
            }
        });
    }

    public final void handleBackPressed() {
        if (this.tutorialType instanceof TutorialType.Backup) {
            Activity parentActivity = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, new DialogModel(getResourceManager().getString(C3286R.string.wallet_backup_quit_alert_title), getResourceManager().getString(C3286R.string.wallet_backup_quit_alert_description), getResourceManager().getString(C3286R.string.wallet_backup_quit_alert_negative_button), getResourceManager().getString(C3286R.string.wallet_backup_quit_alert_positive_button)), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$$ExternalSyntheticLambda0
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    CreateWalletTutorialFragment.this.finishFragment();
                }
            }, null, 8, null);
            showDialog(createDialog$default);
            DialogExtKt.makeRedPositiveButton(createDialog$default);
            return;
        }
        finishFragment();
    }

    private final void setupViewPager() {
        WrapContentViewPager setupViewPager$lambda$5 = getBinding().viewPagerTutorial;
        setupViewPager$lambda$5.setAdapter(getTutorialAdapter());
        Intrinsics.checkNotNullExpressionValue(setupViewPager$lambda$5, "setupViewPager$lambda$5");
        ViewExtKt.applyDefaultProperties(setupViewPager$lambda$5);
        getBinding().dotsIndicatorTutorial.setViewPager(setupViewPager$lambda$5);
        setupViewPager$lambda$5.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupViewPager$1$1
            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                CreateEthWalletTutorialAdapter tutorialAdapter;
                int lastIndex;
                ForkFragmentWalletEthTutorialBinding binding;
                ResourceManager resourceManager;
                ForkFragmentWalletEthTutorialBinding binding2;
                ResourceManager resourceManager2;
                CreateWalletTutorialFragment.this.swipeBackEnabled = i == 0;
                tutorialAdapter = CreateWalletTutorialFragment.this.getTutorialAdapter();
                lastIndex = CollectionsKt__CollectionsKt.getLastIndex(tutorialAdapter.getItems());
                if (i == lastIndex) {
                    binding2 = CreateWalletTutorialFragment.this.getBinding();
                    ActionButton onPageSelected$lambda$0 = binding2.buttonAction;
                    CreateWalletTutorialFragment createWalletTutorialFragment = CreateWalletTutorialFragment.this;
                    resourceManager2 = createWalletTutorialFragment.getResourceManager();
                    onPageSelected$lambda$0.setText(resourceManager2.getString(C3286R.string.common_create));
                    Intrinsics.checkNotNullExpressionValue(onPageSelected$lambda$0, "onPageSelected$lambda$0");
                    ViewExtKt.safeThrottledClick$default(onPageSelected$lambda$0, 0L, new C2102x2903d52b(createWalletTutorialFragment), 1, null);
                    return;
                }
                binding = CreateWalletTutorialFragment.this.getBinding();
                ActionButton onPageSelected$lambda$1 = binding.buttonAction;
                CreateWalletTutorialFragment createWalletTutorialFragment2 = CreateWalletTutorialFragment.this;
                resourceManager = createWalletTutorialFragment2.getResourceManager();
                onPageSelected$lambda$1.setText(resourceManager.getString(C3286R.string.common_next));
                Intrinsics.checkNotNullExpressionValue(onPageSelected$lambda$1, "onPageSelected$lambda$1");
                ViewExtKt.safeThrottledClick$default(onPageSelected$lambda$1, 0L, new C2103x2903d8ec(createWalletTutorialFragment2), 1, null);
            }
        });
    }

    private final void setupTexts() {
        getBinding().buttonAction.setText(getResourceManager().getString(C3286R.string.common_next));
    }

    private final void setupColors() {
        ForkFragmentWalletEthTutorialBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        binding.dotsIndicatorTutorial.setSelectedDotColor(Theme.getColor("chats_actionBackground"));
        binding.dotsIndicatorTutorial.setDotsColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
    }

    private final void setupListeners() {
        ForkFragmentWalletEthTutorialBinding binding = getBinding();
        ActionButton buttonAction = binding.buttonAction;
        Intrinsics.checkNotNullExpressionValue(buttonAction, "buttonAction");
        ViewExtKt.safeThrottledClick$default(buttonAction, 0L, new CreateWalletTutorialFragment$setupListeners$1$1(binding), 1, null);
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2099x88dbe126(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2100x88dbe127(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        autoDispose(subscribe);
    }

    /* compiled from: CreateWalletTutorialFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CreateWalletTutorialFragment newInstance$default(Companion companion, TutorialType tutorialType, int i, Object obj) {
            if ((i & 1) != 0) {
                tutorialType = TutorialType.Intro.INSTANCE;
            }
            return companion.newInstance(tutorialType);
        }

        public final CreateWalletTutorialFragment newInstance(TutorialType tutorialType) {
            Intrinsics.checkNotNullParameter(tutorialType, "tutorialType");
            return new CreateWalletTutorialFragment(tutorialType);
        }
    }
}
