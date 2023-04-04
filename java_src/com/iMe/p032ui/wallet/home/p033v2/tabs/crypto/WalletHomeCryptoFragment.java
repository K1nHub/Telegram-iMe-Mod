package com.iMe.p032ui.wallet.home.p033v2.tabs.crypto;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.manager.common.MediaEditManager;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.tutorial.TutorialType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.AccountItem;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.model.wallet.home.CryptoSelectTokensItem;
import com.iMe.model.wallet.home.nft.NftCollectionItem;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p032ui.custom.SlopSwipeRefreshLayout;
import com.iMe.p032ui.wallet.crypto.address_mismatch.AddressMismatchFragment;
import com.iMe.p032ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.p032ui.wallet.crypto.tutorial.CreateWalletTutorialFragment;
import com.iMe.p032ui.wallet.home.p033v2.adapter.BalancesRecycleAdapter;
import com.iMe.p032ui.wallet.home.p033v2.adapter.diff.BalanceDiffCallback;
import com.iMe.p032ui.wallet.home.p033v2.details.WalletTokenDetailsFragment;
import com.iMe.p032ui.wallet.home.p033v2.tabs.WalletHomeTabFragment;
import com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.p032ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.storage.common.AppConfiguration$Crypto;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.helper.wallet.CryptoHelper;
import com.iMe.utils.hints.HintUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkFragmentWalletHomeCryptoBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.ActionIntroActivity;
import org.telegram.p048ui.Components.QRCodeBottomSheet;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.ContentPreviewViewer;
import org.telegram.p048ui.ManageLinksActivity;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputStickerSet;
/* compiled from: WalletHomeCryptoFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment */
/* loaded from: classes3.dex */
public final class WalletHomeCryptoFragment extends WalletHomeTabFragment implements WalletHomeCryptoView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeCryptoBinding;", 0)), Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoFragment.class, "mediaEditManager", "getMediaEditManager()Lcom/iMe/manager/common/MediaEditManager;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy balancesRecycleAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final ResettableLazy mediaEditManager$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public /* synthetic */ void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        WalletCreateManagerView.CC.$default$showSelectOptionsDialog(this, str, strArr, onClickListener);
    }

    public WalletHomeCryptoFragment() {
        Lazy lazy;
        WalletHomeCryptoFragment$presenter$2 walletHomeCryptoFragment$presenter$2 = new WalletHomeCryptoFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeCryptoPresenter.class.getName() + ".presenter", walletHomeCryptoFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletHomeCryptoFragment$special$$inlined$inject$default$1(this, null, null));
        this.balancesRecycleAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletHomeCryptoFragment$binding$2(this), 1, (Object) null);
        this.mediaEditManager$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new WalletHomeCryptoFragment$mediaEditManager$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletHomeCryptoPresenter getPresenter() {
        return (WalletHomeCryptoPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BalancesRecycleAdapter getBalancesRecycleAdapter() {
        return (BalancesRecycleAdapter) this.balancesRecycleAdapter$delegate.getValue();
    }

    private final ForkFragmentWalletHomeCryptoBinding getBinding() {
        return (ForkFragmentWalletHomeCryptoBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final MediaEditManager getMediaEditManager() {
        return (MediaEditManager) this.mediaEditManager$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupColors();
        setupListeners();
        setupWalletRecycleView();
        setupSwipeRefresh();
        SlopSwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda12
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletHomeCryptoFragment.getThemeDescriptions$lambda$0(WalletHomeCryptoFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$0(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBalancesRecycleAdapter().notifyDataSetChanged();
        SlopSwipeRefreshLayout root = this$0.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        ViewGroup.LayoutParams layoutParams = root.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        }
        this$0.getBinding().getRoot().setColorSchemeColors(Theme.getColor("chats_actionBackground"));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void renderNodes(List<? extends BaseNode> nodes) {
        List mutableList;
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        BalancesRecycleAdapter balancesRecycleAdapter = getBalancesRecycleAdapter();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) nodes);
        BaseQuickAdapter.setDiffNewData$default(balancesRecycleAdapter, mutableList, null, 2, null);
    }

    @Override // com.iMe.p032ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        getBinding().getRoot().setRefreshing(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAnimatedDialog$lambda$1(Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showAnimatedDialog(AnimatedSpannableDialogModel model, final Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(action, "action");
        showDialog(DialogsFactoryKt.createDialogWithAnimation(this, model, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda8
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoFragment.showAnimatedDialog$lambda$1(Callbacks$Callback.this);
            }
        }));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showAlreadyCreatedWalletWarningDialog(DialogModel dialogModel, String walletAddress, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, dialogModel, action, null, 8, null);
        DialogExtKt.makeClickableDescription$default(createDialog$default, null, walletAddress, new C2263xea8f105d(walletAddress), 1, null);
        showDialog(createDialog$default);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openImportWalletScreen(String password, String str) {
        Intrinsics.checkNotNullParameter(password, "password");
        CreateWalletFragment.Companion companion = CreateWalletFragment.Companion;
        if (str == null) {
            str = "";
        }
        presentFragment(companion.newInstance(new CreateWalletScreenType.Import(str, password)));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletScreen(List<String> words, String password) {
        CreateWalletTutorialFragment newInstance$default;
        Intrinsics.checkNotNullParameter(words, "words");
        Intrinsics.checkNotNullParameter(password, "password");
        if ((password.length() > 0) && (!words.isEmpty())) {
            newInstance$default = CreateWalletTutorialFragment.Companion.newInstance(new TutorialType.Backup(new WalletHomeCryptoFragment$openCreateWalletScreen$1(words, password)));
        } else {
            newInstance$default = CreateWalletTutorialFragment.Companion.newInstance$default(CreateWalletTutorialFragment.Companion, null, 1, null);
        }
        presentFragment(newInstance$default);
    }

    @Override // com.iMe.p032ui.base.mvp.AdapterNotifyView
    public void notifyDataSetChanged() {
        getBalancesRecycleAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showAddressMismatchScreen() {
        postViewActionDelayed(250L, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda10
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoFragment.showAddressMismatchScreen$lambda$3(WalletHomeCryptoFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAddressMismatchScreen$lambda$3(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.presentFragment(AddressMismatchFragment.Companion.newInstance());
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.WalletHomeTabFragment
    public void loadTabInfo() {
        getPresenter().loadScreenInfo(true, 400L);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.WalletHomeTabFragment
    public void loadBalances() {
        WalletHomeCryptoPresenter.loadScreenInfo$default(getPresenter(), true, 0L, 2, null);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.WalletHomeTabFragment
    public void handleBottomPadding(int i) {
        RecyclerView recyclerView = getBinding().recycleWalletHomeCryptoDashboard;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showChooseNetworkDialog(NetworkType networkType, final Function1<? super NetworkType, Unit> action) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogsFactoryKt.createSelectNetworkTypeDialog$default(parentActivity, null, networkType, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda7
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                WalletHomeCryptoFragment.showChooseNetworkDialog$lambda$5(Function1.this, (NetworkType) obj);
            }
        }, 2, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseNetworkDialog$lambda$5(Function1 action, NetworkType selectedNetworkType) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullExpressionValue(selectedNetworkType, "selectedNetworkType");
        action.invoke(selectedNetworkType);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showWalletAddressScan(String address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Browser.openUrl(getParentActivity(), AppConfiguration$Crypto.INSTANCE.formatScanAddressUrl(getPresenter().getCurrentNetworkType(), address));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showQrReceiveDialog(final String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        final Activity parentActivity = getParentActivity();
        final String formatAddressQR = CryptoHelper.formatAddressQR(address, blockchainType);
        QRCodeBottomSheet qRCodeBottomSheet = new QRCodeBottomSheet(address, parentActivity, formatAddressQR) { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$showQrReceiveDialog$1
            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getType() {
                return 1;
            }

            @Override // org.telegram.p048ui.Components.QRCodeBottomSheet
            public int getCustomQrCenterImageRes() {
                WalletHomeCryptoPresenter presenter;
                presenter = this.getPresenter();
                return presenter.getCurrentNetworkType().getLogo();
            }
        };
        qRCodeBottomSheet.setupWalletTypeReceive(getResourceManager().getString(C3316R.string.wallet_receive_dialog_title), getResourceManager().getString(C3316R.string.wallet_receive_dialog_btn_text), address, TokenCode.UNKNOWN, blockchainType);
        showDialog(qRCodeBottomSheet);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void openSendScreen() {
        presentFragment(ManageLinksActivity.newInstanceForWalletTransfer(new TransferScreenArgs(null, null, null, null, getPresenter().getCurrentNetworkType(), 15, null)));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void openHistoryScreen() {
        presentFragment(WalletTransactionsFragment.Companion.newInstance$default(WalletTransactionsFragment.Companion, WalletTransactionsFragment.ScreenType.Fullscreen.INSTANCE, null, 2, null));
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showChangeNetworkHint() {
        getBalancesRecycleAdapter().resetOnNetworkViewLayoutAction();
        final HintUtils hintUtils = getHintUtils();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        hintUtils.showChangeNetworkHint(parentLayout);
        getBinding().recycleWalletHomeCryptoDashboard.setOnTouchListener(new View.OnTouchListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean showChangeNetworkHint$lambda$8$lambda$7;
                showChangeNetworkHint$lambda$8$lambda$7 = WalletHomeCryptoFragment.showChangeNetworkHint$lambda$8$lambda$7(HintUtils.this, view, motionEvent);
                return showChangeNetworkHint$lambda$8$lambda$7;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean showChangeNetworkHint$lambda$8$lambda$7(HintUtils this_with, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.hideHint();
        return false;
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getBalancesRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().resumeAnimation();
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        getBalancesRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().pauseAnimation();
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getMediaEditManager().finishLoading();
        super.onFragmentDestroy();
    }

    private final void setupColors() {
        SlopSwipeRefreshLayout root = getBinding().getRoot();
        root.setColorSchemeColors(Theme.getColor("chats_actionBackground"));
        root.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
    }

    private final void setupListeners() {
        BalancesRecycleAdapter balancesRecycleAdapter = getBalancesRecycleAdapter();
        balancesRecycleAdapter.getCryptoAccountProvider().setActionBarMenuItemDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda11
            @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletHomeCryptoFragment.setupListeners$lambda$15$lambda$10(WalletHomeCryptoFragment.this, i);
            }
        });
        balancesRecycleAdapter.getBannerProvider().setBannerOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda4
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeCryptoFragment.setupListeners$lambda$15$lambda$11(WalletHomeCryptoFragment.this, baseQuickAdapter, view, i);
            }
        });
        balancesRecycleAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda5
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeCryptoFragment.setupListeners$lambda$15$lambda$12(WalletHomeCryptoFragment.this, baseQuickAdapter, view, i);
            }
        });
        balancesRecycleAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda3
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletHomeCryptoFragment.setupListeners$lambda$15$lambda$14(WalletHomeCryptoFragment.this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15$lambda$10(WalletHomeCryptoFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15$lambda$11(WalletHomeCryptoFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        this$0.presentFragment(new ActionIntroActivity(108, null, null, null, this$0.getBalancesRecycleAdapter().getBannerProvider().getBannersRecycleAdapter().getItem(i).getSlide(), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15$lambda$12(WalletHomeCryptoFragment this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        BaseNode baseNode = (BaseNode) this$0.getBalancesRecycleAdapter().getItem(i);
        if (baseNode instanceof AccountItem.Token) {
            this$0.presentFragment(WalletTokenDetailsFragment.Companion.newInstance(new TokenDetailsArgs.Crypto((AccountItem.Token) baseNode)));
        } else if (baseNode instanceof CryptoSelectTokensItem) {
            this$0.presentFragment(WalletHomeCryptoTokensSettingsFragment.Companion.newInstance(new WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto(this$0.getPresenter().getCurrentNetworkType())));
        } else if (baseNode instanceof NftCollectionItem) {
            if (adapter instanceof BaseNodeAdapter) {
                BaseNodeAdapter.expandOrCollapse$default((BaseNodeAdapter) adapter, i, true, true, null, 8, null);
            }
        } else if (baseNode instanceof NftTokenItem) {
            this$0.openNftDetails(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15$lambda$14(final WalletHomeCryptoFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        int id = view.getId();
        if (id == C3316R.C3319id.image_wallet_crypto_eye) {
            this$0.getPresenter().switchHiddenBalance();
        } else if (id == C3316R.C3319id.image_wallet_crypto_tokens_settings) {
            this$0.presentFragment(WalletHomeCryptoTokensSettingsFragment.Companion.newInstance(new WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto(this$0.getPresenter().getCurrentNetworkType())));
        } else if (id == C3316R.C3319id.image_wallet_order_tokens) {
            this$0.showDialog(DialogsFactoryKt.createSelectTokensOrderTypeDialog(this$0, this$0.getResourceManager(), this$0.getPresenter().getSelectedTokensOrderType(), new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda6
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    WalletHomeCryptoFragment.setupListeners$lambda$15$lambda$14$lambda$13(WalletHomeCryptoFragment.this, (TokenOrderType) obj);
                }
            }));
        } else if (id == C3316R.C3319id.frame_network_type) {
            this$0.getPresenter().startChooseNetworkDialog();
        } else if (id == C3316R.C3319id.image_copy) {
            BaseNode baseNode = (BaseNode) this$0.getBalancesRecycleAdapter().getItem(i);
            if (baseNode instanceof CryptoAccountItem) {
                ContextExtKt.copyToClipboard$default(((CryptoAccountItem) baseNode).getAddress(), null, 2, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$15$lambda$14$lambda$13(WalletHomeCryptoFragment this$0, TokenOrderType it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeCryptoPresenter presenter = this$0.getPresenter();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        presenter.setTokensOrderType(it);
    }

    private final void openNftDetails(View view) {
        ContentPreviewViewer.getInstanceForNft(getMediaEditManager()).showInstantly(view, 0, new ContentPreviewViewer.ContentPreviewViewerDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$openNftDetails$1
            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean can() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$can(this);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public boolean canSchedule() {
                return false;
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ Boolean canSetAsStatus(TLRPC$Document tLRPC$Document) {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$canSetAsStatus(this, tLRPC$Document);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void copyEmoji(TLRPC$Document tLRPC$Document) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$copyEmoji(this, tLRPC$Document);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void editAnimatedSticker(TLRPC$Document tLRPC$Document, RLottieDrawable rLottieDrawable, boolean z) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$editAnimatedSticker(this, tLRPC$Document, rLottieDrawable, z);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void editMedia(TLRPC$Document tLRPC$Document, boolean z) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$editMedia(this, tLRPC$Document, z);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public long getDialogId() {
                return -1L;
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ String getQuery(boolean z) {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$getQuery(this, z);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void gifAddedOrDeleted() {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$gifAddedOrDeleted(this);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public boolean isInScheduleMode() {
                return false;
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needCopy() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needCopy(this);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needMenu() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needMenu(this);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needOpen() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needOpen(this);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needRemove() {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needRemove(this);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ boolean needRemoveFromRecent(TLRPC$Document tLRPC$Document) {
                return ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$needRemoveFromRecent(this, tLRPC$Document);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public boolean needSend(int i) {
                return false;
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void openKiklikoReport(String str) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$openKiklikoReport(this, str);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public void openSet(TLRPC$InputStickerSet tLRPC$InputStickerSet, boolean z) {
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void remove(SendMessagesHelper.ImportingSticker importingSticker) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$remove(this, importingSticker);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void removeFromRecent(TLRPC$Document tLRPC$Document) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$removeFromRecent(this, tLRPC$Document);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void resetTouch() {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$resetTouch(this);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void sendEmoji(TLRPC$Document tLRPC$Document) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendEmoji(this, tLRPC$Document);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void sendGif(Object obj, Object obj2, boolean z, int i) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendGif(this, obj, obj2, z, i);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void sendKiklikoVideo(String str, String str2, boolean z, boolean z2, int i) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$sendKiklikoVideo(this, str, str2, z, z2, i);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public void sendSticker(TLRPC$Document tLRPC$Document, String str, Object obj, boolean z, int i) {
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void setAsEmojiStatus(TLRPC$Document tLRPC$Document, Integer num) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$setAsEmojiStatus(this, tLRPC$Document, num);
            }

            @Override // org.telegram.p048ui.ContentPreviewViewer.ContentPreviewViewerDelegate
            public /* synthetic */ void setKiklikoAvatar(String str) {
                ContentPreviewViewer.ContentPreviewViewerDelegate.CC.$default$setKiklikoAvatar(this, str);
            }
        }, null);
    }

    private final void onSubItemClick(int i) {
        if (i == IdFabric$Menu.SCAN_ADDRESS) {
            getPresenter().showWalletAddressScan();
        }
    }

    private final void setupWalletRecycleView() {
        RecyclerView setupWalletRecycleView$lambda$19 = getBinding().recycleWalletHomeCryptoDashboard;
        setupWalletRecycleView$lambda$19.setLayoutManager(new GridLayoutManager(getParentActivity(), 4));
        BalancesRecycleAdapter balancesRecycleAdapter = getBalancesRecycleAdapter();
        balancesRecycleAdapter.getNftTokenProvider().setSpanCount(4);
        balancesRecycleAdapter.setDiffCallback(new BalanceDiffCallback());
        balancesRecycleAdapter.setGridSpanSizeLookup(WalletHomeCryptoFragment$$ExternalSyntheticLambda2.INSTANCE);
        balancesRecycleAdapter.setOnNetworkViewLayoutAction(new Callbacks$Callback() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda9
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHomeCryptoFragment.setupWalletRecycleView$lambda$19$lambda$18$lambda$17(WalletHomeCryptoFragment.this);
            }
        });
        setupWalletRecycleView$lambda$19.setAdapter(balancesRecycleAdapter);
        Intrinsics.checkNotNullExpressionValue(setupWalletRecycleView$lambda$19, "setupWalletRecycleView$lambda$19");
        RecycleViewExtKt.disableDefaultAnimation(setupWalletRecycleView$lambda$19);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupWalletRecycleView$lambda$19$lambda$18$lambda$17(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().showChangeNetworkHintIfNeeded();
    }

    private final void setupSwipeRefresh() {
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$$ExternalSyntheticLambda1
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                WalletHomeCryptoFragment.setupSwipeRefresh$lambda$20(WalletHomeCryptoFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupSwipeRefresh$lambda$20(WalletHomeCryptoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletHomeCryptoPresenter.loadScreenInfo$default(this$0.getPresenter(), true, 0L, 2, null);
    }

    /* compiled from: WalletHomeCryptoFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletHomeCryptoFragment newInstance() {
            return new WalletHomeCryptoFragment();
        }
    }
}
