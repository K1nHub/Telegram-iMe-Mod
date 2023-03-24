package com.smedialink.p031ui.wallet.crypto.create;

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
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.extractor.p016ts.TsExtractor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.model.wallet.crypto.create.CreateWalletScreenType;
import com.smedialink.model.wallet.crypto.tutorial.TutorialType;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.custom.backup.SecretWordsActionButton;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.smedialink.p031ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.smedialink.storage.data.utils.extentions.CollectionExtKt;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.utils.extentions.common.BaseFragmentExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.smedialink.utils.helper.wallet.BackupPdfHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p048ui.ActionBar.BackDrawable;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.CameraScanActivity;
import org.telegram.p048ui.Components.EditTextBoldCursor;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.QRCodeBottomSheet;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.URLSpanNoUnderline;
import org.telegram.p048ui.PasscodeActivity;
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment */
/* loaded from: classes3.dex */
public final class CreateWalletFragment extends WalletAuthFragment implements CreateWalletView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "imageView", "getImageView()Lorg/telegram/ui/Components/RLottieImageView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonTextView", "getButtonTextView()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "titleTextView", "getTitleTextView()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "descriptionText", "getDescriptionText()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "descriptionText2", "getDescriptionText2()Landroid/widget/TextView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "actionBarBackground", "getActionBarBackground()Landroid/view/View;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintAdapter", "getHintAdapter()Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$HintAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintListView", "getHintListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintPopupWindow", "getHintPopupWindow()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "hintPopupLayout", "getHintPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "scrollView", "getScrollView()Landroid/widget/ScrollView;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "editTextContainer", "getEditTextContainer()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "leftColumn", "getLeftColumn()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "rightColumn", "getRightColumn()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "qrCodeBottomSheet", "getQrCodeBottomSheet()Lorg/telegram/ui/Components/QRCodeBottomSheet;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonsLayout", "getButtonsLayout()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "columnsLayout", "getColumnsLayout()Landroid/widget/LinearLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonCopy", "getButtonCopy()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonQR", "getButtonQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonPaste", "getButtonPaste()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "buttonScanQR", "getButtonScanQR()Lcom/smedialink/ui/custom/backup/SecretWordsActionButton;", 0)), Reflection.property1(new PropertyReference1Impl(CreateWalletFragment.class, "clipboardManager", "getClipboardManager()Landroid/content/ClipboardManager;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy actionBarBackground$delegate;
    private final ResettableLazy buttonCopy$delegate;
    private final ResettableLazy buttonPaste$delegate;
    private final ResettableLazy buttonQR$delegate;
    private final ResettableLazy buttonScanQR$delegate;
    private final ResettableLazy buttonTextView$delegate;
    private final ResettableLazy buttonsLayout$delegate;
    private Runnable cancelOnDestroyRunnable;
    private final List<Integer> checkWordIndices;
    private final ResettableLazy clipboardManager$delegate;
    private final ResettableLazy columnsLayout$delegate;
    private final CreateWalletScreenType currentType;
    private final ResettableLazy descriptionText$delegate;
    private final ResettableLazy descriptionText2$delegate;
    private final ResettableLazy editTextContainer$delegate;
    private final List<NumericEditText> editTexts;
    private CreateWalletFragment fragmentToRemove;
    private boolean globalIgnoreTextChange;
    private final ResettableLazy hintAdapter$delegate;
    private NumericEditText hintEditText;
    private LinearLayoutManager hintLayoutManager;
    private final ResettableLazy hintListView$delegate;
    private final ResettableLazy hintPopupLayout$delegate;
    private final ResettableLazy hintPopupWindow$delegate;
    private List<String> hintWords;
    private final ResettableLazy imageView$delegate;
    private final ResettableLazy leftColumn$delegate;
    private int maxEditNumberWidth;
    private int maxNumberWidth;
    private boolean needHideKeyboardOnPause;
    private final MoxyKtxDelegate presenter$delegate;
    private final ResettableLazy qrCodeBottomSheet$delegate;
    private final ResettableLazy rightColumn$delegate;
    private final ResettableLazy scrollView$delegate;
    private final ResettableLazy titleTextView$delegate;
    private String walletAddress;
    private final List<NumericTextView> wordsTextViews;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean createContainer$lambda$5$lambda$4(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final CreateWalletFragment newInstance(CreateWalletScreenType createWalletScreenType) {
        return Companion.newInstance(createWalletScreenType);
    }

    public CreateWalletFragment(CreateWalletScreenType currentType) {
        List<String> emptyList;
        Intrinsics.checkNotNullParameter(currentType, "currentType");
        this.currentType = currentType;
        CreateWalletFragment$presenter$2 createWalletFragment$presenter$2 = new CreateWalletFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, CreateWalletPresenter.class.getName() + ".presenter", createWalletFragment$presenter$2);
        this.imageView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$imageView$2(this), 1, (Object) null);
        this.buttonTextView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$buttonTextView$2(this), 1, (Object) null);
        this.titleTextView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$titleTextView$2(this), 1, (Object) null);
        this.descriptionText$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$descriptionText$2(this), 1, (Object) null);
        this.descriptionText2$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$descriptionText2$2(this), 1, (Object) null);
        this.actionBarBackground$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$actionBarBackground$2(this), 1, (Object) null);
        this.hintAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$hintAdapter$2(this), 1, (Object) null);
        this.hintListView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$hintListView$2(this), 1, (Object) null);
        this.hintPopupWindow$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$hintPopupWindow$2(this), 1, (Object) null);
        this.hintPopupLayout$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$hintPopupLayout$2(this), 1, (Object) null);
        this.scrollView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$scrollView$2(this), 1, (Object) null);
        this.editTextContainer$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$editTextContainer$2(this), 1, (Object) null);
        this.leftColumn$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$leftColumn$2(this), 1, (Object) null);
        this.rightColumn$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$rightColumn$2(this), 1, (Object) null);
        this.qrCodeBottomSheet$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$qrCodeBottomSheet$2(this), 1, (Object) null);
        this.buttonsLayout$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$buttonsLayout$2(this), 1, (Object) null);
        this.columnsLayout$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$columnsLayout$2(this), 1, (Object) null);
        this.buttonCopy$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$buttonCopy$2(this), 1, (Object) null);
        this.buttonQR$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$buttonQR$2(this), 1, (Object) null);
        this.buttonPaste$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$buttonPaste$2(this), 1, (Object) null);
        this.buttonScanQR$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$buttonScanQR$2(this), 1, (Object) null);
        this.clipboardManager$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CreateWalletFragment$clipboardManager$2(this), 1, (Object) null);
        this.checkWordIndices = new ArrayList();
        this.editTexts = new ArrayList();
        this.wordsTextViews = new ArrayList();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.hintWords = emptyList;
        this.needHideKeyboardOnPause = true;
        this.walletAddress = "";
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
    public final TextView getButtonTextView() {
        return (TextView) this.buttonTextView$delegate.getValue(this, $$delegatedProperties[2]);
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
    public final HintAdapter getHintAdapter() {
        return (HintAdapter) this.hintAdapter$delegate.getValue(this, $$delegatedProperties[7]);
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        CreateWalletScreenType createWalletScreenType = this.currentType;
        if (createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) {
            this.checkWordIndices.clear();
            while (this.checkWordIndices.size() < 3) {
                int nextInt = Utilities.random.nextInt(((CreateWalletScreenType.WordsCheck) this.currentType).getSecretWords().size());
                if (!this.checkWordIndices.contains(Integer.valueOf(nextInt))) {
                    this.checkWordIndices.add(Integer.valueOf(nextInt));
                }
            }
            CollectionsKt__MutableCollectionsJVMKt.sort(this.checkWordIndices);
        } else if (createWalletScreenType instanceof CreateWalletScreenType.SecretWords) {
            Runnable runnable = new Runnable() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda3
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        CreateWalletScreenType createWalletScreenType = this.currentType;
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupEventListeners();
        ViewGroup createContainer = createContainer();
        createContainer.setKeepScreenOn(this.currentType instanceof CreateWalletScreenType.SecretWords);
        createContainer.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        this.fragmentView = createContainer;
        setupViewsContents();
        getImageView().playAnimation();
        View fragmentView = this.fragmentView;
        Intrinsics.checkNotNullExpressionValue(fragmentView, "fragmentView");
        return fragmentView;
    }

    @Override // com.smedialink.p031ui.base.WalletAuthFragment, com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        CreateWalletScreenType createWalletScreenType = this.currentType;
        if ((createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) || (createWalletScreenType instanceof CreateWalletScreenType.Import)) {
            AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        }
        CreateWalletScreenType createWalletScreenType2 = this.currentType;
        if ((createWalletScreenType2 instanceof CreateWalletScreenType.SecretWords) || (createWalletScreenType2 instanceof CreateWalletScreenType.Import) || (createWalletScreenType2 instanceof CreateWalletScreenType.WordsCheck)) {
            BaseFragmentExtKt.setEnableSecureWindow(this, true);
        }
        this.needHideKeyboardOnPause = true;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        hideHint();
        if (getParentActivity() != null && this.needHideKeyboardOnPause) {
            AndroidUtilities.hideKeyboard(getParentActivity().getCurrentFocus());
        }
        super.onPause();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if ((!(grantResults.length == 0)) && grantResults[0] == 0) {
            if (i == 4) {
                generatePdf();
            } else if (i != 34) {
            } else {
                openQRScan();
            }
        }
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onBeginSlide() {
        super.onBeginSlide();
        hideHint();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean presentFragment(BaseFragment baseFragment) {
        if (getParentActivity() != null) {
            AndroidUtilities.hideKeyboard(getParentActivity().getCurrentFocus());
            this.needHideKeyboardOnPause = false;
        }
        return super.presentFragment(baseFragment);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            CreateWalletScreenType createWalletScreenType = this.currentType;
            if ((!(createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) || z2) && !(createWalletScreenType instanceof CreateWalletScreenType.Import)) {
                return;
            }
            ((NumericEditText) CollectionsKt.first((List<? extends Object>) this.editTexts)).getEditText().requestFocus();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda2
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        hideHint();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return canGoBack();
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.CreateWalletView
    public void setHintWords(List<String> words) {
        Intrinsics.checkNotNullParameter(words, "words");
        this.hintWords = words;
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.CreateWalletView
    public void setWalletAddress(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        this.walletAddress = address;
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.CreateWalletView
    public void onSuccessEnterSeed(String seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        presentFragment(PasscodeActivity.newInstanceForWalletPasscode(seed));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.CreateWalletView
    public void onSuccessConfirmBackUp() {
        CreateWalletFragment createWalletFragment = this.fragmentToRemove;
        if (createWalletFragment != null) {
            createWalletFragment.removeSelfFromStack();
        }
        presentFragment(Companion.newInstance(CreateWalletScreenType.Ready.INSTANCE), true);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.CreateWalletView
    public void createNewWallet() {
        CreateWalletFragment createWalletFragment = this.fragmentToRemove;
        if (createWalletFragment != null) {
            createWalletFragment.removeSelfFromStack();
        }
        presentFragment(CreateWalletTutorialFragment.Companion.newInstance$default(CreateWalletTutorialFragment.Companion, null, 1, null));
        AndroidUtilities.runOnUIThread(new CreateWalletFragment$$ExternalSyntheticLambda1(this), 300L);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.create.CreateWalletView
    public void createNewWalletWithPassword(List<String> words, String password) {
        Intrinsics.checkNotNullParameter(words, "words");
        Intrinsics.checkNotNullParameter(password, "password");
        CreateWalletFragment createWalletFragment = this.fragmentToRemove;
        if (createWalletFragment != null) {
            createWalletFragment.removeSelfFromStack();
        }
        presentFragment(CreateWalletTutorialFragment.Companion.newInstance(new TutorialType.Backup(new CreateWalletFragment$createNewWalletWithPassword$1(words, password))));
        AndroidUtilities.runOnUIThread(new CreateWalletFragment$$ExternalSyntheticLambda1(this), 300L);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarWhiteSelector"), new ThemeDescription(getActionBarBackground(), 0, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getHintListView(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextView.class}, null, null, null, "actionBarDefaultSubmenuItem"), new ThemeDescription(getEditTextContainer(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{NumericEditText.class}, new String[]{"editText"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getEditTextContainer(), ThemeDescription.FLAG_CURSORCOLOR, new Class[]{NumericEditText.class}, new String[]{"editText"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getEditTextContainer(), ThemeDescription.FLAG_IMAGECOLOR, new Class[]{NumericEditText.class}, new String[]{"deleteImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText7"), new ThemeDescription(getEditTextContainer(), 0, null, null, null, null, "windowBackgroundWhiteHintText"), new ThemeDescription(getLeftColumn(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{NumericTextView.class}, null, null, null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getRightColumn(), ThemeDescription.FLAG_TEXTCOLOR, new Class[]{NumericTextView.class}, null, null, null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getLeftColumn(), 0, new Class[]{NumericTextView.class}, null, null, null, "windowBackgroundWhiteHintText"), new ThemeDescription(getRightColumn(), 0, new Class[]{NumericTextView.class}, null, null, null, "windowBackgroundWhiteHintText"), new ThemeDescription(getTitleTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getDescriptionText(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText6"), new ThemeDescription(getDescriptionText2(), ThemeDescription.FLAG_LINKCOLOR, null, null, null, null, "windowBackgroundWhiteBlueText2"), new ThemeDescription(getButtonTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "featuredStickers_buttonText"), new ThemeDescription(getButtonTextView(), ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, null, "featuredStickers_addButton"), new ThemeDescription(getButtonTextView(), ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "featuredStickers_addButtonPressed"));
        return arrayListOf;
    }

    private final ViewGroup createContainer() {
        CreateWalletScreenType createWalletScreenType = this.currentType;
        if (createWalletScreenType instanceof CreateWalletScreenType.Ready ? true : createWalletScreenType instanceof CreateWalletScreenType.TooBad) {
            getButtonTextView().setMinWidth(AndroidUtilities.m50dp((int) ImageReceiver.DEFAULT_CROSSFADE_DURATION));
            if (this.currentType instanceof CreateWalletScreenType.TooBad) {
                TextView descriptionText2 = getDescriptionText2();
                descriptionText2.setTextSize(1, 14.0f);
                descriptionText2.setLinkTextColor(getThemedColor("windowBackgroundWhiteBlueText2"));
            }
            final Activity parentActivity = getParentActivity();
            ViewGroup viewGroup = new ViewGroup(parentActivity) { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createContainer$2
                @Override // android.view.View
                protected void onMeasure(int i, int i2) {
                    C3366ActionBar c3366ActionBar;
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
                    c3366ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3366ActionBar.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
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
                        CreateWalletFragment.this.getButtonTextView().measure(View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                    } else {
                        imageView = CreateWalletFragment.this.getImageView();
                        imageView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((int) (size2 * 0.399f), 1073741824));
                        titleTextView = CreateWalletFragment.this.getTitleTextView();
                        titleTextView.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        descriptionText = CreateWalletFragment.this.getDescriptionText();
                        descriptionText.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        descriptionText22 = CreateWalletFragment.this.getDescriptionText2();
                        descriptionText22.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 0));
                        CreateWalletFragment.this.getButtonTextView().measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(42), 1073741824));
                    }
                    setMeasuredDimension(size, size2);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    C3366ActionBar c3366ActionBar;
                    C3366ActionBar c3366ActionBar2;
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
                    c3366ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3366ActionBar2 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3366ActionBar.layout(0, 0, i3, c3366ActionBar2.getMeasuredHeight());
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
                        int measuredWidth2 = (int) (f2 + (((f * 0.6f) - CreateWalletFragment.this.getButtonTextView().getMeasuredWidth()) / 2));
                        int i10 = (int) (0.64f * f3);
                        CreateWalletFragment.this.getButtonTextView().layout(measuredWidth2, i10, CreateWalletFragment.this.getButtonTextView().getMeasuredWidth() + measuredWidth2, CreateWalletFragment.this.getButtonTextView().getMeasuredHeight() + i10);
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
                    int measuredWidth6 = (i5 - CreateWalletFragment.this.getButtonTextView().getMeasuredWidth()) / 2;
                    int i15 = (int) (0.791f * f4);
                    CreateWalletFragment.this.getButtonTextView().layout(measuredWidth6, i15, CreateWalletFragment.this.getButtonTextView().getMeasuredWidth() + measuredWidth6, CreateWalletFragment.this.getButtonTextView().getMeasuredHeight() + i15);
                    int i16 = (int) (f4 * 0.894f);
                    descriptionText22 = CreateWalletFragment.this.getDescriptionText2();
                    descriptionText23 = CreateWalletFragment.this.getDescriptionText2();
                    int measuredWidth7 = descriptionText23.getMeasuredWidth();
                    descriptionText24 = CreateWalletFragment.this.getDescriptionText2();
                    descriptionText22.layout(0, i16, measuredWidth7, descriptionText24.getMeasuredHeight() + i16);
                }
            };
            viewGroup.setOnTouchListener(CreateWalletFragment$$ExternalSyntheticLambda0.INSTANCE);
            viewGroup.addView(this.actionBar);
            viewGroup.addView(getImageView());
            viewGroup.addView(getTitleTextView());
            viewGroup.addView(getDescriptionText());
            viewGroup.addView(getDescriptionText2());
            viewGroup.addView(getButtonTextView());
            return viewGroup;
        }
        if (createWalletScreenType instanceof CreateWalletScreenType.SecretWords ? true : createWalletScreenType instanceof CreateWalletScreenType.WordsCheck ? true : createWalletScreenType instanceof CreateWalletScreenType.Import) {
            getButtonTextView().setMinWidth(AndroidUtilities.m50dp(220));
            getDescriptionText().setLinkTextColor(getThemedColor("windowBackgroundWhiteBlueText2"));
            if (this.currentType instanceof CreateWalletScreenType.Import) {
                TextView descriptionText22 = getDescriptionText2();
                descriptionText22.setLinkTextColor(getThemedColor("windowBackgroundWhiteBlueText2"));
                descriptionText22.setTextSize(1, 15.0f);
            }
            final Activity parentActivity2 = getParentActivity();
            ViewGroup viewGroup2 = new ViewGroup(parentActivity2) { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createContainer$5
                @Override // android.view.View
                protected void onMeasure(int i, int i2) {
                    C3366ActionBar c3366ActionBar;
                    View actionBarBackground;
                    C3366ActionBar c3366ActionBar2;
                    ScrollView scrollView;
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                    c3366ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3366ActionBar.measure(makeMeasureSpec, i2);
                    actionBarBackground = CreateWalletFragment.this.getActionBarBackground();
                    c3366ActionBar2 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    actionBarBackground.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(c3366ActionBar2.getMeasuredHeight() + AndroidUtilities.m50dp(3), 1073741824));
                    scrollView = CreateWalletFragment.this.getScrollView();
                    scrollView.measure(makeMeasureSpec, i2);
                    setMeasuredDimension(size, size2);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                    C3366ActionBar c3366ActionBar;
                    C3366ActionBar c3366ActionBar2;
                    C3366ActionBar c3366ActionBar3;
                    View actionBarBackground;
                    View actionBarBackground2;
                    View actionBarBackground3;
                    ScrollView scrollView;
                    ScrollView scrollView2;
                    ScrollView scrollView3;
                    c3366ActionBar = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3366ActionBar2 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    int measuredWidth = c3366ActionBar2.getMeasuredWidth();
                    c3366ActionBar3 = ((BaseFragment) CreateWalletFragment.this).actionBar;
                    c3366ActionBar.layout(0, 0, measuredWidth, c3366ActionBar3.getMeasuredHeight());
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
            CreateWalletScreenType createWalletScreenType2 = this.currentType;
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
                int i = 0;
                while (i < 2) {
                    LinearLayout leftColumn = i == 0 ? getLeftColumn() : getRightColumn();
                    int size = ((CreateWalletScreenType.SecretWords) this.currentType).getSecretWords().size();
                    int i2 = size / 2;
                    int i3 = (i != 0 ? size % 2 : 0) + i2;
                    int i4 = 0;
                    while (i4 < i3) {
                        Activity parentActivity3 = getParentActivity();
                        Intrinsics.checkNotNullExpressionValue(parentActivity3, "parentActivity");
                        NumericTextView numericTextView = new NumericTextView(this, parentActivity3);
                        int i5 = (i == 0 ? 0 : i2) + i4;
                        numericTextView.setGravity(51);
                        numericTextView.setText(((CreateWalletScreenType.SecretWords) this.currentType).getSecretWords().get(i5));
                        numericTextView.setTextSize(1, 16.0f);
                        numericTextView.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
                        ViewExtKt.withMediumTypeface(numericTextView);
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format(Locale.US, "%d.", Arrays.copyOf(new Object[]{Integer.valueOf(i5 + 1)}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                        numericTextView.setNumber(format);
                        this.wordsTextViews.add(numericTextView);
                        leftColumn.addView(numericTextView, LayoutHelper.createLinear(-2, -2, 0, i4 == 0 ? 0 : 10, 0, 0));
                        i4++;
                    }
                    i++;
                }
            } else {
                if (createWalletScreenType2 instanceof CreateWalletScreenType.Import) {
                    LinearLayout buttonsLayout2 = getButtonsLayout();
                    buttonsLayout2.addView(getButtonPaste(), LayoutHelper.createLinear(0, -2, 1.0f));
                    buttonsLayout2.addView(getButtonScanQR(), LayoutHelper.createLinear(0, -2, 1.0f, 12, 0, 0, 0));
                    linearLayout.addView(buttonsLayout2, LayoutHelper.createLinear(-1, -2, 49, 36, 30, 36, 0));
                }
                this.maxEditNumberWidth = 0;
                fillEditTextContainer(this.currentType instanceof CreateWalletScreenType.Import ? 24 : 3);
                linearLayout.addView(getEditTextContainer(), LayoutHelper.createLinear(-2, -2, 1));
            }
            linearLayout.addView(getButtonTextView(), LayoutHelper.createLinear(-2, 42, 49, 0, 36, 0, 33));
            viewGroup2.addView(getActionBarBackground());
            viewGroup2.addView(this.actionBar);
            return viewGroup2;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View createActionBarBackground() {
        final Activity parentActivity = getParentActivity();
        View view = new View(parentActivity) { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createActionBarBackground$1
            private final Paint paint = new Paint();

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                INavigationLayout iNavigationLayout;
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                this.paint.setColor(CreateWalletFragment.this.getThemedColor("windowBackgroundWhite"));
                int measuredHeight = getMeasuredHeight() - AndroidUtilities.m50dp(3);
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
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createHintPopupLayout$1$1
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
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda5
            @Override // org.telegram.p048ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                CreateWalletFragment.createHintPopupLayout$lambda$16$lambda$15(CreateWalletFragment.this, keyEvent);
            }
        });
        actionBarPopupWindowLayout.addView(getHintListView(), LayoutHelper.createFrame(-1, 48));
        return actionBarPopupWindowLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createHintPopupLayout$lambda$16$lambda$15(CreateWalletFragment this$0, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && this$0.getHintPopupWindow().isShowing()) {
            this$0.getHintPopupWindow().dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ActionBarPopupWindow createHintPopupWindow() {
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(getHintPopupLayout(), -2, -2);
        actionBarPopupWindow.setAnimationEnabled(false);
        actionBarPopupWindow.setAnimationStyle(C3301R.style.PopupAnimation);
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
        recyclerListView.setAdapter(getHintAdapter());
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(recyclerListView, AndroidUtilities.m50dp(9));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerListView.getContext(), 0, false);
        this.hintLayoutManager = linearLayoutManager;
        recyclerListView.setLayoutManager(linearLayoutManager);
        recyclerListView.setClipToPadding(false);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda6
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                CreateWalletFragment.createHintListView$lambda$20$lambda$19(CreateWalletFragment.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createHintListView$lambda$20$lambda$19(CreateWalletFragment this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NumericEditText numericEditText = this$0.hintEditText;
        if (numericEditText != null) {
            numericEditText.setText(this$0.getHintAdapter().getItem(i));
        }
        this$0.getHintPopupWindow().dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HintAdapter createHintAdapter() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new HintAdapter(this, parentActivity);
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
        CreateWalletScreenType createWalletScreenType = this.currentType;
        Intrinsics.checkNotNull(createWalletScreenType, "null cannot be cast to non-null type com.smedialink.model.wallet.crypto.create.CreateWalletScreenType.SecretWords");
        final String joinBySpace = StringExtKt.joinBySpace(((CreateWalletScreenType.SecretWords) createWalletScreenType).getSecretWords());
        final String internalString = LocaleController.getInternalString(C3301R.string.wallet_backup_secret_words_qr_description);
        return new QRCodeBottomSheet(parentActivity, joinBySpace, internalString) { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createQRCodeBottomSheet$1
            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getType() {
                return 2;
            }

            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getCustomQrCenterImageRes() {
                return C3301R.C3303drawable.fork_ic_internal_logo;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createCopyButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        int i = C3301R.C3303drawable.msg_copy_filled;
        String string = LocaleController.getString("Copy", C3301R.string.Copy);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Copy\", R.string.Copy)");
        secretWordsActionButton.setupView(i, string);
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new CreateWalletFragment$createCopyButton$1$1(this), 1, null);
        return secretWordsActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createPasteButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        int i = C3301R.C3303drawable.fork_ic_paste_24;
        String internalString = LocaleController.getInternalString(C3301R.string.wallet_import_paste);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.wallet_import_paste)");
        secretWordsActionButton.setupView(i, internalString);
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new CreateWalletFragment$createPasteButton$1$1(this), 1, null);
        return secretWordsActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createQRButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        int i = C3301R.C3303drawable.msg_qrcode;
        String string = LocaleController.getString("GetQRCode", C3301R.string.GetQRCode);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"GetQRCode\", R.string.GetQRCode)");
        secretWordsActionButton.setupView(i, string);
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new CreateWalletFragment$createQRButton$1$1(this), 1, null);
        return secretWordsActionButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecretWordsActionButton createScanQRButton() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        SecretWordsActionButton secretWordsActionButton = new SecretWordsActionButton(parentActivity, null, 0, 6, null);
        secretWordsActionButton.setupView(C3301R.C3303drawable.msg_qrcode, getResourceManager().getString(C3301R.string.wallet_backup_scan_qr));
        ViewExtKt.safeThrottledClick$default(secretWordsActionButton, 0L, new CreateWalletFragment$createScanQRButton$1$1(this), 1, null);
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
        textView.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        textView.setGravity(1);
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m50dp(32));
        textView.setTextSize(1, 24.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView createDescriptionTextView() {
        TextView textView = new TextView(getParentActivity());
        textView.setTextColor(getThemedColor("windowBackgroundWhiteGrayText6"));
        textView.setGravity(1);
        textView.setLineSpacing(AndroidUtilities.m50dp(2), 1.0f);
        textView.setTextSize(1, 15.0f);
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m50dp(32));
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView createDescriptionTextView2() {
        TextView textView = new TextView(getParentActivity());
        textView.setTextColor(getThemedColor("windowBackgroundWhiteGrayText6"));
        textView.setGravity(1);
        textView.setLineSpacing(AndroidUtilities.m50dp(2), 1.0f);
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m50dp(32));
        textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        textView.setVisibility(8);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView createButtonTextView() {
        TextView textView = new TextView(getParentActivity());
        com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m50dp(34));
        textView.setGravity(17);
        textView.setTextColor(getThemedColor("featuredStickers_buttonText"));
        textView.setTextSize(1, 14.0f);
        ViewExtKt.withMediumTypeface(textView);
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m50dp(4), getThemedColor("featuredStickers_addButton"), getThemedColor("featuredStickers_addButtonPressed")));
        ViewExtKt.safeThrottledClick$default(textView, 0L, new CreateWalletFragment$createButtonTextView$1$1(this), 1, null);
        return textView;
    }

    private final void setupViewsContents() {
        CreateWalletScreenType createWalletScreenType = this.currentType;
        if (createWalletScreenType instanceof CreateWalletScreenType.SecretWords) {
            getImageView().setAnimation(C3301R.C3306raw.fork_wallet_note, 112, 112);
            this.actionBar.setTitle(LocaleController.getInternalString(C3301R.string.wallet_backup_secret_words_title));
            getTitleTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_secret_words));
            getDescriptionText().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_secret_words_info));
            getButtonTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_done));
            this.actionBar.getTitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
        } else if (createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) {
            getImageView().setAnimation(C3301R.C3306raw.wallet_science, 104, 104);
            this.actionBar.setTitle(LocaleController.getInternalString(C3301R.string.wallet_backup_test_time_title));
            getTitleTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_test_time));
            getDescriptionText().setText(AndroidUtilities.replaceTags(LocaleController.formatStringInternal(C3301R.string.wallet_backup_test_time_info, Integer.valueOf(this.checkWordIndices.get(0).intValue() + 1), Integer.valueOf(this.checkWordIndices.get(1).intValue() + 1), Integer.valueOf(this.checkWordIndices.get(2).intValue() + 1))));
            getButtonTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_continue));
            this.actionBar.getTitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
        } else if (createWalletScreenType instanceof CreateWalletScreenType.Ready) {
            getImageView().setAnimation(C3301R.C3306raw.wallet_allset, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
            getImageView().setPadding(AndroidUtilities.m50dp(27), 0, 0, 0);
            getTitleTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_ready));
            getDescriptionText().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_ready_info));
            getButtonTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_view));
        } else if (createWalletScreenType instanceof CreateWalletScreenType.Import) {
            getImageView().setAnimation(C3301R.C3306raw.fork_wallet_note, 112, 112);
            C3366ActionBar c3366ActionBar = this.actionBar;
            int i = C3301R.string.wallet_import_secret_words;
            c3366ActionBar.setTitle(LocaleController.getInternalString(i));
            getTitleTextView().setText(LocaleController.getInternalString(i));
            getDescriptionText().setText(LocaleController.getInternalString(C3301R.string.wallet_import_info));
            getButtonTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_backup_continue));
            this.actionBar.getTitleTextView().setAlpha(BitmapDescriptorFactory.HUE_RED);
            getDescriptionText2().setVisibility(0);
            TextView descriptionText2 = getDescriptionText2();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) createClickableText(C3301R.string.wallet_import_dont_have, new CreateWalletFragment$setupViewsContents$1$1(this)));
            if (getCryptoPreferenceHelper().getCurrentBlockchainType() == BlockchainType.EVM) {
                StringsKt.append(spannableStringBuilder, "\n", "\n", createClickableText(C3301R.string.wallet_import_change_words_count, new CreateWalletFragment$setupViewsContents$1$2(this)));
            }
            descriptionText2.setText(spannableStringBuilder);
        } else if (createWalletScreenType instanceof CreateWalletScreenType.TooBad) {
            getImageView().setAutoRepeat(true);
            getImageView().setAnimation(C3301R.C3306raw.fork_wallet_too_bad, 120, 120);
            getTitleTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_import_too_bad));
            getDescriptionText().setText(LocaleController.getInternalString(C3301R.string.wallet_import_too_bad_info));
            getButtonTextView().setText(LocaleController.getInternalString(C3301R.string.wallet_import_too_bad_enter));
            getDescriptionText2().setVisibility(0);
            getDescriptionText2().setText(createClickableText(C3301R.string.wallet_import_too_bad_create, new CreateWalletFragment$setupViewsContents$2(this)));
        }
    }

    private final void setupActionBar() {
        C3366ActionBar c3366ActionBar = this.actionBar;
        if (canGoBack()) {
            c3366ActionBar.setBackButtonDrawable(new BackDrawable(false));
        }
        ViewCompat.setBackground(c3366ActionBar, null);
        c3366ActionBar.setTitleColor(getThemedColor("windowBackgroundWhiteBlackText"));
        c3366ActionBar.setItemsColor(getThemedColor("windowBackgroundWhiteGrayText2"), false);
        c3366ActionBar.setItemsBackgroundColor(getThemedColor("actionBarWhiteSelector"), false);
        c3366ActionBar.setCastShadows(false);
        c3366ActionBar.setOccupyStatusBar(false);
        c3366ActionBar.setY(c3366ActionBar.getY() + AndroidUtilities.statusBarHeight);
        c3366ActionBar.setExtraHeight(AndroidUtilities.statusBarHeight);
        c3366ActionBar.setAddToContainer(false);
        if (!AndroidUtilities.isTablet()) {
            c3366ActionBar.showActionModeTop();
        }
        if (this.currentType instanceof CreateWalletScreenType.SecretWords) {
            ActionBarMenuItem addItem = c3366ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3301R.C3303drawable.ic_ab_other);
            addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3301R.string.AccDescrMoreOptions));
            addItem.addSubItem(IdFabric$Menu.PDF, C3301R.C3303drawable.fork_ic_pdf_24, LocaleController.getInternalString(C3301R.string.wallet_backup_secret_words_pdf));
        }
        c3366ActionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$setupActionBar$1$2
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CreateWalletFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.PDF) {
                    CreateWalletFragment.this.generatePdf();
                }
            }
        });
    }

    private final void setupEventListeners() {
        if (this.currentType instanceof CreateWalletScreenType.Import) {
            RxEventBus rxEventBus = getRxEventBus();
            Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.CryptoEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo706ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2057x1c919b66(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2058x1c919b67(null)));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            autoDispose(subscribe);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void fillEditTextContainer(int i) {
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
            int size2 = this.editTexts.size();
            while (size2 < i) {
                Activity parentActivity = getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                NumericEditText numericEditText = new NumericEditText(this, parentActivity, size2, size2 == i + (-1));
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
            numericEditText = (NumericEditText) CollectionsKt.last((List<? extends Object>) list);
            getScrollView().fullScroll(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
        }
        final EditTextBoldCursor editText = numericEditText.getEditText();
        editText.requestFocus();
        ViewExtKt.setSelectionEnd(editText);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CreateWalletFragment.prepareCorrectEditTextInput$lambda$41$lambda$40$lambda$39(EditTextBoldCursor.this);
            }
        }, z ? 400L : 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareCorrectEditTextInput$lambda$41$lambda$40$lambda$39(EditTextBoldCursor this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        AndroidUtilities.showKeyboard(this_with);
    }

    private final SpannableString createClickableText(int i, final Function0<Unit> function0) {
        SpannableString spannableString = new SpannableString(LocaleController.getInternalString(i));
        spannableString.setSpan(new URLSpanNoUnderline() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createClickableText$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super("");
            }

            @Override // org.telegram.p048ui.Components.URLSpanNoUnderline, android.text.style.URLSpan, android.text.style.ClickableSpan
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
    public final void pasteToEditText(String str) {
        int lastIndex;
        List<String> splitBySpace = StringExtKt.splitBySpace(str);
        int i = 0;
        for (Object obj : this.editTexts) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            NumericEditText numericEditText = (NumericEditText) obj;
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(splitBySpace);
            if (i <= lastIndex) {
                numericEditText.getEditText().setText(splitBySpace.get(i));
            }
            i = i2;
        }
        prepareCorrectEditTextInput(false);
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
        return !Intrinsics.areEqual(this.currentType, CreateWalletScreenType.Ready.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void generatePdf() {
        if (this.currentType instanceof CreateWalletScreenType.SecretWords) {
            BackupPdfHelper backupPdfHelper = BackupPdfHelper.INSTANCE;
            Activity parentActivity = getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            String str = this.walletAddress;
            List<String> secretWords = ((CreateWalletScreenType.SecretWords) this.currentType).getSecretWords();
            Bitmap createQR = getQrCodeBottomSheet().createQR(getParentActivity(), StringExtKt.joinBySpace(((CreateWalletScreenType.SecretWords) this.currentType).getSecretWords()), null);
            Intrinsics.checkNotNullExpressionValue(createQR, "qrCodeBottomSheet.create…ull\n                    )");
            backupPdfHelper.generatePdf(parentActivity, str, secretWords, createQR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openQRScan() {
        CameraScanActivity.showAsSheet((BaseFragment) this, true, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$openQRScan$1
            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ String getSubtitleText() {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ void onDismiss() {
                CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public /* synthetic */ boolean processQr(String str, Runnable runnable) {
                return CameraScanActivity.CameraScanActivityDelegate.CC.$default$processQr(this, str, runnable);
            }

            @Override // org.telegram.p048ui.CameraScanActivity.CameraScanActivityDelegate
            public void didFindQr(String text) {
                Intrinsics.checkNotNullParameter(text, "text");
                CreateWalletFragment.this.pasteToEditText(text);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$HintAdapter */
    /* loaded from: classes3.dex */
    public final class HintAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;
        private final int[] location;
        private List<String> searchResult;
        private Runnable searchRunnable;
        final /* synthetic */ CreateWalletFragment this$0;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return true;
        }

        public HintAdapter(CreateWalletFragment createWalletFragment, Context context) {
            List<String> emptyList;
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = createWalletFragment;
            this.context = context;
            this.location = new int[2];
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.searchResult = emptyList;
        }

        public final void searchHintsFor(final NumericEditText editText) {
            Intrinsics.checkNotNullParameter(editText, "editText");
            final String obj = editText.getText().toString();
            if (obj.length() == 0) {
                this.this$0.hideHint();
                return;
            }
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            final CreateWalletFragment createWalletFragment = this.this$0;
            Runnable runnable = new Runnable() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$HintAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    CreateWalletFragment.HintAdapter.searchHintsFor$lambda$2(CreateWalletFragment.this, obj, this, editText);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 200L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void searchHintsFor$lambda$2(final CreateWalletFragment this$0, String text, final HintAdapter this$1, final NumericEditText editText) {
            final List mutableList;
            boolean startsWith$default;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(text, "$text");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Intrinsics.checkNotNullParameter(editText, "$editText");
            List list = this$0.hintWords;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default((String) obj, text, false, 2, null);
                if (startsWith$default) {
                    arrayList.add(obj);
                }
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            if (CollectionExtKt.isSingletonList(mutableList) && Intrinsics.areEqual(CollectionsKt.firstOrNull(mutableList), text)) {
                mutableList.clear();
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$HintAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CreateWalletFragment.HintAdapter.searchHintsFor$lambda$2$lambda$1(CreateWalletFragment.HintAdapter.this, mutableList, this$0, editText);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void searchHintsFor$lambda$2$lambda$1(HintAdapter this$0, List newSearchResults, CreateWalletFragment this$1, NumericEditText editText) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(newSearchResults, "$newSearchResults");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Intrinsics.checkNotNullParameter(editText, "$editText");
            this$0.searchRunnable = null;
            this$0.searchResult = newSearchResults;
            this$0.notifyDataSetChanged();
            if (this$0.searchResult.isEmpty()) {
                this$1.hideHint();
                return;
            }
            if (this$1.hintEditText != editText || !this$1.getHintPopupWindow().isShowing()) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(1000), Integer.MIN_VALUE);
                this$1.getHintPopupLayout().measure(makeMeasureSpec, makeMeasureSpec);
                editText.getLocationInWindow(this$0.location);
                LinearLayoutManager linearLayoutManager = this$1.hintLayoutManager;
                if (linearLayoutManager != null) {
                    linearLayoutManager.scrollToPositionWithOffset(0, Integer.MAX_VALUE);
                }
                this$1.getHintPopupWindow().showAtLocation(((BaseFragment) this$1).fragmentView, 51, this$0.location[0] - AndroidUtilities.m50dp(48), this$0.location[1] - AndroidUtilities.m50dp(64));
            }
            this$1.hintEditText = editText;
        }

        public final String getItem(int i) {
            return this.searchResult.get(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            TextView textView = new TextView(this.context);
            CreateWalletFragment createWalletFragment = this.this$0;
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(createWalletFragment.getThemedColor("actionBarDefaultSubmenuItem"));
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
            com.tbuonomo.viewpagerdotsindicator.ViewExtKt.setPaddingHorizontal(textView, AndroidUtilities.m50dp(9));
            textView.setText(this.searchResult.get(i));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.searchResult.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$NumericTextView */
    /* loaded from: classes3.dex */
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
            setPadding(AndroidUtilities.m50dp(31), 0, 0, 0);
            textPaint.setTextSize(AndroidUtilities.m50dp(16));
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
                this.numericPaint.setColor(createWalletFragment.getThemedColor("windowBackgroundWhiteHintText"));
                canvas.drawText(str, createWalletFragment.maxNumberWidth - this.numberWidth, AndroidUtilities.m50dp(17), this.numericPaint);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText */
    /* loaded from: classes3.dex */
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
            textPaint.setTextSize(AndroidUtilities.m50dp(17));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            editTextBoldCursor.setTag(Integer.valueOf(i));
            editTextBoldCursor.setTextSize(1, 17.0f);
            editTextBoldCursor.setBackground(Theme.createEditTextDrawable(context, false));
            editTextBoldCursor.setPadding(AndroidUtilities.m50dp(31), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(30), 0);
            editTextBoldCursor.setTextColor(createWalletFragment.getThemedColor("windowBackgroundWhiteBlackText"));
            editTextBoldCursor.setCursorColor(createWalletFragment.getThemedColor("windowBackgroundWhiteBlackText"));
            editTextBoldCursor.setCursorWidth(1.5f);
            editTextBoldCursor.setMaxLines(1);
            editTextBoldCursor.setLines(1);
            editTextBoldCursor.setSingleLine(true);
            editTextBoldCursor.setImeOptions((z ? 6 : 5) | 268435456);
            editTextBoldCursor.setInputType(180224);
            editTextBoldCursor.setCursorSize(AndroidUtilities.m50dp(20));
            editTextBoldCursor.setGravity(3);
            editTextBoldCursor.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda2
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                    boolean lambda$6$lambda$3;
                    lambda$6$lambda$3 = CreateWalletFragment.NumericEditText.lambda$6$lambda$3(CreateWalletFragment.this, textView, i2, keyEvent);
                    return lambda$6$lambda$3;
                }
            });
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$_init_$lambda$6$$inlined$doAfterTextChanged$1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    boolean z2;
                    char first;
                    String trim;
                    boolean z3;
                    CreateWalletFragment.HintAdapter hintAdapter;
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
                    int i2 = 0;
                    while (i2 < editable.length()) {
                        char charAt = editable.charAt(i2);
                        if (!('a' <= charAt && charAt < '{')) {
                            editable.replace(i2, i2 + 1, "");
                            i2--;
                        }
                        i2++;
                    }
                    Ref$BooleanRef.this.element = false;
                    this.updateClearButton();
                    z3 = this.ignoreSearch;
                    if (z3) {
                        return;
                    }
                    hintAdapter = createWalletFragment.getHintAdapter();
                    hintAdapter.searchHintsFor(this);
                }
            });
            editTextBoldCursor.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda1
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z2) {
                    CreateWalletFragment.NumericEditText.lambda$6$lambda$5(CreateWalletFragment.NumericEditText.this, createWalletFragment, view, z2);
                }
            });
            this.editText = editTextBoldCursor;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf((createWalletFragment.currentType instanceof CreateWalletScreenType.WordsCheck ? ((Number) createWalletFragment.checkWordIndices.get(i)).intValue() : i) + 1);
            String format = String.format(locale, "%d:", Arrays.copyOf(objArr, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            setNumber(format);
            addView(editTextBoldCursor, LayoutHelper.createFrame(220, 36));
            ImageView imageView = new ImageView(context);
            imageView.setFocusable(false);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setImageResource(C3301R.C3303drawable.miniplayer_close);
            imageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            imageView.setScaleX(BitmapDescriptorFactory.HUE_RED);
            imageView.setScaleY(BitmapDescriptorFactory.HUE_RED);
            imageView.setRotation(45.0f);
            imageView.setColorFilter(new PorterDuffColorFilter(createWalletFragment.getThemedColor("windowBackgroundWhiteGrayText7"), PorterDuff.Mode.MULTIPLY));
            imageView.setContentDescription(LocaleController.getString("ClearButton", C3301R.string.ClearButton));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$NumericEditText$$ExternalSyntheticLambda0
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
                this$0.getButtonTextView().callOnClick();
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
                this.numericPaint.setColor(createWalletFragment.getThemedColor("windowBackgroundWhiteHintText"));
                canvas.drawText(str, (createWalletFragment.maxEditNumberWidth - this.numberWidth) / 2.0f, AndroidUtilities.m50dp(20), this.numericPaint);
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
    /* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$Companion */
    /* loaded from: classes3.dex */
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
