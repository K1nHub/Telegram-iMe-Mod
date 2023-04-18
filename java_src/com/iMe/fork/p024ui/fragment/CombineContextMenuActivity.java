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
import com.iMe.fork.controller.ToolsController;
import com.iMe.fork.enums.MessagePopupItem;
import com.iMe.fork.enums.PhotoViewerMenuItem;
import com.iMe.fork.p024ui.view.MediaSwitchTopicsBar;
import com.iMe.fork.p024ui.view.SortingFilterCell;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Cells.TextCheckBoxCell;
import org.telegram.p044ui.Cells.TextCheckCell;
import org.telegram.p044ui.Components.RecyclerListView;
/* compiled from: CombineContextMenuActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.CombineContextMenuActivity */
/* loaded from: classes3.dex */
public final class CombineContextMenuActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CombineContextMenuActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(CombineContextMenuActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/CombineContextMenuActivity$ListAdapter;", 0)), Reflection.property1(new PropertyReference1Impl(CombineContextMenuActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0))};
    private boolean currentMessagesContextMenu;
    private int enableRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private int mediaSwitchTopicsBarRow;
    private MessagePopupItem[] messagesPopupItems;
    private PhotoViewerMenuItem[] photoViewerMenuItems;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private int tabsRowEnd;
    private int tabsRowStart;
    private MediaSwitchTopicsBar topicsBar;

    public CombineContextMenuActivity() {
        this(false, 1, null);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public CombineContextMenuActivity(boolean z) {
        this.currentMessagesContextMenu = z;
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CombineContextMenuActivity$rootView$2(this), 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CombineContextMenuActivity$listAdapter$2(this), 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new CombineContextMenuActivity$listView$2(this), 1, (Object) null);
        this.messagesPopupItems = MessagePopupItem.values();
        this.photoViewerMenuItems = PhotoViewerMenuItem.values();
    }

    public /* synthetic */ CombineContextMenuActivity(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    public final boolean getCurrentMessagesContextMenu() {
        return this.currentMessagesContextMenu;
    }

    public final void setCurrentMessagesContextMenu(boolean z) {
        this.currentMessagesContextMenu = z;
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getToolsController().saveConfig();
        SharedConfig.saveConfig();
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

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.CombineContextMenuActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                CombineContextMenuActivity.getThemeDescriptions$lambda$2(CombineContextMenuActivity.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundChecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundUnchecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundCheckText"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlue"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumb"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumbChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelector"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelectorChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2(CombineContextMenuActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MediaSwitchTopicsBar mediaSwitchTopicsBar = this$0.topicsBar;
        if (mediaSwitchTopicsBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("topicsBar");
            mediaSwitchTopicsBar = null;
        }
        mediaSwitchTopicsBar.updateSelectedTopicAndColors();
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
        C3306ActionBar c3306ActionBar = this.actionBar;
        c3306ActionBar.setBackButtonImage(C3242R.C3244drawable.ic_ab_back);
        c3306ActionBar.setAllowOverlayTitle(true);
        c3306ActionBar.setTitle(LocaleController.getInternalString(C3242R.string.settings_interface_message_context_menu));
        c3306ActionBar.setActionBarMenuOnItemClick(new C3306ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.CombineContextMenuActivity$setupActionBar$1$1
            @Override // org.telegram.p044ui.ActionBar.C3306ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CombineContextMenuActivity.this.finishFragment();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.CombineContextMenuActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                CombineContextMenuActivity.initListView$lambda$7$lambda$6(CombineContextMenuActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$7$lambda$6(CombineContextMenuActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckbox();
            ToolsController toolsController = this$0.getToolsController();
            toolsController.setMessagePopupAggregatorEnabled(!toolsController.isMessagePopupAggregatorEnabled());
            toolsController.saveConfig();
        } else if (view instanceof TextCheckBoxCell) {
            TextCheckBoxCell textCheckBoxCell = (TextCheckBoxCell) view;
            textCheckBoxCell.setChecked(!textCheckBoxCell.isChecked());
            if (this$0.currentMessagesContextMenu) {
                Set<MessagePopupItem> selectedMessagePopupItems = this$0.getToolsController().getSelectedMessagePopupItems();
                MessagePopupItem messagePopupItem = this$0.messagesPopupItems[i - this$0.tabsRowStart];
                if (selectedMessagePopupItems.contains(messagePopupItem)) {
                    selectedMessagePopupItems.remove(messagePopupItem);
                    return;
                } else {
                    selectedMessagePopupItems.add(messagePopupItem);
                    return;
                }
            }
            Set<PhotoViewerMenuItem> set = SharedConfig.selectedPhotoViewerMenuItems;
            PhotoViewerMenuItem photoViewerMenuItem = this$0.photoViewerMenuItems[i - this$0.tabsRowStart];
            if (set.contains(photoViewerMenuItem)) {
                set.remove(photoViewerMenuItem);
            } else {
                set.add(photoViewerMenuItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK || i == IdFabric$ViewTypes.SORTING_FILTER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CombineContextMenuActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.CombineContextMenuActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context mContext;
        final /* synthetic */ CombineContextMenuActivity this$0;

        public ListAdapter(CombineContextMenuActivity combineContextMenuActivity, Context mContext) {
            Intrinsics.checkNotNullParameter(mContext, "mContext");
            this.this$0 = combineContextMenuActivity;
            this.mContext = mContext;
            updateRows();
        }

        public final void updateRows() {
            this.this$0.tabsRowStart = -1;
            this.this$0.tabsRowEnd = -1;
            this.this$0.rowCount = 0;
            CombineContextMenuActivity combineContextMenuActivity = this.this$0;
            int i = combineContextMenuActivity.rowCount;
            combineContextMenuActivity.rowCount = i + 1;
            combineContextMenuActivity.enableRow = i;
            CombineContextMenuActivity combineContextMenuActivity2 = this.this$0;
            int i2 = combineContextMenuActivity2.rowCount;
            combineContextMenuActivity2.rowCount = i2 + 1;
            combineContextMenuActivity2.mediaSwitchTopicsBarRow = i2;
            CombineContextMenuActivity combineContextMenuActivity3 = this.this$0;
            combineContextMenuActivity3.tabsRowStart = combineContextMenuActivity3.rowCount;
            this.this$0.rowCount += this.this$0.getCurrentMessagesContextMenu() ? this.this$0.messagesPopupItems.length : this.this$0.photoViewerMenuItems.length;
            CombineContextMenuActivity combineContextMenuActivity4 = this.this$0;
            combineContextMenuActivity4.tabsRowEnd = combineContextMenuActivity4.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == this.this$0.mediaSwitchTopicsBarRow ? IdFabric$ViewTypes.TOPICS_BAR : i == this.this$0.enableRow ? IdFabric$ViewTypes.TEXT_CHECK : IdFabric$ViewTypes.TEXT_CHECK_BOX;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return this.this$0.isClickableViewType(holder.getItemViewType());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            TextCheckBoxCell textCheckBoxCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TOPICS_BAR) {
                Activity parentActivity = this.this$0.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                MediaSwitchTopicsBar mediaSwitchTopicsBar = new MediaSwitchTopicsBar(parentActivity, this.this$0.getCurrentMessagesContextMenu(), new CombineContextMenuActivity$ListAdapter$onCreateViewHolder$1(this.this$0));
                this.this$0.topicsBar = mediaSwitchTopicsBar;
                textCheckBoxCell = mediaSwitchTopicsBar;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                TextCheckCell textCheckCell = new TextCheckCell(this.mContext);
                textCheckCell.setType(1);
                textCheckBoxCell = textCheckCell;
            } else {
                TextCheckBoxCell textCheckBoxCell2 = new TextCheckBoxCell(this.this$0.getParentActivity(), true, false);
                textCheckBoxCell2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textCheckBoxCell = textCheckBoxCell2;
            }
            textCheckBoxCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCheckBoxCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean z = i < getItemCount() - 1;
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if ((view instanceof TextCheckCell) && itemViewType == IdFabric$ViewTypes.TEXT_CHECK) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                textCheckCell.setType(0);
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3242R.string.settings_interface_message_popup_aggregator), this.this$0.getToolsController().isMessagePopupAggregatorEnabled(), z);
            } else if ((view instanceof TextCheckBoxCell) && itemViewType == IdFabric$ViewTypes.TEXT_CHECK_BOX) {
                if (this.this$0.getCurrentMessagesContextMenu()) {
                    MessagePopupItem messagePopupItem = this.this$0.messagesPopupItems[i - this.this$0.tabsRowStart];
                    ((TextCheckBoxCell) view).setTextAndCheck(messagePopupItem.getTitle(), this.this$0.getToolsController().getSelectedMessagePopupItems().contains(messagePopupItem), z);
                    return;
                }
                PhotoViewerMenuItem photoViewerMenuItem = this.this$0.photoViewerMenuItems[i - this.this$0.tabsRowStart];
                ((TextCheckBoxCell) view).setTextAndCheck(LocaleController.getInternalString(photoViewerMenuItem.getTitleResId()), SharedConfig.selectedPhotoViewerMenuItems.contains(photoViewerMenuItem), z);
            }
        }
    }
}
