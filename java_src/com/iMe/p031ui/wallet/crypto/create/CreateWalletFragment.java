package com.iMe.p031ui.wallet.crypto.create;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.RadioCellsListDialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.model.wallet.pin.CreatePinCodeScreenType;
import com.iMe.model.wallet.pin.WalletPinScreenArgs;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.base.wallet_creation.WalletCreationBaseFragment;
import com.iMe.p031ui.custom.ActionButton;
import com.iMe.p031ui.custom.backup.SecretWordsActionButton;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.p031ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.BackupPdfHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.BackDrawable;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.CameraScanActivity;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.QRCodeBottomSheet;
import org.telegram.p043ui.Components.RLottieImageView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.URLSpanNoUnderline;
import org.telegram.p043ui.PasscodeActivity;
import timber.log.Timber;
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment */
/* loaded from: classes6.dex */
public final class CreateWalletFragment extends WalletCreationBaseFragment implements CreateWalletView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "imageView", "getImageView()Lorg/telegram/ui/Components/RLottieImageView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "actionButton", "getActionButton()Lcom/iMe/ui/custom/ActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "titleTextView", "getTitleTextView()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "descriptionText", "getDescriptionText()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "descriptionText2", "getDescriptionText2()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "actionBarBackground", "getActionBarBackground()Landroid/view/View;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintsAdapter", "getHintsAdapter()Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$HintsAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintListView", "getHintListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintPopupWindow", "getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintPopupLayout", "getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "scrollView", "getScrollView()Landroid/widget/ScrollView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "editTextContainer", "getEditTextContainer()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "leftColumn", "getLeftColumn()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "rightColumn", "getRightColumn()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "qrCodeBottomSheet", "getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonsLayout", "getButtonsLayout()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "columnsLayout", "getColumnsLayout()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonCopy", "getButtonCopy()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonQR", "getButtonQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonPaste", "getButtonPaste()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonScanQR", "getButtonScanQR()Lcom/iMe/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "clipboardManager", "getClipboardManager()Landroid/content/ClipboardManager;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy actionBarBackground$delegate;
    private final ResettableLazy actionButton$delegate;
    private final ResettableLazy buttonCopy$delegate;
    private final ResettableLazy buttonPaste$delegate;
    private final ResettableLazy buttonQR$delegate;
    private final ResettableLazy buttonScanQR$delegate;
    private final ResettableLazy buttonsLayout$delegate;
    private Runnable cancelOnDestroyRunnable;
    private final List<Integer> checkWordIndices;
    private final ResettableLazy clipboardManager$delegate;
    private final ResettableLazy columnsLayout$delegate;
    private final ResettableLazy descriptionText$delegate;
    private final ResettableLazy descriptionText2$delegate;
    private final ResettableLazy editTextContainer$delegate;
    private final List<NumericEditText> editTexts;
    private CreateWalletFragment fragmentToRemove;
    private boolean globalIgnoreTextChange;
    private NumericEditText hintEditText;
    private LinearLayoutManager hintLayoutManager;
    private final ResettableLazy hintListView$delegate;
    private final ResettableLazy hintPopupLayout$delegate;
    private final ResettableLazy hintPopupWindow$delegate;
    private final ResettableLazy hintsAdapter$delegate;
    private final ResettableLazy imageView$delegate;
    private final ResettableLazy leftColumn$delegate;
    private int maxEditNumberWidth;
    private int maxNumberWidth;
    private boolean needHideKeyboardOnPause;
    private final MoxyKtxDelegate presenter$delegate;
    private final ResettableLazy qrCodeBottomSheet$delegate;
    private final ResettableLazy rightColumn$delegate;
    private final CreateWalletScreenType screenType;
    private final ResettableLazy scrollView$delegate;
    private NumericEditText searchingHintEditText;
    private final ResettableLazy titleTextView$delegate;
    private final List<NumericTextView> wordsTextViews;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean createContainer$lambda$9$lambda$8(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final CreateWalletFragment newInstance(CreateWalletScreenType createWalletScreenType) {
        return Companion.newInstance(createWalletScreenType);
    }

    public CreateWalletFragment(CreateWalletScreenType screenType) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.screenType = screenType;
        Function0<CreateWalletPresenter> function0 = new Function0<CreateWalletPresenter>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreateWalletPresenter invoke() {
                Lazy lazy;
                final CreateWalletFragment createWalletFragment = CreateWalletFragment.this;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        CreateWalletScreenType createWalletScreenType;
                        createWalletScreenType = CreateWalletFragment.this.screenType;
                        return ParametersHolderKt.parametersOf(createWalletScreenType);
                    }
                };
                lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<CreateWalletPresenter>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.crypto.create.CreateWalletPresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final CreateWalletPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(CreateWalletPresenter.class), qualifier, function03);
                    }
                });
                return (CreateWalletPresenter) lazy.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CreateWalletPresenter.class.getName() + ".presenter", function0);
        this.imageView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RLottieImageView>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$imageView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RLottieImageView invoke() {
                RLottieImageView createImageView;
                createImageView = CreateWalletFragment.this.createImageView();
                return createImageView;
            }
        }, 1, (Object) null);
        this.actionButton$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ActionButton>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$actionButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ActionButton invoke() {
                ActionButton createActionButton;
                createActionButton = CreateWalletFragment.this.createActionButton();
                return createActionButton;
            }
        }, 1, (Object) null);
        this.titleTextView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<TextView>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$titleTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView createTitleTextView;
                createTitleTextView = CreateWalletFragment.this.createTitleTextView();
                return createTitleTextView;
            }
        }, 1, (Object) null);
        this.descriptionText$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<TextView>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$descriptionText$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView createDescriptionTextView;
                createDescriptionTextView = CreateWalletFragment.this.createDescriptionTextView();
                return createDescriptionTextView;
            }
        }, 1, (Object) null);
        this.descriptionText2$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<TextView>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$descriptionText2$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView createDescriptionTextView2;
                createDescriptionTextView2 = CreateWalletFragment.this.createDescriptionTextView2();
                return createDescriptionTextView2;
            }
        }, 1, (Object) null);
        this.actionBarBackground$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<View>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$actionBarBackground$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View createActionBarBackground;
                createActionBarBackground = CreateWalletFragment.this.createActionBarBackground();
                return createActionBarBackground;
            }
        }, 1, (Object) null);
        this.hintsAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<HintsAdapter>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$hintsAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreateWalletFragment.HintsAdapter invoke() {
                return new CreateWalletFragment.HintsAdapter();
            }
        }, 1, (Object) null);
        this.hintListView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$hintListView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView createHintListView;
                createHintListView = CreateWalletFragment.this.createHintListView();
                return createHintListView;
            }
        }, 1, (Object) null);
        this.hintPopupWindow$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ActionBarPopupWindow>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$hintPopupWindow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ActionBarPopupWindow invoke() {
                ActionBarPopupWindow createHintPopupWindow;
                createHintPopupWindow = CreateWalletFragment.this.createHintPopupWindow();
                return createHintPopupWindow;
            }
        }, 1, (Object) null);
        this.hintPopupLayout$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ActionBarPopupWindow.ActionBarPopupWindowLayout>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$hintPopupLayout$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ActionBarPopupWindow.ActionBarPopupWindowLayout invoke() {
                ActionBarPopupWindow.ActionBarPopupWindowLayout createHintPopupLayout;
                createHintPopupLayout = CreateWalletFragment.this.createHintPopupLayout();
                return createHintPopupLayout;
            }
        }, 1, (Object) null);
        this.scrollView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ScrollView>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$scrollView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ScrollView invoke() {
                ScrollView createScrollView;
                createScrollView = CreateWalletFragment.this.createScrollView();
                return createScrollView;
            }
        }, 1, (Object) null);
        this.editTextContainer$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<LinearLayout>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$editTextContainer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout createVerticalLinearLayout;
                createVerticalLinearLayout = CreateWalletFragment.this.createVerticalLinearLayout();
                return createVerticalLinearLayout;
            }
        }, 1, (Object) null);
        this.leftColumn$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<LinearLayout>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$leftColumn$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout createVerticalLinearLayout;
                createVerticalLinearLayout = CreateWalletFragment.this.createVerticalLinearLayout();
                return createVerticalLinearLayout;
            }
        }, 1, (Object) null);
        this.rightColumn$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<LinearLayout>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$rightColumn$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                LinearLayout createVerticalLinearLayout;
                createVerticalLinearLayout = CreateWalletFragment.this.createVerticalLinearLayout();
                return createVerticalLinearLayout;
            }
        }, 1, (Object) null);
        this.qrCodeBottomSheet$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<QRCodeBottomSheet>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$qrCodeBottomSheet$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final QRCodeBottomSheet invoke() {
                QRCodeBottomSheet createQRCodeBottomSheet;
                createQRCodeBottomSheet = CreateWalletFragment.this.createQRCodeBottomSheet();
                return createQRCodeBottomSheet;
            }
        }, 1, (Object) null);
        this.buttonsLayout$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<LinearLayout>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$buttonsLayout$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                return new LinearLayout(CreateWalletFragment.this.getParentActivity());
            }
        }, 1, (Object) null);
        this.columnsLayout$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<LinearLayout>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$columnsLayout$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LinearLayout invoke() {
                return new LinearLayout(CreateWalletFragment.this.getParentActivity());
            }
        }, 1, (Object) null);
        this.buttonCopy$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<SecretWordsActionButton>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$buttonCopy$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SecretWordsActionButton invoke() {
                SecretWordsActionButton createCopyButton;
                createCopyButton = CreateWalletFragment.this.createCopyButton();
                return createCopyButton;
            }
        }, 1, (Object) null);
        this.buttonQR$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<SecretWordsActionButton>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$buttonQR$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SecretWordsActionButton invoke() {
                SecretWordsActionButton createQRButton;
                createQRButton = CreateWalletFragment.this.createQRButton();
                return createQRButton;
            }
        }, 1, (Object) null);
        this.buttonPaste$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<SecretWordsActionButton>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$buttonPaste$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SecretWordsActionButton invoke() {
                SecretWordsActionButton createPasteButton;
                createPasteButton = CreateWalletFragment.this.createPasteButton();
                return createPasteButton;
            }
        }, 1, (Object) null);
        this.buttonScanQR$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<SecretWordsActionButton>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$buttonScanQR$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SecretWordsActionButton invoke() {
                SecretWordsActionButton createScanQRButton;
                createScanQRButton = CreateWalletFragment.this.createScanQRButton();
                return createScanQRButton;
            }
        }, 1, (Object) null);
        this.clipboardManager$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ClipboardManager>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$clipboardManager$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ClipboardManager invoke() {
                Object systemService = CreateWalletFragment.this.getParentActivity().getSystemService("clipboard");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                return (ClipboardManager) systemService;
            }
        }, 1, (Object) null);
        this.checkWordIndices = new ArrayList();
        this.editTexts = new ArrayList();
        this.wordsTextViews = new ArrayList();
        this.needHideKeyboardOnPause = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CreateWalletPresenter getPresenter() {
        return (CreateWalletPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RLottieImageView getImageView() {
        return (RLottieImageView) this.imageView$delegate.getValue(this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionButton getActionButton() {
        return (ActionButton) this.actionButton$delegate.getValue(this, $$delegatedProperties[2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getTitleTextView() {
        return (TextView) this.titleTextView$delegate.getValue(this, $$delegatedProperties[3]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getDescriptionText() {
        return (TextView) this.descriptionText$delegate.getValue(this, $$delegatedProperties[4]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getDescriptionText2() {
        return (TextView) this.descriptionText2$delegate.getValue(this, $$delegatedProperties[5]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View getActionBarBackground() {
        return (View) this.actionBarBackground$delegate.getValue(this, $$delegatedProperties[6]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HintsAdapter getHintsAdapter() {
        return (HintsAdapter) this.hintsAdapter$delegate.getValue(this, $$delegatedProperties[7]);
    }

    private final RecyclerListView getHintListView() {
        return (RecyclerListView) this.hintListView$delegate.getValue(this, $$delegatedProperties[8]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarPopupWindow getHintPopupWindow() {
        return (ActionBarPopupWindow) this.hintPopupWindow$delegate.getValue(this, $$delegatedProperties[9]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarPopupWindow.ActionBarPopupWindowLayout getHintPopupLayout() {
        return (ActionBarPopupWindow.ActionBarPopupWindowLayout) this.hintPopupLayout$delegate.getValue(this, $$delegatedProperties[10]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ScrollView getScrollView() {
        return (ScrollView) this.scrollView$delegate.getValue(this, $$delegatedProperties[11]);
    }

    private final LinearLayout getEditTextContainer() {
        return (LinearLayout) this.editTextContainer$delegate.getValue(this, $$delegatedProperties[12]);
    }

    private final LinearLayout getLeftColumn() {
        return (LinearLayout) this.leftColumn$delegate.getValue(this, $$delegatedProperties[13]);
    }

    private final LinearLayout getRightColumn() {
        return (LinearLayout) this.rightColumn$delegate.getValue(this, $$delegatedProperties[14]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final QRCodeBottomSheet getQrCodeBottomSheet() {
        return (QRCodeBottomSheet) this.qrCodeBottomSheet$delegate.getValue(this, $$delegatedProperties[15]);
    }

    private final LinearLayout getButtonsLayout() {
        return (LinearLayout) this.buttonsLayout$delegate.getValue(this, $$delegatedProperties[16]);
    }

    private final LinearLayout getColumnsLayout() {
        return (LinearLayout) this.columnsLayout$delegate.getValue(this, $$delegatedProperties[17]);
    }

    private final SecretWordsActionButton getButtonCopy() {
        return (SecretWordsActionButton) this.buttonCopy$delegate.getValue(this, $$delegatedProperties[18]);
    }

    private final SecretWordsActionButton getButtonQR() {
        return (SecretWordsActionButton) this.buttonQR$delegate.getValue(this, $$delegatedProperties[19]);
    }

    private final SecretWordsActionButton getButtonPaste() {
        return (SecretWordsActionButton) this.buttonPaste$delegate.getValue(this, $$delegatedProperties[20]);
    }

    private final SecretWordsActionButton getButtonScanQR() {
        return (SecretWordsActionButton) this.buttonScanQR$delegate.getValue(this, $$delegatedProperties[21]);
    }

    private final ClipboardManager getClipboardManager() {
        return (ClipboardManager) this.clipboardManager$delegate.getValue(this, $$delegatedProperties[22]);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return ColorUtils.calculateLuminance(getThemedColor(Theme.key_windowBackgroundWhite)) > 0.699999988079071d;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        if (this.screenType instanceof CreateWalletScreenType.SecretWords) {
            Runnable runnable = new Runnable() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    CreateWalletFragment.onFragmentCreate$lambda$0(CreateWalletFragment.this);
                }
            };
            this.cancelOnDestroyRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, TimeUnit.MINUTES.toMillis(1L));
        }
        return super.onFragmentCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFragmentCreate$lambda$0(CreateWalletFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View view = this$0.fragmentView;
        if (view != null) {
            view.setKeepScreenOn(false);
        }
        this$0.cancelOnDestroyRunnable = null;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        CreateWalletScreenType createWalletScreenType = this.screenType;
        if ((createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) || (createWalletScreenType instanceof CreateWalletScreenType.Import)) {
            AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
        }
        Runnable runnable = this.cancelOnDestroyRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.cancelOnDestroyRunnable = null;
        }
        this.editTexts.clear();
        BaseFragmentExtKt.setEnableSecureWindow(this, false);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupEventListeners();
        ViewGroup createContainer = createContainer();
        createContainer.setKeepScreenOn(this.screenType instanceof CreateWalletScreenType.SecretWords);
        createContainer.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        this.fragmentView = createContainer;
        setupViewsContents();
        getImageView().playAnimation();
        View fragmentView = this.fragmentView;
        Intrinsics.checkNotNullExpressionValue(fragmentView, "fragmentView");
        return fragmentView;
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        CreateWalletScreenType createWalletScreenType = this.screenType;
        if ((createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) || (createWalletScreenType instanceof CreateWalletScreenType.Import)) {
            AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        }
        CreateWalletScreenType createWalletScreenType2 = this.screenType;
        if ((createWalletScreenType2 instanceof CreateWalletScreenType.SecretWords) || (createWalletScreenType2 instanceof CreateWalletScreenType.Import) || (createWalletScreenType2 instanceof CreateWalletScreenType.WordsCheck)) {
            BaseFragmentExtKt.setEnableSecureWindow(this, true);
        }
        this.needHideKeyboardOnPause = true;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onPause() {
        hideHint();
        if (getParentActivity() != null && this.needHideKeyboardOnPause) {
            AndroidUtilities.hideKeyboard(getParentActivity().getCurrentFocus());
        }
        super.onPause();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if ((!(grantResults.length == 0)) && grantResults[0] == 0) {
            if (i == 4) {
                getPresenter().onSavePdfClick();
            } else if (i != 34) {
            } else {
                openQRScan();
            }
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onBeginSlide() {
        super.onBeginSlide();
        hideHint();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean presentFragment(BaseFragment baseFragment) {
        if (getParentActivity() != null) {
            AndroidUtilities.hideKeyboard(getParentActivity().getCurrentFocus());
            this.needHideKeyboardOnPause = false;
        }
        return super.presentFragment(baseFragment);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            CreateWalletScreenType createWalletScreenType = this.screenType;
            if ((!(createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) || z2) && !(createWalletScreenType instanceof CreateWalletScreenType.Import)) {
                return;
            }
            ((NumericEditText) CollectionsKt.first((List<? extends Object>) this.editTexts)).getEditText().requestFocus();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    CreateWalletFragment.onTransitionAnimationEnd$lambda$2(CreateWalletFragment.this);
                }
            }, 250L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTransitionAnimationEnd$lambda$2(CreateWalletFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NumericEditText numericEditText = (NumericEditText) CollectionsKt.firstOrNull(this$0.editTexts);
        AndroidUtilities.showKeyboard(numericEditText != null ? numericEditText.getEditText() : null);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        hideHint();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return canGoBack();
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void updateLoadingState(boolean z) {
        getActionButton().updateLoadingState(z);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void fillEditTexts(List<String> words) {
        Intrinsics.checkNotNullParameter(words, "words");
        int min = Math.min(words.size(), this.editTexts.size());
        for (int i = 0; i < min; i++) {
            this.editTexts.get(i).getEditText().setText(words.get(i));
        }
        prepareCorrectEditTextInput(false);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void showWordsSuggestions(List<String> words) {
        Intrinsics.checkNotNullParameter(words, "words");
        getHintsAdapter().showMnemonicWordsSuggestions(words);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void showSelectWordsCountDialog(RadioCellsListDialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialogWithRadioCellsList$default(context, dialogModel, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CreateWalletFragment.showSelectWordsCountDialog$lambda$4(CreateWalletFragment.this, (Integer) obj);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSelectWordsCountDialog$lambda$4(CreateWalletFragment this$0, Integer it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CreateWalletPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.onWordsCountSelected(it.intValue());
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void onWordsCountSelected(int i) {
        IntRange until;
        List shuffled;
        List take;
        List sorted;
        int collectionSizeOrDefault;
        if (this.screenType instanceof CreateWalletScreenType.WordsCheck) {
            List<Integer> list = this.checkWordIndices;
            list.clear();
            until = RangesKt___RangesKt.until(0, i);
            SecureRandom random = Utilities.random;
            Intrinsics.checkNotNullExpressionValue(random, "random");
            shuffled = CollectionsKt__CollectionsJVMKt.shuffled(until, random);
            take = CollectionsKt___CollectionsKt.take(shuffled, 3);
            sorted = CollectionsKt___CollectionsKt.sorted(take);
            list.addAll(sorted);
            TextView descriptionText = getDescriptionText();
            int i2 = C3473R.string.wallet_backup_test_time_info;
            List<Integer> list2 = this.checkWordIndices;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Number number : list2) {
                arrayList.add(Integer.valueOf(number.intValue() + 1));
            }
            Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
            descriptionText.setText(AndroidUtilities.replaceTags(LocaleController.formatStringInternal(i2, Arrays.copyOf(numArr, numArr.length))));
            fillEditTextContainer(3);
            return;
        }
        fillEditTextContainer(i);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void onSuccessEnterSeed(String seed, String password) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        Intrinsics.checkNotNullParameter(password, "password");
        presentFragment(PasscodeActivity.newInstanceForWalletPin(new WalletPinScreenArgs(password, seed, null, new CreatePinCodeScreenType.Creation(WalletCreationType.Initial.Import.INSTANCE), 4, null)));
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void onSuccessConfirmBackUp() {
        CreateWalletFragment createWalletFragment = this.fragmentToRemove;
        if (createWalletFragment != null) {
            createWalletFragment.removeSelfFromStack();
        }
        presentFragment(Companion.newInstance(CreateWalletScreenType.Ready.INSTANCE), true);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void createNewWallet(Wallet wallet2, String password) {
        Intrinsics.checkNotNullParameter(wallet2, "wallet");
        Intrinsics.checkNotNullParameter(password, "password");
        CreateWalletFragment createWalletFragment = this.fragmentToRemove;
        if (createWalletFragment != null) {
            createWalletFragment.removeSelfFromStack();
        }
        presentFragment(PasscodeActivity.newInstanceForWalletPin(new WalletPinScreenArgs(password, null, wallet2, new CreatePinCodeScreenType.Creation(WalletCreationType.Initial.Create.INSTANCE), 2, null)));
        AndroidUtilities.runOnUIThread(new CreateWalletFragment$$ExternalSyntheticLambda2(this), 300L);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void addNewWallet(final Wallet wallet2, final String password) {
        Intrinsics.checkNotNullParameter(wallet2, "wallet");
        Intrinsics.checkNotNullParameter(password, "password");
        CreateWalletFragment createWalletFragment = this.fragmentToRemove;
        if (createWalletFragment != null) {
            createWalletFragment.removeSelfFromStack();
        }
        presentFragment(CreateWalletTutorialFragment.Companion.newInstance(new TutorialType.WalletIntro(new Function0<BaseFragment>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$addNewWallet$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BaseFragment invoke() {
                return CreateWalletFragment.Companion.newInstance(new CreateWalletScreenType.SecretWords(Wallet.this, password, null, 4, null));
            }
        })));
        AndroidUtilities.runOnUIThread(new CreateWalletFragment$$ExternalSyntheticLambda2(this), 300L);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void generateAndOpenPdf(String walletAddress, List<String> secretWords) {
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(secretWords, "secretWords");
        BackupPdfHelper backupPdfHelper = BackupPdfHelper.INSTANCE;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        Bitmap createQR = getQrCodeBottomSheet().createQR(getParentActivity(), StringExtKt.joinBySpace(secretWords), null);
        Intrinsics.checkNotNullExpressionValue(createQR, "qrCodeBottomSheet.create…       null\n            )");
        backupPdfHelper.generatePdf(parentActivity, walletAddress, secretWords, createQR);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        C3541ActionBar c3541ActionBar = this.actionBar;
        int i3 = ThemeDescription.FLAG_AB_TITLECOLOR;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        LinearLayout editTextContainer = getEditTextContainer();
        int i5 = Theme.key_windowBackgroundWhiteHintText;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(view, i, i2), new ThemeDescription(c3541ActionBar, i3, i4), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, i4), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, Theme.key_actionBarWhiteSelector), new ThemeDescription(getActionBarBackground(), 0, i2), new ThemeDescription(getHintListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextView.class}, null, null, null, Theme.key_actionBarDefaultSubmenuItem), new ThemeDescription(getEditTextContainer(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{NumericEditText.class}, new String[]{"editText"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getEditTextContainer(), ThemeDescription.FLAG_CURSORCOLOR, new Class[]{NumericEditText.class}, new String[]{"editText"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getEditTextContainer(), ThemeDescription.FLAG_IMAGECOLOR, new Class[]{NumericEditText.class}, new String[]{"deleteImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText7), new ThemeDescription(editTextContainer, 0, i5), new ThemeDescription(getLeftColumn(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{NumericTextView.class}, null, null, null, i4), new ThemeDescription(getRightColumn(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{NumericTextView.class}, null, null, null, i4), new ThemeDescription(getLeftColumn(), 0, new Class[]{NumericTextView.class}, null, null, null, i5), new ThemeDescription(getRightColumn(), 0, new Class[]{NumericTextView.class}, null, null, null, i5), new ThemeDescription(getTitleTextView(), ThemeDescription.FLAG_TEXTCOLOR, i4), new ThemeDescription(getDescriptionText(), ThemeDescription.FLAG_TEXTCOLOR, Theme.key_windowBackgroundWhiteGrayText6), new ThemeDescription(getDescriptionText2(), ThemeDescription.FLAG_LINKCOLOR, Theme.key_windowBackgroundWhiteBlueText2), new ThemeDescription(getActionButton(), ThemeDescription.FLAG_TEXTCOLOR, Theme.key_featuredStickers_buttonText), new ThemeDescription(getActionButton(), ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, Theme.key_featuredStickers_addButton), new ThemeDescription(getActionButton(), ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, Theme.key_featuredStickers_addButtonPressed));
        return arrayListOf;
    }

    private final ViewGroup createContainer() {
        CreateWalletScreenType createWalletScreenType = this.screenType;
        if (createWalletScreenType instanceof CreateWalletScreenType.Ready ? true : createWalletScreenType instanceof CreateWalletScreenType.TooBad) {
            getActionButton().setMinWidth(AndroidUtilities.m72dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION));
            if (this.screenType instanceof CreateWalletScreenType.TooBad) {
                TextView descriptionText2 = getDescriptionText2();
                descriptionText2.setTextSize(1, 14.0f);
                descriptionText2.setLinkTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueText2));
            }
            final Activity parentActivity = getParentActivity();
            ViewGroup viewGroup = new ViewGroup(parentActivity) { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createContainer$2
                @Override // android.view.View
                protected void onMeasure(int i, int i2) {
                    C3541ActionBar c3541ActionBar;
                    RLottieImageView imageView;
                    TextView titleTextView;
                    TextView descriptionText;
                    TextView descriptionText22;
                    RLottieImageView imageView2;
                    TextView titleTextView2;
                    TextView descriptionText3;
                    TextView descriptionText23;
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    c3541ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3541ActionBar.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
                    if (size > size2) {
                        imageView2 = CreateWalletFragment.this.getImageView();
                        float f = size;
                        imageView2.measure(View.MeasureSpec.makeMeasureSpec((int) (0.45f * f), 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.68f), 1073741824));
                        titleTextView2 = CreateWalletFragment.this.getTitleTextView();
                        int i3 = (int) (f * 0.6f);
                        titleTextView2.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        descriptionText3 = CreateWalletFragment.this.getDescriptionText();
                        descriptionText3.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        descriptionText23 = CreateWalletFragment.this.getDescriptionText2();
                        descriptionText23.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        CreateWalletFragment.this.getActionButton().measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(42), 1073741824));
                    } else {
                        imageView = CreateWalletFragment.this.getImageView();
                        imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                        titleTextView = CreateWalletFragment.this.getTitleTextView();
                        titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        descriptionText = CreateWalletFragment.this.getDescriptionText();
                        descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        descriptionText22 = CreateWalletFragment.this.getDescriptionText2();
                        descriptionText22.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        CreateWalletFragment.this.getActionButton().measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(42), 1073741824));
                    }
                    setMeasuredDimension(size, size2);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    C3541ActionBar c3541ActionBar;
                    C3541ActionBar c3541ActionBar2;
                    RLottieImageView imageView;
                    RLottieImageView imageView2;
                    RLottieImageView imageView3;
                    TextView titleTextView;
                    TextView titleTextView2;
                    TextView titleTextView3;
                    TextView descriptionText;
                    TextView descriptionText3;
                    TextView descriptionText4;
                    TextView descriptionText22;
                    TextView descriptionText23;
                    TextView descriptionText24;
                    RLottieImageView imageView4;
                    RLottieImageView imageView5;
                    RLottieImageView imageView6;
                    RLottieImageView imageView7;
                    TextView titleTextView4;
                    TextView titleTextView5;
                    TextView titleTextView6;
                    TextView descriptionText5;
                    TextView descriptionText6;
                    TextView descriptionText7;
                    TextView descriptionText25;
                    TextView descriptionText26;
                    TextView descriptionText27;
                    c3541ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3541ActionBar2 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3541ActionBar.layout(0, 0, i3, c3541ActionBar2.getMeasuredHeight());
                    int i5 = i3 - i;
                    int i6 = i4 - i2;
                    if (i3 > i4) {
                        imageView4 = CreateWalletFragment.this.getImageView();
                        int measuredHeight = (i6 - imageView4.getMeasuredHeight()) / 2;
                        imageView5 = CreateWalletFragment.this.getImageView();
                        imageView6 = CreateWalletFragment.this.getImageView();
                        int measuredWidth = imageView6.getMeasuredWidth();
                        imageView7 = CreateWalletFragment.this.getImageView();
                        imageView5.layout(0, measuredHeight, measuredWidth, imageView7.getMeasuredHeight() + measuredHeight);
                        float f = i5;
                        float f2 = 0.4f * f;
                        int i7 = (int) f2;
                        float f3 = i6;
                        int i8 = (int) (0.22f * f3);
                        titleTextView4 = CreateWalletFragment.this.getTitleTextView();
                        titleTextView5 = CreateWalletFragment.this.getTitleTextView();
                        titleTextView6 = CreateWalletFragment.this.getTitleTextView();
                        titleTextView4.layout(i7, i8, titleTextView5.getMeasuredWidth() + i7, titleTextView6.getMeasuredHeight() + i8);
                        int i9 = (int) (0.39f * f3);
                        descriptionText5 = CreateWalletFragment.this.getDescriptionText();
                        descriptionText6 = CreateWalletFragment.this.getDescriptionText();
                        descriptionText7 = CreateWalletFragment.this.getDescriptionText();
                        descriptionText5.layout(i7, i9, descriptionText6.getMeasuredWidth() + i7, descriptionText7.getMeasuredHeight() + i9);
                        int measuredWidth2 = (int) (f2 + (((f * 0.6f) - CreateWalletFragment.this.getActionButton().getMeasuredWidth()) / 2));
                        int i10 = (int) (0.64f * f3);
                        CreateWalletFragment.this.getActionButton().layout(measuredWidth2, i10, CreateWalletFragment.this.getActionButton().getMeasuredWidth() + measuredWidth2, CreateWalletFragment.this.getActionButton().getMeasuredHeight() + i10);
                        int i11 = (int) (f3 * 0.8f);
                        descriptionText25 = CreateWalletFragment.this.getDescriptionText2();
                        descriptionText26 = CreateWalletFragment.this.getDescriptionText2();
                        descriptionText27 = CreateWalletFragment.this.getDescriptionText2();
                        descriptionText25.layout(i7, i11, descriptionText26.getMeasuredWidth() + i7, descriptionText27.getMeasuredHeight() + i11);
                        return;
                    }
                    float f4 = i6;
                    int i12 = (int) (0.148f * f4);
                    imageView = CreateWalletFragment.this.getImageView();
                    imageView2 = CreateWalletFragment.this.getImageView();
                    int measuredWidth3 = imageView2.getMeasuredWidth();
                    imageView3 = CreateWalletFragment.this.getImageView();
                    imageView.layout(0, i12, measuredWidth3, imageView3.getMeasuredHeight() + i12);
                    int i13 = (int) (0.458f * f4);
                    titleTextView = CreateWalletFragment.this.getTitleTextView();
                    titleTextView2 = CreateWalletFragment.this.getTitleTextView();
                    int measuredWidth4 = titleTextView2.getMeasuredWidth();
                    titleTextView3 = CreateWalletFragment.this.getTitleTextView();
                    titleTextView.layout(0, i13, measuredWidth4, titleTextView3.getMeasuredHeight() + i13);
                    int i14 = (int) (0.52f * f4);
                    descriptionText = CreateWalletFragment.this.getDescriptionText();
                    descriptionText3 = CreateWalletFragment.this.getDescriptionText();
                    int measuredWidth5 = descriptionText3.getMeasuredWidth();
                    descriptionText4 = CreateWalletFragment.this.getDescriptionText();
                    descriptionText.layout(0, i14, measuredWidth5, descriptionText4.getMeasuredHeight() + i14);
                    int measuredWidth6 = (i5 - CreateWalletFragment.this.getActionButton().getMeasuredWidth()) / 2;
                    int i15 = (int) (0.791f * f4);
                    CreateWalletFragment.this.getActionButton().layout(measuredWidth6, i15, CreateWalletFragment.this.getActionButton().getMeasuredWidth() + measuredWidth6, CreateWalletFragment.this.getActionButton().getMeasuredHeight() + i15);
                    int i16 = (int) (f4 * 0.894f);
                    descriptionText22 = CreateWalletFragment.this.getDescriptionText2();
                    descriptionText23 = CreateWalletFragment.this.getDescriptionText2();
                    int measuredWidth7 = descriptionText23.getMeasuredWidth();
                    descriptionText24 = CreateWalletFragment.this.getDescriptionText2();
                    descriptionText22.layout(0, i16, measuredWidth7, descriptionText24.getMeasuredHeight() + i16);
                }
            };
            viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean createContainer$lambda$9$lambda$8;
                    createContainer$lambda$9$lambda$8 = CreateWalletFragment.createContainer$lambda$9$lambda$8(view, motionEvent);
                    return createContainer$lambda$9$lambda$8;
                }
            });
            viewGroup.addView(this.actionBar);
            viewGroup.addView(getImageView());
            viewGroup.addView(getTitleTextView());
            viewGroup.addView(getDescriptionText());
            viewGroup.addView(getDescriptionText2());
            viewGroup.addView(getActionButton());
            return viewGroup;
        }
        if (createWalletScreenType instanceof CreateWalletScreenType.SecretWords ? true : createWalletScreenType instanceof CreateWalletScreenType.WordsCheck ? true : createWalletScreenType instanceof CreateWalletScreenType.Import) {
            getActionButton().setMinWidth(AndroidUtilities.m72dp(220));
            TextView descriptionText = getDescriptionText();
            int i = Theme.key_windowBackgroundWhiteBlueText2;
            descriptionText.setLinkTextColor(getThemedColor(i));
            if (this.screenType instanceof CreateWalletScreenType.Import) {
                TextView descriptionText22 = getDescriptionText2();
                descriptionText22.setLinkTextColor(getThemedColor(i));
                descriptionText22.setTextSize(1, 15.0f);
            }
            final Activity parentActivity2 = getParentActivity();
            ViewGroup viewGroup2 = new ViewGroup(parentActivity2) { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createContainer$5
                @Override // android.view.View
                protected void onMeasure(int i2, int i3) {
                    C3541ActionBar c3541ActionBar;
                    View actionBarBackground;
                    C3541ActionBar c3541ActionBar2;
                    ScrollView scrollView;
                    int size = View.MeasureSpec.getSize(i2);
                    int size2 = View.MeasureSpec.getSize(i3);
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                    c3541ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3541ActionBar.measure(makeMeasureSpec, i3);
                    actionBarBackground = CreateWalletFragment.this.getActionBarBackground();
                    c3541ActionBar2 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    actionBarBackground.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(c3541ActionBar2.getMeasuredHeight() + AndroidUtilities.m72dp(3), 1073741824));
                    scrollView = CreateWalletFragment.this.getScrollView();
                    scrollView.measure(makeMeasureSpec, i3);
                    setMeasuredDimension(size, size2);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                    C3541ActionBar c3541ActionBar;
                    C3541ActionBar c3541ActionBar2;
                    C3541ActionBar c3541ActionBar3;
                    View actionBarBackground;
                    View actionBarBackground2;
                    View actionBarBackground3;
                    ScrollView scrollView;
                    ScrollView scrollView2;
                    ScrollView scrollView3;
                    c3541ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3541ActionBar2 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    int measuredWidth = c3541ActionBar2.getMeasuredWidth();
                    c3541ActionBar3 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3541ActionBar.layout(0, 0, measuredWidth, c3541ActionBar3.getMeasuredHeight());
                    actionBarBackground = CreateWalletFragment.this.getActionBarBackground();
                    actionBarBackground2 = CreateWalletFragment.this.getActionBarBackground();
                    int measuredWidth2 = actionBarBackground2.getMeasuredWidth();
                    actionBarBackground3 = CreateWalletFragment.this.getActionBarBackground();
                    actionBarBackground.layout(0, 0, measuredWidth2, actionBarBackground3.getMeasuredHeight());
                    scrollView = CreateWalletFragment.this.getScrollView();
                    scrollView2 = CreateWalletFragment.this.getScrollView();
                    int measuredWidth3 = scrollView2.getMeasuredWidth();
                    scrollView3 = CreateWalletFragment.this.getScrollView();
                    scrollView.layout(0, 0, measuredWidth3, scrollView3.getMeasuredHeight());
                }
            };
            viewGroup2.addView(getScrollView());
            LinearLayout linearLayout = new LinearLayout(getParentActivity());
            linearLayout.setOrientation(1);
            getScrollView().addView(linearLayout, LayoutHelper.createScroll(-1, -1, 51));
            linearLayout.addView(getImageView(), LayoutHelper.createLinear(-2, -2, 49, 0, 69, 0, 0));
            linearLayout.addView(getTitleTextView(), LayoutHelper.createLinear(-2, -2, 49, 0, 8, 0, 0));
            linearLayout.addView(getDescriptionText(), LayoutHelper.createLinear(-2, -2, 49, 0, 9, 0, 0));
            linearLayout.addView(getDescriptionText2(), LayoutHelper.createLinear(-2, -2, 49, 0, 17, 0, 0));
            CreateWalletScreenType createWalletScreenType2 = this.screenType;
            if (createWalletScreenType2 instanceof CreateWalletScreenType.SecretWords) {
                LinearLayout buttonsLayout = getButtonsLayout();
                buttonsLayout.addView(getButtonCopy(), LayoutHelper.createLinear(0, -2, 1.0f));
                buttonsLayout.addView(getButtonQR(), LayoutHelper.createLinear(0, -2, 1.0f, 12, 0, 0, 0));
                linearLayout.addView(buttonsLayout, LayoutHelper.createLinear(-1, -2, 49, 36, 30, 36, 0));
                LinearLayout columnsLayout = getColumnsLayout();
                columnsLayout.addView(getLeftColumn(), LayoutHelper.createLinear(-2, -2));
                columnsLayout.addView(getRightColumn(), LayoutHelper.createLinear(-2, -2, 57, 0, 0, 0));
                linearLayout.addView(columnsLayout, LayoutHelper.createLinear(-2, -2, 49, 0, 30, 0, 0));
                this.maxNumberWidth = 0;
                int i2 = 0;
                while (i2 < 2) {
                    LinearLayout leftColumn = i2 == 0 ? getLeftColumn() : getRightColumn();
                    int size = ((CreateWalletScreenType.SecretWords) this.screenType).getSecretWords().size();
                    int i3 = size / 2;
                    int i4 = (i2 != 0 ? size % 2 : 0) + i3;
                    int i5 = 0;
                    while (i5 < i4) {
                        Activity parentActivity3 = getParentActivity();
                        Intrinsics.checkNotNullExpressionValue(parentActivity3, "parentActivity");
                        NumericTextView numericTextView = new NumericTextView(this, parentActivity3);
                        int i6 = (i2 == 0 ? 0 : i3) + i5;
                        numericTextView.setGravity(51);
                        numericTextView.setText(((CreateWalletScreenType.SecretWords) this.screenType).getSecretWords().get(i6));
                        numericTextView.setTextSize(1, 16.0f);
                        numericTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
                        ViewExtKt.withMediumTypeface(numericTextView);
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format(Locale.US, "%d.", Arrays.copyOf(new Object[]{Integer.valueOf(i6 + 1)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                        numericTextView.setNumber(format);
                        this.wordsTextViews.add(numericTextView);
                        leftColumn.addView(numericTextView, LayoutHelper.createLinear(-2, -2, 0, i5 == 0 ? 0 : 10, 0, 0));
                        i5++;
                    }
                    i2++;
                }
            } else {
                if (createWalletScreenType2 instanceof CreateWalletScreenType.Import) {
                    LinearLayout buttonsLayout2 = getButtonsLayout();
                    buttonsLayout2.addView(getButtonPaste(), LayoutHelper.createLinear(0, -2, 1.0f));
                    buttonsLayout2.addView(getButtonScanQR(), LayoutHelper.createLinear(0, -2, 1.0f, 12, 0, 0, 0));
                    linearLayout.addView(buttonsLayout2, LayoutHelper.createLinear(-1, -2, 49, 36, 30, 36, 0));
                }
                this.maxEditNumberWidth = 0;
                linearLayout.addView(getEditTextContainer(), LayoutHelper.createLinear(-2, -2, 1));
            }
            linearLayout.addView(getActionButton(), LayoutHelper.createLinear(-2, 42, 49, 0, 36, 0, 33));
            viewGroup2.addView(getActionBarBackground());
            viewGroup2.addView(this.actionBar);
            return viewGroup2;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View createActionBarBackground() {
        final Activity parentActivity = getParentActivity();
        View view = new View(parentActivity) { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createActionBarBackground$1
            private final Paint paint = new Paint();

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                INavigationLayout iNavigationLayout;
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                this.paint.setColor(CreateWalletFragment.this.getThemedColor(Theme.key_windowBackgroundWhite));
                int measuredHeight = getMeasuredHeight() - AndroidUtilities.m72dp(3);
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), measuredHeight, this.paint);
                iNavigationLayout = ((BaseFragment) CreateWalletFragment.this).parentLayout;
                iNavigationLayout.drawHeaderShadow(canvas, measuredHeight);
            }
        };
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarPopupWindow.ActionBarPopupWindowLayout createHintPopupLayout() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity());
        actionBarPopupWindowLayout.setAnimationEnabled(false);
        actionBarPopupWindowLayout.setShownFromBottom(false);
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createHintPopupLayout$1$1
            private final Rect popupRect = new Rect();

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                Intrinsics.checkNotNullParameter(v, "v");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event.getActionMasked() == 0 && CreateWalletFragment.this.getHintPopupWindow().isShowing()) {
                    v.getHitRect(this.popupRect);
                    if (this.popupRect.contains((int) event.getX(), (int) event.getY())) {
                        return false;
                    }
                    CreateWalletFragment.this.getHintPopupWindow().dismiss();
                    return false;
                }
                return false;
            }
        });
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda6
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                CreateWalletFragment.createHintPopupLayout$lambda$20$lambda$19(CreateWalletFragment.this, keyEvent);
            }
        });
        actionBarPopupWindowLayout.addView(getHintListView(), LayoutHelper.createFrame(-1, 48));
        return actionBarPopupWindowLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createHintPopupLayout$lambda$20$lambda$19(CreateWalletFragment this$0, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && this$0.getHintPopupWindow().isShowing()) {
            this$0.getHintPopupWindow().dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarPopupWindow createHintPopupWindow() {
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(getHintPopupLayout(), -2, -2);
        actionBarPopupWindow.setAnimationEnabled(false);
        actionBarPopupWindow.setAnimationStyle(C3473R.style.PopupAnimation);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.setSoftInputMode(0);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        actionBarPopupWindow.setFocusable(false);
        return actionBarPopupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView createHintListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setAdapter(getHintsAdapter());
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(recyclerListView, AndroidUtilities.m72dp(9));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerListView.getContext(), 0, false);
        this.hintLayoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda7
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                CreateWalletFragment.createHintListView$lambda$24$lambda$23(CreateWalletFragment.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createHintListView$lambda$24$lambda$23(CreateWalletFragment this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NumericEditText numericEditText = this$0.hintEditText;
        if (numericEditText != null) {
            numericEditText.setText(this$0.getHintsAdapter().getItem(i));
        }
        this$0.getHintPopupWindow().dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ScrollView createScrollView() {
        CreateWalletFragment$createScrollView$1 createWalletFragment$createScrollView$1 = new CreateWalletFragment$createScrollView$1(this, getParentActivity());
        createWalletFragment$createScrollView$1.setVerticalScrollBarEnabled(false);
        return createWalletFragment$createScrollView$1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout createVerticalLinearLayout() {
        LinearLayout linearLayout = new LinearLayout(getParentActivity());
        linearLayout.setOrientation(1);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final QRCodeBottomSheet createQRCodeBottomSheet() {
        final Activity parentActivity = getParentActivity();
        CreateWalletScreenType createWalletScreenType = this.screenType;
        Intrinsics.checkNotNull(createWalletScreenType, "null cannot be cast to non-null type com.iMe.model.wallet.crypto.create.CreateWalletScreenType.SecretWords");
        final String joinBySpace = StringExtKt.joinBySpace(((CreateWalletScreenType.SecretWords) createWalletScreenType).getSecretWords());
        final String string = getResourceManager().getString(C3473R.string.wallet_backup_secret_words_qr_description);
        return new QRCodeBottomSheet(parentActivity, joinBySpace, string) { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createQRCodeBottomSheet$1
            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public int getType() {
                return IdFabric$CustomType.QR_BOTTOM_SHEET_WALLET_BACKUP;
            }

            @Override // org.telegram.p043ui.Components.QRCodeBottomSheet
            public int getCustomQrCenterImageRes() {
                return C3473R.C3475drawable.fork_ic_internal_logo;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createCopyButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        int i = C3473R.C3475drawable.msg_copy_filled;
        String string = LocaleController.getString("Copy", C3473R.string.Copy);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Copy\", R.string.Copy)");
        secretWordsActionButton.setupView(i, string);
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createCopyButton$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                CreateWalletScreenType createWalletScreenType;
                Intrinsics.checkNotNullParameter(it, "it");
                createWalletScreenType = CreateWalletFragment.this.screenType;
                Intrinsics.checkNotNull(createWalletScreenType, "null cannot be cast to non-null type com.iMe.model.wallet.crypto.create.CreateWalletScreenType.SecretWords");
                ContextExtKt.copyToClipboard$default(StringExtKt.joinBySpace(((CreateWalletScreenType.SecretWords) createWalletScreenType).getSecretWords()), null, 2, null);
            }
        }, 1, null);
        return secretWordsActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createPasteButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        secretWordsActionButton.setupView(C3473R.C3475drawable.fork_ic_paste_24, getResourceManager().getString(C3473R.string.wallet_import_paste));
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createPasteButton$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                String clipboardText;
                Intrinsics.checkNotNullParameter(it, "it");
                CreateWalletPresenter presenter = CreateWalletFragment.this.getPresenter();
                clipboardText = CreateWalletFragment.this.getClipboardText();
                presenter.onWordsPaste(clipboardText);
            }
        }, 1, null);
        return secretWordsActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createQRButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        int i = C3473R.C3475drawable.msg_qrcode;
        String string = LocaleController.getString("GetQRCode", C3473R.string.GetQRCode);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"GetQRCode\", R.string.GetQRCode)");
        secretWordsActionButton.setupView(i, string);
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createQRButton$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                QRCodeBottomSheet qrCodeBottomSheet;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullParameter(it, "it");
                CreateWalletFragment createWalletFragment = CreateWalletFragment.this;
                qrCodeBottomSheet = createWalletFragment.getQrCodeBottomSheet();
                resourceManager = CreateWalletFragment.this.getResourceManager();
                qrCodeBottomSheet.setupWalletTypeBackup(resourceManager.getString(C3473R.string.wallet_backup_secret_words_qr_title), LocaleController.getString("Close", C3473R.string.Close));
                createWalletFragment.showDialog(qrCodeBottomSheet);
            }
        }, 1, null);
        return secretWordsActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createScanQRButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        secretWordsActionButton.setupView(C3473R.C3475drawable.msg_qrcode, getResourceManager().getString(C3473R.string.wallet_backup_scan_qr));
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createScanQRButton$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (CreateWalletFragment.this.getParentActivity().checkSelfPermission("android.permission.CAMERA") == 0) {
                    CreateWalletFragment.this.openQRScan();
                } else {
                    CreateWalletFragment.this.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
                }
            }
        }, 1, null);
        return secretWordsActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RLottieImageView createImageView() {
        RLottieImageView rLottieImageView = new RLottieImageView(getParentActivity());
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        return rLottieImageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView createTitleTextView() {
        TextView textView = new TextView(getParentActivity());
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setGravity(1);
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m72dp(32));
        textView.setTextSize(1, 24.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView createDescriptionTextView() {
        TextView textView = new TextView(getParentActivity());
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText6));
        textView.setGravity(1);
        textView.setLineSpacing(AndroidUtilities.m72dp(2), 1.0f);
        textView.setTextSize(1, 15.0f);
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m72dp(32));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView createDescriptionTextView2() {
        TextView textView = new TextView(getParentActivity());
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText6));
        textView.setGravity(1);
        textView.setLineSpacing(AndroidUtilities.m72dp(2), 1.0f);
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m72dp(32));
        textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        textView.setVisibility(8);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionButton createActionButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        ActionButton actionButton = new ActionButton(parentActivity, null, 0, 6, null);
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(actionButton, AndroidUtilities.m72dp(34));
        actionButton.setGravity(17);
        actionButton.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        actionButton.setTextSize(1, 14.0f);
        ViewExtKt.withMediumTypeface(actionButton);
        actionButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m72dp(4), getThemedColor(Theme.key_featuredStickers_addButton), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
        ViewExtKt.safeThrottledClick$default(actionButton, 0L, new CreateWalletFragment$createActionButton$1$1(this), 1, null);
        return actionButton;
    }

    private final void setupViewsContents() {
        CreateWalletScreenType createWalletScreenType = this.screenType;
        if (createWalletScreenType instanceof CreateWalletScreenType.SecretWords) {
            getImageView().setAnimation(C3473R.raw.fork_wallet_note, 112, 112);
            this.actionBar.setTitle(getResourceManager().getString(C3473R.string.wallet_backup_secret_words_title));
            getTitleTextView().setText(getResourceManager().getString(C3473R.string.wallet_backup_secret_words));
            getDescriptionText().setText(getResourceManager().getString(C3473R.string.wallet_backup_secret_words_info));
            getActionButton().setText(getResourceManager().getString(C3473R.string.wallet_backup_done));
            this.actionBar.getTitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
        } else if (createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) {
            getImageView().setAnimation(C3473R.raw.wallet_science, 104, 104);
            this.actionBar.setTitle(getResourceManager().getString(C3473R.string.wallet_backup_test_time_title));
            getTitleTextView().setText(getResourceManager().getString(C3473R.string.wallet_backup_test_time));
            getActionButton().setText(getResourceManager().getString(C3473R.string.wallet_backup_continue));
            this.actionBar.getTitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
        } else if (createWalletScreenType instanceof CreateWalletScreenType.Ready) {
            getImageView().setAnimation(C3473R.raw.wallet_allset, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
            getImageView().setPadding(AndroidUtilities.m72dp(27), 0, 0, 0);
            getTitleTextView().setText(getResourceManager().getString(C3473R.string.wallet_backup_ready));
            getDescriptionText().setText(getResourceManager().getString(C3473R.string.wallet_backup_ready_info));
            getActionButton().setText(getResourceManager().getString(C3473R.string.wallet_backup_view));
        } else if (createWalletScreenType instanceof CreateWalletScreenType.Import) {
            getImageView().setAnimation(C3473R.raw.fork_wallet_note, 112, 112);
            C3541ActionBar c3541ActionBar = this.actionBar;
            ResourceManager resourceManager = getResourceManager();
            int i = C3473R.string.wallet_import_secret_words;
            c3541ActionBar.setTitle(resourceManager.getString(i));
            getTitleTextView().setText(getResourceManager().getString(i));
            getDescriptionText().setText(getResourceManager().getString(C3473R.string.wallet_import_info));
            getActionButton().setText(getResourceManager().getString(C3473R.string.wallet_backup_continue));
            this.actionBar.getTitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
            getDescriptionText2().setVisibility(0);
            TextView descriptionText2 = getDescriptionText2();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) createClickableText(C3473R.string.wallet_import_dont_have, new Function0<Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupViewsContents$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    CreateWalletFragment createWalletFragment = CreateWalletFragment.this;
                    CreateWalletFragment newInstance = CreateWalletFragment.Companion.newInstance(CreateWalletScreenType.TooBad.INSTANCE);
                    newInstance.fragmentToRemove = CreateWalletFragment.this;
                    createWalletFragment.presentFragment(newInstance);
                }
            }));
            if (getCryptoPreferenceHelper().getCurrentBlockchainType().isBip39PhraseBased()) {
                StringsKt.append(spannableStringBuilder, "\n", "\n", createClickableText(C3473R.string.wallet_import_change_words_count, new Function0<Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupViewsContents$1$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        CreateWalletFragment.this.getPresenter().onSelectWordsCountClick();
                    }
                }));
            }
            descriptionText2.setText(spannableStringBuilder);
        } else if (createWalletScreenType instanceof CreateWalletScreenType.TooBad) {
            getImageView().setAutoRepeat(true);
            getImageView().setAnimation(C3473R.raw.fork_wallet_too_bad, 120, 120);
            getTitleTextView().setText(getResourceManager().getString(C3473R.string.wallet_import_too_bad));
            getDescriptionText().setText(getResourceManager().getString(C3473R.string.wallet_import_too_bad_info));
            getActionButton().setText(getResourceManager().getString(C3473R.string.wallet_import_too_bad_enter));
            getDescriptionText2().setVisibility(0);
            getDescriptionText2().setText(createClickableText(C3473R.string.wallet_import_too_bad_create, new Function0<Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupViewsContents$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    CreateWalletFragment.this.getPresenter().onCreateNewEmptyWalletClick();
                }
            }));
        }
    }

    private final void setupActionBar() {
        C3541ActionBar c3541ActionBar = this.actionBar;
        if (canGoBack()) {
            c3541ActionBar.setBackButtonDrawable(new BackDrawable(false));
        }
        c3541ActionBar.setBackgroundColor(0);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        c3541ActionBar.setTitleColor(getThemedColor(i));
        c3541ActionBar.setItemsColor(getThemedColor(i), false);
        c3541ActionBar.setItemsBackgroundColor(getThemedColor(Theme.key_actionBarWhiteSelector), false);
        c3541ActionBar.setCastShadows(false);
        c3541ActionBar.setOccupyStatusBar(false);
        c3541ActionBar.setY(c3541ActionBar.getY() + AndroidUtilities.statusBarHeight);
        c3541ActionBar.setExtraHeight(AndroidUtilities.statusBarHeight);
        c3541ActionBar.setAddToContainer(false);
        if (!AndroidUtilities.isTablet()) {
            c3541ActionBar.showActionModeTop();
        }
        if (this.screenType instanceof CreateWalletScreenType.SecretWords) {
            ActionBarMenuItem addItem = c3541ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3473R.C3475drawable.ic_ab_other);
            addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3473R.string.AccDescrMoreOptions));
            addItem.addSubItem(IdFabric$Menu.PDF, C3473R.C3475drawable.fork_ic_pdf_24, getResourceManager().getString(C3473R.string.wallet_backup_secret_words_pdf));
        }
        c3541ActionBar.setActionBarMenuOnItemClick(new C3541ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.C3541ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    CreateWalletFragment.this.finishFragment();
                } else if (i2 == IdFabric$Menu.PDF) {
                    CreateWalletFragment.this.getPresenter().onSavePdfClick();
                }
            }
        });
    }

    private final void setupEventListeners() {
        RxEventBus rxEventBus = getRxEventBus();
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.CryptoEvent, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.CryptoEvent cryptoEvent) {
                m1431invoke(cryptoEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1431invoke(DomainRxEvents.CryptoEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.CryptoEvent cryptoEvent = it;
                if (Intrinsics.areEqual(cryptoEvent, DomainRxEvents.SuccessRecreateWalletByPassword.INSTANCE) ? true : Intrinsics.areEqual(cryptoEvent, DomainRxEvents.WalletReset.INSTANCE)) {
                    CreateWalletFragment.this.removeSelfFromStack();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        autoDispose(subscribe);
    }

    private final void fillEditTextContainer(int i) {
        List dropLast;
        boolean z = !NumberExtKt.isZero(Integer.valueOf(this.editTexts.size()));
        int size = i - this.editTexts.size();
        if (size < 0) {
            int abs = Math.abs(size);
            List<NumericEditText> list = this.editTexts;
            dropLast = CollectionsKt___CollectionsKt.dropLast(list, abs);
            list.clear();
            list.addAll(dropLast);
            getEditTextContainer().removeViews(i, abs);
        } else {
            boolean z2 = this.screenType instanceof CreateWalletScreenType.WordsCheck;
            int size2 = this.editTexts.size();
            while (size2 < i) {
                Activity parentActivity = getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                NumericEditText numericEditText = new NumericEditText(this, parentActivity, size2, size2 == i + (-1));
                int intValue = z2 ? this.checkWordIndices.get(size2).intValue() : size2;
                StringBuilder sb = new StringBuilder();
                sb.append(intValue + 1);
                sb.append(':');
                numericEditText.setNumber(sb.toString());
                this.editTexts.add(numericEditText);
                getEditTextContainer().addView(numericEditText, LayoutHelper.createLinear(220, 36, 1, 0, size2 == 0 ? 21 : 13, 0, 0));
                size2++;
            }
        }
        if (z) {
            prepareCorrectEditTextInput(true);
        }
    }

    private final void prepareCorrectEditTextInput(boolean z) {
        Object obj;
        boolean z2;
        List<NumericEditText> list = this.editTexts;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((NumericEditText) obj).getText().length() == 0) {
                z2 = true;
                continue;
            } else {
                z2 = false;
                continue;
            }
            if (z2) {
                break;
            }
        }
        NumericEditText numericEditText = (NumericEditText) obj;
        if (numericEditText == null) {
            numericEditText = (NumericEditText) CollectionsKt.last(list);
            getScrollView().fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
        }
        final EditTextBoldCursor editText = numericEditText.getEditText();
        editText.requestFocus();
        ViewExtKt.setSelectionEnd(editText);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CreateWalletFragment.prepareCorrectEditTextInput$lambda$46$lambda$45$lambda$44(EditTextBoldCursor.this);
            }
        }, z ? 400L : 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareCorrectEditTextInput$lambda$46$lambda$45$lambda$44(EditTextBoldCursor this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        AndroidUtilities.showKeyboard(this_with);
    }

    private final SpannableString createClickableText(int i, final Function0<Unit> function0) {
        SpannableString spannableString = new SpannableString(getResourceManager().getString(i));
        spannableString.setSpan(new URLSpanNoUnderline() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createClickableText$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super("");
            }

            @Override // org.telegram.p043ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
            public void onClick(View widget) {
                Intrinsics.checkNotNullParameter(widget, "widget");
                function0.invoke();
            }
        }, 0, spannableString.length(), 33);
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClipboardText() {
        char first;
        String trim;
        ClipData.Item itemAt;
        ClipData primaryClip = getClipboardManager().getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() == 0) {
            return "";
        }
        ClipData primaryClip2 = getClipboardManager().getPrimaryClip();
        CharSequence text = (primaryClip2 == null || (itemAt = primaryClip2.getItemAt(0)) == null) ? null : itemAt.getText();
        String lowerCase = (text != null ? text : "").toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        first = StringsKt___StringsKt.first(" ");
        trim = StringsKt__StringsKt.trim(lowerCase, first);
        return trim;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean checkEditTexts() {
        for (NumericEditText numericEditText : this.editTexts) {
            if (numericEditText.length() == 0) {
                EditTextBoldCursor editText = numericEditText.getEditText();
                editText.clearFocus();
                editText.requestFocus();
                ViewExtKt.shake(editText, true);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideHint() {
        if (getHintPopupWindow().isShowing()) {
            getHintPopupWindow().dismiss();
        }
    }

    private final boolean canGoBack() {
        return !Intrinsics.areEqual(this.screenType, CreateWalletScreenType.Ready.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openQRScan() {
        CameraScanActivity.showAsSheet((BaseFragment) this, true, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$openQRScan$1
            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p043ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String text) {
                Intrinsics.checkNotNullParameter(text, "text");
                CreateWalletFragment.this.getPresenter().onWordsPaste(text);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$HintsAdapter */
    /* loaded from: classes6.dex */
    public final class HintsAdapter extends RecyclerListView.SelectionAdapter {
        private final int[] location = new int[2];
        private List<String> searchResult;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return true;
        }

        public HintsAdapter() {
            List<String> emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.searchResult = emptyList;
        }

        public final void searchMnemonicWordsSuggestions(NumericEditText editText) {
            boolean isBlank;
            Intrinsics.checkNotNullParameter(editText, "editText");
            String obj = editText.getText().toString();
            isBlank = StringsKt__StringsJVMKt.isBlank(obj);
            if (isBlank) {
                CreateWalletFragment.this.hideHint();
                return;
            }
            CreateWalletFragment.this.searchingHintEditText = editText;
            CreateWalletFragment.this.getPresenter().searchMnemonicWordsSuggestions(obj);
        }

        public final void showMnemonicWordsSuggestions(List<String> words) {
            Intrinsics.checkNotNullParameter(words, "words");
            this.searchResult = words;
            notifyDataSetChanged();
            if (this.searchResult.isEmpty()) {
                CreateWalletFragment.this.hideHint();
                return;
            }
            if (CreateWalletFragment.this.hintEditText != CreateWalletFragment.this.searchingHintEditText || !CreateWalletFragment.this.getHintPopupWindow().isShowing()) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(1000), Integer.MIN_VALUE);
                CreateWalletFragment.this.getHintPopupLayout().measure(makeMeasureSpec, makeMeasureSpec);
                NumericEditText numericEditText = CreateWalletFragment.this.searchingHintEditText;
                if (numericEditText != null) {
                    numericEditText.getLocationInWindow(this.location);
                }
                LinearLayoutManager linearLayoutManager = CreateWalletFragment.this.hintLayoutManager;
                if (linearLayoutManager != null) {
                    linearLayoutManager.scrollToPositionWithOffset(0, Integer.MAX_VALUE);
                }
                CreateWalletFragment.this.getHintPopupWindow().showAtLocation(((BaseFragment) CreateWalletFragment.this).fragmentView, 51, this.location[0] - AndroidUtilities.m72dp(48), this.location[1] - AndroidUtilities.m72dp(64));
            }
            CreateWalletFragment createWalletFragment = CreateWalletFragment.this;
            createWalletFragment.hintEditText = createWalletFragment.searchingHintEditText;
        }

        public final String getItem(int i) {
            return this.searchResult.get(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            TextView textView = new TextView(CreateWalletFragment.this.getContext());
            CreateWalletFragment createWalletFragment = CreateWalletFragment.this;
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(createWalletFragment.getThemedColor(Theme.key_actionBarDefaultSubmenuItem));
            textView.setGravity(16);
            textView.setLayoutParams(LayoutHelper.createRecycler(-2, -1));
            return new RecyclerListView.Holder(textView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            View view = holder.itemView;
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) view;
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m72dp(9));
            textView.setText(this.searchResult.get(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.searchResult.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$NumericTextView */
    /* loaded from: classes6.dex */
    public final class NumericTextView extends TextView {
        private String number;
        private int numberWidth;
        private final TextPaint numericPaint;
        final /* synthetic */ CreateWalletFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NumericTextView(CreateWalletFragment createWalletFragment, Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = createWalletFragment;
            TextPaint textPaint = new TextPaint(1);
            this.numericPaint = textPaint;
            setPadding(AndroidUtilities.m72dp(31), 0, 0, 0);
            textPaint.setTextSize(AndroidUtilities.m72dp(16));
        }

        public final void setNumber(String value) {
            int coerceAtLeast;
            Intrinsics.checkNotNullParameter(value, "value");
            this.number = value;
            this.numberWidth = (int) Math.ceil(this.numericPaint.measureText(value));
            CreateWalletFragment createWalletFragment = this.this$0;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(createWalletFragment.maxNumberWidth, this.numberWidth);
            createWalletFragment.maxNumberWidth = coerceAtLeast;
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.onDraw(canvas);
            String str = this.number;
            if (str != null) {
                CreateWalletFragment createWalletFragment = this.this$0;
                this.numericPaint.setColor(createWalletFragment.getThemedColor(Theme.key_windowBackgroundWhiteHintText));
                canvas.drawText(str, createWalletFragment.maxNumberWidth - this.numberWidth, AndroidUtilities.m72dp(17), this.numericPaint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText */
    /* loaded from: classes6.dex */
    public final class NumericEditText extends FrameLayout {
        private final ImageView deleteImageView;
        private final EditTextBoldCursor editText;
        private boolean ignoreSearch;
        private String number;
        private int numberWidth;
        private final TextPaint numericPaint;
        final /* synthetic */ CreateWalletFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NumericEditText(final CreateWalletFragment createWalletFragment, Context context, int i, boolean z) {
            super(context);
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = createWalletFragment;
            TextPaint textPaint = new TextPaint(1);
            this.numericPaint = textPaint;
            setWillNotDraw(false);
            textPaint.setTextSize(AndroidUtilities.m72dp(17));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            editTextBoldCursor.setTag(Integer.valueOf(i));
            editTextBoldCursor.setTextSize(1, 17.0f);
            editTextBoldCursor.setBackground(Theme.createEditTextDrawable(context, false));
            editTextBoldCursor.setPadding(AndroidUtilities.m72dp(31), AndroidUtilities.m72dp(2), AndroidUtilities.m72dp(30), 0);
            int i2 = Theme.key_windowBackgroundWhiteBlackText;
            editTextBoldCursor.setTextColor(createWalletFragment.getThemedColor(i2));
            editTextBoldCursor.setCursorColor(createWalletFragment.getThemedColor(i2));
            editTextBoldCursor.setCursorWidth(1.5f);
            editTextBoldCursor.setMaxLines(1);
            editTextBoldCursor.setLines(1);
            editTextBoldCursor.setSingleLine(true);
            editTextBoldCursor.setImeOptions((z ? 6 : 5) | 268435456);
            editTextBoldCursor.setInputType(180224);
            editTextBoldCursor.setCursorSize(AndroidUtilities.m72dp(20));
            editTextBoldCursor.setGravity(3);
            editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda2
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                    boolean lambda$6$lambda$3;
                    lambda$6$lambda$3 = CreateWalletFragment.NumericEditText.lambda$6$lambda$3(CreateWalletFragment.this, textView, i3, keyEvent);
                    return lambda$6$lambda$3;
                }
            });
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    boolean z2;
                    char first;
                    String trim;
                    boolean z3;
                    CreateWalletFragment.HintsAdapter hintsAdapter;
                    if (Ref$BooleanRef.this.element) {
                        return;
                    }
                    z2 = createWalletFragment.globalIgnoreTextChange;
                    if (z2 || editable == null) {
                        return;
                    }
                    Ref$BooleanRef.this.element = true;
                    int length = editable.length();
                    String lowerCase = editable.toString().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                    first = StringsKt___StringsKt.first(" ");
                    trim = StringsKt__StringsKt.trim(lowerCase, first);
                    editable.replace(0, length, trim);
                    int i3 = 0;
                    while (i3 < editable.length()) {
                        char charAt = editable.charAt(i3);
                        if (!('a' <= charAt && charAt < '{')) {
                            editable.replace(i3, i3 + 1, "");
                            i3--;
                        }
                        i3++;
                    }
                    Ref$BooleanRef.this.element = false;
                    this.updateClearButton();
                    z3 = this.ignoreSearch;
                    if (z3) {
                        return;
                    }
                    hintsAdapter = createWalletFragment.getHintsAdapter();
                    hintsAdapter.searchMnemonicWordsSuggestions(this);
                }
            });
            editTextBoldCursor.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda1
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z2) {
                    CreateWalletFragment.NumericEditText.lambda$6$lambda$5(CreateWalletFragment.NumericEditText.this, createWalletFragment, view, z2);
                }
            });
            this.editText = editTextBoldCursor;
            addView(editTextBoldCursor, LayoutHelper.createFrame(220, 36));
            ImageView imageView = new ImageView(context);
            imageView.setFocusable(false);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C3473R.C3475drawable.miniplayer_close);
            imageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            imageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
            imageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
            imageView.setRotation(45.0f);
            imageView.setColorFilter(new PorterDuffColorFilter(createWalletFragment.getThemedColor(Theme.key_windowBackgroundWhiteGrayText7), PorterDuff.Mode.MULTIPLY));
            imageView.setContentDescription(LocaleController.getString("ClearButton", C3473R.string.ClearButton));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CreateWalletFragment.NumericEditText.lambda$8$lambda$7(CreateWalletFragment.NumericEditText.this, view);
                }
            });
            this.deleteImageView = imageView;
            addView(imageView, LayoutHelper.createFrame(30, 30, 53));
        }

        public final EditTextBoldCursor getEditText() {
            return this.editText;
        }

        public final CharSequence getText() {
            Editable text = this.editText.getText();
            Intrinsics.checkNotNullExpressionValue(text, "editText.text");
            return text;
        }

        public final void setText(CharSequence text) {
            Intrinsics.checkNotNullParameter(text, "text");
            this.ignoreSearch = true;
            EditTextBoldCursor editTextBoldCursor = this.editText;
            editTextBoldCursor.setText(text);
            ViewExtKt.setSelectionEnd(editTextBoldCursor);
            this.ignoreSearch = false;
            Object tag = this.editText.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) tag).intValue() + 1;
            if (intValue < this.this$0.editTexts.size()) {
                EditTextBoldCursor editTextBoldCursor2 = ((NumericEditText) this.this$0.editTexts.get(intValue)).editText;
                editTextBoldCursor2.requestFocus();
                ViewExtKt.setSelectionEnd(editTextBoldCursor2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean lambda$6$lambda$3(CreateWalletFragment this$0, TextView textView, int i, KeyEvent keyEvent) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (i != 5) {
                if (i != 6) {
                    return false;
                }
                this$0.getActionButton().callOnClick();
                return true;
            }
            Object tag = textView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) tag).intValue() + 1;
            if (intValue < this$0.editTexts.size()) {
                EditTextBoldCursor editTextBoldCursor = ((NumericEditText) this$0.editTexts.get(intValue)).editText;
                editTextBoldCursor.requestFocus();
                ViewExtKt.setSelectionEnd(editTextBoldCursor);
            }
            this$0.hideHint();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void lambda$6$lambda$5(NumericEditText this$0, CreateWalletFragment this$1, View view, boolean z) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            this$0.updateClearButton();
            this$1.hideHint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void lambda$8$lambda$7(NumericEditText this$0, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (view.getAlpha() == 1.0f) {
                ViewExtKt.clearText(this$0.editText);
            }
        }

        public final int length() {
            return this.editText.length();
        }

        public final void setNumber(String value) {
            int coerceAtLeast;
            Intrinsics.checkNotNullParameter(value, "value");
            this.number = value;
            this.numberWidth = (int) Math.ceil(this.numericPaint.measureText(value));
            CreateWalletFragment createWalletFragment = this.this$0;
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(createWalletFragment.maxEditNumberWidth, this.numberWidth);
            createWalletFragment.maxEditNumberWidth = coerceAtLeast;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            super.onDraw(canvas);
            String str = this.number;
            if (str != null) {
                CreateWalletFragment createWalletFragment = this.this$0;
                this.numericPaint.setColor(createWalletFragment.getThemedColor(Theme.key_windowBackgroundWhiteHintText));
                canvas.drawText(str, (createWalletFragment.maxEditNumberWidth - this.numberWidth) / 2.0f, AndroidUtilities.m72dp(20), this.numericPaint);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void updateClearButton() {
            boolean z = this.editText.length() > 0 && this.editText.hasFocus();
            ImageView imageView = this.deleteImageView;
            if (z != (imageView.getTag() != null)) {
                imageView.setTag(z ? 1 : null);
                ViewPropertyAnimator animate = imageView.animate();
                float f = BitmapDescriptorFactory.HUE_RED;
                ViewPropertyAnimator scaleY = animate.alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.0f).scaleY(z ? 1.0f : 0.0f);
                if (!z) {
                    f = 45.0f;
                }
                scaleY.rotation(f).setDuration(150L).start();
            }
        }
    }

    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CreateWalletFragment newInstance(CreateWalletScreenType currentType) {
            Intrinsics.checkNotNullParameter(currentType, "currentType");
            return new CreateWalletFragment(currentType);
        }
    }
}
