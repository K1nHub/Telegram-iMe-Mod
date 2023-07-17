package com.iMe.p031ui.shop;

import android.content.Context;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.NeuroBotsController;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: BotSettingsActivity.kt */
/* renamed from: com.iMe.ui.shop.BotSettingsActivity */
/* loaded from: classes3.dex */
public final class BotSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BotSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(BotSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(BotSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/ui/shop/BotSettingsActivity$ListAdapter;", 0))};
    private int autoBotsInGroupsRow;
    private int autoBotsInPersonalChatsRow;
    private int autoBotsRow;
    private int enableBotsRow;
    private int rowCount;
    private int showOftenUsedRow;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new BotSettingsActivity$rootView$2(this), 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new BotSettingsActivity$listView$2(this), 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new BotSettingsActivity$listAdapter$2(this), 1, (Object) null);

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getNeuroBotsController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        if (intent != null) {
            ApplicationLoader.purchaseHelper.onActivityResult(i, i2, intent);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3484ActionBar c3484ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{HeaderCell.class, TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3484ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setAllowOverlayTitle(true);
        c3484ActionBar.setTitle(LocaleController.getInternalString(C3417R.string.neurobots_settings_screen_title));
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.ui.shop.BotSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    BotSettingsActivity.this.finishFragment();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.ui.shop.BotSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                BotSettingsActivity.initListView$lambda$9$lambda$8(BotSettingsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$9$lambda$8(BotSettingsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckBox();
            if (i == this$0.enableBotsRow) {
                NeuroBotsController neuroBotsController = this$0.getNeuroBotsController();
                neuroBotsController.setNeuroBotsEnabled(!neuroBotsController.isNeuroBotsEnabled());
                ListAdapter listAdapter = this$0.getListAdapter();
                int i2 = this$0.rowCount;
                this$0.updateRows();
                int abs = Math.abs(i2 - this$0.rowCount);
                if (textCheckCell.isChecked()) {
                    listAdapter.notifyItemRangeInserted(this$0.enableBotsRow + 1, abs);
                } else {
                    listAdapter.notifyItemRangeRemoved(this$0.enableBotsRow + 1, abs);
                }
                NotificationCenter.getInstance(this$0.currentAccount).postNotificationName(NotificationCenter.neuroBotEnableChanged, new Object[0]);
            } else if (i == this$0.autoBotsInPersonalChatsRow) {
                NeuroBotsController neuroBotsController2 = this$0.getNeuroBotsController();
                neuroBotsController2.setNeuroBotsAutoEnabledInPersonalChats(!neuroBotsController2.isNeuroBotsAutoEnabledInPersonalChats());
            } else if (i == this$0.autoBotsInGroupsRow) {
                NeuroBotsController neuroBotsController3 = this$0.getNeuroBotsController();
                neuroBotsController3.setNeuroBotsAutoEnabledInGroups(!neuroBotsController3.isNeuroBotsAutoEnabledInGroups());
            } else if (i == this$0.showOftenUsedRow) {
                NeuroBotsController neuroBotsController4 = this$0.getNeuroBotsController();
                neuroBotsController4.setShowOftenUsedNeuroBotsEnabled(!neuroBotsController4.isShowOftenUsedNeuroBotsEnabled());
            }
            NotificationCenter.getInstance(this$0.currentAccount).postNotificationName(NotificationCenter.botSettingsChanged, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRows() {
        this.autoBotsRow = -1;
        this.autoBotsInPersonalChatsRow = -1;
        this.autoBotsInGroupsRow = -1;
        this.showOftenUsedRow = -1;
        this.rowCount = 0;
        this.rowCount = 0 + 1;
        this.enableBotsRow = 0;
        if (getNeuroBotsController().isNeuroBotsEnabled()) {
            int i = this.rowCount + 1;
            this.rowCount = i;
            int i2 = i + 1;
            this.rowCount = i2;
            this.autoBotsRow = i;
            int i3 = i2 + 1;
            this.rowCount = i3;
            this.autoBotsInPersonalChatsRow = i2;
            int i4 = i3 + 1;
            this.rowCount = i4;
            this.autoBotsInGroupsRow = i3;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.rowCount = i5 + 1;
            this.showOftenUsedRow = i5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BotSettingsActivity.kt */
    /* renamed from: com.iMe.ui.shop.BotSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            BotSettingsActivity.this.updateRows();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return BotSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == BotSettingsActivity.this.autoBotsRow) {
                return IdFabric$ViewTypes.HEADER_CELL;
            }
            return ((i == BotSettingsActivity.this.enableBotsRow || i == BotSettingsActivity.this.autoBotsInPersonalChatsRow) || i == BotSettingsActivity.this.autoBotsInGroupsRow) || i == BotSettingsActivity.this.showOftenUsedRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL : IdFabric$ViewTypes.SHADOW_SECTION;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() == IdFabric$ViewTypes.TEXT_CHECK_CELL;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            HeaderCell headerCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.HEADER_CELL) {
                HeaderCell headerCell2 = new HeaderCell(BotSettingsActivity.this.getParentActivity());
                headerCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                headerCell = headerCell2;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                View textCheckCell = new TextCheckCell(BotSettingsActivity.this.getParentActivity());
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                headerCell = textCheckCell;
            } else {
                headerCell = new ShadowSectionCell(BotSettingsActivity.this.getParentActivity());
            }
            headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean z = getItemViewType(i + 1) != IdFabric$ViewTypes.SHADOW_SECTION;
            int itemViewType = holder.getItemViewType();
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell)) {
                ((HeaderCell) view).setText(LocaleController.getInternalString(C3417R.string.neurobots_settings_automatic_response_header));
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                if (i == BotSettingsActivity.this.enableBotsRow) {
                    ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3417R.string.neurobots_settings_enable_item_title), BotSettingsActivity.this.getNeuroBotsController().isNeuroBotsEnabled(), z);
                } else if (i == BotSettingsActivity.this.autoBotsInPersonalChatsRow) {
                    ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3417R.string.neurobots_settings_chats_automatic_response_enable_item_title), BotSettingsActivity.this.getNeuroBotsController().isNeuroBotsAutoEnabledInPersonalChats(), z);
                } else if (i == BotSettingsActivity.this.autoBotsInGroupsRow) {
                    ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3417R.string.neurobots_settings_groups_automatic_response_enable_item_title), BotSettingsActivity.this.getNeuroBotsController().isNeuroBotsAutoEnabledInGroups(), z);
                } else if (i == BotSettingsActivity.this.showOftenUsedRow) {
                    ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3417R.string.neurobots_settings_often_used_enable_item_title), BotSettingsActivity.this.getNeuroBotsController().isShowOftenUsedNeuroBotsEnabled(), z);
                }
            }
        }
    }
}
