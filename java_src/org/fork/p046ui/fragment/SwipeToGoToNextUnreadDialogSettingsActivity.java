package org.fork.p046ui.fragment;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.storage.data.utils.extentions.CollectionExtKt;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.ToolsController;
import org.fork.enums.DialogType;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: SwipeToGoToNextUnreadDialogSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity */
/* loaded from: classes4.dex */
public final class SwipeToGoToNextUnreadDialogSettingsActivity extends BaseFragment {
    private int considerArchiveRow;
    private int considerArchiveSectionRow;
    private final Lazy dialogTypes$delegate;
    private int dialogTypesEndRow;
    private int dialogTypesHeaderRow;
    private int dialogTypesStartRow;
    private int enableRow;
    private int enableSectionRow;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Lazy rootView$delegate;
    private int rowCount;

    public SwipeToGoToNextUnreadDialogSettingsActivity() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(new SwipeToGoToNextUnreadDialogSettingsActivity$rootView$2(this));
        this.rootView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new SwipeToGoToNextUnreadDialogSettingsActivity$listView$2(this));
        this.listView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new SwipeToGoToNextUnreadDialogSettingsActivity$listAdapter$2(this));
        this.listAdapter$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(SwipeToGoToNextUnreadDialogSettingsActivity$dialogTypes$2.INSTANCE);
        this.dialogTypes$delegate = lazy4;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogType[] getDialogTypes() {
        return (DialogType[]) this.dialogTypes$delegate.getValue();
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
        getToolsController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundChecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundUnchecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundCheckText"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlue"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumb"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumbChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelector"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelectorChecked"), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3222ActionBar c3222ActionBar = this.actionBar;
        c3222ActionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        c3222ActionBar.setAllowOverlayTitle(true);
        c3222ActionBar.setTitle(LocaleController.getInternalString(C3158R.string.settings_interface_swipe_to_next_unread_dialog));
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: org.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
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
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity$$ExternalSyntheticLambda0
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
                SwipeToGoToNextUnreadDialogSettingsActivity.m2085initListView$lambda8$lambda7(SwipeToGoToNextUnreadDialogSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListView$lambda-8$lambda-7  reason: not valid java name */
    public static final void m2085initListView$lambda8$lambda7(SwipeToGoToNextUnreadDialogSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckbox();
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
        return i == IdFabric$ViewTypes.TEXT_CHECK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY || i == IdFabric$ViewTypes.HEADER) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SwipeToGoToNextUnreadDialogSettingsActivity.kt */
    /* renamed from: org.fork.ui.fragment.SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        final /* synthetic */ SwipeToGoToNextUnreadDialogSettingsActivity this$0;

        public ListAdapter(SwipeToGoToNextUnreadDialogSettingsActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            updateRows();
        }

        public final void updateRows() {
            this.this$0.rowCount = 0;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity = this.this$0;
            int i = swipeToGoToNextUnreadDialogSettingsActivity.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity.rowCount = i + 1;
            swipeToGoToNextUnreadDialogSettingsActivity.enableRow = i;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity2 = this.this$0;
            int i2 = swipeToGoToNextUnreadDialogSettingsActivity2.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity2.rowCount = i2 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity2.enableSectionRow = i2;
            if (!this.this$0.getToolsController().isSwipeToGoToNextUnreadDialogEnabled()) {
                this.this$0.considerArchiveRow = -1;
                this.this$0.considerArchiveSectionRow = -1;
                this.this$0.dialogTypesHeaderRow = -1;
                this.this$0.dialogTypesStartRow = -1;
                this.this$0.dialogTypesEndRow = -1;
                return;
            }
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity3 = this.this$0;
            int i3 = swipeToGoToNextUnreadDialogSettingsActivity3.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity3.rowCount = i3 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity3.considerArchiveRow = i3;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity4 = this.this$0;
            int i4 = swipeToGoToNextUnreadDialogSettingsActivity4.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity4.rowCount = i4 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity4.considerArchiveSectionRow = i4;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity5 = this.this$0;
            int i5 = swipeToGoToNextUnreadDialogSettingsActivity5.rowCount;
            swipeToGoToNextUnreadDialogSettingsActivity5.rowCount = i5 + 1;
            swipeToGoToNextUnreadDialogSettingsActivity5.dialogTypesHeaderRow = i5;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity6 = this.this$0;
            swipeToGoToNextUnreadDialogSettingsActivity6.dialogTypesStartRow = swipeToGoToNextUnreadDialogSettingsActivity6.rowCount;
            this.this$0.rowCount += this.this$0.getDialogTypes().length;
            SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity7 = this.this$0;
            swipeToGoToNextUnreadDialogSettingsActivity7.dialogTypesEndRow = swipeToGoToNextUnreadDialogSettingsActivity7.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            boolean z = true;
            if (i != this.this$0.enableSectionRow && i != this.this$0.considerArchiveSectionRow) {
                z = false;
            }
            return z ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY : i == this.this$0.dialogTypesHeaderRow ? IdFabric$ViewTypes.HEADER : IdFabric$ViewTypes.TEXT_CHECK;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return this.this$0.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout headerCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                headerCell = new TextCheckCell(this.this$0.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY) {
                headerCell = new TextInfoPrivacyCell(this.this$0.getParentActivity());
            } else {
                headerCell = new HeaderCell(this.this$0.getParentActivity());
                headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                Unit unit = Unit.INSTANCE;
            }
            headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            Unit unit2 = Unit.INSTANCE;
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = this.this$0.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity = this.this$0;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == swipeToGoToNextUnreadDialogSettingsActivity.enableRow) {
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3158R.string.settings_interface_swipe_to_next_unread_dialog), swipeToGoToNextUnreadDialogSettingsActivity.getToolsController().isSwipeToGoToNextUnreadDialogEnabled(), needDivider);
                    return;
                }
                textCheckCell.setType(0);
                if (i != swipeToGoToNextUnreadDialogSettingsActivity.considerArchiveRow) {
                    DialogType dialogType = swipeToGoToNextUnreadDialogSettingsActivity.getDialogTypes()[i - swipeToGoToNextUnreadDialogSettingsActivity.dialogTypesStartRow];
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(dialogType.getNameResId()), swipeToGoToNextUnreadDialogSettingsActivity.getToolsController().getSelectedDialogTypesForSwipeToGoToNextUnreadDialog().contains(dialogType), needDivider);
                    return;
                }
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3158R.string.swipe_to_next_unread_dialog_consider_archive), swipeToGoToNextUnreadDialogSettingsActivity.getToolsController().isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(), needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY && (view instanceof TextInfoPrivacyCell)) {
                SwipeToGoToNextUnreadDialogSettingsActivity swipeToGoToNextUnreadDialogSettingsActivity2 = this.this$0;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == swipeToGoToNextUnreadDialogSettingsActivity2.enableSectionRow && !swipeToGoToNextUnreadDialogSettingsActivity2.getToolsController().isSwipeToGoToNextUnreadDialogEnabled()) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(swipeToGoToNextUnreadDialogSettingsActivity2.getParentActivity(), C3158R.C3160drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3158R.string.swipe_to_next_unread_dialog_hint));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(swipeToGoToNextUnreadDialogSettingsActivity2.getParentActivity(), C3158R.C3160drawable.greydivider, "windowBackgroundGrayShadow"));
                textInfoPrivacyCell.setText(null);
                textInfoPrivacyCell.setFixedSize(12);
            } else if (itemViewType == IdFabric$ViewTypes.HEADER && (view instanceof HeaderCell) && i == this.this$0.dialogTypesHeaderRow) {
                ((HeaderCell) view).setText(LocaleController.getInternalString(C3158R.string.swipe_to_next_unread_dialog_types));
            }
        }
    }
}
