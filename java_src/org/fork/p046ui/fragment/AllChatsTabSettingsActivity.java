package org.fork.p046ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.FiltersController;
import org.fork.p046ui.dialog.SelectFabsBottomSheet;
import org.fork.p046ui.view.FabsCell;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: AllChatsTabSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.AllChatsTabSettingsActivity */
/* loaded from: classes4.dex */
public final class AllChatsTabSettingsActivity extends BaseFragment {
    private int enableRow;
    private int enableSectionRow;
    private int fabsRow;
    private int fabsSectionRow;
    private int iconInsteadTitleHeaderRow;
    private int iconInsteadTitleRow;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Lazy rootView$delegate;
    private int rowCount;

    public AllChatsTabSettingsActivity() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new AllChatsTabSettingsActivity$rootView$2(this));
        this.rootView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new AllChatsTabSettingsActivity$listView$2(this));
        this.listView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new AllChatsTabSettingsActivity$listAdapter$2(this));
        this.listAdapter$delegate = lazy3;
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue();
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue();
    }

    private final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public FrameLayout createView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        this.fragmentView = rootView;
        return rootView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getFiltersController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.fork.ui.fragment.AllChatsTabSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                AllChatsTabSettingsActivity.getThemeDescriptions$lambda$3(AllChatsTabSettingsActivity.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, FabsCell.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundChecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundUnchecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundCheckText"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlue"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumb"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumbChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelector"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelectorChecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$3(AllChatsTabSettingsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerListView listView = this$0.getListView();
        int childCount = listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = listView.getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
            FabsCell fabsCell = childAt instanceof FabsCell ? (FabsCell) childAt : null;
            if (fabsCell != null) {
                fabsCell.updateColors();
            }
        }
    }

    private final void setupActionBar() {
        C3366ActionBar c3366ActionBar = this.actionBar;
        c3366ActionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        c3366ActionBar.setAllowOverlayTitle(true);
        c3366ActionBar.setTitle(LocaleController.getInternalString(C3301R.string.folder_tabs_all_chats_tab_settings_item_title));
        c3366ActionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: org.fork.ui.fragment.AllChatsTabSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
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
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext(), 1, false));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.fork.ui.fragment.AllChatsTabSettingsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                AllChatsTabSettingsActivity.initListView$lambda$10$lambda$9(AllChatsTabSettingsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$10$lambda$9(final AllChatsTabSettingsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckbox();
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
                AlertsCreator.showArchiveAccessAlert(this$0);
                this$0.notifySettingsChanged();
            } else if (i == this$0.iconInsteadTitleRow) {
                this$0.getFiltersController().setIconInsteadAllChatsTabTitleEnabled(!this$0.getFiltersController().isIconInsteadAllChatsTabTitleEnabled());
                this$0.notifySettingsChanged();
            }
        } else if (view instanceof FabsCell) {
            Activity parentActivity = this$0.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            this$0.showDialog(new SelectFabsBottomSheet(parentActivity, this$0.getFiltersController().getSelectedAllChatsTabFabs(), new Callbacks$Callback1() { // from class: org.fork.ui.fragment.AllChatsTabSettingsActivity$$ExternalSyntheticLambda0
                @Override // org.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    AllChatsTabSettingsActivity.initListView$lambda$10$lambda$9$lambda$8(AllChatsTabSettingsActivity.this, (Set) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$10$lambda$9$lambda$8(AllChatsTabSettingsActivity this$0, Set fabs) {
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
        return i == IdFabric$ViewTypes.TEXT_CHECK || i == IdFabric$ViewTypes.FABS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY || i == IdFabric$ViewTypes.SHADOW_SECTION) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AllChatsTabSettingsActivity.kt */
    /* renamed from: org.fork.ui.fragment.AllChatsTabSettingsActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            AllChatsTabSettingsActivity.this.updateRows();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return AllChatsTabSettingsActivity.this.rowCount;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return AllChatsTabSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == AllChatsTabSettingsActivity.this.enableRow || i == AllChatsTabSettingsActivity.this.iconInsteadTitleRow) {
                return IdFabric$ViewTypes.TEXT_CHECK;
            }
            return i == AllChatsTabSettingsActivity.this.enableSectionRow || i == AllChatsTabSettingsActivity.this.fabsSectionRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY : i == AllChatsTabSettingsActivity.this.iconInsteadTitleHeaderRow ? IdFabric$ViewTypes.HEADER : i == AllChatsTabSettingsActivity.this.fabsRow ? IdFabric$ViewTypes.FABS : IdFabric$ViewTypes.SHADOW_SECTION;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            HeaderCell headerCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                headerCell = new TextCheckCell(AllChatsTabSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY) {
                headerCell = new TextInfoPrivacyCell(AllChatsTabSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.HEADER) {
                HeaderCell headerCell2 = new HeaderCell(AllChatsTabSettingsActivity.this.getParentActivity());
                headerCell2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                headerCell = headerCell2;
            } else if (i == IdFabric$ViewTypes.FABS) {
                Activity parentActivity = AllChatsTabSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                FabsCell fabsCell = new FabsCell(parentActivity);
                fabsCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                headerCell = fabsCell;
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
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                AllChatsTabSettingsActivity allChatsTabSettingsActivity = AllChatsTabSettingsActivity.this;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i != allChatsTabSettingsActivity.enableRow) {
                    if (i == allChatsTabSettingsActivity.iconInsteadTitleRow) {
                        textCheckCell.setType(0);
                        textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.all_chats_tab_settings_icon_instead_text_item_title), allChatsTabSettingsActivity.getFiltersController().isIconInsteadAllChatsTabTitleEnabled(), needDivider);
                        return;
                    }
                    return;
                }
                textCheckCell.setType(1);
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.all_chats_tab_settings_enable_item_title), allChatsTabSettingsActivity.getFiltersController().isAllChatsTabEnabled(), needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY && (view instanceof TextInfoPrivacyCell)) {
                AllChatsTabSettingsActivity allChatsTabSettingsActivity2 = AllChatsTabSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i != allChatsTabSettingsActivity2.enableSectionRow) {
                    if (i == allChatsTabSettingsActivity2.fabsSectionRow) {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3301R.string.create_folder_change_fab_section_description));
                        textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(allChatsTabSettingsActivity2.getParentActivity(), C3301R.C3303drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    }
                } else if (allChatsTabSettingsActivity2.getFiltersController().isAllChatsTabEnabled()) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(allChatsTabSettingsActivity2.getParentActivity(), C3301R.C3303drawable.greydivider, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.setText(null);
                    textInfoPrivacyCell.setFixedSize(12);
                } else {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(allChatsTabSettingsActivity2.getParentActivity(), C3301R.C3303drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3301R.string.all_chats_tab_settings_enable_item_hint));
                }
            } else if (itemViewType == IdFabric$ViewTypes.HEADER && (view instanceof HeaderCell)) {
                HeaderCell headerCell = (HeaderCell) view;
                if (i == AllChatsTabSettingsActivity.this.iconInsteadTitleHeaderRow) {
                    headerCell.setText(LocaleController.getInternalString(C3301R.string.all_chats_tab_settings_icon_instead_text_header));
                }
            } else if (itemViewType == IdFabric$ViewTypes.FABS && (view instanceof FabsCell)) {
                AllChatsTabSettingsActivity allChatsTabSettingsActivity3 = AllChatsTabSettingsActivity.this;
                FabsCell fabsCell = (FabsCell) view;
                if (i == allChatsTabSettingsActivity3.fabsRow) {
                    fabsCell.setFabs(allChatsTabSettingsActivity3.getFiltersController().getSelectedAllChatsTabFabs());
                }
            }
        }
    }
}
