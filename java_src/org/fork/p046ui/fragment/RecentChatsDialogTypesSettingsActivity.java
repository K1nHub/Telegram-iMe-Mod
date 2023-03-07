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
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.storage.data.utils.extentions.CollectionExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.fork.controller.RecentChatsController;
import org.fork.enums.DialogType;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: RecentChatsDialogTypesSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.RecentChatsDialogTypesSettingsActivity */
/* loaded from: classes4.dex */
public final class RecentChatsDialogTypesSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(RecentChatsDialogTypesSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(RecentChatsDialogTypesSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(RecentChatsDialogTypesSettingsActivity.class, "listAdapter", "getListAdapter()Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(RecentChatsDialogTypesSettingsActivity.class, "dialogTypes", "getDialogTypes()[Lorg/fork/enums/DialogType;", 0))};
    private int dialogTypesEndRow;
    private int dialogTypesHeaderRow;
    private int dialogTypesStartRow;
    private int enableRow;
    private int enableSectionRow;
    private int rowCount;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new RecentChatsDialogTypesSettingsActivity$rootView$2(this), 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new RecentChatsDialogTypesSettingsActivity$listView$2(this), 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new RecentChatsDialogTypesSettingsActivity$listAdapter$2(this), 1, (Object) null);
    private final ResettableLazy dialogTypes$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, RecentChatsDialogTypesSettingsActivity$dialogTypes$2.INSTANCE, 1, (Object) null);

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogType[] getDialogTypes() {
        return (DialogType[]) this.dialogTypes$delegate.getValue(this, $$delegatedProperties[3]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getRecentChatsController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        this.fragmentView = rootView;
        return rootView;
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
        c3222ActionBar.setTitle(LocaleController.getInternalString(C3158R.string.settings_interface_recent_chats));
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: org.fork.ui.fragment.RecentChatsDialogTypesSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    RecentChatsDialogTypesSettingsActivity.this.finishFragment();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.fork.ui.fragment.RecentChatsDialogTypesSettingsActivity$$ExternalSyntheticLambda0
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
                RecentChatsDialogTypesSettingsActivity.m2067initListView$lambda7$lambda6(RecentChatsDialogTypesSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListView$lambda-7$lambda-6  reason: not valid java name */
    public static final void m2067initListView$lambda7$lambda6(RecentChatsDialogTypesSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckbox();
            if (i == this$0.enableRow) {
                RecentChatsController recentChatsController = this$0.getRecentChatsController();
                recentChatsController.setRecentChatsEnabled(!recentChatsController.isRecentChatsEnabled());
                ListAdapter listAdapter = this$0.getListAdapter();
                int i2 = this$0.rowCount;
                listAdapter.updateRows();
                int abs = Math.abs(i2 - this$0.rowCount);
                if (this$0.getRecentChatsController().isRecentChatsEnabled()) {
                    listAdapter.notifyItemRangeInserted(this$0.enableSectionRow + 1, abs);
                } else {
                    listAdapter.notifyItemRangeRemoved(this$0.enableSectionRow + 1, abs);
                }
                listAdapter.notifyItemChanged(this$0.enableSectionRow);
                this$0.getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
                return;
            }
            CollectionExtKt.addOrRemove(this$0.getRecentChatsController().getSelectedRecentChatsDialogTypes(), this$0.getDialogTypes()[i - this$0.dialogTypesStartRow]);
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
    /* compiled from: RecentChatsDialogTypesSettingsActivity.kt */
    /* renamed from: org.fork.ui.fragment.RecentChatsDialogTypesSettingsActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        final /* synthetic */ RecentChatsDialogTypesSettingsActivity this$0;

        public ListAdapter(RecentChatsDialogTypesSettingsActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            updateRows();
        }

        public final void updateRows() {
            this.this$0.rowCount = 0;
            RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity = this.this$0;
            int i = recentChatsDialogTypesSettingsActivity.rowCount;
            recentChatsDialogTypesSettingsActivity.rowCount = i + 1;
            recentChatsDialogTypesSettingsActivity.enableRow = i;
            RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity2 = this.this$0;
            int i2 = recentChatsDialogTypesSettingsActivity2.rowCount;
            recentChatsDialogTypesSettingsActivity2.rowCount = i2 + 1;
            recentChatsDialogTypesSettingsActivity2.enableSectionRow = i2;
            if (!this.this$0.getRecentChatsController().isRecentChatsEnabled()) {
                this.this$0.dialogTypesHeaderRow = -1;
                this.this$0.dialogTypesStartRow = -1;
                this.this$0.dialogTypesEndRow = -1;
                return;
            }
            RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity3 = this.this$0;
            int i3 = recentChatsDialogTypesSettingsActivity3.rowCount;
            recentChatsDialogTypesSettingsActivity3.rowCount = i3 + 1;
            recentChatsDialogTypesSettingsActivity3.dialogTypesHeaderRow = i3;
            RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity4 = this.this$0;
            recentChatsDialogTypesSettingsActivity4.dialogTypesStartRow = recentChatsDialogTypesSettingsActivity4.rowCount;
            this.this$0.rowCount += this.this$0.getDialogTypes().length;
            RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity5 = this.this$0;
            recentChatsDialogTypesSettingsActivity5.dialogTypesEndRow = recentChatsDialogTypesSettingsActivity5.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == this.this$0.enableSectionRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY : i == this.this$0.dialogTypesHeaderRow ? IdFabric$ViewTypes.HEADER : IdFabric$ViewTypes.TEXT_CHECK;
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
                RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity = this.this$0;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == recentChatsDialogTypesSettingsActivity.enableRow) {
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3158R.string.settings_interface_recent_chats), recentChatsDialogTypesSettingsActivity.getRecentChatsController().isRecentChatsEnabled(), needDivider);
                    return;
                }
                textCheckCell.setType(0);
                DialogType dialogType = recentChatsDialogTypesSettingsActivity.getDialogTypes()[i - recentChatsDialogTypesSettingsActivity.dialogTypesStartRow];
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(dialogType.getNameResId()), recentChatsDialogTypesSettingsActivity.getRecentChatsController().getSelectedRecentChatsDialogTypes().contains(dialogType), needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY && (view instanceof TextInfoPrivacyCell)) {
                RecentChatsDialogTypesSettingsActivity recentChatsDialogTypesSettingsActivity2 = this.this$0;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == recentChatsDialogTypesSettingsActivity2.enableSectionRow && !recentChatsDialogTypesSettingsActivity2.getRecentChatsController().isRecentChatsEnabled()) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(recentChatsDialogTypesSettingsActivity2.getParentActivity(), C3158R.C3160drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3158R.string.swipe_to_next_unread_dialog_hint));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(recentChatsDialogTypesSettingsActivity2.getParentActivity(), C3158R.C3160drawable.greydivider, "windowBackgroundGrayShadow"));
                textInfoPrivacyCell.setText(null);
                textInfoPrivacyCell.setFixedSize(12);
            } else if (itemViewType == IdFabric$ViewTypes.HEADER && (view instanceof HeaderCell) && i == this.this$0.dialogTypesHeaderRow) {
                ((HeaderCell) view).setText(LocaleController.getInternalString(C3158R.string.swipe_to_next_unread_dialog_types));
            }
        }
    }
}
