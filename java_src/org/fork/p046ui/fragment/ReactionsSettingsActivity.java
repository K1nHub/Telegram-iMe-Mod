package org.fork.p046ui.fragment;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.fork.enums.DialogType;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.BottomSheet;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.HeaderCell;
import org.telegram.p048ui.Cells.NotificationsCheckCell;
import org.telegram.p048ui.Cells.TextCheckBoxCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextInfoPrivacyCell;
import org.telegram.p048ui.Cells.TextSettingsCell;
import org.telegram.p048ui.Components.BackupImageView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.ReactionsDoubleTapManageActivity;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ReactionsSettingsActivity */
/* loaded from: classes4.dex */
public final class ReactionsSettingsActivity extends BaseFragment {
    private int enableRow;
    private int enableSectionRow;
    private final Lazy listAdapter$delegate;
    private final Lazy listView$delegate;
    private int messagePopupRow;
    private int quickReactionRow;
    private final Lazy rootView$delegate;
    private int rowCount;

    public ReactionsSettingsActivity() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new ReactionsSettingsActivity$rootView$2(this));
        this.rootView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new ReactionsSettingsActivity$listView$2(this));
        this.listView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new ReactionsSettingsActivity$listAdapter$2(this));
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
        rootView.addView(getListView());
        this.fragmentView = rootView;
        return rootView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getListAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, NotificationsCheckCell.class, TextSettingsCell.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundChecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, "windowBackgroundUnchecked"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundCheckText"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlue"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumb"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueThumbChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelector"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackBlueSelectorChecked"), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3222ActionBar c3222ActionBar = this.actionBar;
        c3222ActionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        c3222ActionBar.setAllowOverlayTitle(true);
        c3222ActionBar.setTitle(LocaleController.getString("Reactions", C3158R.string.Reactions));
        c3222ActionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: org.fork.ui.fragment.ReactionsSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ReactionsSettingsActivity.this.finishFragment();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda3
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
                ReactionsSettingsActivity.m2066initListView$lambda6$lambda5(ReactionsSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListView$lambda-6$lambda-5  reason: not valid java name */
    public static final void m2066initListView$lambda6$lambda5(ReactionsSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            if (i == this$0.enableRow) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                textCheckCell.toggleCheckbox();
                SharedConfig.setReactionsEnabled(!SharedConfig.isReactionsEnabled);
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
            }
        } else if (view instanceof NotificationsCheckCell) {
            if (i == this$0.messagePopupRow) {
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                if (notificationsCheckCell.checkSwitchLocation(f)) {
                    notificationsCheckCell.setChecked(!notificationsCheckCell.isChecked());
                    SharedConfig.setSelectedDialogTypesForMessagePopupReactions(notificationsCheckCell.isChecked() ? ArraysKt___ArraysKt.toSet(DialogType.values()) : SetsKt__SetsKt.emptySet());
                    this$0.getListAdapter().notifyItemChanged(this$0.messagePopupRow);
                    return;
                }
                this$0.showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet();
            }
        } else if ((view instanceof TextSettingsCell) && i == this$0.quickReactionRow) {
            this$0.presentFragment(new ReactionsDoubleTapManageActivity());
        }
    }

    private final void showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet() {
        List list;
        int collectionSizeOrDefault;
        int lastIndex;
        final BottomSheet.Builder builder = new BottomSheet.Builder(getParentActivity());
        builder.setTitle(LocaleController.getInternalString(C3158R.string.settings_interface_message_popup_items), true);
        boolean z = false;
        builder.setApplyBottomPadding(false);
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        builder.setCustomView(frameLayout);
        ScrollView scrollView = new ScrollView(getParentActivity());
        LinearLayout linearLayout = new LinearLayout(getParentActivity());
        linearLayout.setOrientation(1);
        list = ArraysKt___ArraysKt.toList(DialogType.values());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        final ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            DialogType dialogType = (DialogType) obj;
            final TextCheckBoxCell textCheckBoxCell = new TextCheckBoxCell(getParentActivity(), true, z);
            textCheckBoxCell.setTag(dialogType);
            textCheckBoxCell.setBackground(Theme.getSelectorDrawable(z));
            String internalString = LocaleController.getInternalString(dialogType.getNameResId());
            boolean contains = SharedConfig.selectedDialogTypesForMessagePopupReactions.contains(dialogType);
            lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
            textCheckBoxCell.setTextAndCheck(internalString, contains, i < lastIndex);
            textCheckBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReactionsSettingsActivity.m60x1346e620(TextCheckBoxCell.this, view);
                }
            });
            linearLayout.addView(textCheckBoxCell, LayoutHelper.createLinear(-1, 50));
            arrayList.add(textCheckBoxCell);
            i = i2;
            z = false;
        }
        scrollView.addView(linearLayout);
        frameLayout.addView(scrollView, LayoutHelper.createFrame(-1, -2, 48, 0, 0, 0, 53));
        FrameLayout frameLayout2 = new FrameLayout(getParentActivity());
        int m50dp = AndroidUtilities.m50dp(8);
        frameLayout2.setPadding(m50dp, m50dp, m50dp, m50dp);
        TextView textView = new TextView(getParentActivity());
        textView.setGravity(17);
        String string = LocaleController.getString("Cancel", C3158R.string.Cancel);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Cancel\", R.string.Cancel)");
        Locale locale = Locale.ROOT;
        String upperCase = string.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView.setText(upperCase);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor("dialogTextBlue2"));
        textView.setPadding(AndroidUtilities.m50dp(10), 0, AndroidUtilities.m50dp(10), 0);
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReactionsSettingsActivity.m59x81b56bde(BottomSheet.Builder.this, view);
            }
        });
        frameLayout2.addView(textView, LayoutHelper.createFrame(-2, 36, 8388659));
        TextView textView2 = new TextView(getParentActivity());
        textView2.setGravity(17);
        String string2 = LocaleController.getString("Save", C3158R.string.Save);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Save\", R.string.Save)");
        String upperCase2 = string2.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView2.setText(upperCase2);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor("dialogTextBlue2"));
        textView2.setPadding(AndroidUtilities.m50dp(10), 0, AndroidUtilities.m50dp(10), 0);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReactionsSettingsActivity.m58xab7ed162(arrayList, builder, this, view);
            }
        });
        frameLayout2.addView(textView2, LayoutHelper.createFrame(-2, 36, 8388661));
        View view = new View(getParentActivity());
        view.setBackgroundColor(Theme.getColor("divider"));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, 1, 80, 0, 0, 0, 52));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 52, 80));
        BottomSheet create = builder.create();
        create.setCanDismissWithSwipe(false);
        Unit unit = Unit.INSTANCE;
        showDialog(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$lambda-12$lambda-10$lambda-9 */
    public static final void m60x1346e620(TextCheckBoxCell this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setChecked(!this_apply.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$lambda-15$lambda-14 */
    public static final void m59x81b56bde(BottomSheet.Builder builder, View view) {
        Intrinsics.checkNotNullParameter(builder, "$builder");
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$lambda-17$lambda-16 */
    public static final void m58xab7ed162(List cells, BottomSheet.Builder builder, ReactionsSettingsActivity this$0, View view) {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        Set set;
        Intrinsics.checkNotNullParameter(cells, "$cells");
        Intrinsics.checkNotNullParameter(builder, "$builder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        asSequence = CollectionsKt___CollectionsKt.asSequence(cells);
        filter = SequencesKt___SequencesKt.filter(asSequence, C3028xecddff80.INSTANCE);
        map = SequencesKt___SequencesKt.map(filter, C3029xecddff81.INSTANCE);
        set = SequencesKt___SequencesKt.toSet(map);
        builder.getDismissRunnable().run();
        SharedConfig.setSelectedDialogTypesForMessagePopupReactions(set);
        this$0.getListAdapter().notifyItemChanged(this$0.messagePopupRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i != IdFabric$ViewTypes.TEXT_INFO_PRIVACY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY || i == IdFabric$ViewTypes.HEADER) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReactionsSettingsActivity.kt */
    /* renamed from: org.fork.ui.fragment.ReactionsSettingsActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        final /* synthetic */ ReactionsSettingsActivity this$0;

        public ListAdapter(ReactionsSettingsActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            updateRows();
        }

        public final void updateRows() {
            this.this$0.messagePopupRow = -1;
            this.this$0.quickReactionRow = -1;
            this.this$0.rowCount = 0;
            ReactionsSettingsActivity reactionsSettingsActivity = this.this$0;
            int i = reactionsSettingsActivity.rowCount;
            reactionsSettingsActivity.rowCount = i + 1;
            reactionsSettingsActivity.enableRow = i;
            ReactionsSettingsActivity reactionsSettingsActivity2 = this.this$0;
            int i2 = reactionsSettingsActivity2.rowCount;
            reactionsSettingsActivity2.rowCount = i2 + 1;
            reactionsSettingsActivity2.enableSectionRow = i2;
            if (SharedConfig.isReactionsEnabled) {
                ReactionsSettingsActivity reactionsSettingsActivity3 = this.this$0;
                int i3 = reactionsSettingsActivity3.rowCount;
                reactionsSettingsActivity3.rowCount = i3 + 1;
                reactionsSettingsActivity3.messagePopupRow = i3;
                ReactionsSettingsActivity reactionsSettingsActivity4 = this.this$0;
                int i4 = reactionsSettingsActivity4.rowCount;
                reactionsSettingsActivity4.rowCount = i4 + 1;
                reactionsSettingsActivity4.quickReactionRow = i4;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == this.this$0.enableRow ? IdFabric$ViewTypes.TEXT_CHECK : i == this.this$0.enableSectionRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY : i == this.this$0.messagePopupRow ? IdFabric$ViewTypes.NOTIFICATION_CHECK : IdFabric$ViewTypes.TEXT_SETTINGS;
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return this.this$0.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            TextCheckCell textCheckCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                TextCheckCell textCheckCell2 = new TextCheckCell(this.this$0.getParentActivity());
                textCheckCell2.setType(1);
                Unit unit = Unit.INSTANCE;
                textCheckCell = textCheckCell2;
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY) {
                textCheckCell = new TextInfoPrivacyCell(this.this$0.getParentActivity());
            } else if (i == IdFabric$ViewTypes.NOTIFICATION_CHECK) {
                FrameLayout notificationsCheckCell = new NotificationsCheckCell(this.this$0.getParentActivity());
                notificationsCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                Unit unit2 = Unit.INSTANCE;
                textCheckCell = notificationsCheckCell;
            } else {
                FrameLayout textSettingsCell = new TextSettingsCell(this.this$0.getParentActivity());
                textSettingsCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                Unit unit3 = Unit.INSTANCE;
                textCheckCell = textSettingsCell;
            }
            textCheckCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            Unit unit4 = Unit.INSTANCE;
            return new RecyclerListView.Holder(textCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction;
            String internalString;
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = this.this$0.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == this.this$0.enableRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString("EnableReactions", C3158R.string.EnableReactions), SharedConfig.isReactionsEnabled, needDivider);
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY && (view instanceof TextInfoPrivacyCell)) {
                ReactionsSettingsActivity reactionsSettingsActivity = this.this$0;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == reactionsSettingsActivity.enableSectionRow && !SharedConfig.isReactionsEnabled) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(reactionsSettingsActivity.getParentActivity(), C3158R.C3160drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3158R.string.settings_reactions_enable_hint));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(reactionsSettingsActivity.getParentActivity(), C3158R.C3160drawable.greydivider, "windowBackgroundGrayShadow"));
                textInfoPrivacyCell.setText(null);
                textInfoPrivacyCell.setFixedSize(12);
            } else if (itemViewType == IdFabric$ViewTypes.NOTIFICATION_CHECK && (view instanceof NotificationsCheckCell)) {
                DialogType.Companion companion = DialogType.Companion;
                Set<DialogType> selectedDialogTypesForMessagePopupReactions = SharedConfig.selectedDialogTypesForMessagePopupReactions;
                Intrinsics.checkNotNullExpressionValue(selectedDialogTypesForMessagePopupReactions, "selectedDialogTypesForMessagePopupReactions");
                List<String> mapEnumsToTitles = companion.mapEnumsToTitles(selectedDialogTypesForMessagePopupReactions);
                boolean z = !mapEnumsToTitles.isEmpty();
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                String internalString2 = LocaleController.getInternalString(C3158R.string.settings_tools_message_popup_reactions);
                if (z) {
                    internalString = TextUtils.join(", ", mapEnumsToTitles);
                } else {
                    internalString = LocaleController.getInternalString(C3158R.string.common_off);
                }
                notificationsCheckCell.setTextAndValueAndCheck(internalString2, internalString, z, needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_SETTINGS && (view instanceof TextSettingsCell)) {
                ReactionsSettingsActivity reactionsSettingsActivity2 = this.this$0;
                TextSettingsCell textSettingsCell = (TextSettingsCell) view;
                textSettingsCell.setText(LocaleController.getString("DoubleTapSetting", C3158R.string.DoubleTapSetting), needDivider);
                if (reactionsSettingsActivity2.getForkCommonController().isQuickReactionEnabled()) {
                    BackupImageView valueBackupImageView = textSettingsCell.getValueBackupImageView();
                    Intrinsics.checkNotNullExpressionValue(valueBackupImageView, "valueBackupImageView");
                    ViewExtKt.visible(valueBackupImageView);
                    textSettingsCell.setValue(null);
                } else {
                    BackupImageView valueBackupImageView2 = textSettingsCell.getValueBackupImageView();
                    Intrinsics.checkNotNullExpressionValue(valueBackupImageView2, "valueBackupImageView");
                    ViewExtKt.gone(valueBackupImageView2);
                    textSettingsCell.setValue(LocaleController.getInternalString(C3158R.string.common_off));
                }
                String doubleTapReaction = MediaDataController.getInstance(((BaseFragment) reactionsSettingsActivity2).currentAccount).getDoubleTapReaction();
                if (doubleTapReaction == null || (tLRPC$TL_availableReaction = MediaDataController.getInstance(((BaseFragment) reactionsSettingsActivity2).currentAccount).getReactionsMap().get(doubleTapReaction)) == null) {
                    return;
                }
                textSettingsCell.getValueBackupImageView().getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.static_icon), "100_100", DocumentObject.getSvgThumb(tLRPC$TL_availableReaction.static_icon.thumbs, "windowBackgroundGray", 1.0f), "webp", tLRPC$TL_availableReaction, 1);
            }
        }
    }
}
