package com.iMe.fork.p024ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.enums.SortingFilter;
import com.iMe.fork.models.SortingTabState;
import com.iMe.fork.p024ui.dialog.SelectFabsBottomSheet;
import com.iMe.fork.p024ui.fragment.SortingFilterSettingsActivity;
import com.iMe.fork.p024ui.view.ArchiveSwitchTopicsBar;
import com.iMe.fork.p024ui.view.SortingFilterCell;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: SortingFilterSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity */
/* loaded from: classes4.dex */
public final class SortingFilterSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SortingFilterSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(SortingFilterSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(SortingFilterSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;", 0))};
    private int archiveSwitchTopicsBarRow;
    private boolean currentArchive;
    private int dragAndDropInfoRow;
    private int enableRow;
    private int enableSectionRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private int tabsRowEnd;
    private int tabsRowStart;
    private ArchiveSwitchTopicsBar topicsBar;

    public SortingFilterSettingsActivity() {
        this(false, 1, null);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public /* synthetic */ SortingFilterSettingsActivity(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    public final boolean getCurrentArchive() {
        return this.currentArchive;
    }

    public final void setCurrentArchive(boolean z) {
        this.currentArchive = z;
    }

    public SortingFilterSettingsActivity(boolean z) {
        this.currentArchive = z;
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initRootView;
                initRootView = SortingFilterSettingsActivity.this.initRootView();
                return initRootView;
            }
        }, 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = SortingFilterSettingsActivity.this.initListView();
                return initListView;
            }
        }, 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SortingFilterSettingsActivity.ListAdapter invoke() {
                SortingFilterSettingsActivity sortingFilterSettingsActivity = SortingFilterSettingsActivity.this;
                Activity parentActivity = sortingFilterSettingsActivity.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                return new SortingFilterSettingsActivity.ListAdapter(sortingFilterSettingsActivity, parentActivity);
            }
        }, 1, (Object) null);
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
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
        C3541ActionBar c3541ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                SortingFilterSettingsActivity.getThemeDescriptions$lambda$2(SortingFilterSettingsActivity.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray), new ThemeDescription(c3541ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(getListView(), ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{SortingFilterCell.class}, new String[]{"fabView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_actionBackground));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2(SortingFilterSettingsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ArchiveSwitchTopicsBar archiveSwitchTopicsBar = this$0.topicsBar;
        if (archiveSwitchTopicsBar != null) {
            archiveSwitchTopicsBar.updateSelectedTopicAndColors();
        }
        RecyclerListView listView = this$0.getListView();
        int childCount = listView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = listView.getChildAt(i);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
            SortingFilterCell sortingFilterCell = childAt instanceof SortingFilterCell ? (SortingFilterCell) childAt : null;
            if (sortingFilterCell != null) {
                sortingFilterCell.updateColors();
            }
        }
    }

    private final void setupActionBar() {
        C3541ActionBar c3541ActionBar = this.actionBar;
        c3541ActionBar.setBackButtonImage(C3473R.C3475drawable.ic_ab_back);
        c3541ActionBar.setAllowOverlayTitle(true);
        c3541ActionBar.setTitle(LocaleController.getInternalString(C3473R.string.folder_tabs_sorting_settings));
        c3541ActionBar.setActionBarMenuOnItemClick(new C3541ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3541ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SortingFilterSettingsActivity.this.finishFragment();
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
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerListView);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$$ExternalSyntheticLambda1
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
                SortingFilterSettingsActivity.initListView$lambda$7$lambda$6(SortingFilterSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$7$lambda$6(SortingFilterSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckBox();
            this$0.getFiltersController().toggleSortingEnabled(this$0.currentArchive);
            ListAdapter listAdapter = this$0.getListAdapter();
            int i2 = this$0.rowCount;
            listAdapter.updateRows();
            int abs = Math.abs(i2 - this$0.rowCount);
            if (textCheckCell.isChecked()) {
                listAdapter.notifyItemRangeInserted(this$0.enableSectionRow + 1, abs);
            } else {
                listAdapter.notifyItemRangeRemoved(this$0.enableSectionRow + 1, abs);
            }
            listAdapter.notifyItemChanged(this$0.enableSectionRow);
            this$0.updateChatSwipeAction();
            this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        } else if (view instanceof SortingFilterCell) {
            SortingFilterCell sortingFilterCell = (SortingFilterCell) view;
            if (sortingFilterCell.checkFabTouch(f)) {
                return;
            }
            sortingFilterCell.setChecked(!sortingFilterCell.isChecked());
            this$0.getFiltersController().switchSortingFilterEnabled(this$0.currentArchive, this$0.getSortingIndexByPosition(i));
            this$0.updateChatSwipeAction();
            this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateChatSwipeAction() {
        /*
            r4 = this;
            boolean r0 = r4.currentArchive
            if (r0 == 0) goto L5
            return
        L5:
            com.iMe.fork.controller.FiltersController r0 = r4.getFiltersController()
            boolean r0 = r0.isFoldersHidden()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L25
            org.telegram.messenger.MessagesController r0 = r4.getMessagesController()
            java.util.ArrayList<org.telegram.messenger.MessagesController$DialogFilter> r0 = r0.dialogFilters
            java.lang.String r3 = "messagesController.dialogFilters"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)
            boolean r0 = r0.isEmpty()
            r0 = r0 ^ r1
            if (r0 == 0) goto L25
            r0 = r1
            goto L26
        L25:
            r0 = r2
        L26:
            com.iMe.fork.controller.FiltersController r3 = r4.getFiltersController()
            int r3 = r3.getActiveSortingTabsCount(r2)
            if (r3 <= 0) goto L31
            goto L32
        L31:
            r1 = r2
        L32:
            r2 = 5
            if (r0 != 0) goto L3f
            if (r1 == 0) goto L42
            int r0 = r4.currentAccount
            int r0 = org.telegram.messenger.SharedConfig.getChatSwipeAction(r0)
            if (r0 == r2) goto L42
        L3f:
            org.telegram.messenger.SharedConfig.updateChatListSwipeSetting(r2)
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.fork.p024ui.fragment.SortingFilterSettingsActivity.updateChatSwipeAction():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSortingIndexByPosition(int i) {
        return i - this.tabsRowStart;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK_CELL || i == IdFabric$ViewTypes.SORTING_FILTER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.TOPICS_BAR) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SortingFilterSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context mContext;
        final /* synthetic */ SortingFilterSettingsActivity this$0;

        public ListAdapter(SortingFilterSettingsActivity sortingFilterSettingsActivity, Context mContext) {
            Intrinsics.checkNotNullParameter(mContext, "mContext");
            this.this$0 = sortingFilterSettingsActivity;
            this.mContext = mContext;
            updateRows();
        }

        public final void updateRows() {
            this.this$0.tabsRowStart = -1;
            this.this$0.tabsRowEnd = -1;
            this.this$0.dragAndDropInfoRow = -1;
            this.this$0.rowCount = 0;
            SortingFilterSettingsActivity sortingFilterSettingsActivity = this.this$0;
            int i = sortingFilterSettingsActivity.rowCount;
            sortingFilterSettingsActivity.rowCount = i + 1;
            sortingFilterSettingsActivity.archiveSwitchTopicsBarRow = i;
            SortingFilterSettingsActivity sortingFilterSettingsActivity2 = this.this$0;
            int i2 = sortingFilterSettingsActivity2.rowCount;
            sortingFilterSettingsActivity2.rowCount = i2 + 1;
            sortingFilterSettingsActivity2.enableRow = i2;
            SortingFilterSettingsActivity sortingFilterSettingsActivity3 = this.this$0;
            int i3 = sortingFilterSettingsActivity3.rowCount;
            sortingFilterSettingsActivity3.rowCount = i3 + 1;
            sortingFilterSettingsActivity3.enableSectionRow = i3;
            if (this.this$0.getFiltersController().isSortingEnabled(this.this$0.getCurrentArchive())) {
                SortingFilterSettingsActivity sortingFilterSettingsActivity4 = this.this$0;
                sortingFilterSettingsActivity4.tabsRowStart = sortingFilterSettingsActivity4.rowCount;
                this.this$0.rowCount += SortingFilter.Companion.getSortingFilters(this.this$0.getCurrentArchive()).size();
                SortingFilterSettingsActivity sortingFilterSettingsActivity5 = this.this$0;
                sortingFilterSettingsActivity5.tabsRowEnd = sortingFilterSettingsActivity5.rowCount;
                SortingFilterSettingsActivity sortingFilterSettingsActivity6 = this.this$0;
                int i4 = sortingFilterSettingsActivity6.rowCount;
                sortingFilterSettingsActivity6.rowCount = i4 + 1;
                sortingFilterSettingsActivity6.dragAndDropInfoRow = i4;
            }
        }

        public final void swapElements(int i, int i2) {
            this.this$0.getFiltersController().swapSortingFilters(this.this$0.getCurrentArchive(), this.this$0.getSortingIndexByPosition(i), this.this$0.getSortingIndexByPosition(i2));
            notifyItemMoved(i, i2);
            this.this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == this.this$0.archiveSwitchTopicsBarRow) {
                return IdFabric$ViewTypes.TOPICS_BAR;
            }
            if (i == this.this$0.enableRow) {
                return IdFabric$ViewTypes.TEXT_CHECK_CELL;
            }
            boolean z = true;
            if (i != this.this$0.enableSectionRow && i != this.this$0.dragAndDropInfoRow) {
                z = false;
            }
            return z ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : IdFabric$ViewTypes.SORTING_FILTER;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return this.this$0.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            ArchiveSwitchTopicsBar archiveSwitchTopicsBar;
            Intrinsics.checkNotNullParameter(parent, "parent");
            int i2 = IdFabric$ViewTypes.TOPICS_BAR;
            if (i == i2) {
                Activity parentActivity = this.this$0.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                boolean currentArchive = this.this$0.getCurrentArchive();
                final SortingFilterSettingsActivity sortingFilterSettingsActivity = this.this$0;
                ArchiveSwitchTopicsBar archiveSwitchTopicsBar2 = new ArchiveSwitchTopicsBar(parentActivity, currentArchive, new Function1<Boolean, Unit>() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    public final void invoke(boolean z) {
                        SortingFilterSettingsActivity.this.setCurrentArchive(z);
                        SortingFilterSettingsActivity.ListAdapter listAdapter = SortingFilterSettingsActivity.this.getListAdapter();
                        listAdapter.updateRows();
                        listAdapter.notifyDataSetChanged();
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                        invoke(bool.booleanValue());
                        return Unit.INSTANCE;
                    }
                });
                this.this$0.topicsBar = archiveSwitchTopicsBar2;
                archiveSwitchTopicsBar = archiveSwitchTopicsBar2;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                TextCheckCell textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setType(1);
                archiveSwitchTopicsBar = textCheckCell;
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                archiveSwitchTopicsBar = new TextInfoPrivacyCell(this.mContext);
            } else {
                SortingFilterCell sortingFilterCell = new SortingFilterCell(this.mContext);
                sortingFilterCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                archiveSwitchTopicsBar = sortingFilterCell;
            }
            archiveSwitchTopicsBar.setLayoutParams(new RecyclerView.LayoutParams(-1, i == i2 ? AndroidUtilities.m72dp(36) : -2));
            return new RecyclerListView.Holder(archiveSwitchTopicsBar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, final int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = this.this$0.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if ((view instanceof TextCheckCell) && itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                SortingFilterSettingsActivity sortingFilterSettingsActivity = this.this$0;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == sortingFilterSettingsActivity.enableRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(sortingFilterSettingsActivity.getCurrentArchive() ? C3473R.string.settings_interface_archive_sorting : C3473R.string.sorting_settings_enable_item_title), sortingFilterSettingsActivity.getFiltersController().isSortingEnabled(sortingFilterSettingsActivity.getCurrentArchive()), needDivider);
                }
            } else if ((view instanceof TextInfoPrivacyCell) && itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                SortingFilterSettingsActivity sortingFilterSettingsActivity2 = this.this$0;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == sortingFilterSettingsActivity2.enableSectionRow && sortingFilterSettingsActivity2.getFiltersController().isSortingEnabled(sortingFilterSettingsActivity2.getCurrentArchive())) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(this.mContext, C3473R.C3475drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setText(null);
                    textInfoPrivacyCell.setFixedSize(12);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(this.mContext, C3473R.C3475drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                textInfoPrivacyCell.setText(LocaleController.getInternalString(i == sortingFilterSettingsActivity2.enableSectionRow ? C3473R.string.sorting_settings_enable_item_hint : C3473R.string.sorting_settings_drag_and_drop_hint));
                textInfoPrivacyCell.setFixedSize(0);
            } else if ((view instanceof SortingFilterCell) && itemViewType == IdFabric$ViewTypes.SORTING_FILTER) {
                final SortingFilterSettingsActivity sortingFilterSettingsActivity3 = this.this$0;
                SortingFilterCell sortingFilterCell = (SortingFilterCell) view;
                final SortingTabState sortingTabState = sortingFilterSettingsActivity3.getFiltersController().getSortingTabs(sortingFilterSettingsActivity3.getCurrentArchive()).get(sortingFilterSettingsActivity3.getSortingIndexByPosition(i));
                sortingFilterCell.setState(sortingTabState, needDivider);
                sortingFilterCell.setFabsVisible(sortingTabState.getType().isFabEditable());
                sortingFilterCell.setOnFabsClick(new Runnable() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SortingFilterSettingsActivity.ListAdapter.onBindViewHolder$lambda$8$lambda$7(SortingFilterSettingsActivity.this, sortingTabState, i);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$8$lambda$7(final SortingFilterSettingsActivity this$0, final SortingTabState state, final int i) {
            Set mutableSet;
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(state, "$state");
            Activity parentActivity = this$0.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(state.getFabs());
            this$0.showDialog(new SelectFabsBottomSheet(parentActivity, mutableSet, new Callbacks$Callback1() { // from class: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    SortingFilterSettingsActivity.ListAdapter.onBindViewHolder$lambda$8$lambda$7$lambda$6(SortingTabState.this, this$0, i, (Set) obj);
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$8$lambda$7$lambda$6(SortingTabState state, SortingFilterSettingsActivity this$0, int i, Set fabs) {
            Intrinsics.checkNotNullParameter(state, "$state");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullExpressionValue(fabs, "fabs");
            state.setFabs(fabs);
            this$0.getListAdapter().notifyItemChanged(i);
            this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogFiltersUpdated, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SortingFilterSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.SortingFilterSettingsActivity$TouchHelperCallback */
    /* loaded from: classes4.dex */
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
            return ItemTouchHelper.Callback.makeMovementFlags(viewHolder.getItemViewType() == IdFabric$ViewTypes.SORTING_FILTER ? 3 : 0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(target, "target");
            if (source.getItemViewType() != target.getItemViewType()) {
                return false;
            }
            SortingFilterSettingsActivity.this.getListAdapter().swapElements(source.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                SortingFilterSettingsActivity.this.getListView().cancelClickRunnables(false);
                Intrinsics.checkNotNull(viewHolder);
                viewHolder.itemView.setPressed(true);
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
}
