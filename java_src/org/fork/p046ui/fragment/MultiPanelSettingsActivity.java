package org.fork.p046ui.fragment;

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
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
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
import org.fork.controller.MultiPanelController;
import org.fork.enums.DialogType;
import org.fork.enums.MultiPanelButton;
import org.fork.models.MultiPanelButtonState;
import org.fork.p046ui.view.DialogTypeTopicsBar;
import org.fork.p046ui.view.MovingCheckCell;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: MultiPanelSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.MultiPanelSettingsActivity */
/* loaded from: classes4.dex */
public final class MultiPanelSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(MultiPanelSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(MultiPanelSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(MultiPanelSettingsActivity.class, "listAdapter", "getListAdapter()Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;", 0))};
    private int allButtonsRow;
    private int buttonsEndRow;
    private int buttonsStartRow;
    private DialogType currentDialogType;
    private int dialogTypeTopicsBarRow;
    private int enableRow;
    private int enableSectionRow;
    private int hideOnScrollRow;
    private int hideOnScrollSectionRow;
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
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

    static {
        new Companion(null);
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public View onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        setupActionBar();
        FrameLayout rootView = getRootView();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
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
        if (dialogTypeTopicsBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("topicsBar");
            dialogTypeTopicsBar = null;
        }
        dialogTypeTopicsBar.notifyDataSetChanged();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.fork.ui.fragment.MultiPanelSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                MultiPanelSettingsActivity.getThemeDescriptions$lambda$2(MultiPanelSettingsActivity.this);
            }

            @Override // org.telegram.p048ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, MovingCheckCell.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundChecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundUnchecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundCheckText"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlue"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumb"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumbChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelector"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelectorChecked"), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"subtitleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"iconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "chats_actionBackground"), new ThemeDescription(getListView(), 0, new Class[]{MovingCheckCell.class}, new String[]{"moveIconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "stickers_menu"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3351ActionBar c3351ActionBar = this.actionBar;
        c3351ActionBar.setBackButtonImage(C3286R.C3288drawable.ic_ab_back);
        c3351ActionBar.setAllowOverlayTitle(true);
        c3351ActionBar.setTitle(LocaleController.getInternalString(C3286R.string.settings_multi_panel_item_title));
        ActionBarMenuItem addItem = c3351ActionBar.createMenu().addItem(0, C3286R.C3288drawable.ic_ab_other);
        addItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3286R.string.AccDescrMoreOptions));
        addItem.addSubItem(1, C3286R.C3288drawable.msg_reset, LocaleController.getString("ThemeResetToDefaults", C3286R.string.ThemeResetToDefaults));
        c3351ActionBar.setActionBarMenuOnItemClick(new C3351ActionBar.ActionBarMenuOnItemClick() { // from class: org.fork.ui.fragment.MultiPanelSettingsActivity$setupActionBar$1$2
            @Override // org.telegram.p048ui.ActionBar.C3351ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    MultiPanelSettingsActivity.this.finishFragment();
                } else if (i != 1) {
                } else {
                    MultiPanelSettingsActivity.this.getMultiPanelController().resetConfig();
                    MultiPanelSettingsActivity.this.readSettings();
                    MultiPanelSettingsActivity.this.getListAdapter().notifyDataSetChanged();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        this.fragmentView = frameLayout;
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerListView.setAdapter(getListAdapter());
        new ItemTouchHelper(new TouchHelperCallback()).attachToRecyclerView(recyclerListView);
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.fork.ui.fragment.MultiPanelSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                MultiPanelSettingsActivity.initListView$lambda$12$lambda$11(MultiPanelSettingsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$12$lambda$11(MultiPanelSettingsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            Intrinsics.checkNotNullExpressionValue(view, "view");
            TextCheckCell textCheckCell = (TextCheckCell) view;
            if (i == this$0.enableRow) {
                textCheckCell.toggleCheckbox();
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
                textCheckCell.toggleCheckbox();
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
            Pair m100to = TuplesKt.m100to(first, mutableList);
            linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
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
        return i == IdFabric$ViewTypes.TEXT_CHECK || i == IdFabric$ViewTypes.MOVING_CHECK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY || i == IdFabric$ViewTypes.TOPICS_BAR) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MultiPanelSettingsActivity.kt */
    /* renamed from: org.fork.ui.fragment.MultiPanelSettingsActivity$ListAdapter */
    /* loaded from: classes4.dex */
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
            multiPanelSettingsActivity4.hideOnScrollSectionRow = i4;
            MultiPanelSettingsActivity multiPanelSettingsActivity5 = MultiPanelSettingsActivity.this;
            int i5 = multiPanelSettingsActivity5.rowCount;
            multiPanelSettingsActivity5.rowCount = i5 + 1;
            multiPanelSettingsActivity5.dialogTypeTopicsBarRow = i5;
            MultiPanelSettingsActivity multiPanelSettingsActivity6 = MultiPanelSettingsActivity.this;
            int i6 = multiPanelSettingsActivity6.rowCount;
            multiPanelSettingsActivity6.rowCount = i6 + 1;
            multiPanelSettingsActivity6.allButtonsRow = i6;
            MultiPanelSettingsActivity multiPanelSettingsActivity7 = MultiPanelSettingsActivity.this;
            multiPanelSettingsActivity7.buttonsStartRow = multiPanelSettingsActivity7.rowCount;
            MultiPanelSettingsActivity.this.rowCount += MultiPanelSettingsActivity.this.getCurrentDialogType().getMultiPanelButtons().size();
            MultiPanelSettingsActivity multiPanelSettingsActivity8 = MultiPanelSettingsActivity.this;
            multiPanelSettingsActivity8.buttonsEndRow = multiPanelSettingsActivity8.rowCount;
            MultiPanelSettingsActivity multiPanelSettingsActivity9 = MultiPanelSettingsActivity.this;
            int i7 = multiPanelSettingsActivity9.rowCount;
            multiPanelSettingsActivity9.rowCount = i7 + 1;
            multiPanelSettingsActivity9.sectionInfoRow = i7;
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
                return IdFabric$ViewTypes.TEXT_CHECK;
            }
            return (i == MultiPanelSettingsActivity.this.enableSectionRow || i == MultiPanelSettingsActivity.this.hideOnScrollSectionRow) || i == MultiPanelSettingsActivity.this.sectionInfoRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY : IdFabric$ViewTypes.MOVING_CHECK;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return MultiPanelSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            DialogTypeTopicsBar dialogTypeTopicsBar;
            List list;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TOPICS_BAR) {
                Activity parentActivity = MultiPanelSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                list = ArraysKt___ArraysKt.toList(DialogType.values());
                DialogTypeTopicsBar dialogTypeTopicsBar2 = new DialogTypeTopicsBar(parentActivity, list, MultiPanelSettingsActivity.this.getCurrentDialogType(), new MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1(MultiPanelSettingsActivity.this, this));
                MultiPanelSettingsActivity.this.topicsBar = dialogTypeTopicsBar2;
                dialogTypeTopicsBar = dialogTypeTopicsBar2;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                dialogTypeTopicsBar = new TextCheckCell(MultiPanelSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY) {
                FrameLayout textInfoPrivacyCell = new TextInfoPrivacyCell(MultiPanelSettingsActivity.this.getParentActivity());
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(MultiPanelSettingsActivity.this.getParentActivity(), C3286R.C3288drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                dialogTypeTopicsBar = textInfoPrivacyCell;
            } else {
                Activity parentActivity2 = MultiPanelSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
                FrameLayout movingCheckCell = new MovingCheckCell(parentActivity2);
                movingCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                dialogTypeTopicsBar = movingCheckCell;
            }
            dialogTypeTopicsBar.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(dialogTypeTopicsBar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = MultiPanelSettingsActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                MultiPanelSettingsActivity multiPanelSettingsActivity = MultiPanelSettingsActivity.this;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == multiPanelSettingsActivity.enableRow) {
                    textCheckCell.setType(1);
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3286R.string.multi_panel_settings_enable_item_title), multiPanelSettingsActivity.newIsEnabled, needDivider);
                    return;
                }
                textCheckCell.setType(0);
                if (i == multiPanelSettingsActivity.hideOnScrollRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3286R.string.multi_panel_hide_on_scroll), multiPanelSettingsActivity.newIsHideOnScrollEnabled, needDivider);
                } else if (i == multiPanelSettingsActivity.allButtonsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3286R.string.multi_panel_settings_section_enable_all_item_title), multiPanelSettingsActivity.isAllButtonsEnabled(), needDivider);
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY && (view instanceof TextInfoPrivacyCell)) {
                MultiPanelSettingsActivity multiPanelSettingsActivity2 = MultiPanelSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == multiPanelSettingsActivity2.enableSectionRow && multiPanelSettingsActivity2.newIsEnabled) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(multiPanelSettingsActivity2.getParentActivity(), C3286R.C3288drawable.greydivider, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.setFixedSize(12);
                    textInfoPrivacyCell.setText(null);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(multiPanelSettingsActivity2.getParentActivity(), C3286R.C3288drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                if (i == multiPanelSettingsActivity2.hideOnScrollSectionRow) {
                    textInfoPrivacyCell.setFixedSize(1);
                    textInfoPrivacyCell.setText(null);
                    return;
                }
                textInfoPrivacyCell.setFixedSize(0);
                if (i != multiPanelSettingsActivity2.enableSectionRow) {
                    if (i == multiPanelSettingsActivity2.sectionInfoRow) {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3286R.string.multi_panel_settings_section_hint));
                        return;
                    }
                    return;
                }
                textInfoPrivacyCell.setText(LocaleController.getInternalString(C3286R.string.multi_panel_settings_enable_item_subtitle));
            } else if (itemViewType == IdFabric$ViewTypes.MOVING_CHECK && (view instanceof MovingCheckCell)) {
                MovingCheckCell movingCheckCell = (MovingCheckCell) view;
                MultiPanelButtonState button = MultiPanelSettingsActivity.this.getButton(i);
                if (button == null) {
                    return;
                }
                String text = LocaleController.getInternalString(button.getType().getTitleId());
                movingCheckCell.setIcon(button.getType().getIconId(), "chats_actionBackground", button.getType().getPorterDuffMode());
                if (button.getType() == MultiPanelButton.SUBSCRIBERS || button.getType() == MultiPanelButton.RECENT_ACTIONS) {
                    Intrinsics.checkNotNullExpressionValue(text, "text");
                    String internalString = LocaleController.getInternalString(C3286R.string.multi_panel_settings_only_for_admin_button_item_subtitle);
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
    /* renamed from: org.fork.ui.fragment.MultiPanelSettingsActivity$TouchHelperCallback */
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
            return ItemTouchHelper.Callback.makeMovementFlags(viewHolder.getItemViewType() == IdFabric$ViewTypes.MOVING_CHECK ? 3 : 0, 0);
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

    /* compiled from: MultiPanelSettingsActivity.kt */
    /* renamed from: org.fork.ui.fragment.MultiPanelSettingsActivity$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
