package com.iMe.fork.p023ui.fragment;

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
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.p023ui.fragment.ReactionsSettingsActivity;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.SharedConfig;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.NotificationsCheckCell;
import org.telegram.p043ui.Cells.TextCheckBoxCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.ReactionsDoubleTapManageActivity;
import org.telegram.tgnet.TLRPC$TL_availableReaction;
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ReactionsSettingsActivity */
/* loaded from: classes3.dex */
public final class ReactionsSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ReactionsSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(ReactionsSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(ReactionsSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$ListAdapter;", 0))};
    private int enableRow;
    private int enableSectionRow;
    private int messagePopupRow;
    private int quickReactionRow;
    private int rowCount;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$rootView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            FrameLayout initRootView;
            initRootView = ReactionsSettingsActivity.this.initRootView();
            return initRootView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$listView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final RecyclerListView invoke() {
            RecyclerListView initListView;
            initListView = ReactionsSettingsActivity.this.initListView();
            return initListView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$listAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ReactionsSettingsActivity.ListAdapter invoke() {
            return new ReactionsSettingsActivity.ListAdapter();
        }
    }, 1, (Object) null);

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
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

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getListAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, NotificationsCheckCell.class, TextSettingsCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setTitle(LocaleController.getString("Reactions", C3632R.string.Reactions));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
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
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(getParentActivity()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i, f, f2);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i, float f, float f2) {
                ReactionsSettingsActivity.initListView$lambda$5$lambda$4(ReactionsSettingsActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$5$lambda$4(ReactionsSettingsActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            if (i == this$0.enableRow) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                textCheckCell.toggleCheckBox();
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
                if (notificationsCheckCell.isInSwitch(f)) {
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
        builder.setTitle(LocaleController.getInternalString(C3632R.string.settings_interface_message_popup_items), true);
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
            textCheckBoxCell.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReactionsSettingsActivity.m1019x4232580b(TextCheckBoxCell.this, view);
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
        int m107dp = AndroidUtilities.m107dp(8);
        frameLayout2.setPadding(m107dp, m107dp, m107dp, m107dp);
        TextView textView = new TextView(getParentActivity());
        textView.setGravity(17);
        String string = LocaleController.getString("Cancel", C3632R.string.Cancel);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Cancel\", R.string.Cancel)");
        Locale locale = Locale.ROOT;
        String upperCase = string.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView.setText(upperCase);
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 14.0f);
        int i3 = Theme.key_dialogTextBlue2;
        textView.setTextColor(Theme.getColor(i3));
        textView.setPadding(AndroidUtilities.m107dp(10), 0, AndroidUtilities.m107dp(10), 0);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReactionsSettingsActivity.m1018x8a355cca(BottomSheet.Builder.this, view);
            }
        });
        frameLayout2.addView(textView, LayoutHelper.createFrame(-2, 36, 8388659));
        TextView textView2 = new TextView(getParentActivity());
        textView2.setGravity(17);
        String string2 = LocaleController.getString("Save", C3632R.string.Save);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Save\", R.string.Save)");
        String upperCase2 = string2.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        textView2.setText(upperCase2);
        textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView2.setTextSize(1, 14.0f);
        textView2.setTextColor(Theme.getColor(i3));
        textView2.setPadding(AndroidUtilities.m107dp(10), 0, AndroidUtilities.m107dp(10), 0);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReactionsSettingsActivity.m1017xb3fec24e(arrayList, builder, this, view);
            }
        });
        frameLayout2.addView(textView2, LayoutHelper.createFrame(-2, 36, 8388661));
        View view = new View(getParentActivity());
        view.setBackgroundColor(Theme.getColor(Theme.key_divider));
        frameLayout.addView(view, LayoutHelper.createFrame(-1, 1, 80, 0, 0, 0, 52));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 52, 80));
        BottomSheet create = builder.create();
        create.setCanDismissWithSwipe(false);
        showDialog(create);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$lambda$11$lambda$9$lambda$8 */
    public static final void m1019x4232580b(TextCheckBoxCell this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setChecked(!this_apply.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$lambda$14$lambda$13 */
    public static final void m1018x8a355cca(BottomSheet.Builder builder, View view) {
        Intrinsics.checkNotNullParameter(builder, "$builder");
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$lambda$16$lambda$15 */
    public static final void m1017xb3fec24e(List cells, BottomSheet.Builder builder, ReactionsSettingsActivity this$0, View view) {
        Sequence asSequence;
        Sequence filter;
        Sequence map;
        Set set;
        Intrinsics.checkNotNullParameter(cells, "$cells");
        Intrinsics.checkNotNullParameter(builder, "$builder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        asSequence = CollectionsKt___CollectionsKt.asSequence(cells);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<TextCheckBoxCell, Boolean>() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(TextCheckBoxCell it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(it.isChecked());
            }
        });
        map = SequencesKt___SequencesKt.map(filter, new Function1<TextCheckBoxCell, DialogType>() { // from class: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2
            @Override // kotlin.jvm.functions.Function1
            public final DialogType invoke(TextCheckBoxCell it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Object tag = it.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.iMe.fork.enums.DialogType");
                return (DialogType) tag;
            }
        });
        set = SequencesKt___SequencesKt.toSet(map);
        builder.getDismissRunnable().run();
        SharedConfig.setSelectedDialogTypesForMessagePopupReactions(set);
        this$0.getListAdapter().notifyItemChanged(this$0.messagePopupRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i != IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.HEADER_CELL) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReactionsSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            ReactionsSettingsActivity.this.messagePopupRow = -1;
            ReactionsSettingsActivity.this.quickReactionRow = -1;
            ReactionsSettingsActivity.this.rowCount = 0;
            ReactionsSettingsActivity reactionsSettingsActivity = ReactionsSettingsActivity.this;
            int i = reactionsSettingsActivity.rowCount;
            reactionsSettingsActivity.rowCount = i + 1;
            reactionsSettingsActivity.enableRow = i;
            ReactionsSettingsActivity reactionsSettingsActivity2 = ReactionsSettingsActivity.this;
            int i2 = reactionsSettingsActivity2.rowCount;
            reactionsSettingsActivity2.rowCount = i2 + 1;
            reactionsSettingsActivity2.enableSectionRow = i2;
            if (SharedConfig.isReactionsEnabled) {
                ReactionsSettingsActivity reactionsSettingsActivity3 = ReactionsSettingsActivity.this;
                int i3 = reactionsSettingsActivity3.rowCount;
                reactionsSettingsActivity3.rowCount = i3 + 1;
                reactionsSettingsActivity3.messagePopupRow = i3;
                ReactionsSettingsActivity reactionsSettingsActivity4 = ReactionsSettingsActivity.this;
                int i4 = reactionsSettingsActivity4.rowCount;
                reactionsSettingsActivity4.rowCount = i4 + 1;
                reactionsSettingsActivity4.quickReactionRow = i4;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ReactionsSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == ReactionsSettingsActivity.this.enableRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL : i == ReactionsSettingsActivity.this.enableSectionRow ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : i == ReactionsSettingsActivity.this.messagePopupRow ? IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL : IdFabric$ViewTypes.TEXT_SETTINGS_CELL;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return ReactionsSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            TextCheckCell textCheckCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                TextCheckCell textCheckCell2 = new TextCheckCell(ReactionsSettingsActivity.this.getParentActivity());
                textCheckCell2.setType(1);
                textCheckCell = textCheckCell2;
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                textCheckCell = new TextInfoPrivacyCell(ReactionsSettingsActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL) {
                FrameLayout notificationsCheckCell = new NotificationsCheckCell(ReactionsSettingsActivity.this.getParentActivity());
                notificationsCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textCheckCell = notificationsCheckCell;
            } else {
                FrameLayout textSettingsCell = new TextSettingsCell(ReactionsSettingsActivity.this.getParentActivity());
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textCheckCell = textSettingsCell;
            }
            textCheckCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCheckCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            TLRPC$TL_availableReaction tLRPC$TL_availableReaction;
            String internalString;
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = ReactionsSettingsActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                if (i == ReactionsSettingsActivity.this.enableRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getString("EnableReactions", C3632R.string.EnableReactions), SharedConfig.isReactionsEnabled, needDivider);
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                ReactionsSettingsActivity reactionsSettingsActivity = ReactionsSettingsActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == reactionsSettingsActivity.enableSectionRow && !SharedConfig.isReactionsEnabled) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(reactionsSettingsActivity.getParentActivity(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3632R.string.settings_reactions_enable_hint));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(reactionsSettingsActivity.getParentActivity(), C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                textInfoPrivacyCell.setText(null);
                textInfoPrivacyCell.setFixedSize(12);
            } else if (itemViewType == IdFabric$ViewTypes.NOTIFICATIONS_CHECK_CELL && (view instanceof NotificationsCheckCell)) {
                DialogType.Companion companion = DialogType.Companion;
                Set<DialogType> selectedDialogTypesForMessagePopupReactions = SharedConfig.selectedDialogTypesForMessagePopupReactions;
                Intrinsics.checkNotNullExpressionValue(selectedDialogTypesForMessagePopupReactions, "selectedDialogTypesForMessagePopupReactions");
                List<String> mapEnumsToTitles = companion.mapEnumsToTitles(selectedDialogTypesForMessagePopupReactions);
                boolean z = !mapEnumsToTitles.isEmpty();
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                String internalString2 = LocaleController.getInternalString(C3632R.string.settings_tools_message_popup_reactions);
                if (z) {
                    internalString = TextUtils.join(", ", mapEnumsToTitles);
                } else {
                    internalString = LocaleController.getInternalString(C3632R.string.common_off);
                }
                notificationsCheckCell.setTextAndValueAndCheck(internalString2, internalString, z, needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_SETTINGS_CELL && (view instanceof TextSettingsCell)) {
                ReactionsSettingsActivity reactionsSettingsActivity2 = ReactionsSettingsActivity.this;
                TextSettingsCell textSettingsCell = (TextSettingsCell) view;
                textSettingsCell.setText(LocaleController.getString("DoubleTapSetting", C3632R.string.DoubleTapSetting), needDivider);
                if (reactionsSettingsActivity2.getForkCommonController().isQuickReactionEnabled()) {
                    BackupImageView valueBackupImageView = textSettingsCell.getValueBackupImageView();
                    Intrinsics.checkNotNullExpressionValue(valueBackupImageView, "valueBackupImageView");
                    ViewExtKt.visible$default(valueBackupImageView, false, 1, null);
                    textSettingsCell.setValue(null);
                } else {
                    BackupImageView valueBackupImageView2 = textSettingsCell.getValueBackupImageView();
                    Intrinsics.checkNotNullExpressionValue(valueBackupImageView2, "valueBackupImageView");
                    ViewExtKt.gone$default(valueBackupImageView2, false, 1, null);
                    textSettingsCell.setValue(LocaleController.getInternalString(C3632R.string.common_off));
                }
                String doubleTapReaction = MediaDataController.getInstance(((BaseFragment) reactionsSettingsActivity2).currentAccount).getDoubleTapReaction();
                if (doubleTapReaction == null || (tLRPC$TL_availableReaction = MediaDataController.getInstance(((BaseFragment) reactionsSettingsActivity2).currentAccount).getReactionsMap().get(doubleTapReaction)) == null) {
                    return;
                }
                Intrinsics.checkNotNullExpressionValue(tLRPC$TL_availableReaction, "MediaDataController.getI…                ?: return");
                textSettingsCell.getValueBackupImageView().getImageReceiver().setImage(ImageLocation.getForDocument(tLRPC$TL_availableReaction.static_icon), "100_100", DocumentObject.getSvgThumb(tLRPC$TL_availableReaction.static_icon.thumbs, Theme.key_windowBackgroundGray, 1.0f), "webp", tLRPC$TL_availableReaction, 1);
            }
        }
    }
}
