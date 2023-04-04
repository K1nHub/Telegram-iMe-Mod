package com.iMe.fork.p025ui.fragment;

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
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.fork.enums.Interval;
import com.iMe.fork.p025ui.fragment.ChooseIntervalSettingsActivity;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.Components.SlideChooseView;
/* compiled from: ChooseIntervalSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity */
/* loaded from: classes3.dex */
public final class ChooseIntervalSettingsActivity extends BaseFragment {
    public static final Companion Companion = new Companion(null);
    private int enableInfoRow;
    private int enableRow;
    private int intervalChooserRow;
    private int intervalHeaderRow;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private final Lazy rootView$delegate;
    private int rowCount;
    private final Type type;

    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$Type */
    /* loaded from: classes3.dex */
    public enum Type {
        AUTO_BACKUP,
        AUTO_UPDATE_TOPICS_CATALOG
    }

    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.values().length];
            try {
                iArr[Type.AUTO_BACKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Type.AUTO_UPDATE_TOPICS_CATALOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ChooseIntervalSettingsActivity newInstanceForAutoBackupSettings() {
        return Companion.newInstanceForAutoBackupSettings();
    }

    public static final ChooseIntervalSettingsActivity newInstanceForAutoUpdateTopicsCatalogSettings() {
        return Companion.newInstanceForAutoUpdateTopicsCatalogSettings();
    }

    public final Type getType() {
        return this.type;
    }

    public ChooseIntervalSettingsActivity(Type type) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        lazy = LazyKt__LazyJVMKt.lazy(new ChooseIntervalSettingsActivity$rootView$2(this));
        this.rootView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new ChooseIntervalSettingsActivity$listView$2(this));
        this.listView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new ChooseIntervalSettingsActivity$listAdapter$2(this));
        this.listAdapter$delegate = lazy3;
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

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public FrameLayout createView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        setupListeners();
        rootView.addView(getListView());
        this.fragmentView = rootView;
        return rootView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            getBackupController().saveConfig();
        } else if (i == 2) {
            getTopicsController().saveConfig();
        }
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class, ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, SlideChooseView.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundChecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundUnchecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundCheckText"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlue"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumb"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumbChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelector"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelectorChecked"), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, "switchTrack"), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, "switchTrackChecked"), new ThemeDescription(getListView(), 0, new Class[]{SlideChooseView.class}, null, null, null, "windowBackgroundWhiteGrayText"), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"));
        return arrayListOf;
    }

    private final void setupActionBar() {
        int i;
        C3381ActionBar c3381ActionBar = this.actionBar;
        c3381ActionBar.setBackButtonImage(C3316R.C3318drawable.ic_ab_back);
        c3381ActionBar.setAllowOverlayTitle(true);
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i2 == 1) {
            i = C3316R.string.backup_settings_header;
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3316R.string.topics_catalog;
        }
        c3381ActionBar.setTitle(LocaleController.getInternalString(i));
        c3381ActionBar.setActionBarMenuOnItemClick(new C3381ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3381ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i3) {
                if (i3 == -1) {
                    ChooseIntervalSettingsActivity.this.finishFragment();
                }
            }
        });
    }

    private final void setupListeners() {
        getListView().setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.p048ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ChooseIntervalSettingsActivity.setupListeners$lambda$4(ChooseIntervalSettingsActivity.this, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$4(ChooseIntervalSettingsActivity this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if ((view instanceof TextCheckCell) && i == this$0.enableRow) {
            TextCheckCell textCheckCell = (TextCheckCell) view;
            textCheckCell.toggleCheckbox();
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
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
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
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return getTopicsController().isAutoUpdateTopicsCatalogEnabled();
            }
            throw new NoWhenBranchMatchedException();
        }
        return getBackupController().isAutoBackupEnabled();
    }

    private final void toggleEnabled() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            BackupController backupController = getBackupController();
            backupController.setAutoBackupEnabled(true ^ backupController.isAutoBackupEnabled());
            backupController.resetLastAutoBackupTime();
        } else if (i != 2) {
        } else {
            ForkTopicsController topicsController = getTopicsController();
            topicsController.setAutoUpdateTopicsCatalogEnabled(true ^ topicsController.isAutoUpdateTopicsCatalogEnabled());
            topicsController.resetLastAutoUpdateCatalogTime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Interval getSelectedInterval() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return getTopicsController().getSelectedAutoUpdateTopicsCatalogInterval();
            }
            throw new NoWhenBranchMatchedException();
        }
        return getBackupController().getSelectedAutoBackupInterval();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Interval[] getIntervals() {
        return Interval.values();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setInterval(Interval interval) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            BackupController backupController = getBackupController();
            backupController.setSelectedAutoBackupInterval(interval);
            backupController.resetLastAutoBackupTime();
        } else if (i != 2) {
        } else {
            ForkTopicsController topicsController = getTopicsController();
            topicsController.setSelectedAutoUpdateTopicsCatalogInterval(interval);
            topicsController.resetLastAutoUpdateCatalogTime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {

        /* compiled from: ChooseIntervalSettingsActivity.kt */
        /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$ListAdapter$WhenMappings */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.values().length];
                try {
                    iArr[Type.AUTO_BACKUP.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Type.AUTO_UPDATE_TOPICS_CATALOG.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
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
            return i == ChooseIntervalSettingsActivity.this.enableRow ? IdFabric$ViewTypes.TEXT_CHECK : i == ChooseIntervalSettingsActivity.this.intervalHeaderRow ? IdFabric$ViewTypes.HEADER : i == ChooseIntervalSettingsActivity.this.enableInfoRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY : i == ChooseIntervalSettingsActivity.this.intervalChooserRow ? IdFabric$ViewTypes.SLIDE_CHOOSE : IdFabric$ViewTypes.SHADOW_SECTION;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            SlideChooseView slideChooseView;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                TextCheckCell textCheckCell = new TextCheckCell(ChooseIntervalSettingsActivity.this.getParentActivity());
                textCheckCell.setType(1);
                slideChooseView = textCheckCell;
            } else if (i == IdFabric$ViewTypes.HEADER) {
                HeaderCell headerCell = new HeaderCell(ChooseIntervalSettingsActivity.this.getParentActivity());
                headerCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                slideChooseView = headerCell;
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY) {
                slideChooseView = new TextInfoPrivacyCell(ChooseIntervalSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.SLIDE_CHOOSE) {
                SlideChooseView slideChooseView2 = new SlideChooseView(ChooseIntervalSettingsActivity.this.getParentActivity());
                final ChooseIntervalSettingsActivity chooseIntervalSettingsActivity = ChooseIntervalSettingsActivity.this;
                slideChooseView2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                int ordinal = chooseIntervalSettingsActivity.getSelectedInterval().ordinal();
                Interval[] intervals = chooseIntervalSettingsActivity.getIntervals();
                ArrayList arrayList = new ArrayList(intervals.length);
                for (Interval interval : intervals) {
                    arrayList.add(LocaleController.getInternalString(interval.getNameResId()));
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                slideChooseView2.setOptions(ordinal, (String[]) Arrays.copyOf(strArr, strArr.length));
                slideChooseView2.setCallback(new SlideChooseView.Callback() { // from class: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0
                    @Override // org.telegram.p048ui.Components.SlideChooseView.Callback
                    public final void onOptionSelected(int i2) {
                        ChooseIntervalSettingsActivity.ListAdapter.onCreateViewHolder$lambda$4$lambda$3(ChooseIntervalSettingsActivity.this, i2);
                    }

                    @Override // org.telegram.p048ui.Components.SlideChooseView.Callback
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
            int i2;
            int i3;
            int i4;
            Intrinsics.checkNotNullParameter(holder, "holder");
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                int i5 = WhenMappings.$EnumSwitchMapping$0[ChooseIntervalSettingsActivity.this.getType().ordinal()];
                if (i5 == 1) {
                    i4 = C3316R.string.backup_settings_save_auto;
                } else if (i5 != 2) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    i4 = C3316R.string.topics_catalog_update_auto;
                }
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(i4), ChooseIntervalSettingsActivity.this.isMainSwitchEnabled(), false);
            } else if (itemViewType == IdFabric$ViewTypes.HEADER && (view instanceof HeaderCell)) {
                HeaderCell headerCell = (HeaderCell) view;
                int i6 = WhenMappings.$EnumSwitchMapping$0[ChooseIntervalSettingsActivity.this.getType().ordinal()];
                if (i6 == 1) {
                    i3 = C3316R.string.backup_auto_settings_interval_chooser_header;
                } else if (i6 != 2) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    i3 = C3316R.string.topics_catalog_auto_update_settings_interval_chooser_header;
                }
                headerCell.setText(LocaleController.getInternalString(i3));
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY && (view instanceof TextInfoPrivacyCell)) {
                ChooseIntervalSettingsActivity chooseIntervalSettingsActivity = ChooseIntervalSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (chooseIntervalSettingsActivity.isMainSwitchEnabled()) {
                    textInfoPrivacyCell.setText(null);
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(chooseIntervalSettingsActivity.getParentActivity(), C3316R.C3318drawable.greydivider, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.setFixedSize(12);
                    return;
                }
                int i7 = WhenMappings.$EnumSwitchMapping$0[chooseIntervalSettingsActivity.getType().ordinal()];
                if (i7 == 1) {
                    i2 = C3316R.string.backup_auto_settings_enable_item_hint;
                } else if (i7 != 2) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    i2 = C3316R.string.topics_catalog_auto_update_settings_enable_item_hint;
                }
                textInfoPrivacyCell.setText(LocaleController.getInternalString(i2));
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(chooseIntervalSettingsActivity.getParentActivity(), C3316R.C3318drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                textInfoPrivacyCell.setFixedSize(0);
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return holder.getItemViewType() == IdFabric$ViewTypes.TEXT_CHECK;
        }
    }

    /* compiled from: ChooseIntervalSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChooseIntervalSettingsActivity$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ChooseIntervalSettingsActivity newInstanceForAutoBackupSettings() {
            return new ChooseIntervalSettingsActivity(Type.AUTO_BACKUP);
        }

        public final ChooseIntervalSettingsActivity newInstanceForAutoUpdateTopicsCatalogSettings() {
            return new ChooseIntervalSettingsActivity(Type.AUTO_UPDATE_TOPICS_CATALOG);
        }
    }
}
