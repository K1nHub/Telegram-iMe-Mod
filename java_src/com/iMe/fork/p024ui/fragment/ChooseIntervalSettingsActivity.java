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
import com.iMe.fork.controller.BackupController;
import com.iMe.fork.enums.Interval;
import com.iMe.fork.p024ui.fragment.ChooseIntervalSettingsActivity;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.SlideChooseView;
/* compiled from: ChooseIntervalSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity */
/* loaded from: classes4.dex */
public final class ChooseIntervalSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ChooseIntervalSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(ChooseIntervalSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(ChooseIntervalSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;", 0))};
    public static final Companion Companion = new Companion(null);
    private int enableInfoRow;
    private int enableRow;
    private int intervalChooserRow;
    private int intervalHeaderRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private final Type type;

    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$Type */
    /* loaded from: classes4.dex */
    public enum Type {
        AUTO_BACKUP
    }

    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.values().length];
            try {
                iArr[Type.AUTO_BACKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ChooseIntervalSettingsActivity newInstanceForAutoBackupSettings() {
        return Companion.newInstanceForAutoBackupSettings();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public final Type getType() {
        return this.type;
    }

    public ChooseIntervalSettingsActivity(Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initRootView;
                initRootView = ChooseIntervalSettingsActivity.this.initRootView();
                return initRootView;
            }
        }, 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = ChooseIntervalSettingsActivity.this.initListView();
                return initListView;
            }
        }, 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChooseIntervalSettingsActivity.ListAdapter invoke() {
                return new ChooseIntervalSettingsActivity.ListAdapter();
            }
        }, 1, (Object) null);
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

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        setupListeners();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            getBackupController().saveConfig();
        }
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3541ActionBar c3541ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3541ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class, ShadowSectionCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlackText), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, Theme.key_windowBackgroundWhiteGrayText), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3541ActionBar c3541ActionBar = this.actionBar;
        c3541ActionBar.setBackButtonImage(C3473R.C3475drawable.ic_ab_back);
        c3541ActionBar.setAllowOverlayTitle(true);
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            c3541ActionBar.setTitle(LocaleController.getInternalString(C3473R.string.backup_settings_header));
            c3541ActionBar.setActionBarMenuOnItemClick(new C3541ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$setupActionBar$1$1
                @Override // org.telegram.p043ui.ActionBar.C3541ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i) {
                    if (i == -1) {
                        ChooseIntervalSettingsActivity.this.finishFragment();
                    }
                }
            });
            return;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void setupListeners() {
        getListView().setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ChooseIntervalSettingsActivity.setupListeners$lambda$3(ChooseIntervalSettingsActivity.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$3(ChooseIntervalSettingsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if ((view instanceof TextCheckCell) && i == this$0.enableRow) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckBox();
            this$0.toggleEnabled();
            ListAdapter listAdapter = this$0.getListAdapter();
            int i2 = this$0.rowCount;
            listAdapter.updateRows();
            int abs = Math.abs(i2 - this$0.rowCount);
            if (textCheckCell.isChecked()) {
                listAdapter.notifyItemRangeInserted(this$0.enableInfoRow + 1, abs);
            } else {
                listAdapter.notifyItemRangeRemoved(this$0.enableInfoRow + 1, abs);
            }
            listAdapter.notifyItemChanged(this$0.enableInfoRow);
        }
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
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.disableItemAnimationDelay();
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isMainSwitchEnabled() {
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            return getBackupController().isAutoBackupEnabled();
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void toggleEnabled() {
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            BackupController backupController = getBackupController();
            backupController.setAutoBackupEnabled(true ^ backupController.isAutoBackupEnabled());
            backupController.resetLastAutoBackupTime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Interval getSelectedInterval() {
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            return getBackupController().getSelectedAutoBackupInterval();
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Interval[] getIntervals() {
        return Interval.values();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setInterval(Interval interval) {
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            BackupController backupController = getBackupController();
            backupController.setSelectedAutoBackupInterval(interval);
            backupController.resetLastAutoBackupTime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {

        /* compiled from: ChooseIntervalSettingsActivity.kt */
        /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$ListAdapter$WhenMappings */
        /* loaded from: classes4.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.values().length];
                try {
                    iArr[Type.AUTO_BACKUP.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            ChooseIntervalSettingsActivity.this.rowCount = 0;
            ChooseIntervalSettingsActivity chooseIntervalSettingsActivity = ChooseIntervalSettingsActivity.this;
            int i = chooseIntervalSettingsActivity.rowCount;
            chooseIntervalSettingsActivity.rowCount = i + 1;
            chooseIntervalSettingsActivity.enableRow = i;
            ChooseIntervalSettingsActivity chooseIntervalSettingsActivity2 = ChooseIntervalSettingsActivity.this;
            int i2 = chooseIntervalSettingsActivity2.rowCount;
            chooseIntervalSettingsActivity2.rowCount = i2 + 1;
            chooseIntervalSettingsActivity2.enableInfoRow = i2;
            if (!ChooseIntervalSettingsActivity.this.isMainSwitchEnabled()) {
                ChooseIntervalSettingsActivity.this.intervalHeaderRow = -1;
                ChooseIntervalSettingsActivity.this.intervalChooserRow = -1;
                return;
            }
            ChooseIntervalSettingsActivity chooseIntervalSettingsActivity3 = ChooseIntervalSettingsActivity.this;
            int i3 = chooseIntervalSettingsActivity3.rowCount;
            chooseIntervalSettingsActivity3.rowCount = i3 + 1;
            chooseIntervalSettingsActivity3.intervalHeaderRow = i3;
            ChooseIntervalSettingsActivity chooseIntervalSettingsActivity4 = ChooseIntervalSettingsActivity.this;
            int i4 = chooseIntervalSettingsActivity4.rowCount;
            chooseIntervalSettingsActivity4.rowCount = i4 + 1;
            chooseIntervalSettingsActivity4.intervalChooserRow = i4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChooseIntervalSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == ChooseIntervalSettingsActivity.this.enableRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL : i == ChooseIntervalSettingsActivity.this.intervalHeaderRow ? IdFabric$ViewTypes.HEADER_CELL : i == ChooseIntervalSettingsActivity.this.enableInfoRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : i == ChooseIntervalSettingsActivity.this.intervalChooserRow ? IdFabric$ViewTypes.SLIDE_CHOOSE : IdFabric$ViewTypes.SHADOW_SECTION;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            SlideChooseView slideChooseView;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                TextCheckCell textCheckCell = new TextCheckCell(ChooseIntervalSettingsActivity.this.getParentActivity());
                textCheckCell.setType(1);
                slideChooseView = textCheckCell;
            } else if (i == IdFabric$ViewTypes.HEADER_CELL) {
                HeaderCell headerCell = new HeaderCell(ChooseIntervalSettingsActivity.this.getParentActivity());
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                slideChooseView = headerCell;
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                slideChooseView = new TextInfoPrivacyCell(ChooseIntervalSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.SLIDE_CHOOSE) {
                SlideChooseView slideChooseView2 = new SlideChooseView(ChooseIntervalSettingsActivity.this.getParentActivity());
                final ChooseIntervalSettingsActivity chooseIntervalSettingsActivity = ChooseIntervalSettingsActivity.this;
                slideChooseView2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                int ordinal = chooseIntervalSettingsActivity.getSelectedInterval().ordinal();
                Interval[] intervals = chooseIntervalSettingsActivity.getIntervals();
                ArrayList arrayList = new ArrayList(intervals.length);
                for (Interval interval : intervals) {
                    arrayList.add(LocaleController.getInternalString(interval.getNameResId()));
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                slideChooseView2.setOptions(ordinal, (String[]) Arrays.copyOf(strArr, strArr.length));
                slideChooseView2.setCallback(new SlideChooseView.Callback() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.p043ui.Components.SlideChooseView.Callback
                    public final void onOptionSelected(int i2) {
                        ChooseIntervalSettingsActivity.ListAdapter.onCreateViewHolder$lambda$4$lambda$3(ChooseIntervalSettingsActivity.this, i2);
                    }

                    @Override // org.telegram.p043ui.Components.SlideChooseView.Callback
                    public /* synthetic */ void onTouchEnd() {
                        SlideChooseView.Callback.CC.$default$onTouchEnd(this);
                    }
                });
                slideChooseView = slideChooseView2;
            } else {
                slideChooseView = i == IdFabric$ViewTypes.SHADOW_SECTION ? new ShadowSectionCell(ChooseIntervalSettingsActivity.this.getParentActivity()) : new ShadowSectionCell(ChooseIntervalSettingsActivity.this.getParentActivity());
            }
            slideChooseView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(slideChooseView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onCreateViewHolder$lambda$4$lambda$3(ChooseIntervalSettingsActivity this$0, int i) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.setInterval(this$0.getIntervals()[i]);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (WhenMappings.$EnumSwitchMapping$0[ChooseIntervalSettingsActivity.this.getType().ordinal()] == 1) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3473R.string.backup_settings_save_auto), ChooseIntervalSettingsActivity.this.isMainSwitchEnabled(), false);
                    return;
                }
                throw new NoWhenBranchMatchedException();
            } else if (itemViewType == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell)) {
                HeaderCell headerCell = (HeaderCell) view;
                if (WhenMappings.$EnumSwitchMapping$0[ChooseIntervalSettingsActivity.this.getType().ordinal()] == 1) {
                    headerCell.setText(LocaleController.getInternalString(C3473R.string.backup_auto_settings_interval_chooser_header));
                    return;
                }
                throw new NoWhenBranchMatchedException();
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                ChooseIntervalSettingsActivity chooseIntervalSettingsActivity = ChooseIntervalSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (chooseIntervalSettingsActivity.isMainSwitchEnabled()) {
                    textInfoPrivacyCell.setText(null);
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(chooseIntervalSettingsActivity.getParentActivity(), C3473R.C3475drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setFixedSize(12);
                    return;
                }
                if (WhenMappings.$EnumSwitchMapping$0[chooseIntervalSettingsActivity.getType().ordinal()] == 1) {
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3473R.string.backup_auto_settings_enable_item_hint));
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(chooseIntervalSettingsActivity.getParentActivity(), C3473R.C3475drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                throw new NoWhenBranchMatchedException();
            }
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() == IdFabric$ViewTypes.TEXT_CHECK_CELL;
        }
    }

    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChooseIntervalSettingsActivity newInstanceForAutoBackupSettings() {
            return new ChooseIntervalSettingsActivity(Type.AUTO_BACKUP);
        }
    }
}
