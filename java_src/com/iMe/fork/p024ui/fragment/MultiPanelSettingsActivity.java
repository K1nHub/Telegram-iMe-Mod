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
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.controller.MultiPanelController;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.enums.MultiPanelButton;
import com.iMe.fork.models.MultiPanelButtonState;
import com.iMe.fork.p024ui.view.DialogTypeTopicsBar;
import com.iMe.fork.p024ui.view.MovingCheckCell;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.MapsKt___MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: MultiPanelSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.MultiPanelSettingsActivity */
/* loaded from: classes3.dex */
public final class MultiPanelSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(MultiPanelSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(MultiPanelSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(MultiPanelSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;", 0))};
    private int allButtonsRow;
    private int buttonsEndRow;
    private int buttonsStartRow;
    private DialogType currentDialogType;
    private int dialogTypeTopicsBarRow;
    private int enableRow;
    private int enableSectionRow;
    private int hideOnScrollRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private Map<DialogType, List<MultiPanelButtonState>> newButtonStates;
    private boolean newIsEnabled;
    private boolean newIsHideOnScrollEnabled;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private int sectionInfoRow;
    private DialogTypeTopicsBar topicsBar;

    public MultiPanelSettingsActivity() {
        this(null, 1, null);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public /* synthetic */ MultiPanelSettingsActivity(DialogType dialogType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DialogType.CHAT : dialogType);
    }

    public final DialogType getCurrentDialogType() {
        return this.currentDialogType;
    }

    public final void setCurrentDialogType(DialogType dialogType) {
        Intrinsics.checkNotNullParameter(dialogType, "<set-?>");
        this.currentDialogType = dialogType;
    }

    public MultiPanelSettingsActivity(DialogType currentDialogType) {
        Intrinsics.checkNotNullParameter(currentDialogType, "currentDialogType");
        this.currentDialogType = currentDialogType;
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new MultiPanelSettingsActivity$rootView$2(this), 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new MultiPanelSettingsActivity$listView$2(this), 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new MultiPanelSettingsActivity$listAdapter$2(this), 1, (Object) null);
        readSettings();
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
        if (checkSettingsChanged()) {
            MultiPanelController multiPanelController = getMultiPanelController();
            multiPanelController.setMultiPanelEnabled(this.newIsEnabled);
            multiPanelController.setHideMultiPanelOnScrollEnabled(this.newIsHideOnScrollEnabled);
            multiPanelController.getButtonStates().clear();
            Map<DialogType, List<MultiPanelButtonState>> buttonStates = multiPanelController.getButtonStates();
            Map<DialogType, List<MultiPanelButtonState>> map = this.newButtonStates;
            if (map == null) {
                Intrinsics.throwUninitializedPropertyAccessException("newButtonStates");
                map = null;
            }
            buttonStates.putAll(map);
            multiPanelController.saveConfig();
            getNotificationCenter().postNotificationName(NotificationCenter.multiPanelSettingsChanged, new Object[0]);
        }
        super.onFragmentDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$2(MultiPanelSettingsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogTypeTopicsBar dialogTypeTopicsBar = this$0.topicsBar;
        if (dialogTypeTopicsBar != null) {
            dialogTypeTopicsBar.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3484ActionBar c3484ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.MultiPanelSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                MultiPanelSettingsActivity.getThemeDescriptions$lambda$2(MultiPanelSettingsActivity.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray), new ThemeDescription(c3484ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, MovingCheckCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"subtitleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"iconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_actionBackground), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"moveIconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_stickers_menu), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3484ActionBar c3484ActionBar = this.actionBar;
        c3484ActionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        c3484ActionBar.setAllowOverlayTitle(true);
        c3484ActionBar.setTitle(LocaleController.getInternalString(C3417R.string.settings_multi_panel_item_title));
        ActionBarMenuItem addItem = c3484ActionBar.createMenu().addItem(IdFabric$Menu.OPTIONS, C3417R.C3419drawable.ic_ab_other);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3417R.string.AccDescrMoreOptions));
        addItem.addSubItem(IdFabric$Menu.RESET, C3417R.C3419drawable.msg_reset, LocaleController.getString("ThemeResetToDefaults", C3417R.string.ThemeResetToDefaults));
        c3484ActionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.MultiPanelSettingsActivity$setupActionBar$1$2
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    MultiPanelSettingsActivity.this.finishFragment();
                } else if (i == IdFabric$Menu.RESET) {
                    MultiPanelSettingsActivity.this.getMultiPanelController().resetConfig();
                    MultiPanelSettingsActivity.this.readSettings();
                    MultiPanelSettingsActivity.this.getListAdapter().updateRows();
                    MultiPanelSettingsActivity.this.getListAdapter().notifyDataSetChanged();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.MultiPanelSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                MultiPanelSettingsActivity.initListView$lambda$11$lambda$10(MultiPanelSettingsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$11$lambda$10(MultiPanelSettingsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            Intrinsics.checkNotNullExpressionValue(view, "view");
            TextCheckCell textCheckCell = (TextCheckCell) view;
            if (i == this$0.enableRow) {
                textCheckCell.toggleCheckBox();
                this$0.newIsEnabled = !this$0.newIsEnabled;
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
            } else if (i == this$0.hideOnScrollRow) {
                textCheckCell.toggleCheckBox();
                this$0.newIsHideOnScrollEnabled = !this$0.newIsHideOnScrollEnabled;
            } else if (i == this$0.allButtonsRow) {
                this$0.setAllButtonsEnabled(!this$0.isAllButtonsEnabled());
                this$0.getListAdapter().notifyDataSetChanged();
            }
        } else if (view instanceof MovingCheckCell) {
            MultiPanelButtonState button = this$0.getButton(i);
            if (button != null) {
                button.setEnabled(!button.isEnabled());
            }
            this$0.getListAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<MultiPanelButtonState> getButtons() {
        Map<DialogType, List<MultiPanelButtonState>> map = this.newButtonStates;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("newButtonStates");
            map = null;
        }
        DialogType dialogType = this.currentDialogType;
        List<MultiPanelButtonState> list = map.get(dialogType);
        if (list == null) {
            list = new ArrayList<>();
            map.put(dialogType, list);
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MultiPanelButtonState getButton(int i) {
        return (MultiPanelButtonState) CollectionsKt.getOrNull(getButtons(), i - this.buttonsStartRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAllButtonsEnabled() {
        List<MultiPanelButtonState> buttons = getButtons();
        if ((buttons instanceof Collection) && buttons.isEmpty()) {
            return true;
        }
        for (MultiPanelButtonState multiPanelButtonState : buttons) {
            if (!multiPanelButtonState.isEnabled()) {
                return false;
            }
        }
        return true;
    }

    private final void setAllButtonsEnabled(boolean z) {
        for (MultiPanelButtonState multiPanelButtonState : getButtons()) {
            multiPanelButtonState.setEnabled(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void readSettings() {
        List<Pair> list;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<DialogType, List<MultiPanelButtonState>> mutableMap;
        int collectionSizeOrDefault2;
        List mutableList;
        this.newIsEnabled = getMultiPanelController().isMultiPanelEnabled();
        this.newIsHideOnScrollEnabled = getMultiPanelController().isHideMultiPanelOnScrollEnabled();
        list = MapsKt___MapsKt.toList(getMultiPanelController().getButtonStates());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Pair pair : list) {
            Object first = pair.getFirst();
            Iterable<MultiPanelButtonState> iterable = (Iterable) pair.getSecond();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
            for (MultiPanelButtonState multiPanelButtonState : iterable) {
                arrayList.add(new MultiPanelButtonState(multiPanelButtonState.getType(), multiPanelButtonState.isEnabled(), multiPanelButtonState.getPosition()));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            Pair m85to = TuplesKt.m85to(first, mutableList);
            linkedHashMap.put(m85to.getFirst(), m85to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.newButtonStates = mutableMap;
    }

    private final boolean checkSettingsChanged() {
        boolean z;
        MultiPanelController multiPanelController = getMultiPanelController();
        if (multiPanelController.isMultiPanelEnabled() == this.newIsEnabled && multiPanelController.isHideMultiPanelOnScrollEnabled() == this.newIsHideOnScrollEnabled) {
            Map<DialogType, List<MultiPanelButtonState>> buttonStates = multiPanelController.getButtonStates();
            if (!buttonStates.isEmpty()) {
                for (Map.Entry<DialogType, List<MultiPanelButtonState>> entry : buttonStates.entrySet()) {
                    Map<DialogType, List<MultiPanelButtonState>> map = this.newButtonStates;
                    if (map == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("newButtonStates");
                        map = null;
                    }
                    if (!Intrinsics.areEqual(map.get(entry.getKey()), entry.getValue())) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK_CELL || i == IdFabric$ViewTypes.MOVING_CHECK_CELL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.TOPICS_BAR) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultiPanelSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.MultiPanelSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            MultiPanelSettingsActivity.this.rowCount = 0;
            MultiPanelSettingsActivity multiPanelSettingsActivity = MultiPanelSettingsActivity.this;
            int i = multiPanelSettingsActivity.rowCount;
            multiPanelSettingsActivity.rowCount = i + 1;
            multiPanelSettingsActivity.enableRow = i;
            MultiPanelSettingsActivity multiPanelSettingsActivity2 = MultiPanelSettingsActivity.this;
            int i2 = multiPanelSettingsActivity2.rowCount;
            multiPanelSettingsActivity2.rowCount = i2 + 1;
            multiPanelSettingsActivity2.enableSectionRow = i2;
            if (!MultiPanelSettingsActivity.this.newIsEnabled) {
                MultiPanelSettingsActivity.this.hideOnScrollRow = -1;
                MultiPanelSettingsActivity.this.dialogTypeTopicsBarRow = -1;
                MultiPanelSettingsActivity.this.allButtonsRow = -1;
                MultiPanelSettingsActivity.this.buttonsStartRow = -1;
                MultiPanelSettingsActivity.this.buttonsEndRow = -1;
                MultiPanelSettingsActivity.this.sectionInfoRow = -1;
                return;
            }
            MultiPanelSettingsActivity multiPanelSettingsActivity3 = MultiPanelSettingsActivity.this;
            int i3 = multiPanelSettingsActivity3.rowCount;
            multiPanelSettingsActivity3.rowCount = i3 + 1;
            multiPanelSettingsActivity3.hideOnScrollRow = i3;
            MultiPanelSettingsActivity multiPanelSettingsActivity4 = MultiPanelSettingsActivity.this;
            int i4 = multiPanelSettingsActivity4.rowCount;
            multiPanelSettingsActivity4.rowCount = i4 + 1;
            multiPanelSettingsActivity4.dialogTypeTopicsBarRow = i4;
            MultiPanelSettingsActivity multiPanelSettingsActivity5 = MultiPanelSettingsActivity.this;
            int i5 = multiPanelSettingsActivity5.rowCount;
            multiPanelSettingsActivity5.rowCount = i5 + 1;
            multiPanelSettingsActivity5.allButtonsRow = i5;
            MultiPanelSettingsActivity multiPanelSettingsActivity6 = MultiPanelSettingsActivity.this;
            multiPanelSettingsActivity6.buttonsStartRow = multiPanelSettingsActivity6.rowCount;
            MultiPanelSettingsActivity.this.rowCount += MultiPanelSettingsActivity.this.getCurrentDialogType().getMultiPanelButtons().size();
            MultiPanelSettingsActivity multiPanelSettingsActivity7 = MultiPanelSettingsActivity.this;
            multiPanelSettingsActivity7.buttonsEndRow = multiPanelSettingsActivity7.rowCount;
            MultiPanelSettingsActivity multiPanelSettingsActivity8 = MultiPanelSettingsActivity.this;
            int i6 = multiPanelSettingsActivity8.rowCount;
            multiPanelSettingsActivity8.rowCount = i6 + 1;
            multiPanelSettingsActivity8.sectionInfoRow = i6;
        }

        public final void swapElements(int i, int i2) {
            List buttons = MultiPanelSettingsActivity.this.getButtons();
            int i3 = i - MultiPanelSettingsActivity.this.buttonsStartRow;
            int i4 = i2 - MultiPanelSettingsActivity.this.buttonsStartRow;
            MultiPanelButtonState multiPanelButtonState = (MultiPanelButtonState) buttons.get(i3);
            MultiPanelButtonState multiPanelButtonState2 = (MultiPanelButtonState) buttons.get(i4);
            multiPanelButtonState.setPosition(i4);
            multiPanelButtonState2.setPosition(i3);
            buttons.set(i3, multiPanelButtonState2);
            buttons.set(i4, multiPanelButtonState);
            notifyItemMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return MultiPanelSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == MultiPanelSettingsActivity.this.dialogTypeTopicsBarRow) {
                return IdFabric$ViewTypes.TOPICS_BAR;
            }
            if ((i == MultiPanelSettingsActivity.this.enableRow || i == MultiPanelSettingsActivity.this.hideOnScrollRow) || i == MultiPanelSettingsActivity.this.allButtonsRow) {
                return IdFabric$ViewTypes.TEXT_CHECK_CELL;
            }
            return i == MultiPanelSettingsActivity.this.enableSectionRow || i == MultiPanelSettingsActivity.this.sectionInfoRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : IdFabric$ViewTypes.MOVING_CHECK_CELL;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return MultiPanelSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            DialogTypeTopicsBar dialogTypeTopicsBar;
            List list;
            Intrinsics.checkNotNullParameter(parent, "parent");
            int i2 = IdFabric$ViewTypes.TOPICS_BAR;
            if (i == i2) {
                Activity parentActivity = MultiPanelSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                list = ArraysKt___ArraysKt.toList(DialogType.values());
                DialogTypeTopicsBar dialogTypeTopicsBar2 = new DialogTypeTopicsBar(parentActivity, list, MultiPanelSettingsActivity.this.getCurrentDialogType(), new MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1(MultiPanelSettingsActivity.this, this));
                MultiPanelSettingsActivity.this.topicsBar = dialogTypeTopicsBar2;
                dialogTypeTopicsBar = dialogTypeTopicsBar2;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                dialogTypeTopicsBar = new TextCheckCell(MultiPanelSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                FrameLayout textInfoPrivacyCell = new TextInfoPrivacyCell(MultiPanelSettingsActivity.this.getParentActivity());
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(MultiPanelSettingsActivity.this.getParentActivity(), C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                dialogTypeTopicsBar = textInfoPrivacyCell;
            } else {
                Activity parentActivity2 = MultiPanelSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
                FrameLayout movingCheckCell = new MovingCheckCell(parentActivity2);
                movingCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                dialogTypeTopicsBar = movingCheckCell;
            }
            dialogTypeTopicsBar.setLayoutParams(new RecyclerView.LayoutParams(-1, i == i2 ? AndroidUtilities.m54dp(36) : -2));
            return new RecyclerListView.Holder(dialogTypeTopicsBar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = MultiPanelSettingsActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                MultiPanelSettingsActivity multiPanelSettingsActivity = MultiPanelSettingsActivity.this;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == multiPanelSettingsActivity.enableRow) {
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3417R.string.multi_panel_settings_enable_item_title), multiPanelSettingsActivity.newIsEnabled, needDivider);
                    return;
                }
                textCheckCell.setType(0);
                if (i == multiPanelSettingsActivity.hideOnScrollRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3417R.string.multi_panel_hide_on_scroll), multiPanelSettingsActivity.newIsHideOnScrollEnabled, needDivider);
                } else if (i == multiPanelSettingsActivity.allButtonsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3417R.string.multi_panel_settings_section_enable_all_item_title), multiPanelSettingsActivity.isAllButtonsEnabled(), needDivider);
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                MultiPanelSettingsActivity multiPanelSettingsActivity2 = MultiPanelSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == multiPanelSettingsActivity2.enableSectionRow && multiPanelSettingsActivity2.newIsEnabled) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(multiPanelSettingsActivity2.getParentActivity(), C3417R.C3419drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setFixedSize(12);
                    textInfoPrivacyCell.setText(null);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(multiPanelSettingsActivity2.getParentActivity(), C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                textInfoPrivacyCell.setFixedSize(0);
                if (i != multiPanelSettingsActivity2.enableSectionRow) {
                    if (i == multiPanelSettingsActivity2.sectionInfoRow) {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3417R.string.multi_panel_settings_section_hint));
                        return;
                    }
                    return;
                }
                textInfoPrivacyCell.setText(LocaleController.getInternalString(C3417R.string.multi_panel_settings_enable_item_subtitle));
            } else if (itemViewType == IdFabric$ViewTypes.MOVING_CHECK_CELL && (view instanceof MovingCheckCell)) {
                MovingCheckCell movingCheckCell = (MovingCheckCell) view;
                MultiPanelButtonState button = MultiPanelSettingsActivity.this.getButton(i);
                if (button == null) {
                    return;
                }
                String text = LocaleController.getInternalString(button.getType().getTitleId());
                movingCheckCell.setIcon(button.getType().getIconId(), Theme.key_chats_actionBackground, button.getType().getPorterDuffMode());
                if (button.getType() == MultiPanelButton.SUBSCRIBERS || button.getType() == MultiPanelButton.RECENT_ACTIONS) {
                    Intrinsics.checkNotNullExpressionValue(text, "text");
                    String internalString = LocaleController.getInternalString(C3417R.string.multi_panel_settings_only_for_admin_button_item_subtitle);
                    Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…min_button_item_subtitle)");
                    movingCheckCell.setTextAndValueAndCheck(text, internalString, button.isEnabled(), needDivider);
                    return;
                }
                Intrinsics.checkNotNullExpressionValue(text, "text");
                movingCheckCell.setTextAndCheck(text, button.isEnabled(), needDivider);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultiPanelSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.MultiPanelSettingsActivity$TouchHelperCallback */
    /* loaded from: classes3.dex */
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
            return ItemTouchHelper.Callback.makeMovementFlags(viewHolder.getItemViewType() == IdFabric$ViewTypes.MOVING_CHECK_CELL ? 3 : 0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(target, "target");
            if (source.getItemViewType() != target.getItemViewType()) {
                return false;
            }
            MultiPanelSettingsActivity.this.getListAdapter().swapElements(source.getAdapterPosition(), target.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            if (i != 0) {
                MultiPanelSettingsActivity.this.getListView().cancelClickRunnables(false);
                View view = viewHolder != null ? viewHolder.itemView : null;
                if (view != null) {
                    view.setPressed(true);
                }
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
