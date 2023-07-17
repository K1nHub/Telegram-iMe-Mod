package com.iMe.p031ui.wallet.crypto.tutorial;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import androidx.core.widget.NestedScrollView;
import androidx.viewpager.widget.ViewPager;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.tutorial.TutorialPage;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.p031ui.base.wallet_creation.WalletCreationBaseFragment;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.WrapContentViewPager;
import com.iMe.p031ui.wallet.crypto.tutorial.adapter.CreateWalletTutorialAdapter;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.ActionBarExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.tbuonomo.viewpagerdotsindicator.DotsIndicator;
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
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.databinding.ForkFragmentWalletTutorialBinding;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
/* compiled from: CreateWalletTutorialFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment */
/* loaded from: classes4.dex */
public final class CreateWalletTutorialFragment extends WalletCreationBaseFragment implements CreateWalletTutorialView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CreateWalletTutorialFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletTutorialFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletTutorialBinding;", 0))};
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

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateWalletTutorialPresenter getPresenter() {
        return (CreateWalletTutorialPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateWalletTutorialAdapter getTutorialAdapter() {
        return (CreateWalletTutorialAdapter) this.tutorialAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletTutorialBinding getBinding() {
        return (ForkFragmentWalletTutorialBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(Theme.key_windowBackgroundWhite)) > 0.699999988079071d;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return this.swipeBackEnabled;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        handleBackPressed();
        return false;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupViewPager();
        setupListeners();
        setupTexts();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void openTutorialPassedScreen(TutorialType.WalletIntro tutorialType) {
        Intrinsics.checkNotNullParameter(tutorialType, "tutorialType");
        presentFragment(tutorialType.getOnTutorialPassedFragmentCreator().invoke());
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        if (this.tutorialType instanceof TutorialType.WalletIntro) {
            getRxEventBus().publish(DomainRxEvents.BackupFlowStarted.INSTANCE);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CreateWalletTutorialFragment.getThemeDescriptions$lambda$0(CreateWalletTutorialFragment.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundWhite));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(CreateWalletTutorialFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupColors();
        this$0.getTutorialAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p031ui.wallet.crypto.tutorial.CreateWalletTutorialView
    public void showTutorialPages(List<TutorialPage> pages) {
        Intrinsics.checkNotNullParameter(pages, "pages");
        getTutorialAdapter().setItems(pages);
        boolean isSingletonList = CollectionExtKt.isSingletonList(pages);
        updatePageButton(isSingletonList);
        DotsIndicator dotsIndicator = getBinding().dotsIndicatorTutorial;
        Intrinsics.checkNotNullExpressionValue(dotsIndicator, "binding.dotsIndicatorTutorial");
        dotsIndicator.setVisibility(isSingletonList ^ true ? 0 : 8);
    }

    private final void setupActionBar() {
        C3484ActionBar setupActionBar$lambda$1 = this.actionBar;
        setupActionBar$lambda$1.setCastShadows(false);
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$1, "setupActionBar$lambda$1");
        ActionBarExtKt.applyColorsWithWhiteBackground(setupActionBar$lambda$1);
        setupActionBar$lambda$1.setAllowOverlayTitle(true);
        setupActionBar$lambda$1.setBackButtonDrawable(new BackDrawable(false));
        setupActionBar$lambda$1.createMenu();
        setupActionBar$lambda$1.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CreateWalletTutorialFragment.this.handleBackPressed();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleBackPressed() {
        if (this.tutorialType instanceof TutorialType.WalletIntro) {
            Activity parentActivity = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, new DialogModel(getResourceManager().getString(C3417R.string.wallet_backup_quit_alert_title), getResourceManager().getString(C3417R.string.wallet_backup_quit_alert_description), getResourceManager().getString(C3417R.string.wallet_backup_quit_alert_negative_button), getResourceManager().getString(C3417R.string.wallet_backup_quit_alert_positive_button)), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
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
        ForkFragmentWalletTutorialBinding binding = getBinding();
        WrapContentViewPager setupViewPager$lambda$4$lambda$3 = binding.viewPagerTutorial;
        setupViewPager$lambda$4$lambda$3.setAdapter(getTutorialAdapter());
        Intrinsics.checkNotNullExpressionValue(setupViewPager$lambda$4$lambda$3, "setupViewPager$lambda$4$lambda$3");
        ViewExtKt.applyDefaultProperties(setupViewPager$lambda$4$lambda$3);
        binding.dotsIndicatorTutorial.setViewPager(setupViewPager$lambda$4$lambda$3);
        setupViewPager$lambda$4$lambda$3.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$setupViewPager$1$1$1
            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                CreateWalletTutorialAdapter tutorialAdapter;
                int lastIndex;
                CreateWalletTutorialFragment.this.swipeBackEnabled = i == 0;
                CreateWalletTutorialFragment createWalletTutorialFragment = CreateWalletTutorialFragment.this;
                tutorialAdapter = createWalletTutorialFragment.getTutorialAdapter();
                lastIndex = CollectionsKt__CollectionsKt.getLastIndex(tutorialAdapter.getItems());
                createWalletTutorialFragment.updatePageButton(i == lastIndex);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePageButton(boolean z) {
        ForkFragmentWalletTutorialBinding binding = getBinding();
        ActionButton updatePageButton$lambda$6$lambda$5 = binding.buttonAction;
        if (z) {
            updatePageButton$lambda$6$lambda$5.setText(getResourceManager().getString(this.tutorialType.getLastPageButtonTextResId()));
            Intrinsics.checkNotNullExpressionValue(updatePageButton$lambda$6$lambda$5, "updatePageButton$lambda$6$lambda$5");
            ViewExtKt.safeThrottledClick$default(updatePageButton$lambda$6$lambda$5, 0L, new CreateWalletTutorialFragment$updatePageButton$1$1$1(this), 1, null);
            return;
        }
        updatePageButton$lambda$6$lambda$5.setText(getResourceManager().getString(C3417R.string.common_next));
        Intrinsics.checkNotNullExpressionValue(updatePageButton$lambda$6$lambda$5, "updatePageButton$lambda$6$lambda$5");
        ViewExtKt.safeThrottledClick$default(updatePageButton$lambda$6$lambda$5, 0L, new CreateWalletTutorialFragment$updatePageButton$1$1$2(binding), 1, null);
    }

    private final void setupTexts() {
        getBinding().buttonAction.setText(getResourceManager().getString(C3417R.string.common_next));
    }

    private final void setupColors() {
        ForkFragmentWalletTutorialBinding binding = getBinding();
        NestedScrollView root = binding.getRoot();
        int i = Theme.key_windowBackgroundWhite;
        root.setBackgroundColor(getThemedColor(i));
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackgroundColor(getThemedColor(i));
        c3484ActionBar.setItemsColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText), false);
        c3484ActionBar.setItemsBackgroundColor(getThemedColor(Theme.key_listSelector), false);
        binding.buttonAction.applyColors();
        DotsIndicator dotsIndicator = binding.dotsIndicatorTutorial;
        dotsIndicator.setSelectedDotColor(getThemedColor(Theme.key_chats_actionBackground));
        dotsIndicator.setDotsColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
    }

    private final void setupListeners() {
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.BackupFlowStarted.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2216x88dbe126(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2217x88dbe127(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        autoDispose(subscribe);
    }

    /* compiled from: CreateWalletTutorialFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.tutorial.CreateWalletTutorialFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CreateWalletTutorialFragment newInstance$default(Companion companion, TutorialType tutorialType, int i, Object obj) {
            if ((i & 1) != 0) {
                tutorialType = TutorialType.WalletCreated.INSTANCE;
            }
            return companion.newInstance(tutorialType);
        }

        public final CreateWalletTutorialFragment newInstance(TutorialType tutorialType) {
            Intrinsics.checkNotNullParameter(tutorialType, "tutorialType");
            return new CreateWalletTutorialFragment(tutorialType);
        }
    }
}
