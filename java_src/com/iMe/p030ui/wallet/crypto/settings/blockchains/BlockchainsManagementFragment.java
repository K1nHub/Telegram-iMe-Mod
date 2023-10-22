package com.iMe.p030ui.wallet.crypto.settings.blockchains;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.navigation.wallet.coordinator.PinCodeCoordinator;
import com.iMe.p030ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p030ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroFragment;
import com.iMe.p030ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter;
import com.iMe.p030ui.wallet.crypto.settings.blockchains.adapter.diff.BlockchainWalletsDiffCallback;
import com.iMe.p030ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.databinding.ForkFragmentBlockchainsManagementBinding;
import org.telegram.p042ui.ActionBar.AlertDialog;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.INavigationLayout;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.Components.RLottieImageView;
/* compiled from: BlockchainsManagementFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment */
/* loaded from: classes3.dex */
public final class BlockchainsManagementFragment extends WalletAuthBaseFragment implements BlockchainsManagementView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BlockchainsManagementFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(BlockchainsManagementFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentBlockchainsManagementBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy walletsAdapter$delegate;

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public BlockchainsManagementFragment() {
        Lazy lazy;
        Function0<BlockchainsManagementPresenter> function0 = new Function0<BlockchainsManagementPresenter>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final BlockchainsManagementPresenter invoke() {
                Lazy lazy2;
                final BlockchainsManagementFragment blockchainsManagementFragment = BlockchainsManagementFragment.this;
                lazy2 = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<BlockchainsManagementPresenter>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementPresenter, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    public final BlockchainsManagementPresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function02 = r3;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(BlockchainsManagementPresenter.class), qualifier, function02);
                    }
                });
                return (BlockchainsManagementPresenter) lazy2.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, BlockchainsManagementPresenter.class.getName() + ".presenter", function0);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<BlockchainsWalletsRecycleAdapter>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.crypto.settings.blockchains.adapter.BlockchainsWalletsRecycleAdapter] */
            @Override // kotlin.jvm.functions.Function0
            public final BlockchainsWalletsRecycleAdapter invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function02 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BlockchainsWalletsRecycleAdapter.class), qualifier, function02);
            }
        });
        this.walletsAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ForkFragmentBlockchainsManagementBinding>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$binding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final ForkFragmentBlockchainsManagementBinding invoke() {
                return ForkFragmentBlockchainsManagementBinding.inflate(BaseFragmentExtKt.getLayoutInflater(BlockchainsManagementFragment.this));
            }
        }, 1, (Object) null);
    }

    private final BlockchainsManagementPresenter getPresenter() {
        return (BlockchainsManagementPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BlockchainsWalletsRecycleAdapter getWalletsAdapter() {
        return (BlockchainsWalletsRecycleAdapter) this.walletsAdapter$delegate.getValue();
    }

    private final ForkFragmentBlockchainsManagementBinding getBinding() {
        return (ForkFragmentBlockchainsManagementBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
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

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void setupWalletsItems(List<BaseNode> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        BaseQuickAdapter.setDiffNewData$default(getWalletsAdapter(), items, null, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showResetAllWalletsConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        final BlockchainsManagementPresenter presenter = getPresenter();
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                BlockchainsManagementPresenter.this.resetAllWallets();
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showWalletInfoDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialog$default(context, dialogModel, null, null, 12, null));
    }

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showWalletDetailsDialog(BlockchainManagementItem.Wallet walletItem, DialogModel infoDialogModel) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        Intrinsics.checkNotNullParameter(infoDialogModel, "infoDialogModel");
        showDialog(BlockchainWalletDetailsBottomSheetDialog.Companion.newInstance(walletItem, this, new BlockchainsManagementFragment$showWalletDetailsDialog$1(getPresenter()), new BlockchainsManagementFragment$showWalletDetailsDialog$2(getPresenter()), infoDialogModel));
    }

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void openBackupScreen(Wallet wallet2) {
        Intrinsics.checkNotNullParameter(wallet2, "wallet");
        PinCodeCoordinator pinCodeCoordinator = getPinCodeCoordinator();
        INavigationLayout parentLayout = this.parentLayout;
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        PinCodeCoordinator.start$default(pinCodeCoordinator, parentLayout, CreateWalletFragment.Companion.newInstance(new CreateWalletScreenType.SecretWords(wallet2, null, null, 6, null)), null, false, 12, null);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialog$default(context, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletIntroScreen(String linkedWalletAddress, WalletCreationType.Initial walletCreationType) {
        Intrinsics.checkNotNullParameter(linkedWalletAddress, "linkedWalletAddress");
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        presentFragment(CreateWalletIntroFragment.Companion.newInstance(walletCreationType, linkedWalletAddress));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String title, String[] items, DialogInterface.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(listener, "listener");
        showDialog(DialogsFactoryKt.createOptionsBottomSheetDialog(this, title, items, listener));
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        NestedScrollView root = getBinding().getRoot();
        int i = ThemeDescription.FLAG_BACKGROUND;
        final BlockchainsWalletsRecycleAdapter walletsAdapter = getWalletsAdapter();
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getBinding().linearAddSession, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getBinding().textDescription, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getBinding().textWalletsTitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(root, i, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda3
            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                BlockchainsWalletsRecycleAdapter.this.notifyDataSetChanged();
            }

            @Override // org.telegram.p042ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3702ActionBar c3702ActionBar = this.actionBar;
        c3702ActionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        c3702ActionBar.setTitle(getResourceManager().getString(C3630R.string.wallet_crypto_blockchains_title));
        c3702ActionBar.setAllowOverlayTitle(true);
        c3702ActionBar.createMenu();
        c3702ActionBar.setActionBarMenuOnItemClick(new C3702ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$setupActionBar$1$1
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    BlockchainsManagementFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        ForkFragmentBlockchainsManagementBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        LinearLayout linearLayout = binding.linearAddSession;
        int i = Theme.key_windowBackgroundWhite;
        linearLayout.setBackgroundColor(getThemedColor(i));
        binding.textDescription.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        AppCompatTextView setupColors$lambda$3$lambda$2 = binding.textWalletsTitle;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$3$lambda$2, "setupColors$lambda$3$lambda$2");
        ViewExtKt.withMediumTypeface(setupColors$lambda$3$lambda$2);
        setupColors$lambda$3$lambda$2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
        setupColors$lambda$3$lambda$2.setBackgroundColor(getThemedColor(i));
    }

    private final void setupListeners() {
        RLottieImageView rLottieImageView = getBinding().imageHeader;
        Intrinsics.checkNotNullExpressionValue(rLottieImageView, "binding.imageHeader");
        ViewExtKt.safeThrottledClick$default(rLottieImageView, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$setupListeners$1
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
                BlockchainsManagementFragment.this.onImageHeaderClick();
            }
        }, 1, null);
        final BlockchainsWalletsRecycleAdapter walletsAdapter = getWalletsAdapter();
        walletsAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                BlockchainsManagementFragment.setupListeners$lambda$6$lambda$4(BlockchainsWalletsRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
        walletsAdapter.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemChildClickListener
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                BlockchainsManagementFragment.setupListeners$lambda$6$lambda$5(BlockchainsWalletsRecycleAdapter.this, this, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$6$lambda$4(BlockchainsWalletsRecycleAdapter this_with, BlockchainsManagementFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        BaseNode baseNode = (BaseNode) this_with.getItem(i);
        if (baseNode instanceof BlockchainManagementItem.Wallet) {
            this$0.getPresenter().onWalletItemClick((BlockchainManagementItem.Wallet) baseNode);
        } else if (baseNode instanceof BlockchainManagementItem.ActionButton) {
            this$0.getPresenter().onActionButtonItemClick((BlockchainManagementItem.ActionButton) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$6$lambda$5(BlockchainsWalletsRecycleAdapter this_with, BlockchainsManagementFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getId() == C3630R.C3633id.image_info) {
            BaseNode baseNode = (BaseNode) this_with.getItem(i);
            if (baseNode instanceof BlockchainManagementItem.Wallet) {
                this$0.getPresenter().showInfoDialog((BlockchainManagementItem.Wallet) baseNode);
            }
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
        BlockchainsWalletsRecycleAdapter walletsAdapter = getWalletsAdapter();
        walletsAdapter.setDiffCallback(new BlockchainWalletsDiffCallback());
        recyclerView.setAdapter(walletsAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupViews() {
        ForkFragmentBlockchainsManagementBinding binding = getBinding();
        RLottieImageView rLottieImageView = binding.imageHeader;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3630R.raw.fork_multi_networking, 300, 170);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        rLottieImageView.playAnimation();
        binding.textWalletsTitle.setText(getResourceManager().getString(C3630R.string.wallet_crypto_blockchains_active_wallets));
        binding.textDescription.setText(getResourceManager().getString(C3630R.string.wallet_crypto_blockchains_description));
    }

    /* compiled from: BlockchainsManagementFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$Companion */
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
