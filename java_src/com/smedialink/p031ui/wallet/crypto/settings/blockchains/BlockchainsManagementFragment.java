package com.smedialink.p031ui.wallet.crypto.settings.blockchains;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.settings.BlockchainWalletItem;
import com.smedialink.navigation.wallet.coordinator.PinCodeCoordinator;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.smedialink.p031ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter;
import com.smedialink.p031ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog;
import com.smedialink.utils.dialogs.DialogExtKt;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
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
import org.telegram.messenger.databinding.ForkFragmentBlockchainsManagementBinding;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Components.RLottieImageView;
/* compiled from: BlockchainsManagementFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment */
/* loaded from: classes3.dex */
public final class BlockchainsManagementFragment extends WalletAuthFragment implements BlockchainsManagementView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BlockchainsManagementFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(BlockchainsManagementFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy walletsAdapter$delegate;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public BlockchainsManagementFragment() {
        Lazy lazy;
        BlockchainsManagementFragment$presenter$2 blockchainsManagementFragment$presenter$2 = new BlockchainsManagementFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, BlockchainsManagementPresenter.class.getName() + ".presenter", blockchainsManagementFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new BlockchainsManagementFragment$special$$inlined$inject$default$1(this, null, null));
        this.walletsAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new BlockchainsManagementFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BlockchainsManagementPresenter getPresenter() {
        return (BlockchainsManagementPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BlockchainsWalletsRecycleAdapter getWalletsAdapter() {
        return (BlockchainsWalletsRecycleAdapter) this.walletsAdapter$delegate.getValue();
    }

    private final ForkFragmentBlockchainsManagementBinding getBinding() {
        return (ForkFragmentBlockchainsManagementBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    @Override // com.smedialink.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void setupWalletsItems(List<BlockchainWalletItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        LinearLayout linearLayout = getBinding().linearWallets;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.linearWallets");
        linearLayout.setVisibility(items.isEmpty() ^ true ? 0 : 8);
        getWalletsAdapter().setNewInstance(items);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showResetAllWalletsConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        final BlockchainsManagementPresenter presenter = getPresenter();
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda2
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                BlockchainsManagementPresenter.this.resetAllWallets();
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showWalletInfoDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialog$default(context, dialogModel, null, null, 12, null));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showWalletDetailsDialog(BlockchainWalletItem walletItem, DialogModel infoDialogModel) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        Intrinsics.checkNotNullParameter(infoDialogModel, "infoDialogModel");
        showDialog(BlockchainWalletDetailsBottomSheetDialog.Companion.newInstance(walletItem, this, new BlockchainsManagementFragment$showWalletDetailsDialog$1(getPresenter()), new BlockchainsManagementFragment$showWalletDetailsDialog$2(getPresenter()), infoDialogModel));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void openBackupScreen(List<String> secretWords, String address) {
        Intrinsics.checkNotNullParameter(secretWords, "secretWords");
        Intrinsics.checkNotNullParameter(address, "address");
        PinCodeCoordinator pinCodeCoordinator = getPinCodeCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        PinCodeCoordinator.start$default(pinCodeCoordinator, parentLayout, CreateWalletFragment.Companion.newInstance(new CreateWalletFragment.ScreenType.SecretWords(secretWords, address, null, null, false, 28, null)), null, false, 12, null);
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        NestedScrollView root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final BlockchainsWalletsRecycleAdapter walletsAdapter = getWalletsAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().linearWallets, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getBinding().linearAddSession, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getBinding().textDescription, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getBinding().textWalletsTitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlueHeader"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                BlockchainsWalletsRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3222ActionBar c3222ActionBar = this.actionBar;
        c3222ActionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        c3222ActionBar.setTitle(getResourceManager().getString(C3158R.string.wallet_crypto_blockchains_title));
        c3222ActionBar.setAllowOverlayTitle(true);
        c3222ActionBar.createMenu();
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    BlockchainsManagementFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        ForkFragmentBlockchainsManagementBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor("windowBackgroundGray"));
        binding.linearAddSession.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        binding.linearWallets.setBackgroundColor(getThemedColor("windowBackgroundWhite"));
        binding.textDescription.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        TextCell textCell = binding.buttonResetAll;
        textCell.setColors("windowBackgroundWhiteRedText2", "windowBackgroundWhiteRedText2");
        Intrinsics.checkNotNullExpressionValue(textCell, "");
        ViewExtKt.setRippleBackground$default(textCell, false, 1, null);
        AppCompatTextView appCompatTextView = binding.textWalletsTitle;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.withMediumTypeface(appCompatTextView);
        appCompatTextView.setTextColor(getThemedColor("windowBackgroundWhiteBlueHeader"));
    }

    private final void setupListeners() {
        ForkFragmentBlockchainsManagementBinding binding = getBinding();
        TextCell buttonResetAll = binding.buttonResetAll;
        Intrinsics.checkNotNullExpressionValue(buttonResetAll, "buttonResetAll");
        ViewExtKt.safeThrottledClick$default(buttonResetAll, 0L, new BlockchainsManagementFragment$setupListeners$1$1(this), 1, null);
        RLottieImageView imageHeader = binding.imageHeader;
        Intrinsics.checkNotNullExpressionValue(imageHeader, "imageHeader");
        ViewExtKt.safeThrottledClick$default(imageHeader, 0L, new BlockchainsManagementFragment$setupListeners$1$2(this), 1, null);
        final BlockchainsWalletsRecycleAdapter walletsAdapter = getWalletsAdapter();
        walletsAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                BlockchainsManagementFragment.m1603setupListeners$lambda8$lambda7$lambda5(BlockchainsManagementFragment.this, walletsAdapter, baseQuickAdapter, view, i);
            }
        });
        walletsAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                BlockchainsManagementFragment.m1604setupListeners$lambda8$lambda7$lambda6(BlockchainsManagementFragment.this, walletsAdapter, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListeners$lambda-8$lambda-7$lambda-5  reason: not valid java name */
    public static final void m1603setupListeners$lambda8$lambda7$lambda5(BlockchainsManagementFragment this$0, BlockchainsWalletsRecycleAdapter this_with, BaseQuickAdapter noName_0, View noName_1, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
        Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
        this$0.getPresenter().onWalletItemClick(this_with.getItem(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupListeners$lambda-8$lambda-7$lambda-6  reason: not valid java name */
    public static final void m1604setupListeners$lambda8$lambda7$lambda6(BlockchainsManagementFragment this$0, BlockchainsWalletsRecycleAdapter this_with, BaseQuickAdapter noName_0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getId() == C3158R.C3161id.image_info) {
            this$0.getPresenter().showInfoDialog(this_with.getItem(i));
        }
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

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleWallets;
        recyclerView.setAdapter(getWalletsAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupViews() {
        ForkFragmentBlockchainsManagementBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageHeader;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3158R.C3164raw.fork_multi_networking, 300, 170);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        rLottieImageView.playAnimation();
        binding.textWalletsTitle.setText(getResourceManager().getString(C3158R.string.wallet_crypto_blockchains_active_wallets));
        binding.textDescription.setText(getResourceManager().getString(C3158R.string.wallet_crypto_blockchains_description));
        binding.buttonResetAll.setTextAndIcon(getResourceManager().getString(C3158R.string.wallet_reset_all_title), C3158R.C3160drawable.msg_block2, false);
    }

    /* compiled from: BlockchainsManagementFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BlockchainsManagementFragment newInstance() {
            return new BlockchainsManagementFragment();
        }
    }
}
