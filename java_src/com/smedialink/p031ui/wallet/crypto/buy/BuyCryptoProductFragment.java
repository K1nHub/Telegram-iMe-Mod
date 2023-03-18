package com.smedialink.p031ui.wallet.crypto.buy;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.p010os.BundleKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.buy.CryptoBuyFooterItem;
import com.smedialink.model.wallet.crypto.buy.CryptoBuyItem;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.wallet.crypto.buy.adapter.BuyCryptoProductRecycleAdapter;
import com.smedialink.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog;
import com.smedialink.p031ui.wallet.crypto.buy.processing.SimplexWebViewProcessingFragment;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
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
import org.telegram.messenger.databinding.ForkFragmentWalletCryptoBuyBinding;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
/* compiled from: BuyCryptoProductFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment */
/* loaded from: classes3.dex */
public final class BuyCryptoProductFragment extends WalletAuthFragment implements BuyCryptoProductView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BuyCryptoProductFragment.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(BuyCryptoProductFragment.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletCryptoBuyBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Lazy buyCryptoProductAdapter$delegate;
    private final MoxyKtxDelegate presenter$delegate;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        return true;
    }

    public BuyCryptoProductFragment() {
        Lazy lazy;
        BuyCryptoProductFragment$presenter$2 buyCryptoProductFragment$presenter$2 = new BuyCryptoProductFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, BuyCryptoProductPresenter.class.getName() + ".presenter", buyCryptoProductFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new BuyCryptoProductFragment$special$$inlined$inject$default$1(this, null, null));
        this.buyCryptoProductAdapter$delegate = lazy;
        this.binding$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new BuyCryptoProductFragment$binding$2(this), 1, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BuyCryptoProductPresenter getPresenter() {
        return (BuyCryptoProductPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final BuyCryptoProductRecycleAdapter getBuyCryptoProductAdapter() {
        return (BuyCryptoProductRecycleAdapter) this.buyCryptoProductAdapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ForkFragmentWalletCryptoBuyBinding getBinding() {
        return (ForkFragmentWalletCryptoBuyBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        setupColors();
        setupListeners();
        setupRecycleView();
        SwipeRefreshLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showUiItems(List<BaseNode> availablePurchases) {
        Intrinsics.checkNotNullParameter(availablePurchases, "availablePurchases");
        getBuyCryptoProductAdapter().setNewInstance(availablePurchases);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showProcessingUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        presentFragment(SimplexWebViewProcessingFragment.Companion.newInstance(url, new BuyCryptoProductFragment$showProcessingUrl$1(this)));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showRefreshLoading(boolean z) {
        postViewAction(new BuyCryptoProductFragment$showRefreshLoading$1(this, z));
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showSuccessPurchase() {
        DialogsFactoryKt.showSuccessAlert$default(this, getResourceManager().getString(C3286R.string.wallet_crypto_buy_success_dialog_title), getResourceManager().getString(C3286R.string.wallet_crypto_buy_success_dialog_description), null, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment$$ExternalSyntheticLambda2
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                BuyCryptoProductFragment.showSuccessPurchase$lambda$0(BuyCryptoProductFragment.this);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSuccessPurchase$lambda$0(BuyCryptoProductFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finishFragment();
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showErrorPurchase(String orderId) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        DialogsFactoryKt.showErrorAlert$default(this, getResourceManager().getString(C3286R.string.common_unexpected_error_title), getResourceManager().getString(C3286R.string.wallet_crypto_buy_error_dialog_description, orderId), null, new BuyCryptoProductFragment$showErrorPurchase$1(orderId), null, 20, null);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void showConfirmDialog(final CryptoBuyItem item, DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment$$ExternalSyntheticLambda3
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                BuyCryptoProductFragment.showConfirmDialog$lambda$1(BuyCryptoProductFragment.this, item);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmDialog$lambda$1(BuyCryptoProductFragment this$0, CryptoBuyItem item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.getPresenter().purchase(item);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.buy.BuyCryptoProductView
    public void openCustomPriceDialog(CryptoBuyItem lowerPriceItem) {
        Intrinsics.checkNotNullParameter(lowerPriceItem, "lowerPriceItem");
        showDialog(CryptoBuyCustomPriceBottomSheetDialog.Companion.newInstance(this, lowerPriceItem, new BuyCryptoProductFragment$openCustomPriceDialog$1(this)));
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getBinding().getRoot(), ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment$$ExternalSyntheticLambda4
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                BuyCryptoProductFragment.getThemeDescriptions$lambda$2(BuyCryptoProductFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2(BuyCryptoProductFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBuyCryptoProductAdapter().notifyDataSetChanged();
        this$0.getBinding().getRoot().setColorSchemeColors(Theme.getColor("chats_actionBackground"));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleCryptoBuy;
        recyclerView.setAdapter(getBuyCryptoProductAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
    }

    private final void setupActionBar() {
        C3351ActionBar c3351ActionBar = this.actionBar;
        c3351ActionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        c3351ActionBar.setTitle(getResourceManager().getString(C3286R.string.wallet_buy_toolbar_title));
        c3351ActionBar.setAllowOverlayTitle(true);
        c3351ActionBar.createMenu();
        c3351ActionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    BuyCryptoProductFragment.this.finishFragment();
                }
            }
        });
    }

    private final void setupColors() {
        ForkFragmentWalletCryptoBuyBinding binding = getBinding();
        binding.getRoot().setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        binding.getRoot().setColorSchemeColors(Theme.getColor("chats_actionBackground"));
    }

    private final void setupListeners() {
        getBuyCryptoProductAdapter().setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                BuyCryptoProductFragment.setupListeners$lambda$6(BuyCryptoProductFragment.this, baseQuickAdapter, view, i);
            }
        });
        getBinding().getRoot().setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment$$ExternalSyntheticLambda0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                BuyCryptoProductFragment.setupListeners$lambda$7(BuyCryptoProductFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$6(BuyCryptoProductFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        Object firstOrNull = CollectionsKt.firstOrNull(this$0.getBuyCryptoProductAdapter().getData());
        CryptoBuyItem cryptoBuyItem = firstOrNull instanceof CryptoBuyItem ? (CryptoBuyItem) firstOrNull : null;
        BaseNode baseNode = (BaseNode) this$0.getBuyCryptoProductAdapter().getItem(i);
        if (baseNode instanceof CryptoBuyFooterItem) {
            this$0.showInformationDialog();
        } else if (baseNode instanceof CryptoBuyItem) {
            this$0.getPresenter().prepareConfirmDialog(cryptoBuyItem, (CryptoBuyItem) baseNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$7(BuyCryptoProductFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().loadAvailableProducts();
    }

    private final void showInformationDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, getPresenter().getInformationDialogModel(), null, null, 12, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenCode resolveSupportedTokenCode() {
        TokenCode.Companion companion = TokenCode.Companion;
        String string = this.arguments.getString("token_code", TokenCode.ETHER.getName());
        Intrinsics.checkNotNullExpressionValue(string, "arguments.getString(Bund…okenCode.ETHER.getName())");
        return companion.map(string);
    }

    /* compiled from: BuyCryptoProductFragment.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.buy.BuyCryptoProductFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BuyCryptoProductFragment newInstance(TokenCode tokenCode) {
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Pair[] pairArr = {TuplesKt.m100to("token_code", tokenCode.getName())};
            Object newInstance = BuyCryptoProductFragment.class.newInstance();
            BaseFragment baseFragment = (BaseFragment) newInstance;
            baseFragment.setArguments(BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, 1)));
            Intrinsics.checkNotNullExpressionValue(newInstance, "T::class.java.newInstanc…nts = bundleOf(*params) }");
            return (BuyCryptoProductFragment) baseFragment;
        }
    }
}
