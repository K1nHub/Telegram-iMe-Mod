package com.iMe.p031ui.wallet.crypto.wallet_connect;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.p024ui.dialog.SelectNetworkBottomSheet;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.p031ui.custom.NetworkTypeView;
import com.iMe.p031ui.wallet.crypto.wallet_connect.adapter.WalletConnectSessionsRecycleAdapter;
import com.iMe.p031ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.hints.HintUtils;
import com.tbuonomo.viewpagerdotsindicator.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.databinding.ForkFragmentWalletConnectBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.CameraScanActivity;
import org.telegram.p043ui.Cells.DialogCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: WalletConnectFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment */
/* loaded from: classes4.dex */
public final class WalletConnectFragment extends WalletAuthBaseFragment implements WalletConnectView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletConnectFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletConnectFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletConnectBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private int[] colors;
    private NetworkTypeView networkTypeView;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy sessionsAdapter$delegate;

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public WalletConnectFragment() {
        Lazy lazy;
        WalletConnectFragment$presenter$2 walletConnectFragment$presenter$2 = new WalletConnectFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletConnectPresenter.class.getName() + ".presenter", walletConnectFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletConnectFragment$special$$inlined$inject$default$1(this, null, null));
        this.sessionsAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletConnectFragment$binding$2(this), 1, (Object) null);
        this.colors = new int[10];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletConnectPresenter getPresenter() {
        return (WalletConnectPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletConnectSessionsRecycleAdapter getSessionsAdapter() {
        return (WalletConnectSessionsRecycleAdapter) this.sessionsAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletConnectBinding getBinding() {
        return (ForkFragmentWalletConnectBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupViews();
        setupRecycleView();
        setupListeners();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        if ((!(grantResults.length == 0)) && grantResults[0] == 0 && i == 34) {
            openQRScan();
        }
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectView
    public void setupSessionsItems(List<WalletConnectSessionItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        LinearLayout linearLayout = getBinding().linearSessions;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.linearSessions");
        linearLayout.setVisibility(items.isEmpty() ^ true ? 0 : 8);
        getSessionsAdapter().setNewInstance(items);
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(Network network, List<Network> availableNetworks, final Function1<? super Network, Unit> action) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(availableNetworks, "availableNetworks");
        Intrinsics.checkNotNullParameter(action, "action");
        SelectNetworkBottomSheet.Companion companion = SelectNetworkBottomSheet.Companion;
        Activity parentActivity = getParentActivity();
        Callbacks$Callback1<Network> callbacks$Callback1 = new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletConnectFragment.showChooseNetworkDialog$lambda$0(Function1.this, (Network) obj);
            }
        };
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(companion.newInstance(parentActivity, network, availableNetworks, callbacks$Callback1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$0(Function1 action, Network selectedNetwork) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(selectedNetwork, "selectedNetwork");
        action.invoke(selectedNetwork);
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void setupNetwork(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        NetworkTypeView networkTypeView = this.networkTypeView;
        if (networkTypeView == null) {
            return;
        }
        networkTypeView.setNetwork(network);
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectView
    public void showChangeNetworkHint() {
        HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showChangeNetworkHint(parentLayout);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z && !z2) {
            getPresenter().showChangeNetworkHintIfNeeded();
        }
        super.onTransitionAnimationEnd(z, z2);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletConnectFragment.this.updateAnimationColors();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        LinearLayout linearLayout = getBinding().linearSessions;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        NestedScrollView root = getBinding().getRoot();
        int i3 = ThemeDescription.FLAG_BACKGROUND;
        final WalletConnectSessionsRecycleAdapter sessionsAdapter = getSessionsAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(linearLayout, i, null, null, null, themeDescriptionDelegate, i2), new ThemeDescription(getBinding().linearAddSession, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2), new ThemeDescription(getBinding().buttonConnect, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, themeDescriptionDelegate, Theme.key_featuredStickers_addButton), new ThemeDescription(getBinding().textDescription, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getBinding().textSessionsTitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i3, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletConnectSessionsRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setTitle(getResourceManager().getString(C3417R.string.wallet_connect_title));
        c3484ActionBar.setAllowOverlayTitle(true);
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                WalletConnectPresenter presenter;
                if (i == -1) {
                    WalletConnectFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.NETWORK_SWITCH) {
                    presenter = WalletConnectFragment.this.getPresenter();
                    presenter.startChooseNetworkDialog();
                }
            }
        });
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        this.networkTypeView = new NetworkTypeView(parentActivity, null, 0, 6, null);
        ActionBarMenuItem setupActionBar$lambda$2$lambda$1 = c3484ActionBar.createMenu().addItemWithWidth(IdFabric$Menu.NETWORK_SWITCH, 0, -2);
        setupActionBar$lambda$2$lambda$1.disableRipple();
        Intrinsics.checkNotNullExpressionValue(setupActionBar$lambda$2$lambda$1, "setupActionBar$lambda$2$lambda$1");
        ViewExtKt.setPaddingHorizontal(setupActionBar$lambda$2$lambda$1, AndroidUtilities.m54dp(14));
        setupActionBar$lambda$2$lambda$1.addView(this.networkTypeView, LayoutHelper.createFrame(-2, -2, 8388629));
    }

    private final void setupColors() {
        ForkFragmentWalletConnectBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        LinearLayout linearLayout = binding.linearAddSession;
        int i = Theme.key_windowBackgroundWhite;
        linearLayout.setBackgroundColor(getThemedColor(i));
        binding.linearSessions.setBackgroundColor(getThemedColor(i));
        binding.textDescription.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        TextCell textCell = binding.buttonDisconnectAll;
        int i2 = Theme.key_text_RedRegular;
        textCell.setColors(i2, i2);
        AppCompatTextView setupColors$lambda$4$lambda$3 = binding.textSessionsTitle;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
        com.iMe.utils.extentions.common.ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$3);
        setupColors$lambda$4$lambda$3.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
    }

    private final void setupListeners() {
        ForkFragmentWalletConnectBinding binding = getBinding();
        BigActionButton buttonConnect = binding.buttonConnect;
        Intrinsics.checkNotNullExpressionValue(buttonConnect, "buttonConnect");
        com.iMe.utils.extentions.common.ViewExtKt.safeThrottledClick$default(buttonConnect, 0L, new WalletConnectFragment$setupListeners$1$1(this), 1, null);
        TextCell buttonDisconnectAll = binding.buttonDisconnectAll;
        Intrinsics.checkNotNullExpressionValue(buttonDisconnectAll, "buttonDisconnectAll");
        com.iMe.utils.extentions.common.ViewExtKt.safeThrottledClick$default(buttonDisconnectAll, 0L, new WalletConnectFragment$setupListeners$1$2(this), 1, null);
        RLottieImageView imageHeader = binding.imageHeader;
        Intrinsics.checkNotNullExpressionValue(imageHeader, "imageHeader");
        com.iMe.utils.extentions.common.ViewExtKt.safeThrottledClick$default(imageHeader, 0L, new WalletConnectFragment$setupListeners$1$3(this), 1, null);
        getSessionsAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletConnectFragment.setupListeners$lambda$6$lambda$5(WalletConnectFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$6$lambda$5(WalletConnectFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.onSessionItemClick(i);
    }

    private final void onSessionItemClick(int i) {
        WalletConnectSessionItem item = getSessionsAdapter().getItem(i);
        WalletConnectSessionItem walletConnectSessionItem = item instanceof WalletConnectSessionItem ? item : null;
        if (walletConnectSessionItem == null) {
            return;
        }
        showDialog(WalletConnectSessionDetailsBottomSheetDialog.Companion.newInstance(walletConnectSessionItem, this, new WalletConnectFragment$onSessionItemClick$1(this, walletConnectSessionItem)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onImageHeaderClick() {
        RLottieImageView rLottieImageView = getBinding().imageHeader;
        if (rLottieImageView.getAnimatedDrawable().isRunning()) {
            return;
        }
        rLottieImageView.getAnimatedDrawable().setCurrentFrame(0, false);
        rLottieImageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onConnectClick() {
        if (Build.VERSION.SDK_INT >= 23 && getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
            getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
        } else {
            openQRScan();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateAnimationColors() {
        int i = Theme.key_windowBackgroundWhiteBlackText;
        int i2 = Theme.key_windowBackgroundWhite;
        this.colors = new int[]{3355443, getThemedColor(i), 16777215, getThemedColor(i2), 16776701, getThemedColor(i2), 5285866, getThemedColor(Theme.key_featuredStickers_addButton), 2170912, getThemedColor(i)};
        getBinding().imageHeader.replaceColors(this.colors);
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleSessions;
        recyclerView.setAdapter(getSessionsAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupViews() {
        String repeat;
        ForkFragmentWalletConnectBinding binding = getBinding();
        BigActionButton bigActionButton = binding.buttonConnect;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        repeat = StringsKt__StringsJVMKt.repeat(" ", 2);
        spannableStringBuilder.append((CharSequence) repeat);
        Drawable drawable = ContextCompat.getDrawable(getParentActivity(), C3417R.C3419drawable.msg_mini_qr);
        Intrinsics.checkNotNull(drawable);
        spannableStringBuilder.setSpan(new ColoredImageSpan(drawable), 0, 1, 0);
        spannableStringBuilder.setSpan(new DialogCell.FixedWidthSpan(AndroidUtilities.m54dp(8)), 1, 2, 0);
        spannableStringBuilder.append((CharSequence) getResourceManager().getString(C3417R.string.wallet_connect_new_connection));
        bigActionButton.setText(spannableStringBuilder);
        bigActionButton.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m54dp(6), Theme.getColor(Theme.key_featuredStickers_addButton), Theme.getColor(Theme.key_featuredStickers_addButtonPressed)));
        RLottieImageView rLottieImageView = binding.imageHeader;
        updateAnimationColors();
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3417R.raw.fork_wallet_connect, 300, 170, this.colors);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        rLottieImageView.playAnimation();
        binding.textSessionsTitle.setText(getResourceManager().getString(C3417R.string.wallet_connect_active_sessions));
        binding.textDescription.setText(getResourceManager().getString(C3417R.string.wallet_connect_description));
        binding.buttonDisconnectAll.setTextAndIcon(getResourceManager().getString(C3417R.string.wallet_connect_terminate_all), C3417R.C3419drawable.msg_block2, false);
    }

    private final void openQRScan() {
        CameraScanActivity.showAsSheet((BaseFragment) this, true, 1, new CameraScanActivity.CameraScanActivityDelegate() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$openQRScan$1
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
                WalletConnectPresenter presenter;
                Intrinsics.checkNotNullParameter(text, "text");
                presenter = WalletConnectFragment.this.getPresenter();
                presenter.connect(text);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDisconnectAllConfirmationDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        DialogModel disconnectAllConfirmationDialogModel = getPresenter().getDisconnectAllConfirmationDialogModel();
        final WalletConnectPresenter presenter = getPresenter();
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, disconnectAllConfirmationDialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletConnectPresenter.this.disconnectAll();
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    /* compiled from: WalletConnectFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletConnectFragment newInstance() {
            return new WalletConnectFragment();
        }
    }
}
