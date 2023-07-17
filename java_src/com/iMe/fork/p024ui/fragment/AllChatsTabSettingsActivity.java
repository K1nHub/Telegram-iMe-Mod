package com.iMe.fork.p024ui.fragment;

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
import com.iMe.fork.controller.FiltersController;
import com.iMe.fork.p024ui.dialog.SelectFabsBottomSheet;
import com.iMe.fork.p024ui.view.FloatingActionButtonsCell;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: AllChatsTabSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.AllChatsTabSettingsActivity */
/* loaded from: classes3.dex */
public final class AllChatsTabSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(AllChatsTabSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(AllChatsTabSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(AllChatsTabSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;", 0))};
    private int enableRow;
    private int enableSectionRow;
    private int fabsRow;
    private int fabsSectionRow;
    private int iconInsteadTitleHeaderRow;
    private int iconInsteadTitleRow;
    private int rowCount;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new AllChatsTabSettingsActivity$rootView$2(this), 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new AllChatsTabSettingsActivity$listView$2(this), 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new AllChatsTabSettingsActivity$listAdapter$2(this), 1, (Object) null);

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
        getFiltersController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3484ActionBar c3484ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundGrayShadow;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.AllChatsTabSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                AllChatsTabSettingsActivity.getThemeDescriptions$lambda$2(AllChatsTabSettingsActivity.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray), new ThemeDescription(c3484ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, FloatingActionButtonsCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i3));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2(AllChatsTabSettingsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerListView listView = this$0.getListView();
        int childCount = listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = listView.getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            FloatingActionButtonsCell floatingActionButtonsCell = childAt instanceof FloatingActionButtonsCell ? (FloatingActionButtonsCell) childAt : null;
            if (floatingActionButtonsCell != null) {
                floatingActionButtonsCell.updateColors();
            }
        }
    }

    private final void setupActionBar() {
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setAllowOverlayTitle(true);
        c3484ActionBar.setTitle(LocaleController.getInternalString(C3417R.string.folder_tabs_all_chats_tab_settings_item_title));
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.AllChatsTabSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    AllChatsTabSettingsActivity.this.finishFragment();
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
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext(), 1, false));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.AllChatsTabSettingsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                AllChatsTabSettingsActivity.initListView$lambda$9$lambda$8(AllChatsTabSettingsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$9$lambda$8(final AllChatsTabSettingsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckBox();
            if (i == this$0.enableRow) {
                FiltersController filtersController = this$0.getFiltersController();
                filtersController.setAllChatsTabEnabled(!filtersController.isAllChatsTabEnabled());
                ListAdapter listAdapter = this$0.getListAdapter();
                int i2 = this$0.rowCount;
                this$0.updateRows();
                int abs = Math.abs(i2 - this$0.rowCount);
                if (textCheckCell.isChecked()) {
                    listAdapter.notifyItemRangeInserted(this$0.enableSectionRow + 1, abs);
                } else {
                    listAdapter.notifyItemRangeRemoved(this$0.enableSectionRow + 1, abs);
                }
                listAdapter.notifyItemChanged(this$0.enableSectionRow);
                SharedConfig.setShowDrawerHeaderArchiveEnabled(true);
                this$0.getNotificationCenter().postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
                this$0.notifySettingsChanged();
            } else if (i == this$0.iconInsteadTitleRow) {
                this$0.getFiltersController().setIconInsteadAllChatsTabTitleEnabled(!this$0.getFiltersController().isIconInsteadAllChatsTabTitleEnabled());
                this$0.notifySettingsChanged();
            }
        } else if (view instanceof FloatingActionButtonsCell) {
            Activity parentActivity = this$0.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            this$0.showDialog(new SelectFabsBottomSheet(parentActivity, this$0.getFiltersController().getSelectedAllChatsTabFabs(), new Callbacks$Callback1() { // from class: com.iMe.fork.ui.fragment.AllChatsTabSettingsActivity$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    AllChatsTabSettingsActivity.initListView$lambda$9$lambda$8$lambda$7(AllChatsTabSettingsActivity.this, (Set) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$9$lambda$8$lambda$7(AllChatsTabSettingsActivity this$0, Set fabs) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FiltersController filtersController = this$0.getFiltersController();
        Intrinsics.checkNotNullExpressionValue(fabs, "fabs");
        filtersController.setSelectedAllChatsTabFabs(fabs);
        this$0.getListAdapter().notifyItemChanged(this$0.fabsRow);
        this$0.notifySettingsChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRows() {
        this.rowCount = 0;
        int i = 0 + 1;
        this.rowCount = i;
        this.enableRow = 0;
        this.rowCount = i + 1;
        this.enableSectionRow = i;
        if (getFiltersController().isAllChatsTabEnabled()) {
            int i2 = this.rowCount;
            int i3 = i2 + 1;
            this.rowCount = i3;
            this.iconInsteadTitleHeaderRow = i2;
            int i4 = i3 + 1;
            this.rowCount = i4;
            this.iconInsteadTitleRow = i3;
            int i5 = i4 + 1;
            this.rowCount = i5;
            int i6 = i5 + 1;
            this.rowCount = i6;
            this.fabsRow = i5;
            this.rowCount = i6 + 1;
            this.fabsSectionRow = i6;
            return;
        }
        this.iconInsteadTitleHeaderRow = -1;
        this.iconInsteadTitleRow = -1;
        this.fabsRow = -1;
        this.fabsSectionRow = -1;
    }

    private final void notifySettingsChanged() {
        getNotificationCenter().postNotificationName(NotificationCenter.dialogFiltersUpdated, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK_CELL || i == IdFabric$ViewTypes.FLOATING_ACTION_BUTTON;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.SHADOW_SECTION) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AllChatsTabSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.AllChatsTabSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            AllChatsTabSettingsActivity.this.updateRows();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return AllChatsTabSettingsActivity.this.rowCount;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return AllChatsTabSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == AllChatsTabSettingsActivity.this.enableRow || i == AllChatsTabSettingsActivity.this.iconInsteadTitleRow) {
                return IdFabric$ViewTypes.TEXT_CHECK_CELL;
            }
            return i == AllChatsTabSettingsActivity.this.enableSectionRow || i == AllChatsTabSettingsActivity.this.fabsSectionRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : i == AllChatsTabSettingsActivity.this.iconInsteadTitleHeaderRow ? IdFabric$ViewTypes.HEADER_CELL : i == AllChatsTabSettingsActivity.this.fabsRow ? IdFabric$ViewTypes.FLOATING_ACTION_BUTTON : IdFabric$ViewTypes.SHADOW_SECTION;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            HeaderCell headerCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                headerCell = new TextCheckCell(AllChatsTabSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                headerCell = new TextInfoPrivacyCell(AllChatsTabSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.HEADER_CELL) {
                HeaderCell headerCell2 = new HeaderCell(AllChatsTabSettingsActivity.this.getParentActivity());
                headerCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                headerCell = headerCell2;
            } else if (i == IdFabric$ViewTypes.FLOATING_ACTION_BUTTON) {
                Activity parentActivity = AllChatsTabSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                FloatingActionButtonsCell floatingActionButtonsCell = new FloatingActionButtonsCell(parentActivity);
                floatingActionButtonsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                headerCell = floatingActionButtonsCell;
            } else {
                headerCell = new ShadowSectionCell(AllChatsTabSettingsActivity.this.getParentActivity());
            }
            headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = AllChatsTabSettingsActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                AllChatsTabSettingsActivity allChatsTabSettingsActivity = AllChatsTabSettingsActivity.this;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i != allChatsTabSettingsActivity.enableRow) {
                    if (i == allChatsTabSettingsActivity.iconInsteadTitleRow) {
                        textCheckCell.setType(0);
                        textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3417R.string.all_chats_tab_settings_icon_instead_text_item_title), allChatsTabSettingsActivity.getFiltersController().isIconInsteadAllChatsTabTitleEnabled(), needDivider);
                        return;
                    }
                    return;
                }
                textCheckCell.setType(1);
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3417R.string.all_chats_tab_settings_enable_item_title), allChatsTabSettingsActivity.getFiltersController().isAllChatsTabEnabled(), needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                AllChatsTabSettingsActivity allChatsTabSettingsActivity2 = AllChatsTabSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i != allChatsTabSettingsActivity2.enableSectionRow) {
                    if (i == allChatsTabSettingsActivity2.fabsSectionRow) {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3417R.string.create_folder_change_fab_section_description));
                        textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(allChatsTabSettingsActivity2.getParentActivity(), C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    }
                } else if (allChatsTabSettingsActivity2.getFiltersController().isAllChatsTabEnabled()) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(allChatsTabSettingsActivity2.getParentActivity(), C3417R.C3419drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setText(null);
                    textInfoPrivacyCell.setFixedSize(12);
                } else {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(allChatsTabSettingsActivity2.getParentActivity(), C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3417R.string.all_chats_tab_settings_enable_item_hint));
                }
            } else if (itemViewType == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell)) {
                HeaderCell headerCell = (HeaderCell) view;
                if (i == AllChatsTabSettingsActivity.this.iconInsteadTitleHeaderRow) {
                    headerCell.setText(LocaleController.getInternalString(C3417R.string.all_chats_tab_settings_icon_instead_text_header));
                }
            } else if (itemViewType == IdFabric$ViewTypes.FLOATING_ACTION_BUTTON && (view instanceof FloatingActionButtonsCell)) {
                AllChatsTabSettingsActivity allChatsTabSettingsActivity3 = AllChatsTabSettingsActivity.this;
                FloatingActionButtonsCell floatingActionButtonsCell = (FloatingActionButtonsCell) view;
                if (i == allChatsTabSettingsActivity3.fabsRow) {
                    floatingActionButtonsCell.setFabs(allChatsTabSettingsActivity3.getFiltersController().getSelectedAllChatsTabFabs());
                }
            }
        }
    }
}
