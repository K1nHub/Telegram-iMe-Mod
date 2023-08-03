package com.iMe.p031ui.wallet.swap.fee;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment;
import com.iMe.p031ui.wallet.swap.fee.WalletSwapFeeFragment;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
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
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SlideChooseView;
import timber.log.Timber;
/* compiled from: WalletSwapFeeFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment */
/* loaded from: classes4.dex */
public final class WalletSwapFeeFragment extends WalletAuthBaseFragment implements WalletSwapFeeView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletSwapFeeFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapFeeFragment.class, "listAdapter", "getListAdapter()Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapFeeFragment.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(WalletSwapFeeFragment.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0))};
    public static final Companion Companion = new Companion(null);
    private int deadlineChooserRow;
    private int deadlineHeaderRow;
    private int deadlineInfoRow;
    private int feeChooserRow;
    private int feeInfoRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private Function1<? super SwapFeeScreenArgs, Unit> onFeeChangedListener;
    private final MoxyKtxDelegate presenter$delegate;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private int slipChooserRow;
    private int slipHeaderRow;
    private int slipInfoRow;

    public WalletSwapFeeFragment(final SwapFeeScreenArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Function0<WalletSwapFeePresenter> function0 = new Function0<WalletSwapFeePresenter>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$presenter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSwapFeePresenter invoke() {
                Lazy lazy;
                final WalletSwapFeeFragment walletSwapFeeFragment = WalletSwapFeeFragment.this;
                final SwapFeeScreenArgs swapFeeScreenArgs = args;
                final Function0<ParametersHolder> function02 = new Function0<ParametersHolder>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$presenter$2.1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ParametersHolder invoke() {
                        return ParametersHolderKt.parametersOf(SwapFeeScreenArgs.this);
                    }
                };
                lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<WalletSwapFeePresenter>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$presenter$2$invoke$$inlined$inject$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.ui.wallet.swap.fee.WalletSwapFeePresenter] */
                    @Override // kotlin.jvm.functions.Function0
                    public final WalletSwapFeePresenter invoke() {
                        Scope rootScope;
                        KoinComponent koinComponent = KoinComponent.this;
                        Qualifier qualifier = r2;
                        Function0<? extends ParametersHolder> function03 = function02;
                        if (koinComponent instanceof KoinScopeComponent) {
                            rootScope = ((KoinScopeComponent) koinComponent).getScope();
                        } else {
                            rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                        }
                        return rootScope.get(Reflection.getOrCreateKotlinClass(WalletSwapFeePresenter.class), qualifier, function03);
                    }
                });
                return (WalletSwapFeePresenter) lazy.getValue();
            }
        };
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletSwapFeePresenter.class.getName() + ".presenter", function0);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WalletSwapFeeFragment.ListAdapter invoke() {
                WalletSwapFeeFragment walletSwapFeeFragment = WalletSwapFeeFragment.this;
                Activity parentActivity = walletSwapFeeFragment.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                return new WalletSwapFeeFragment.ListAdapter(walletSwapFeeFragment, parentActivity);
            }
        }, 1, (Object) null);
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout createRootView;
                createRootView = WalletSwapFeeFragment.this.createRootView();
                return createRootView;
            }
        }, 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView createListView;
                createListView = WalletSwapFeeFragment.this.createListView();
                return createListView;
            }
        }, 1, (Object) null);
        this.onFeeChangedListener = new Function1<SwapFeeScreenArgs, Unit>() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$onFeeChangedListener$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(SwapFeeScreenArgs swapFeeScreenArgs) {
                Intrinsics.checkNotNullParameter(swapFeeScreenArgs, "<anonymous parameter 0>");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SwapFeeScreenArgs swapFeeScreenArgs) {
                invoke2(swapFeeScreenArgs);
                return Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletSwapFeePresenter getPresenter() {
        return (WalletSwapFeePresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[2]);
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[3]);
    }

    @Override // com.iMe.p031ui.base.wallet_auth.WalletAuthBaseFragment, com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        updateRows();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        FrameLayout rootView = getRootView();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        invokeResultListener();
    }

    @Override // com.iMe.p031ui.wallet.swap.fee.WalletSwapFeeView
    public void onFeeReselected() {
        getListAdapter().notifyItemChanged(this.feeInfoRow);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3485ActionBar c3485ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, SlideChooseView.class, HeaderCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3485ActionBar, i, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhiteGrayText));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3485ActionBar c3485ActionBar = this.actionBar;
        c3485ActionBar.setBackButtonImage(C3419R.C3421drawable.ic_ab_back);
        c3485ActionBar.setTitle(getResourceManager().getString(C3419R.string.wallet_swap_transaction_options_toolbar_title));
        c3485ActionBar.setAllowOverlayTitle(true);
        c3485ActionBar.createMenu();
        c3485ActionBar.setActionBarMenuOnItemClick(new C3485ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3485ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletSwapFeeFragment.this.finishFragment();
                    WalletSwapFeeFragment.this.invokeResultListener();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invokeResultListener() {
        this.onFeeChangedListener.invoke(getPresenter().getFeeArgs());
    }

    private final void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        int i2 = i + 1;
        this.rowCount = i2;
        this.feeChooserRow = i;
        int i3 = i2 + 1;
        this.rowCount = i3;
        this.feeInfoRow = i2;
        int i4 = i3 + 1;
        this.rowCount = i4;
        this.deadlineHeaderRow = i3;
        int i5 = i4 + 1;
        this.rowCount = i5;
        this.deadlineChooserRow = i4;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.deadlineInfoRow = i5;
        int i7 = i6 + 1;
        this.rowCount = i7;
        this.slipHeaderRow = i6;
        int i8 = i7 + 1;
        this.rowCount = i8;
        this.slipChooserRow = i7;
        this.rowCount = i8 + 1;
        this.slipInfoRow = i8;
        getListAdapter().notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView createListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setLayoutManager(new LinearLayoutManager(getParentActivity(), 1, false));
        recyclerListView.setAdapter(getListAdapter());
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout createRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        return frameLayout;
    }

    /* compiled from: WalletSwapFeeFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context mContext;
        final /* synthetic */ WalletSwapFeeFragment this$0;

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return false;
        }

        public ListAdapter(WalletSwapFeeFragment walletSwapFeeFragment, Context mContext) {
            Intrinsics.checkNotNullParameter(mContext, "mContext");
            this.this$0 = walletSwapFeeFragment;
            this.mContext = mContext;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            View view;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                view = new TextInfoPrivacyCell(this.mContext);
            } else if (i == IdFabric$ViewTypes.SLIDE_CHOOSE) {
                View slideChooseView = new SlideChooseView(this.mContext);
                slideChooseView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = slideChooseView;
            } else {
                HeaderCell headerCell = new HeaderCell(this.mContext);
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                view = headerCell;
            }
            RecyclerListView.Holder holder = new RecyclerListView.Holder(view);
            setupChooser(holder);
            return holder;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            int indexOf;
            int indexOf2;
            int indexOf3;
            Intrinsics.checkNotNullParameter(holder, "holder");
            try {
                View view = holder.itemView;
                WalletSwapFeeFragment walletSwapFeeFragment = this.this$0;
                if (holder.getItemViewType() == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                    if (i == walletSwapFeeFragment.slipInfoRow) {
                        ((TextInfoPrivacyCell) view).setText(walletSwapFeeFragment.getResourceManager().getString(C3419R.string.wallet_swap_transaction_options_slip_description));
                    } else if (i == walletSwapFeeFragment.deadlineInfoRow) {
                        ((TextInfoPrivacyCell) view).setText(walletSwapFeeFragment.getResourceManager().getString(C3419R.string.wallet_swap_transaction_options_deadline_description));
                    } else {
                        GasPriceInfo info = walletSwapFeeFragment.getPresenter().getSelectedFee().getInfo();
                        ResourceManager resourceManager = walletSwapFeeFragment.getResourceManager();
                        int i2 = C3419R.string.wallet_amount_send_fee_format;
                        Double valueOf = Double.valueOf(info.getFeeInFiat().getValue());
                        TokenDetailed.Companion companion = TokenDetailed.Companion;
                        ((TextInfoPrivacyCell) view).setText(resourceManager.getString(i2, Integer.valueOf(info.getDuration()), BalanceFormatter.formatBalance(Double.valueOf(info.getFee()), Integer.valueOf(walletSwapFeeFragment.getPresenter().getMetadata().getFeeToken().getDecimals())), walletSwapFeeFragment.getPresenter().getMetadata().getFeeToken().getTicker(), BalanceFormatter.formatBalance(valueOf, Integer.valueOf(companion.getUSD().getDecimals())), companion.getUSD().getTicker()));
                    }
                    ((TextInfoPrivacyCell) view).setBackground(Theme.getThemedDrawable(this.mContext, C3419R.C3421drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                } else if (holder.getItemViewType() == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell)) {
                    if (i == walletSwapFeeFragment.slipHeaderRow) {
                        ((HeaderCell) view).setText(walletSwapFeeFragment.getResourceManager().getString(C3419R.string.wallet_swap_transaction_options_slip_header));
                    } else if (i == walletSwapFeeFragment.deadlineHeaderRow) {
                        ((HeaderCell) view).setText(walletSwapFeeFragment.getResourceManager().getString(C3419R.string.wallet_swap_transaction_options_deadline_header));
                    } else {
                        ((HeaderCell) view).setText(walletSwapFeeFragment.getResourceManager().getString(C3419R.string.wallet_swap_transaction_options_fee_header));
                    }
                } else if (holder.getItemViewType() == IdFabric$ViewTypes.SLIDE_CHOOSE && (view instanceof SlideChooseView)) {
                    if (i == walletSwapFeeFragment.slipChooserRow) {
                        indexOf3 = ArraysKt___ArraysKt.indexOf(walletSwapFeeFragment.getPresenter().getSlipOptions(), walletSwapFeeFragment.getPresenter().getSelectedSlip());
                        String[] slipOptionsTitles = walletSwapFeeFragment.getPresenter().getSlipOptionsTitles();
                        ((SlideChooseView) view).setOptions(indexOf3, (String[]) Arrays.copyOf(slipOptionsTitles, slipOptionsTitles.length));
                    } else if (i == walletSwapFeeFragment.deadlineChooserRow) {
                        indexOf2 = ArraysKt___ArraysKt.indexOf(walletSwapFeeFragment.getPresenter().getDeadlineOptions(), walletSwapFeeFragment.getPresenter().getSelectedDeadline());
                        String[] deadlineOptionsTitles = walletSwapFeeFragment.getPresenter().getDeadlineOptionsTitles();
                        ((SlideChooseView) view).setOptions(indexOf2, (String[]) Arrays.copyOf(deadlineOptionsTitles, deadlineOptionsTitles.length));
                    } else {
                        indexOf = ArraysKt___ArraysKt.indexOf(walletSwapFeeFragment.getPresenter().getFeesOptions(), walletSwapFeeFragment.getPresenter().getSelectedFee().getSpeedLevel());
                        String[] feesOptionsTitles = walletSwapFeeFragment.getPresenter().getFeesOptionsTitles();
                        ((SlideChooseView) view).setOptions(indexOf, (String[]) Arrays.copyOf(feesOptionsTitles, feesOptionsTitles.length));
                    }
                }
            } catch (Exception e) {
                Timber.m6e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if ((i == this.this$0.slipInfoRow || i == this.this$0.deadlineInfoRow) || i == this.this$0.feeInfoRow) {
                return IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL;
            }
            return (i == this.this$0.slipChooserRow || i == this.this$0.deadlineChooserRow) || i == this.this$0.feeChooserRow ? IdFabric$ViewTypes.SLIDE_CHOOSE : IdFabric$ViewTypes.HEADER_CELL;
        }

        private final void setupChooser(final RecyclerListView.Holder holder) {
            View view = holder.itemView;
            if (view instanceof SlideChooseView) {
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                final WalletSwapFeeFragment walletSwapFeeFragment = this.this$0;
                ((SlideChooseView) view).setCallback(new SlideChooseView.Callback() { // from class: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.p043ui.Components.SlideChooseView.Callback
                    public final void onOptionSelected(int i) {
                        WalletSwapFeeFragment.ListAdapter.setupChooser$lambda$5$lambda$4(RecyclerListView.Holder.this, walletSwapFeeFragment, i);
                    }

                    @Override // org.telegram.p043ui.Components.SlideChooseView.Callback
                    public /* synthetic */ void onTouchEnd() {
                        SlideChooseView.Callback.CC.$default$onTouchEnd(this);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void setupChooser$lambda$5$lambda$4(RecyclerListView.Holder holder, WalletSwapFeeFragment this$0, int i) {
            Intrinsics.checkNotNullParameter(holder, "$holder");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            int adapterPosition = holder.getAdapterPosition();
            if (adapterPosition == this$0.slipChooserRow) {
                this$0.getPresenter().selectSlip(i);
            } else if (adapterPosition == this$0.deadlineChooserRow) {
                this$0.getPresenter().selectDeadline(i);
            } else {
                this$0.getPresenter().selectFee(i);
            }
        }
    }

    /* compiled from: WalletSwapFeeFragment.kt */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeFragment$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletSwapFeeFragment newInstance(SwapFeeScreenArgs args, Function1<? super SwapFeeScreenArgs, Unit> onFeeChanged) {
            Intrinsics.checkNotNullParameter(args, "args");
            Intrinsics.checkNotNullParameter(onFeeChanged, "onFeeChanged");
            WalletSwapFeeFragment walletSwapFeeFragment = new WalletSwapFeeFragment(args);
            walletSwapFeeFragment.onFeeChangedListener = onFeeChanged;
            return walletSwapFeeFragment;
        }
    }
}
