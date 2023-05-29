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
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.enums.DialogType;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Cells.TextCheckCell;
import org.telegram.p044ui.Cells.TextInfoPrivacyCell;
import org.telegram.p044ui.Components.RecyclerListView;
/* compiled from: SwipeToGoToNextUnreadDialogSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity */
/* loaded from: classes3.dex */
public final class SwipeToGoToNextUnreadDialogSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SwipeToGoToNextUnreadDialogSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(SwipeToGoToNextUnreadDialogSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(SwipeToGoToNextUnreadDialogSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;", 0))};
    private int considerArchiveRow;
    private int considerArchiveSectionRow;
    private final Lazy dialogTypes$delegate;
    private int dialogTypesEndRow;
    private int dialogTypesHeaderRow;
    private int dialogTypesStartRow;
    private int enableRow;
    private int enableSectionRow;
    private int rowCount;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SwipeToGoToNextUnreadDialogSettingsActivity$rootView$2(this), 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SwipeToGoToNextUnreadDialogSettingsActivity$listView$2(this), 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SwipeToGoToNextUnreadDialogSettingsActivity$listAdapter$2(this), 1, (Object) null);

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public SwipeToGoToNextUnreadDialogSettingsActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(SwipeToGoToNextUnreadDialogSettingsActivity$dialogTypes$2.INSTANCE);
        this.dialogTypes$delegate = lazy;
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
    public final DialogType[] getDialogTypes() {
        return (DialogType[]) this.dialogTypes$delegate.getValue();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getToolsController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3356ActionBar c3356ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3356ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3356ActionBar c3356ActionBar = this.actionBar;
        c3356ActionBar.setBackButtonImage(C3290R.C3292drawable.ic_ab_back);
        c3356ActionBar.setAllowOverlayTitle(true);
        c3356ActionBar.setTitle(LocaleController.getInternalString(C3290R.string.settings_interface_swipe_to_next_unread_dialog));
        c3356ActionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SwipeToGoToNextUnreadDialogSettingsActivity.this.finishFragment();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                SwipeToGoToNextUnreadDialogSettingsActivity.initListView$lambda$7$lambda$6(SwipeToGoToNextUnreadDialogSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$7$lambda$6(SwipeToGoToNextUnreadDialogSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckBox();
            if (i == this$0.enableRow) {
                ToolsController toolsController = this$0.getToolsController();
                toolsController.setSwipeToGoToNextUnreadDialogEnabled(!toolsController.isSwipeToGoToNextUnreadDialogEnabled());
                ListAdapter listAdapter = this$0.getListAdapter();
                int i2 = this$0.rowCount;
                listAdapter.updateRows();
                int abs = Math.abs(i2 - this$0.rowCount);
                if (this$0.getToolsController().isSwipeToGoToNextUnreadDialogEnabled()) {
                    listAdapter.notifyItemRangeInserted(this$0.enableSectionRow + 1, abs);
                } else {
                    listAdapter.notifyItemRangeRemoved(this$0.enableSectionRow + 1, abs);
                }
                listAdapter.notifyItemChanged(this$0.enableSectionRow);
            } else if (i == this$0.considerArchiveRow) {
                ToolsController toolsController2 = this$0.getToolsController();
                toolsController2.setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(!toolsController2.isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled());
            } else {
                CollectionExtKt.addOrRemove(this$0.getToolsController().getSelectedDialogTypesForSwipeToGoToNextUnreadDialog(), this$0.getDialogTypes()[i - this$0.dialogTypesStartRow]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK_CELL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.HEADER_CELL) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SwipeToGoToNextUnreadDialogSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            SwipeToGoToNextUnreadDialogSettingsActivity.this.rowCount = 0;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity = SwipeToGoToNextUnreadDialogSettingsActivity.this;
            int i = swipeToGoToNextUnreadDialogSettingsActivity.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity.rowCount = i + 1;
            swipeToGoToNextUnreadDialogSettingsActivity.enableRow = i;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity2 = SwipeToGoToNextUnreadDialogSettingsActivity.this;
            int i2 = swipeToGoToNextUnreadDialogSettingsActivity2.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity2.rowCount = i2 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity2.enableSectionRow = i2;
            if (!SwipeToGoToNextUnreadDialogSettingsActivity.this.getToolsController().isSwipeToGoToNextUnreadDialogEnabled()) {
                SwipeToGoToNextUnreadDialogSettingsActivity.this.considerArchiveRow = -1;
                SwipeToGoToNextUnreadDialogSettingsActivity.this.considerArchiveSectionRow = -1;
                SwipeToGoToNextUnreadDialogSettingsActivity.this.dialogTypesHeaderRow = -1;
                SwipeToGoToNextUnreadDialogSettingsActivity.this.dialogTypesStartRow = -1;
                SwipeToGoToNextUnreadDialogSettingsActivity.this.dialogTypesEndRow = -1;
                return;
            }
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity3 = SwipeToGoToNextUnreadDialogSettingsActivity.this;
            int i3 = swipeToGoToNextUnreadDialogSettingsActivity3.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity3.rowCount = i3 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity3.considerArchiveRow = i3;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity4 = SwipeToGoToNextUnreadDialogSettingsActivity.this;
            int i4 = swipeToGoToNextUnreadDialogSettingsActivity4.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity4.rowCount = i4 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity4.considerArchiveSectionRow = i4;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity5 = SwipeToGoToNextUnreadDialogSettingsActivity.this;
            int i5 = swipeToGoToNextUnreadDialogSettingsActivity5.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity5.rowCount = i5 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity5.dialogTypesHeaderRow = i5;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity6 = SwipeToGoToNextUnreadDialogSettingsActivity.this;
            swipeToGoToNextUnreadDialogSettingsActivity6.dialogTypesStartRow = swipeToGoToNextUnreadDialogSettingsActivity6.rowCount;
            SwipeToGoToNextUnreadDialogSettingsActivity.this.rowCount += SwipeToGoToNextUnreadDialogSettingsActivity.this.getDialogTypes().length;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity7 = SwipeToGoToNextUnreadDialogSettingsActivity.this;
            swipeToGoToNextUnreadDialogSettingsActivity7.dialogTypesEndRow = swipeToGoToNextUnreadDialogSettingsActivity7.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SwipeToGoToNextUnreadDialogSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            boolean z = true;
            if (i != SwipeToGoToNextUnreadDialogSettingsActivity.this.enableSectionRow && i != SwipeToGoToNextUnreadDialogSettingsActivity.this.considerArchiveSectionRow) {
                z = false;
            }
            return z ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : i == SwipeToGoToNextUnreadDialogSettingsActivity.this.dialogTypesHeaderRow ? IdFabric$ViewTypes.HEADER_CELL : IdFabric$ViewTypes.TEXT_CHECK_CELL;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return SwipeToGoToNextUnreadDialogSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout headerCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                headerCell = new TextCheckCell(SwipeToGoToNextUnreadDialogSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                headerCell = new TextInfoPrivacyCell(SwipeToGoToNextUnreadDialogSettingsActivity.this.getParentActivity());
            } else {
                headerCell = new HeaderCell(SwipeToGoToNextUnreadDialogSettingsActivity.this.getParentActivity());
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
            headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = SwipeToGoToNextUnreadDialogSettingsActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity = SwipeToGoToNextUnreadDialogSettingsActivity.this;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == swipeToGoToNextUnreadDialogSettingsActivity.enableRow) {
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3290R.string.settings_interface_swipe_to_next_unread_dialog), swipeToGoToNextUnreadDialogSettingsActivity.getToolsController().isSwipeToGoToNextUnreadDialogEnabled(), needDivider);
                    return;
                }
                textCheckCell.setType(0);
                if (i != swipeToGoToNextUnreadDialogSettingsActivity.considerArchiveRow) {
                    DialogType dialogType = swipeToGoToNextUnreadDialogSettingsActivity.getDialogTypes()[i - swipeToGoToNextUnreadDialogSettingsActivity.dialogTypesStartRow];
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(dialogType.getNameResId()), swipeToGoToNextUnreadDialogSettingsActivity.getToolsController().getSelectedDialogTypesForSwipeToGoToNextUnreadDialog().contains(dialogType), needDivider);
                    return;
                }
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3290R.string.swipe_to_next_unread_dialog_consider_archive), swipeToGoToNextUnreadDialogSettingsActivity.getToolsController().isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(), needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity2 = SwipeToGoToNextUnreadDialogSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == swipeToGoToNextUnreadDialogSettingsActivity2.enableSectionRow && !swipeToGoToNextUnreadDialogSettingsActivity2.getToolsController().isSwipeToGoToNextUnreadDialogEnabled()) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(swipeToGoToNextUnreadDialogSettingsActivity2.getParentActivity(), C3290R.C3292drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3290R.string.swipe_to_next_unread_dialog_hint));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(swipeToGoToNextUnreadDialogSettingsActivity2.getParentActivity(), C3290R.C3292drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                textInfoPrivacyCell.setText(null);
                textInfoPrivacyCell.setFixedSize(12);
            } else if (itemViewType == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell) && i == SwipeToGoToNextUnreadDialogSettingsActivity.this.dialogTypesHeaderRow) {
                ((HeaderCell) view).setText(LocaleController.getInternalString(C3290R.string.swipe_to_next_unread_dialog_types));
            }
        }
    }
}
