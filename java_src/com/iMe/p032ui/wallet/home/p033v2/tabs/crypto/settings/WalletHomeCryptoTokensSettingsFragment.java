package com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.settings;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.p025ui.view.MovingCheckCell;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.p032ui.base.WalletAuthFragment;
import com.iMe.p032ui.custom.NetworkTypeView;
import com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.BaseFragmentExtKt;
import com.iMe.utils.helper.GlideHelper;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkItemWalletHomeCryptoTokensSettingsHeaderBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Components.CheckBoxSquare;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment */
/* loaded from: classes3.dex */
public final class WalletHomeCryptoTokensSettingsFragment extends WalletAuthFragment implements WalletHomeCryptoTokensSettingsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletHomeCryptoTokensSettingsFragment.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsPresenter;", 0))};
    public static final Companion Companion = new Companion(null);
    private int headerRow;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private int rowCount;
    private final ScreenType screenType;
    private int tokensEndRow;
    private int tokensStartRow;

    public /* synthetic */ WalletHomeCryptoTokensSettingsFragment(ScreenType screenType, DefaultConstructorMarker defaultConstructorMarker) {
        this(screenType);
    }

    public final ScreenType getScreenType() {
        return this.screenType;
    }

    private WalletHomeCryptoTokensSettingsFragment(ScreenType screenType) {
        Lazy lazy;
        Lazy lazy2;
        this.screenType = screenType;
        WalletHomeCryptoTokensSettingsFragment$presenter$2 walletHomeCryptoTokensSettingsFragment$presenter$2 = new WalletHomeCryptoTokensSettingsFragment$presenter$2(this);
        MvpDelegate mvpDelegate = getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        this.presenter$delegate = new MoxyKtxDelegate(mvpDelegate, WalletHomeCryptoTokensSettingsPresenter.class.getName() + ".presenter", walletHomeCryptoTokensSettingsFragment$presenter$2);
        lazy = LazyKt__LazyJVMKt.lazy(new WalletHomeCryptoTokensSettingsFragment$listView$2(this));
        this.listView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new WalletHomeCryptoTokensSettingsFragment$listAdapter$2(this));
        this.listAdapter$delegate = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletHomeCryptoTokensSettingsPresenter getPresenter() {
        return (WalletHomeCryptoTokensSettingsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout frameLayout = new FrameLayout(context);
        setupActionBar();
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        frameLayout.addView(getListView(), LayoutHelper.createFrame(-1, -1.0f));
        return frameLayout;
    }

    @Override // com.iMe.p032ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        WalletHomeCryptoTokensSettingsPresenter.saveSettings$default(getPresenter(), false, 1, null);
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                WalletHomeCryptoTokensSettingsFragment.getThemeDescriptions$lambda$1(WalletHomeCryptoTokensSettingsFragment.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{MovingCheckCell.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"moveIconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "stickers_menu"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$1(WalletHomeCryptoTokensSettingsFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListAdapter().notifyDataSetChanged();
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void showTokens(List<? extends SelectableToken> tokens) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        updateRows(tokens.size());
        getListAdapter().notifyDataSetChanged();
    }

    private final void updateRows(int i) {
        this.rowCount = 0;
        int i2 = 0 + 1;
        this.rowCount = i2;
        this.headerRow = 0;
        this.tokensStartRow = i2;
        int i3 = i2 + i;
        this.rowCount = i3;
        this.tokensEndRow = i3;
    }

    private final void setupActionBar() {
        C3381ActionBar c3381ActionBar = this.actionBar;
        c3381ActionBar.setBackButtonImage(C3316R.C3318drawable.ic_ab_back);
        c3381ActionBar.setAllowOverlayTitle(true);
        c3381ActionBar.setTitle(LocaleController.getInternalString(C3316R.string.wallet_home_crypto_tokens_settings_toolbar_title));
        ActionBarMenuItem addItem = c3381ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3316R.C3318drawable.ic_ab_other);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3316R.string.AccDescrMoreOptions));
        addItem.addSubItem(IdFabric$Menu.RESET, C3316R.C3318drawable.msg_reset, LocaleController.getString("ThemeResetToDefaults", C3316R.string.ThemeResetToDefaults));
        c3381ActionBar.setActionBarMenuOnItemClick(new C3381ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$setupActionBar$1$2
            @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    WalletHomeCryptoTokensSettingsFragment.this.finishFragment();
                } else if (i == IdFabric$Menu.RESET) {
                    WalletHomeCryptoTokensSettingsFragment.this.getPresenter().resetSettings();
                    WalletHomeCryptoTokensSettingsFragment.this.getListAdapter().notifyDataSetChanged();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerListView);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                WalletHomeCryptoTokensSettingsFragment.initListView$lambda$6$lambda$5(WalletHomeCryptoTokensSettingsFragment.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$6$lambda$5(WalletHomeCryptoTokensSettingsFragment this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof MovingCheckCell) {
            this$0.getPresenter().switchTokenEnabled(i - this$0.tokensStartRow);
            MovingCheckCell movingCheckCell = (MovingCheckCell) view;
            movingCheckCell.setChecked(!movingCheckCell.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
        }

        public final void swapElements(int i, int i2) {
            WalletHomeCryptoTokensSettingsFragment.this.getPresenter().swapTokensPositions(i - WalletHomeCryptoTokensSettingsFragment.this.tokensStartRow, i2 - WalletHomeCryptoTokensSettingsFragment.this.tokensStartRow);
            notifyItemMoved(i, i2);
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() == IdFabric$ViewTypes.MOVING_CHECK;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return WalletHomeCryptoTokensSettingsFragment.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == WalletHomeCryptoTokensSettingsFragment.this.headerRow ? IdFabric$ViewTypes.HEADER : IdFabric$ViewTypes.MOVING_CHECK;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            RelativeLayout relativeLayout;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.HEADER) {
                final ForkItemWalletHomeCryptoTokensSettingsHeaderBinding inflate = ForkItemWalletHomeCryptoTokensSettingsHeaderBinding.inflate(BaseFragmentExtKt.getLayoutInflater(WalletHomeCryptoTokensSettingsFragment.this));
                final WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment = WalletHomeCryptoTokensSettingsFragment.this;
                inflate.onlyPositiveCheckboxContainer.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WalletHomeCryptoTokensSettingsFragment.ListAdapter.onCreateViewHolder$lambda$3$lambda$0(WalletHomeCryptoTokensSettingsFragment.this, inflate, view);
                    }
                });
                inflate.networkTypeViewContainer.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        WalletHomeCryptoTokensSettingsFragment.ListAdapter.onCreateViewHolder$lambda$3$lambda$2(WalletHomeCryptoTokensSettingsFragment.this, inflate, view);
                    }
                });
                RelativeLayout root = inflate.getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "inflate(layoutInflater).…     }\n            }.root");
                relativeLayout = root;
            } else {
                Activity parentActivity = WalletHomeCryptoTokensSettingsFragment.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                MovingCheckCell movingCheckCell = new MovingCheckCell(parentActivity);
                movingCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                AppCompatImageView iconView = movingCheckCell.getIconView();
                iconView.setBackgroundResource(C3316R.C3318drawable.fork_bg_white_circle);
                ViewGroup.LayoutParams layoutParams = iconView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                int m51dp = AndroidUtilities.m51dp(35.0f);
                layoutParams2.width = m51dp;
                layoutParams2.height = m51dp;
                iconView.setLayoutParams(layoutParams2);
                relativeLayout = movingCheckCell;
            }
            relativeLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(relativeLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$3$lambda$0(WalletHomeCryptoTokensSettingsFragment this$0, ForkItemWalletHomeCryptoTokensSettingsHeaderBinding this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            this$0.getPresenter().switchOnlyPositiveTokens();
            CheckBoxSquare checkBoxSquare = this_apply.onlyPositiveCheckbox;
            checkBoxSquare.setChecked(!checkBoxSquare.isChecked(), true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$3$lambda$2(final WalletHomeCryptoTokensSettingsFragment this$0, final ForkItemWalletHomeCryptoTokensSettingsHeaderBinding this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            Activity parentActivity = this$0.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            this$0.showDialog(DialogsFactoryKt.createSelectNetworkTypeDialog(parentActivity, NetworkType.Companion.getNetworksByBlockchains(this$0.getCryptoAccessManager().getCreatedWalletsBlockchains()), this_apply.networkTypeView.getNetworkType(), new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda3
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    WalletHomeCryptoTokensSettingsFragment.ListAdapter.onCreateViewHolder$lambda$3$lambda$2$lambda$1(ForkItemWalletHomeCryptoTokensSettingsHeaderBinding.this, this$0, (NetworkType) obj);
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$3$lambda$2$lambda$1(ForkItemWalletHomeCryptoTokensSettingsHeaderBinding this_apply, WalletHomeCryptoTokensSettingsFragment this$0, NetworkType selectedNetworkType) {
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            NetworkTypeView networkTypeView = this_apply.networkTypeView;
            Intrinsics.checkNotNullExpressionValue(selectedNetworkType, "selectedNetworkType");
            networkTypeView.setNetworkType(selectedNetworkType);
            this$0.getPresenter().setNetworkType(selectedNetworkType);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = holder.getItemViewType();
            if (itemViewType == IdFabric$ViewTypes.HEADER) {
                ForkItemWalletHomeCryptoTokensSettingsHeaderBinding bind = ForkItemWalletHomeCryptoTokensSettingsHeaderBinding.bind(holder.itemView);
                WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment = WalletHomeCryptoTokensSettingsFragment.this;
                bind.onlyPositiveCheckbox.setChecked(walletHomeCryptoTokensSettingsFragment.getPresenter().getOnlyPositiveTokens(), false);
                AppCompatTextView appCompatTextView = bind.onlyPositiveCheckboxText;
                appCompatTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
                appCompatTextView.setText(walletHomeCryptoTokensSettingsFragment.getResourceManager().getString(C3316R.string.wallet_home_crypto_tokens_settings_only_positive));
                NetworkTypeView onBindViewHolder$lambda$10$lambda$9 = bind.networkTypeView;
                onBindViewHolder$lambda$10$lambda$9.setNetworkType(walletHomeCryptoTokensSettingsFragment.getPresenter().getCurrentNetworkType());
                Intrinsics.checkNotNullExpressionValue(onBindViewHolder$lambda$10$lambda$9, "onBindViewHolder$lambda$10$lambda$9");
                onBindViewHolder$lambda$10$lambda$9.setVisibility(walletHomeCryptoTokensSettingsFragment.getScreenType() instanceof ScreenType.Crypto ? 0 : 8);
            } else if (itemViewType == IdFabric$ViewTypes.MOVING_CHECK) {
                View view = holder.itemView;
                Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.iMe.fork.ui.view.MovingCheckCell");
                final MovingCheckCell movingCheckCell = (MovingCheckCell) view;
                WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment2 = WalletHomeCryptoTokensSettingsFragment.this;
                Pair<SelectableToken, WalletCryptoTokensSettingsTokenState> tokenSetting = walletHomeCryptoTokensSettingsFragment2.getPresenter().getTokenSetting(i - walletHomeCryptoTokensSettingsFragment2.tokensStartRow);
                SelectableToken component1 = tokenSetting.component1();
                WalletCryptoTokensSettingsTokenState component2 = tokenSetting.component2();
                movingCheckCell.setTextAndCheck(component1.getName(), component2 != null && component2.isEnabled(), i != walletHomeCryptoTokensSettingsFragment2.tokensEndRow - 1);
                movingCheckCell.setSecondText(component1.getTicker());
                if (component1 instanceof SelectableToken.WithLogoUrl.Binance) {
                    Activity parentActivity = walletHomeCryptoTokensSettingsFragment2.getParentActivity();
                    Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                    GlideHelper.loadBinanceImageAsBitmap(parentActivity, ((SelectableToken.WithLogoUrl.Binance) component1).getLogoUrl(), new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$$ExternalSyntheticLambda2
                        @Override // com.iMe.fork.utils.Callbacks$Callback1
                        public final void invoke(Object obj) {
                            WalletHomeCryptoTokensSettingsFragment.ListAdapter.onBindViewHolder$lambda$12$lambda$11(MovingCheckCell.this, (Bitmap) obj);
                        }
                    });
                } else if (component1 instanceof SelectableToken.WithResLogo) {
                    MovingCheckCell.setIcon$default(movingCheckCell, ((SelectableToken.WithResLogo) component1).getLogoRes(), null, null, 6, null);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$12$lambda$11(MovingCheckCell this_with, Bitmap it) {
            Intrinsics.checkNotNullParameter(this_with, "$this_with");
            Intrinsics.checkNotNullExpressionValue(it, "it");
            this_with.setImage(it);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$TouchHelperCallback */
    /* loaded from: classes3.dex */
    public final class TouchHelperCallback extends ItemTouchHelper.Callback {
        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        }

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            return ItemTouchHelper.Callback.makeMovementFlags(viewHolder.getItemViewType() == IdFabric$ViewTypes.MOVING_CHECK ? 3 : 0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(target, "target");
            if (source.getItemViewType() != target.getItemViewType()) {
                return false;
            }
            WalletHomeCryptoTokensSettingsFragment.this.getListAdapter().swapElements(source.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                WalletHomeCryptoTokensSettingsFragment.this.getListView().cancelClickRunnables(false);
                View view = viewHolder != null ? viewHolder.itemView : null;
                if (view != null) {
                    view.setPressed(true);
                }
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ScreenType */
    /* loaded from: classes3.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
        /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ScreenType$Crypto */
        /* loaded from: classes3.dex */
        public static final class Crypto extends ScreenType {
            private final NetworkType networkType;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Crypto(NetworkType networkType) {
                super(null);
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                this.networkType = networkType;
            }

            public final NetworkType getNetworkType() {
                return this.networkType;
            }
        }

        private ScreenType() {
        }

        /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
        /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance */
        /* loaded from: classes3.dex */
        public static final class Binance extends ScreenType {
            private final List<SelectableToken> tokens;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public Binance(List<? extends SelectableToken> tokens) {
                super(null);
                Intrinsics.checkNotNullParameter(tokens, "tokens");
                this.tokens = tokens;
            }

            public final List<SelectableToken> getTokens() {
                return this.tokens;
            }
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletHomeCryptoTokensSettingsFragment newInstance(ScreenType screenType) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new WalletHomeCryptoTokensSettingsFragment(screenType, null);
        }
    }
}
