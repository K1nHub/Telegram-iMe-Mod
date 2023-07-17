package com.iMe.p031ui.wallet.crypto.create.intro;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p024ui.view.FloatingActionButton;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.model.wallet.pin.CreatePinCodeScreenType;
import com.iMe.model.wallet.pin.WalletPinScreenArgs;
import com.iMe.p031ui.base.wallet_creation.WalletCreationBaseFragment;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.p031ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
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
import kotlin.text.StringsKt__StringsKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentCreateWalletIntroBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.URLSpanNoUnderline;
import org.telegram.p043ui.PasscodeActivity;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CreateWalletIntroFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment */
/* loaded from: classes4.dex */
public final class CreateWalletIntroFragment extends WalletCreationBaseFragment implements CreateWalletIntroView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CreateWalletIntroFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletIntroFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletIntroFragment.class, "toolbar", "getToolbar()Lorg/telegram/ui/ActionBar/ActionBar;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Rect bottomPanelRect;
    private final Lazy linkedWalletViewCornerRadius$delegate;
    private final Lazy linkedWalletViewStrokeWidth$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final ResettableLazy toolbar$delegate;
    private final WalletCreationType.Initial walletCreationType;

    public CreateWalletIntroFragment(String linkedWalletAddress, WalletCreationType.Initial walletCreationType) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(linkedWalletAddress, "linkedWalletAddress");
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        this.walletCreationType = walletCreationType;
        CreateWalletIntroFragment$presenter$2 createWalletIntroFragment$presenter$2 = new CreateWalletIntroFragment$presenter$2(this, linkedWalletAddress);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CreateWalletIntroPresenter.class.getName() + ".presenter", createWalletIntroFragment$presenter$2);
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletIntroFragment$binding$2(this), 1, (Object) null);
        this.bottomPanelRect = new Rect();
        lazy = LazyKt__LazyJVMKt.lazy(CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2.INSTANCE);
        this.linkedWalletViewStrokeWidth$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(CreateWalletIntroFragment$linkedWalletViewCornerRadius$2.INSTANCE);
        this.linkedWalletViewCornerRadius$delegate = lazy2;
        this.toolbar$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletIntroFragment$toolbar$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateWalletIntroPresenter getPresenter() {
        return (CreateWalletIntroPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ForkFragmentCreateWalletIntroBinding getBinding() {
        return (ForkFragmentCreateWalletIntroBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final float getLinkedWalletViewStrokeWidth() {
        return ((Number) this.linkedWalletViewStrokeWidth$delegate.getValue()).floatValue();
    }

    private final float getLinkedWalletViewCornerRadius() {
        return ((Number) this.linkedWalletViewCornerRadius$delegate.getValue()).floatValue();
    }

    private final C3484ActionBar getToolbar() {
        return (C3484ActionBar) this.toolbar$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupViews();
        FrameLayout root = getBinding().getRoot();
        root.addView(getToolbar(), LayoutHelper.createFrame(-1, -2));
        Intrinsics.checkNotNullExpressionValue(root, "binding.root.apply {\n   ….WRAP_CONTENT))\n        }");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void setupScreenData(TLRPC$User user, String address, Network.Explorer explorer) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(explorer, "explorer");
        ForkFragmentCreateWalletIntroBinding binding = getBinding();
        ConstraintLayout constraintLinkedWalletSection = binding.constraintLinkedWalletSection;
        Intrinsics.checkNotNullExpressionValue(constraintLinkedWalletSection, "constraintLinkedWalletSection");
        ViewExtKt.visible$default(constraintLinkedWalletSection, false, 1, null);
        binding.imageAvatar.setUser(user);
        binding.textUserId.setText(getResourceManager().getString(C3417R.string.wallet_home_crypto_account_telegram_id, Long.valueOf(user.f1656id)));
        binding.textAddress.setText(address);
        setupItemMoreOptions(explorer);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void showCreateNewWalletConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(context, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CreateWalletIntroFragment.showCreateNewWalletConfirmationDialog$lambda$2(CreateWalletIntroFragment.this);
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showCreateNewWalletConfirmationDialog$lambda$2(CreateWalletIntroFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().prepareCreateWalletFlow();
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openImportWalletScreen(String password, String str) {
        Intrinsics.checkNotNullParameter(password, "password");
        CreateWalletFragment.Companion companion = CreateWalletFragment.Companion;
        if (str == null) {
            str = "";
        }
        presentFragment(companion.newInstance(new CreateWalletScreenType.Import(str, password)));
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openCreateWalletScreen(Wallet wallet2, String password) {
        Intrinsics.checkNotNullParameter(wallet2, "wallet");
        Intrinsics.checkNotNullParameter(password, "password");
        presentFragment(PasscodeActivity.newInstanceForWalletPin(new WalletPinScreenArgs(password, null, wallet2, new CreatePinCodeScreenType.Creation(WalletCreationType.Initial.Create.INSTANCE), 2, null)));
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openAddWalletScreen(Wallet wallet2, String password) {
        Intrinsics.checkNotNullParameter(wallet2, "wallet");
        Intrinsics.checkNotNullParameter(password, "password");
        presentFragment(CreateWalletTutorialFragment.Companion.newInstance(new TutorialType.WalletIntro(new CreateWalletIntroFragment$openAddWalletScreen$1(password, wallet2))));
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openAddressScan(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Browser.openUrl(getContext(), url);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void updateNextButtonLoadingState(boolean z) {
        FloatingActionButton floatingActionButton = getBinding().buttonNext;
        floatingActionButton.setEnabled(!z);
        floatingActionButton.updateLoadingState(z);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(Theme.key_windowBackgroundWhite)) > 0.699999988079071d;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CreateWalletIntroFragment.this.setupColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3484ActionBar initActionBar() {
        C3484ActionBar c3484ActionBar = new C3484ActionBar(getContext());
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setTitle(getResourceManager().getString(this.walletCreationType.getTitleTextResId()));
        c3484ActionBar.createMenu().addItem(IdFabric$Menu.INFO, C3417R.C3419drawable.msg_info);
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$initActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CreateWalletIntroFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.INFO) {
                    CreateWalletIntroFragment.this.openTutorialScreen();
                }
            }
        });
        return c3484ActionBar;
    }

    private final void setupItemMoreOptions(Network.Explorer explorer) {
        ActionBarMenuItem setupItemMoreOptions$lambda$8 = getBinding().itemMoreOptions;
        setupItemMoreOptions$lambda$8.setLongClickEnabled(false);
        setupItemMoreOptions$lambda$8.setSubMenuOpenSide(2);
        setupItemMoreOptions$lambda$8.setIcon(C3417R.C3419drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupItemMoreOptions$lambda$8, "setupItemMoreOptions$lambda$8");
        ViewExtKt.setCircleRippleBackground(setupItemMoreOptions$lambda$8);
        setupItemMoreOptions$lambda$8.addSubItem(IdFabric$Menu.SCAN_ADDRESS, 0, getResourceManager().getString(C3417R.string.wallet_transaction_details_action_open_etherscan, explorer.getName())).setIcon(explorer.getLogoUrl());
        ViewExtKt.safeThrottledClick$default(setupItemMoreOptions$lambda$8, 0L, new CreateWalletIntroFragment$setupItemMoreOptions$1$2(setupItemMoreOptions$lambda$8), 1, null);
        setupItemMoreOptions$lambda$8.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                CreateWalletIntroFragment.setupItemMoreOptions$lambda$8$lambda$7(CreateWalletIntroFragment.this, i);
            }
        });
        setupItemMoreOptions$lambda$8.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3417R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupItemMoreOptions$lambda$8$lambda$7(CreateWalletIntroFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == IdFabric$Menu.SCAN_ADDRESS) {
            this$0.getPresenter().onViewOnScanClick();
        }
    }

    private final void setupListeners() {
        final ForkFragmentCreateWalletIntroBinding binding = getBinding();
        C3484ActionBar toolbar = getToolbar();
        if (!ViewCompat.isLaidOut(toolbar) || toolbar.isLayoutRequested()) {
            toolbar.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    NestedScrollView nestedRoot = ForkFragmentCreateWalletIntroBinding.this.nestedRoot;
                    Intrinsics.checkNotNullExpressionValue(nestedRoot, "nestedRoot");
                    nestedRoot.setPadding(nestedRoot.getPaddingLeft(), ForkFragmentCreateWalletIntroBinding.this.nestedRoot.getPaddingTop() + view.getHeight(), nestedRoot.getPaddingRight(), nestedRoot.getPaddingBottom());
                }
            });
        } else {
            NestedScrollView nestedRoot = binding.nestedRoot;
            Intrinsics.checkNotNullExpressionValue(nestedRoot, "nestedRoot");
            nestedRoot.setPadding(nestedRoot.getPaddingLeft(), binding.nestedRoot.getPaddingTop() + toolbar.getHeight(), nestedRoot.getPaddingRight(), nestedRoot.getPaddingBottom());
        }
        LinearLayout linearBottomPanel = binding.linearBottomPanel;
        Intrinsics.checkNotNullExpressionValue(linearBottomPanel, "linearBottomPanel");
        if (!ViewCompat.isLaidOut(linearBottomPanel) || linearBottomPanel.isLayoutRequested()) {
            linearBottomPanel.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$2
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    NestedScrollView nestedRoot2 = ForkFragmentCreateWalletIntroBinding.this.nestedRoot;
                    Intrinsics.checkNotNullExpressionValue(nestedRoot2, "nestedRoot");
                    nestedRoot2.setPadding(nestedRoot2.getPaddingLeft(), nestedRoot2.getPaddingTop(), nestedRoot2.getPaddingRight(), view.getHeight());
                    ForkFragmentCreateWalletIntroBinding.this.linearBottomPanel.getGlobalVisibleRect(this.bottomPanelRect);
                    this.updateBottomPanelElevation();
                }
            });
        } else {
            NestedScrollView nestedRoot2 = binding.nestedRoot;
            Intrinsics.checkNotNullExpressionValue(nestedRoot2, "nestedRoot");
            nestedRoot2.setPadding(nestedRoot2.getPaddingLeft(), nestedRoot2.getPaddingTop(), nestedRoot2.getPaddingRight(), linearBottomPanel.getHeight());
            binding.linearBottomPanel.getGlobalVisibleRect(this.bottomPanelRect);
            updateBottomPanelElevation();
        }
        binding.nestedRoot.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                CreateWalletIntroFragment.setupListeners$lambda$12$lambda$11(CreateWalletIntroFragment.this, view, i, i2, i3, i4);
            }
        });
        FloatingActionButton buttonNext = binding.buttonNext;
        Intrinsics.checkNotNullExpressionValue(buttonNext, "buttonNext");
        ViewExtKt.safeThrottledClick$default(buttonNext, 0L, new CreateWalletIntroFragment$setupListeners$1$4(this), 1, null);
        AppCompatImageView imageCopy = binding.imageCopy;
        Intrinsics.checkNotNullExpressionValue(imageCopy, "imageCopy");
        ViewExtKt.safeThrottledClick$default(imageCopy, 0L, new CreateWalletIntroFragment$setupListeners$1$5(this), 1, null);
        AppCompatImageView imageLinkedWalletInfo = binding.imageLinkedWalletInfo;
        Intrinsics.checkNotNullExpressionValue(imageLinkedWalletInfo, "imageLinkedWalletInfo");
        ViewExtKt.safeThrottledClick$default(imageLinkedWalletInfo, 0L, new CreateWalletIntroFragment$setupListeners$1$6(this), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$12$lambda$11(CreateWalletIntroFragment this$0, View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getToolbar().setElevation(i2 > 0 ? 12.0f : BitmapDescriptorFactory.HUE_RED);
        this$0.updateBottomPanelElevation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateBottomPanelElevation() {
        Rect rect = new Rect();
        ForkFragmentCreateWalletIntroBinding binding = getBinding();
        binding.constraintLinkedWalletSection.getGlobalVisibleRect(rect);
        binding.linearBottomPanel.setElevation(rect.bottom >= this.bottomPanelRect.top ? 12.0f : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupColors() {
        List<AppCompatImageView> listOf;
        C3484ActionBar toolbar = getToolbar();
        int i = Theme.key_windowBackgroundWhite;
        toolbar.setBackgroundColor(getThemedColor(i));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        toolbar.setTitleColor(getThemedColor(i2));
        toolbar.setItemsColor(getThemedColor(i2), false);
        toolbar.setItemsBackgroundColor(getThemedColor(Theme.key_listSelector), false);
        ForkFragmentCreateWalletIntroBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(i));
        TextView textTitle = binding.textTitle;
        Intrinsics.checkNotNullExpressionValue(textTitle, "textTitle");
        AppCompatTextView textAddress = binding.textAddress;
        Intrinsics.checkNotNullExpressionValue(textAddress, "textAddress");
        ViewExtKt.setTextsColor(i2, textTitle, textAddress);
        TextView textView = binding.textDescription;
        int i3 = Theme.key_windowBackgroundWhiteGrayText;
        textView.setTextColor(getThemedColor(i3));
        TextView setupColors$lambda$20$lambda$15 = binding.textLinkedWalletTitle;
        setupColors$lambda$20$lambda$15.setTextColor(getThemedColor(i3));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$20$lambda$15, "setupColors$lambda$20$lambda$15");
        ViewExtKt.withMediumTypeface(setupColors$lambda$20$lambda$15);
        binding.textUserId.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueText));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new AppCompatImageView[]{binding.imageLinkedWalletInfo, binding.imageCopy});
        for (AppCompatImageView setupColors$lambda$20$lambda$16 : listOf) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$20$lambda$16, "setupColors$lambda$20$lambda$16");
            ViewExtKt.setImageColor(setupColors$lambda$20$lambda$16, getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
            ViewExtKt.setCircleRippleBackground(setupColors$lambda$20$lambda$16);
        }
        ActionBarMenuItem setupColors$lambda$20$lambda$17 = binding.itemMoreOptions;
        setupColors$lambda$20$lambda$17.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$20$lambda$17, "setupColors$lambda$20$lambda$17");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$20$lambda$17);
        ConstraintLayout constraintLayout = binding.constraintWallet;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        int i4 = Theme.key_windowBackgroundWhite;
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(i4)));
        materialShapeDrawable.setStroke(getLinkedWalletViewStrokeWidth(), getThemedColor(Theme.key_windowBackgroundGray));
        materialShapeDrawable.setCornerSize(getLinkedWalletViewCornerRadius());
        constraintLayout.setBackground(materialShapeDrawable);
        TextView textView2 = binding.textPrivacy;
        textView2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        textView2.setLinkTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueText));
        binding.linearBottomPanel.setBackgroundColor(getThemedColor(i4));
        binding.buttonNext.updateColors();
    }

    private final void setupViews() {
        int indexOf$default;
        int lastIndexOf$default;
        this.actionBar.setAddToContainer(false);
        ForkFragmentCreateWalletIntroBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageHeader;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3417R.raw.fork_crypto_wallet, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
        binding.textTitle.setText(getResourceManager().getString(C3417R.string.wallet_creation_intro_title));
        binding.textDescription.setText(getResourceManager().getString(C3417R.string.wallet_creation_intro_description));
        binding.textLinkedWalletTitle.setText(getResourceManager().getString(C3417R.string.wallet_creation_intro_linked_wallet));
        TextView textView = binding.textPrivacy;
        textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        String string = getResourceManager().getString(C3417R.string.wallet_creation_intro_privacy);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, "*", 0, false, 6, (Object) null);
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) string, "*", 0, false, 6, (Object) null);
        if (indexOf$default != -1 && lastIndexOf$default != -1 && indexOf$default != lastIndexOf$default) {
            spannableStringBuilder.replace(lastIndexOf$default, lastIndexOf$default + 1, (CharSequence) "");
            spannableStringBuilder.replace(indexOf$default, indexOf$default + 1, (CharSequence) "");
            spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString("PrivacyPolicyUrl", C3417R.string.PrivacyPolicyUrl)), indexOf$default, lastIndexOf$default - 1, 33);
        }
        textView.setText(spannableStringBuilder);
        binding.itemMoreOptions.setIcon(C3417R.C3419drawable.ic_ab_other);
        binding.buttonNext.setIcon(C3417R.C3419drawable.msg_arrow_forward);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showInfoDialog() {
        showDialog(DialogsFactoryKt.createInfoBottomSheetDialog$default(this, getResourceManager().getString(C3417R.string.wallet_creation_intro_information_title), getResourceManager().getString(C3417R.string.wallet_creation_intro_information_description), getResourceManager().getString(C3417R.string.common_ok), null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openTutorialScreen() {
        presentFragment(CreateWalletTutorialFragment.Companion.newInstance$default(CreateWalletTutorialFragment.Companion, null, 1, null));
    }

    /* compiled from: CreateWalletIntroFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CreateWalletIntroFragment newInstance(WalletCreationType.Initial walletCreationType, String linkedWalletAddress) {
            Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
            Intrinsics.checkNotNullParameter(linkedWalletAddress, "linkedWalletAddress");
            return new CreateWalletIntroFragment(linkedWalletAddress, walletCreationType);
        }
    }
}
