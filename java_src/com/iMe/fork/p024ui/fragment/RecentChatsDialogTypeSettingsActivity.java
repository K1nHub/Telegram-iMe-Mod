package com.iMe.fork.p024ui.fragment;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.RecentChatsController;
import com.iMe.fork.enums.DrawStatusType;
import com.iMe.fork.enums.RecentChatsDialogType;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextCheckCell2;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: RecentChatsDialogTypeSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.RecentChatsDialogTypeSettingsActivity */
/* loaded from: classes3.dex */
public final class RecentChatsDialogTypeSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(RecentChatsDialogTypeSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(RecentChatsDialogTypeSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(RecentChatsDialogTypeSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;", 0))};
    private final Lazy dialogTypes$delegate;
    private int dialogTypesEndRow;
    private boolean dialogTypesExpandableList;
    private int dialogTypesExpandableListRow;
    private int dialogTypesStartRow;
    private int dialogsTypesSectionRow;
    private final Lazy drawStatusTypes$delegate;
    private boolean drawStatusTypesExpandableList;
    private int drawStatusTypesExpandableListEndRow;
    private int drawStatusTypesExpandableListRow;
    private int drawStatusTypesExpandableListStartRow;
    private int enableArchiveRow;
    private int enableRow;
    private int enableSectionRow;
    private int rowCount;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new RecentChatsDialogTypeSettingsActivity$rootView$2(this), 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new RecentChatsDialogTypeSettingsActivity$listView$2(this), 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new RecentChatsDialogTypeSettingsActivity$listAdapter$2(this), 1, (Object) null);

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public RecentChatsDialogTypeSettingsActivity() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(RecentChatsDialogTypeSettingsActivity$dialogTypes$2.INSTANCE);
        this.dialogTypes$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2.INSTANCE);
        this.drawStatusTypes$delegate = lazy2;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final RecentChatsDialogType[] getDialogTypes() {
        return (RecentChatsDialogType[]) this.dialogTypes$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DrawStatusType[] getDrawStatusTypes() {
        return (DrawStatusType[]) this.drawStatusTypes$delegate.getValue();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getRecentChatsController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3484ActionBar c3484ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundCheckText;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        int i5 = Theme.key_switchTrackBlueSelectorChecked;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3484ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, TextCheckCell2.class, CheckBoxCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{CheckBoxCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5), new ThemeDescription(getListView(), 0, new Class[]{CheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setAllowOverlayTitle(true);
        c3484ActionBar.setTitle(LocaleController.getInternalString(C3417R.string.settings_interface_recent_chats));
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.RecentChatsDialogTypeSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    RecentChatsDialogTypeSettingsActivity.this.finishFragment();
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
        recyclerListView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.fragment.RecentChatsDialogTypeSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                RecentChatsDialogTypeSettingsActivity.initListView$lambda$8$lambda$7(RecentChatsDialogTypeSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$8$lambda$7(RecentChatsDialogTypeSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof CheckBoxCell) {
            CheckBoxCell checkBoxCell = (CheckBoxCell) view;
            Object tag = checkBoxCell.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            if (((Integer) tag).intValue() < this$0.dialogsTypesSectionRow) {
                CollectionExtKt.addOrRemove(this$0.getRecentChatsController().getSelectedRecentChatsDialogTypes(), this$0.getDialogTypes()[i - this$0.dialogTypesStartRow]);
            } else {
                Set<DrawStatusType> selectedDrawStatusTypes = this$0.getRecentChatsController().getSelectedDrawStatusTypes();
                DrawStatusType[] values = DrawStatusType.values();
                Object tag2 = checkBoxCell.getTag();
                Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type kotlin.Int");
                CollectionExtKt.addOrRemove(selectedDrawStatusTypes, values[((Integer) tag2).intValue() - this$0.drawStatusTypesExpandableListStartRow]);
            }
            this$0.getListAdapter().notifyDataSetChanged();
        } else if (view instanceof TextCheckCell2) {
            if (i == this$0.dialogTypesExpandableListRow) {
                this$0.dialogTypesExpandableList = !this$0.dialogTypesExpandableList;
            } else {
                this$0.drawStatusTypesExpandableList = !this$0.drawStatusTypesExpandableList;
            }
            ListAdapter listAdapter = this$0.getListAdapter();
            listAdapter.updateRows();
            listAdapter.notifyDataSetChanged();
        } else if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckBox();
            if (i == this$0.enableRow) {
                RecentChatsController recentChatsController = this$0.getRecentChatsController();
                recentChatsController.setRecentChatsEnabled(!recentChatsController.isRecentChatsEnabled());
                ListAdapter listAdapter2 = this$0.getListAdapter();
                int i2 = this$0.rowCount;
                listAdapter2.updateRows();
                int abs = Math.abs(i2 - this$0.rowCount);
                if (this$0.getRecentChatsController().isRecentChatsEnabled()) {
                    listAdapter2.notifyItemRangeInserted(this$0.enableSectionRow + 1, abs);
                } else {
                    listAdapter2.notifyItemRangeRemoved(this$0.enableSectionRow + 1, abs);
                }
                listAdapter2.notifyItemChanged(this$0.enableSectionRow);
                this$0.getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
            } else if (i == this$0.enableArchiveRow) {
                RecentChatsController recentChatsController2 = this$0.getRecentChatsController();
                recentChatsController2.setSaveArchiveRecentChatsEnabled(!recentChatsController2.isSaveArchiveRecentChatsEnabled());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK_CELL || i == IdFabric$ViewTypes.TEXT_CHECK_CELL_2 || i == IdFabric$ViewTypes.CHECK_BOX_CELL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.HEADER_CELL) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RecentChatsDialogTypeSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.RecentChatsDialogTypeSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            RecentChatsDialogTypeSettingsActivity.this.rowCount = 0;
            RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity = RecentChatsDialogTypeSettingsActivity.this;
            int i = recentChatsDialogTypeSettingsActivity.rowCount;
            recentChatsDialogTypeSettingsActivity.rowCount = i + 1;
            recentChatsDialogTypeSettingsActivity.enableRow = i;
            RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity2 = RecentChatsDialogTypeSettingsActivity.this;
            int i2 = recentChatsDialogTypeSettingsActivity2.rowCount;
            recentChatsDialogTypeSettingsActivity2.rowCount = i2 + 1;
            recentChatsDialogTypeSettingsActivity2.enableSectionRow = i2;
            RecentChatsDialogTypeSettingsActivity.this.drawStatusTypesExpandableListStartRow = -1;
            RecentChatsDialogTypeSettingsActivity.this.drawStatusTypesExpandableListEndRow = -1;
            RecentChatsDialogTypeSettingsActivity.this.dialogTypesStartRow = -1;
            RecentChatsDialogTypeSettingsActivity.this.dialogTypesEndRow = -1;
            if (!RecentChatsDialogTypeSettingsActivity.this.getRecentChatsController().isRecentChatsEnabled()) {
                RecentChatsDialogTypeSettingsActivity.this.enableArchiveRow = -1;
                RecentChatsDialogTypeSettingsActivity.this.drawStatusTypesExpandableListRow = -1;
                RecentChatsDialogTypeSettingsActivity.this.dialogsTypesSectionRow = -1;
                RecentChatsDialogTypeSettingsActivity.this.dialogTypesExpandableListRow = -1;
                return;
            }
            RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity3 = RecentChatsDialogTypeSettingsActivity.this;
            int i3 = recentChatsDialogTypeSettingsActivity3.rowCount;
            recentChatsDialogTypeSettingsActivity3.rowCount = i3 + 1;
            recentChatsDialogTypeSettingsActivity3.enableArchiveRow = i3;
            RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity4 = RecentChatsDialogTypeSettingsActivity.this;
            int i4 = recentChatsDialogTypeSettingsActivity4.rowCount;
            recentChatsDialogTypeSettingsActivity4.rowCount = i4 + 1;
            recentChatsDialogTypeSettingsActivity4.dialogTypesExpandableListRow = i4;
            if (RecentChatsDialogTypeSettingsActivity.this.dialogTypesExpandableList) {
                RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity5 = RecentChatsDialogTypeSettingsActivity.this;
                recentChatsDialogTypeSettingsActivity5.dialogTypesStartRow = recentChatsDialogTypeSettingsActivity5.rowCount;
                RecentChatsDialogTypeSettingsActivity.this.rowCount += RecentChatsDialogTypeSettingsActivity.this.getDialogTypes().length;
                RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity6 = RecentChatsDialogTypeSettingsActivity.this;
                recentChatsDialogTypeSettingsActivity6.dialogTypesEndRow = recentChatsDialogTypeSettingsActivity6.rowCount;
            }
            RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity7 = RecentChatsDialogTypeSettingsActivity.this;
            int i5 = recentChatsDialogTypeSettingsActivity7.rowCount;
            recentChatsDialogTypeSettingsActivity7.rowCount = i5 + 1;
            recentChatsDialogTypeSettingsActivity7.dialogsTypesSectionRow = i5;
            RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity8 = RecentChatsDialogTypeSettingsActivity.this;
            int i6 = recentChatsDialogTypeSettingsActivity8.rowCount;
            recentChatsDialogTypeSettingsActivity8.rowCount = i6 + 1;
            recentChatsDialogTypeSettingsActivity8.drawStatusTypesExpandableListRow = i6;
            if (RecentChatsDialogTypeSettingsActivity.this.drawStatusTypesExpandableList) {
                RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity9 = RecentChatsDialogTypeSettingsActivity.this;
                recentChatsDialogTypeSettingsActivity9.drawStatusTypesExpandableListStartRow = recentChatsDialogTypeSettingsActivity9.rowCount;
                RecentChatsDialogTypeSettingsActivity.this.rowCount += RecentChatsDialogTypeSettingsActivity.this.getDrawStatusTypes().length;
                RecentChatsDialogTypeSettingsActivity recentChatsDialogTypeSettingsActivity10 = RecentChatsDialogTypeSettingsActivity.this;
                recentChatsDialogTypeSettingsActivity10.drawStatusTypesExpandableListEndRow = recentChatsDialogTypeSettingsActivity10.rowCount;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RecentChatsDialogTypeSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == RecentChatsDialogTypeSettingsActivity.this.enableSectionRow || i == RecentChatsDialogTypeSettingsActivity.this.dialogsTypesSectionRow) {
                return IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL;
            }
            if (i == RecentChatsDialogTypeSettingsActivity.this.drawStatusTypesExpandableListRow || i == RecentChatsDialogTypeSettingsActivity.this.dialogTypesExpandableListRow) {
                return IdFabric$ViewTypes.TEXT_CHECK_CELL_2;
            }
            return i == RecentChatsDialogTypeSettingsActivity.this.enableRow || i == RecentChatsDialogTypeSettingsActivity.this.enableArchiveRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL : IdFabric$ViewTypes.CHECK_BOX_CELL;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return RecentChatsDialogTypeSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            CheckBoxCell checkBoxCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.CHECK_BOX_CELL) {
                CheckBoxCell checkBoxCell2 = new CheckBoxCell(RecentChatsDialogTypeSettingsActivity.this.getParentActivity(), 4, AndroidUtilities.m54dp(20), RecentChatsDialogTypeSettingsActivity.this.getResourceProvider());
                checkBoxCell2.getCheckBoxRound().setDrawBackgroundAsArc(14);
                checkBoxCell2.getCheckBoxRound().setColor(Theme.key_switch2TrackChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                checkBoxCell2.setEnabled(true);
                checkBoxCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                checkBoxCell = checkBoxCell2;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                checkBoxCell = new TextCheckCell(RecentChatsDialogTypeSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                checkBoxCell = new TextInfoPrivacyCell(RecentChatsDialogTypeSettingsActivity.this.getParentActivity());
            } else {
                FrameLayout textCheckCell2 = new TextCheckCell2(RecentChatsDialogTypeSettingsActivity.this.getParentActivity());
                textCheckCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                checkBoxCell = textCheckCell2;
            }
            checkBoxCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(checkBoxCell);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x007e  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.ViewHolder r12, int r13) {
            /*
                Method dump skipped, instructions count: 473
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p024ui.fragment.RecentChatsDialogTypeSettingsActivity.ListAdapter.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$5$lambda$3(TextCheckCell2 this_with, RecentChatsDialogTypeSettingsActivity this$0, ListAdapter this$1) {
            Intrinsics.checkNotNullParameter(this_with, "$this_with");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            if (!this_with.isChecked()) {
                this$0.dialogTypesExpandableList = true;
                this$0.getRecentChatsController().setSelectedRecentChatsDialogTypes(RecentChatsDialogType.Companion.mapNamesToEnums(TelegramPreferenceKeys.User.Default.selectedRecentChatsDialogTypes()));
            } else {
                this$0.dialogTypesExpandableList = false;
                this$0.getRecentChatsController().getSelectedRecentChatsDialogTypes().clear();
            }
            this$0.getRecentChatsController().saveConfig();
            this_with.setChecked(!this_with.isChecked());
            this$1.updateRows();
            this$1.notifyDataSetChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$5$lambda$4(TextCheckCell2 this_with, RecentChatsDialogTypeSettingsActivity this$0, ListAdapter this$1) {
            Intrinsics.checkNotNullParameter(this_with, "$this_with");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            if (!this_with.isChecked()) {
                this$0.drawStatusTypesExpandableList = true;
                this$0.getRecentChatsController().setSelectedDrawStatusTypes(DrawStatusType.Companion.mapNamesToEnums(TelegramPreferenceKeys.User.Default.selectedDrawStatusTypes()));
            } else {
                this$0.drawStatusTypesExpandableList = false;
                this$0.getRecentChatsController().getSelectedDrawStatusTypes().clear();
            }
            this$0.getRecentChatsController().saveConfig();
            this_with.setChecked(!this_with.isChecked());
            this$1.updateRows();
            this$1.notifyDataSetChanged();
        }
    }
}
