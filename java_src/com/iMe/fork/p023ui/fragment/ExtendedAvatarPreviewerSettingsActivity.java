package com.iMe.fork.p023ui.fragment;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.enums.ExtendedAvatarPreviewerItem;
import com.iMe.fork.p023ui.fragment.ExtendedAvatarPreviewerSettingsActivity;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ActionBar.ThemeDescription;
import org.telegram.p042ui.Cells.HeaderCell;
import org.telegram.p042ui.Cells.TextCheckBoxCell;
import org.telegram.p042ui.Cells.TextCheckCell;
import org.telegram.p042ui.Cells.TextInfoPrivacyCell;
import org.telegram.p042ui.Components.RecyclerListView;
/* compiled from: ExtendedAvatarPreviewerSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity */
/* loaded from: classes3.dex */
public final class ExtendedAvatarPreviewerSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ExtendedAvatarPreviewerSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(ExtendedAvatarPreviewerSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(ExtendedAvatarPreviewerSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;", 0))};
    private int enableRow;
    private int enableSectionRow;
    private final Lazy items$delegate;
    private int itemsEndRow;
    private int itemsHeaderRow;
    private int itemsStartRow;
    private final Lazy newItems$delegate;
    private int openByClickRow;
    private int openByClickSectionRow;
    private int rowCount;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$rootView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            FrameLayout initRootView;
            initRootView = ExtendedAvatarPreviewerSettingsActivity.this.initRootView();
            return initRootView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$listView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final RecyclerListView invoke() {
            RecyclerListView initListView;
            initListView = ExtendedAvatarPreviewerSettingsActivity.this.initListView();
            return initListView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$listAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ExtendedAvatarPreviewerSettingsActivity.ListAdapter invoke() {
            return new ExtendedAvatarPreviewerSettingsActivity.ListAdapter();
        }
    }, 1, (Object) null);

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public ExtendedAvatarPreviewerSettingsActivity() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ExtendedAvatarPreviewerItem[]>() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$items$2
            @Override // kotlin.jvm.functions.Function0
            public final ExtendedAvatarPreviewerItem[] invoke() {
                return ExtendedAvatarPreviewerItem.values();
            }
        });
        this.items$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<List<ExtendedAvatarPreviewerItem>>() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$newItems$2
            @Override // kotlin.jvm.functions.Function0
            public final List<ExtendedAvatarPreviewerItem> invoke() {
                List<ExtendedAvatarPreviewerItem> mutableList;
                List<ExtendedAvatarPreviewerItem> selectedExtendedAvatarPreviewerItems = SharedConfig.selectedExtendedAvatarPreviewerItems;
                Intrinsics.checkNotNullExpressionValue(selectedExtendedAvatarPreviewerItems, "selectedExtendedAvatarPreviewerItems");
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) selectedExtendedAvatarPreviewerItems);
                return mutableList;
            }
        });
        this.newItems$delegate = lazy2;
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
    public final ExtendedAvatarPreviewerItem[] getItems() {
        return (ExtendedAvatarPreviewerItem[]) this.items$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ExtendedAvatarPreviewerItem> getNewItems() {
        return (List) this.newItems$delegate.getValue();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p042ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        List<ExtendedAvatarPreviewerItem> newItems = getNewItems();
        if (newItems.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(newItems, new Comparator() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$onFragmentDestroy$$inlined$sortBy$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((ExtendedAvatarPreviewerItem) t).ordinal()), Integer.valueOf(((ExtendedAvatarPreviewerItem) t2).ordinal()));
                    return compareValues;
                }
            });
        }
        SharedConfig.setSelectedExtendedAvatarPreviewerItems(getNewItems());
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p042ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3702ActionBar c3702ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3702ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, TextCheckBoxCell.class, HeaderCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{TextCheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckBoxCell.class}, null, null, null, Theme.key_checkboxSquareUnchecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckBoxCell.class}, null, null, null, Theme.key_checkboxSquareDisabled), new ThemeDescription(getListView(), 0, new Class[]{TextCheckBoxCell.class}, null, null, null, Theme.key_checkboxSquareBackground), new ThemeDescription(getListView(), 0, new Class[]{TextCheckBoxCell.class}, null, null, null, Theme.key_checkboxSquareCheck));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3702ActionBar c3702ActionBar = this.actionBar;
        c3702ActionBar.setBackButtonImage(C3630R.C3632drawable.ic_ab_back);
        c3702ActionBar.setAllowOverlayTitle(true);
        c3702ActionBar.setTitle(LocaleController.getInternalString(C3630R.string.settings_interface_chat_user_options_by_avatar_click_subtitle));
        c3702ActionBar.setActionBarMenuOnItemClick(new C3702ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p042ui.ActionBar.C3702ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ExtendedAvatarPreviewerSettingsActivity.this.finishFragment();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                ExtendedAvatarPreviewerSettingsActivity.initListView$lambda$7$lambda$6(ExtendedAvatarPreviewerSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$7$lambda$6(ExtendedAvatarPreviewerSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckBox();
            if (i == this$0.enableRow) {
                SharedConfig.setExtendedAvatarPreviewerEnabled(!SharedConfig.isExtendedAvatarPreviewerEnabled);
                ListAdapter listAdapter = this$0.getListAdapter();
                int i2 = this$0.rowCount;
                listAdapter.updateRows();
                int abs = Math.abs(i2 - this$0.rowCount);
                if (SharedConfig.isExtendedAvatarPreviewerEnabled) {
                    listAdapter.notifyItemRangeInserted(this$0.enableSectionRow + 1, abs);
                } else {
                    listAdapter.notifyItemRangeRemoved(this$0.enableSectionRow + 1, abs);
                }
                listAdapter.notifyItemChanged(this$0.enableSectionRow);
                return;
            }
            SharedConfig.setExtendedAvatarPreviewerByTapEnabled(!SharedConfig.isExtendedAvatarPreviewerByTapEnabled);
        } else if (view instanceof TextCheckBoxCell) {
            ExtendedAvatarPreviewerItem extendedAvatarPreviewerItem = this$0.getItems()[i - this$0.itemsStartRow];
            List<ExtendedAvatarPreviewerItem> newItems = this$0.getNewItems();
            if (newItems.contains(extendedAvatarPreviewerItem)) {
                if (newItems.size() == 1) {
                    return;
                }
                newItems.remove(extendedAvatarPreviewerItem);
            } else {
                newItems.add(extendedAvatarPreviewerItem);
            }
            TextCheckBoxCell textCheckBoxCell = (TextCheckBoxCell) view;
            textCheckBoxCell.setChecked(!textCheckBoxCell.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK_CELL || i == IdFabric$ViewTypes.TEXT_CHECK_BOX_CELL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.HEADER_CELL) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExtendedAvatarPreviewerSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ExtendedAvatarPreviewerSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            ExtendedAvatarPreviewerSettingsActivity.this.openByClickRow = -1;
            ExtendedAvatarPreviewerSettingsActivity.this.openByClickSectionRow = -1;
            ExtendedAvatarPreviewerSettingsActivity.this.itemsHeaderRow = -1;
            ExtendedAvatarPreviewerSettingsActivity.this.itemsStartRow = -1;
            ExtendedAvatarPreviewerSettingsActivity.this.itemsEndRow = -1;
            ExtendedAvatarPreviewerSettingsActivity.this.rowCount = 0;
            ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity = ExtendedAvatarPreviewerSettingsActivity.this;
            int i = extendedAvatarPreviewerSettingsActivity.rowCount;
            extendedAvatarPreviewerSettingsActivity.rowCount = i + 1;
            extendedAvatarPreviewerSettingsActivity.enableRow = i;
            ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity2 = ExtendedAvatarPreviewerSettingsActivity.this;
            int i2 = extendedAvatarPreviewerSettingsActivity2.rowCount;
            extendedAvatarPreviewerSettingsActivity2.rowCount = i2 + 1;
            extendedAvatarPreviewerSettingsActivity2.enableSectionRow = i2;
            if (SharedConfig.isExtendedAvatarPreviewerEnabled) {
                ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity3 = ExtendedAvatarPreviewerSettingsActivity.this;
                int i3 = extendedAvatarPreviewerSettingsActivity3.rowCount;
                extendedAvatarPreviewerSettingsActivity3.rowCount = i3 + 1;
                extendedAvatarPreviewerSettingsActivity3.openByClickRow = i3;
                ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity4 = ExtendedAvatarPreviewerSettingsActivity.this;
                int i4 = extendedAvatarPreviewerSettingsActivity4.rowCount;
                extendedAvatarPreviewerSettingsActivity4.rowCount = i4 + 1;
                extendedAvatarPreviewerSettingsActivity4.openByClickSectionRow = i4;
                ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity5 = ExtendedAvatarPreviewerSettingsActivity.this;
                int i5 = extendedAvatarPreviewerSettingsActivity5.rowCount;
                extendedAvatarPreviewerSettingsActivity5.rowCount = i5 + 1;
                extendedAvatarPreviewerSettingsActivity5.itemsHeaderRow = i5;
                ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity6 = ExtendedAvatarPreviewerSettingsActivity.this;
                extendedAvatarPreviewerSettingsActivity6.itemsStartRow = extendedAvatarPreviewerSettingsActivity6.rowCount;
                ExtendedAvatarPreviewerSettingsActivity.this.rowCount += ExtendedAvatarPreviewerSettingsActivity.this.getItems().length;
                ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity7 = ExtendedAvatarPreviewerSettingsActivity.this;
                extendedAvatarPreviewerSettingsActivity7.itemsEndRow = extendedAvatarPreviewerSettingsActivity7.rowCount;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ExtendedAvatarPreviewerSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ExtendedAvatarPreviewerSettingsActivity.this.enableRow || i == ExtendedAvatarPreviewerSettingsActivity.this.openByClickRow) {
                return IdFabric$ViewTypes.TEXT_CHECK_CELL;
            }
            return i == ExtendedAvatarPreviewerSettingsActivity.this.enableSectionRow || i == ExtendedAvatarPreviewerSettingsActivity.this.openByClickSectionRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : i == ExtendedAvatarPreviewerSettingsActivity.this.itemsHeaderRow ? IdFabric$ViewTypes.HEADER_CELL : IdFabric$ViewTypes.TEXT_CHECK_BOX_CELL;
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return ExtendedAvatarPreviewerSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            FrameLayout textCheckBoxCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                textCheckBoxCell = new TextCheckCell(ExtendedAvatarPreviewerSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                textCheckBoxCell = new TextInfoPrivacyCell(ExtendedAvatarPreviewerSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.HEADER_CELL) {
                textCheckBoxCell = new HeaderCell(ExtendedAvatarPreviewerSettingsActivity.this.getParentActivity());
                textCheckBoxCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                textCheckBoxCell = new TextCheckBoxCell(ExtendedAvatarPreviewerSettingsActivity.this.getParentActivity());
                textCheckBoxCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            }
            textCheckBoxCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCheckBoxCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = ExtendedAvatarPreviewerSettingsActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == ExtendedAvatarPreviewerSettingsActivity.this.enableRow) {
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3630R.string.settings_interface_chat_user_options_by_avatar_click_subtitle), SharedConfig.isExtendedAvatarPreviewerEnabled, needDivider);
                    return;
                }
                textCheckCell.setType(0);
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3630R.string.settings_interface_chat_user_options_by_avatar_click_title), SharedConfig.isExtendedAvatarPreviewerByTapEnabled, needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                ExtendedAvatarPreviewerSettingsActivity extendedAvatarPreviewerSettingsActivity = ExtendedAvatarPreviewerSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == extendedAvatarPreviewerSettingsActivity.enableSectionRow && !SharedConfig.isExtendedAvatarPreviewerEnabled) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(extendedAvatarPreviewerSettingsActivity.getParentActivity(), C3630R.C3632drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3630R.string.settings_interface_chat_user_options_by_avatar_click_hint));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(extendedAvatarPreviewerSettingsActivity.getParentActivity(), C3630R.C3632drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                textInfoPrivacyCell.setText(null);
                textInfoPrivacyCell.setFixedSize(12);
            } else if (itemViewType == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell)) {
                if (i == ExtendedAvatarPreviewerSettingsActivity.this.itemsHeaderRow) {
                    ((HeaderCell) view).setText(LocaleController.getInternalString(C3630R.string.wallet_transaction_details_section_actions));
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_BOX_CELL && (view instanceof TextCheckBoxCell)) {
                ExtendedAvatarPreviewerItem extendedAvatarPreviewerItem = ExtendedAvatarPreviewerSettingsActivity.this.getItems()[i - ExtendedAvatarPreviewerSettingsActivity.this.itemsStartRow];
                ((TextCheckBoxCell) view).setTextAndCheck(extendedAvatarPreviewerItem.getTitle(), ExtendedAvatarPreviewerSettingsActivity.this.getNewItems().contains(extendedAvatarPreviewerItem), needDivider);
            }
        }
    }
}
