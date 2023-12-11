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
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.ChatProfileController;
import com.iMe.fork.enums.ChatProfileDialogType;
import com.iMe.fork.enums.ChatProfileTelegramIdMode;
import com.iMe.fork.p023ui.fragment.ChatProfileActivity;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextCheckCell2;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: ChatProfileActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ChatProfileActivity */
/* loaded from: classes3.dex */
public final class ChatProfileActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ChatProfileActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(ChatProfileActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(ChatProfileActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;", 0))};
    private int chatProfileTelegramIdRow;
    private final Lazy dialogTypes$delegate;
    private int dialogTypesEndRow;
    private boolean dialogTypesExpandableList;
    private int dialogTypesExpandableListRow;
    private int dialogTypesStartRow;
    private int dialogsTypesSectionRow;
    private int enableRow;
    private int enableSectionRow;
    private int rowCount;
    private final ResettableLazy rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$rootView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            FrameLayout initRootView;
            initRootView = ChatProfileActivity.this.initRootView();
            return initRootView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$listView$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final RecyclerListView invoke() {
            RecyclerListView initListView;
            initListView = ChatProfileActivity.this.initListView();
            return initListView;
        }
    }, 1, (Object) null);
    private final ResettableLazy listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$listAdapter$2
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ChatProfileActivity.ListAdapter invoke() {
            return new ChatProfileActivity.ListAdapter();
        }
    }, 1, (Object) null);

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public ChatProfileActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ChatProfileDialogType[]>() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$dialogTypes$2
            @Override // kotlin.jvm.functions.Function0
            public final ChatProfileDialogType[] invoke() {
                return ChatProfileDialogType.values();
            }
        });
        this.dialogTypes$delegate = lazy;
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
    public final ChatProfileDialogType[] getDialogTypes() {
        return (ChatProfileDialogType[]) this.dialogTypes$delegate.getValue();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment, org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getChatProfileController().saveConfig();
        super.onFragmentDestroy();
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundCheckText;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        int i5 = Theme.key_switchTrackBlueSelectorChecked;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray), new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, TextCheckCell2.class, CheckBoxCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText2), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{CheckBoxCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5), new ThemeDescription(getListView(), 0, new Class[]{CheckBoxCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setTitle(LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_id_telegram));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ChatProfileActivity.this.finishFragment();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$$ExternalSyntheticLambda1
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
                ChatProfileActivity.initListView$lambda$8$lambda$7(ChatProfileActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$8$lambda$7(final ChatProfileActivity this$0, View view, int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof CheckBoxCell) {
            Object tag = ((CheckBoxCell) view).getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            if (((Integer) tag).intValue() > this$0.dialogsTypesSectionRow) {
                CollectionExtKt.addOrRemove(this$0.getChatProfileController().getSelectedChatProfileDialogTypes(), this$0.getDialogTypes()[i - this$0.dialogTypesStartRow]);
            }
            this$0.getListAdapter().notifyDataSetChanged();
        } else if (view instanceof TextCheckCell2) {
            this$0.dialogTypesExpandableList = !this$0.dialogTypesExpandableList;
            ListAdapter listAdapter = this$0.getListAdapter();
            listAdapter.updateRows();
            listAdapter.notifyDataSetChanged();
        } else if (view instanceof TextCheckCell) {
            ((TextCheckCell) view).toggleCheckBox();
            if (i == this$0.enableRow) {
                ChatProfileController chatProfileController = this$0.getChatProfileController();
                chatProfileController.setChatProfileEnabled(!chatProfileController.isChatProfileEnabled());
                ListAdapter listAdapter2 = this$0.getListAdapter();
                int i2 = this$0.rowCount;
                listAdapter2.updateRows();
                int abs = Math.abs(i2 - this$0.rowCount);
                if (this$0.getChatProfileController().isChatProfileEnabled()) {
                    listAdapter2.notifyItemRangeInserted(this$0.enableSectionRow + 1, abs);
                } else {
                    listAdapter2.notifyItemRangeRemoved(this$0.enableSectionRow + 1, abs);
                }
                listAdapter2.notifyItemChanged(this$0.enableSectionRow);
                this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newSuggestionsAvailable, Boolean.TRUE);
            }
        } else if ((view instanceof TextSettingsCell) && i == this$0.chatProfileTelegramIdRow) {
            DialogsFactoryKt.showChatProfileTelegramIdDialog$default(this$0, false, new Callbacks$Callback() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    ChatProfileActivity.initListView$lambda$8$lambda$7$lambda$6(ChatProfileActivity.this);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$8$lambda$7$lambda$6(ChatProfileActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListAdapter().notifyItemChanged(this$0.chatProfileTelegramIdRow);
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.newSuggestionsAvailable, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.TEXT_CHECK_CELL || i == IdFabric$ViewTypes.TEXT_CHECK_CELL_2 || i == IdFabric$ViewTypes.CHECK_BOX_CELL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL || i == IdFabric$ViewTypes.HEADER_CELL) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChatProfileActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChatProfileActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            ChatProfileActivity.this.rowCount = 0;
            ChatProfileActivity chatProfileActivity = ChatProfileActivity.this;
            int i = chatProfileActivity.rowCount;
            chatProfileActivity.rowCount = i + 1;
            chatProfileActivity.enableRow = i;
            ChatProfileActivity chatProfileActivity2 = ChatProfileActivity.this;
            int i2 = chatProfileActivity2.rowCount;
            chatProfileActivity2.rowCount = i2 + 1;
            chatProfileActivity2.enableSectionRow = i2;
            ChatProfileActivity.this.dialogTypesStartRow = -1;
            ChatProfileActivity.this.dialogTypesEndRow = -1;
            if (!ChatProfileActivity.this.getChatProfileController().isChatProfileEnabled()) {
                ChatProfileActivity.this.dialogsTypesSectionRow = -1;
                ChatProfileActivity.this.dialogTypesExpandableListRow = -1;
                ChatProfileActivity.this.chatProfileTelegramIdRow = -1;
                return;
            }
            ChatProfileActivity chatProfileActivity3 = ChatProfileActivity.this;
            int i3 = chatProfileActivity3.rowCount;
            chatProfileActivity3.rowCount = i3 + 1;
            chatProfileActivity3.chatProfileTelegramIdRow = i3;
            ChatProfileActivity chatProfileActivity4 = ChatProfileActivity.this;
            int i4 = chatProfileActivity4.rowCount;
            chatProfileActivity4.rowCount = i4 + 1;
            chatProfileActivity4.dialogsTypesSectionRow = i4;
            ChatProfileActivity chatProfileActivity5 = ChatProfileActivity.this;
            int i5 = chatProfileActivity5.rowCount;
            chatProfileActivity5.rowCount = i5 + 1;
            chatProfileActivity5.dialogTypesExpandableListRow = i5;
            if (ChatProfileActivity.this.dialogTypesExpandableList) {
                ChatProfileActivity chatProfileActivity6 = ChatProfileActivity.this;
                chatProfileActivity6.dialogTypesStartRow = chatProfileActivity6.rowCount;
                ChatProfileActivity.this.rowCount += ChatProfileActivity.this.getDialogTypes().length;
                ChatProfileActivity chatProfileActivity7 = ChatProfileActivity.this;
                chatProfileActivity7.dialogTypesEndRow = chatProfileActivity7.rowCount;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatProfileActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ChatProfileActivity.this.chatProfileTelegramIdRow) {
                return IdFabric$ViewTypes.TEXT_SETTINGS_CELL;
            }
            boolean z = true;
            if (i != ChatProfileActivity.this.enableSectionRow && i != ChatProfileActivity.this.dialogsTypesSectionRow) {
                z = false;
            }
            return z ? IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL : i == ChatProfileActivity.this.dialogTypesExpandableListRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL_2 : i == ChatProfileActivity.this.enableRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL : IdFabric$ViewTypes.CHECK_BOX_CELL;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return ChatProfileActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            CheckBoxCell checkBoxCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.CHECK_BOX_CELL) {
                CheckBoxCell checkBoxCell2 = new CheckBoxCell(ChatProfileActivity.this.getParentActivity(), 4, AndroidUtilities.m104dp(20), ChatProfileActivity.this.getResourceProvider());
                checkBoxCell2.getCheckBoxRound().setDrawBackgroundAsArc(14);
                checkBoxCell2.getCheckBoxRound().setColor(Theme.key_switch2TrackChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                checkBoxCell2.setEnabled(true);
                checkBoxCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                checkBoxCell = checkBoxCell2;
            } else if (i == IdFabric$ViewTypes.TEXT_SETTINGS_CELL) {
                FrameLayout textSettingsCell = new TextSettingsCell(ChatProfileActivity.this.getContext());
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                checkBoxCell = textSettingsCell;
            } else if (i == IdFabric$ViewTypes.TEXT_CHECK_CELL) {
                checkBoxCell = new TextCheckCell(ChatProfileActivity.this.getParentActivity());
            } else if (i == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL) {
                checkBoxCell = new TextInfoPrivacyCell(ChatProfileActivity.this.getParentActivity());
            } else {
                FrameLayout textCheckCell2 = new TextCheckCell2(ChatProfileActivity.this.getParentActivity());
                textCheckCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                checkBoxCell = textCheckCell2;
            }
            checkBoxCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(checkBoxCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            boolean z;
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = ChatProfileActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.CHECK_BOX_CELL && (view instanceof CheckBoxCell)) {
                if (view.getTag() != null) {
                    Object tag = ((CheckBoxCell) view).getTag();
                    Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
                    if (((Integer) tag).intValue() == i) {
                        z = true;
                        view.setTag(Integer.valueOf(i));
                        ChatProfileDialogType chatProfileDialogType = ChatProfileActivity.this.getDialogTypes()[i - ChatProfileActivity.this.dialogTypesStartRow];
                        ((CheckBoxCell) view).setText(chatProfileDialogType.getTitle(), "", ChatProfileActivity.this.getChatProfileController().getSelectedChatProfileDialogTypes().contains(chatProfileDialogType), true, z);
                    }
                }
                z = false;
                view.setTag(Integer.valueOf(i));
                ChatProfileDialogType chatProfileDialogType2 = ChatProfileActivity.this.getDialogTypes()[i - ChatProfileActivity.this.dialogTypesStartRow];
                ((CheckBoxCell) view).setText(chatProfileDialogType2.getTitle(), "", ChatProfileActivity.this.getChatProfileController().getSelectedChatProfileDialogTypes().contains(chatProfileDialogType2), true, z);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL_2 && (view instanceof TextCheckCell2)) {
                final ChatProfileActivity chatProfileActivity = ChatProfileActivity.this;
                final TextCheckCell2 textCheckCell2 = (TextCheckCell2) view;
                if (i == chatProfileActivity.dialogTypesExpandableListRow) {
                    int size = chatProfileActivity.getChatProfileController().getSelectedChatProfileDialogTypes().size();
                    textCheckCell2.setTextAndCheck(LocaleController.getInternalString(C3632R.string.swipe_to_next_unread_dialog_types), size > 0, needDivider, true);
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format(Locale.US, "%d/4", Arrays.copyOf(new Object[]{Integer.valueOf(size)}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
                    textCheckCell2.setCollapseArrow(format, !chatProfileActivity.dialogTypesExpandableList, new Runnable() { // from class: com.iMe.fork.ui.fragment.ChatProfileActivity$ListAdapter$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatProfileActivity.ListAdapter.onBindViewHolder$lambda$5$lambda$4(TextCheckCell2.this, chatProfileActivity, this);
                        }
                    });
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                ChatProfileActivity chatProfileActivity2 = ChatProfileActivity.this;
                TextCheckCell textCheckCell = (TextCheckCell) view;
                textCheckCell.setType(1);
                textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_id_telegram_enable_panel), chatProfileActivity2.getChatProfileController().isChatProfileEnabled(), needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_SETTINGS_CELL && (view instanceof TextSettingsCell)) {
                if (i == ChatProfileActivity.this.chatProfileTelegramIdRow) {
                    ((TextSettingsCell) view).setTextAndValue(LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_id_telegram), ChatProfileTelegramIdMode.Companion.mapNameToEnum(ChatProfileActivity.this.getChatProfileController().getSelectedChatProfileTelegramIdMode()).getTitle(), needDivider);
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_INFO_PRIVACY_CELL && (view instanceof TextInfoPrivacyCell)) {
                ChatProfileActivity chatProfileActivity3 = ChatProfileActivity.this;
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
                if (i == chatProfileActivity3.enableSectionRow && !chatProfileActivity3.getChatProfileController().isChatProfileEnabled()) {
                    textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(chatProfileActivity3.getParentActivity(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    textInfoPrivacyCell.setText(LocaleController.getInternalString(C3632R.string.settings_tools_chat_profile_id_telegram_hint));
                    textInfoPrivacyCell.setFixedSize(0);
                    return;
                }
                textInfoPrivacyCell.setBackground(Theme.getThemedDrawable(chatProfileActivity3.getParentActivity(), C3632R.C3634drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                textInfoPrivacyCell.setText(null);
                textInfoPrivacyCell.setFixedSize(12);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$5$lambda$4(TextCheckCell2 this_with, ChatProfileActivity this$0, ListAdapter this$1) {
            Set<ChatProfileDialogType> mutableSet;
            Intrinsics.checkNotNullParameter(this_with, "$this_with");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            if (!this_with.isChecked()) {
                this$0.dialogTypesExpandableList = true;
                ChatProfileController chatProfileController = this$0.getChatProfileController();
                mutableSet = CollectionsKt___CollectionsKt.toMutableSet(TelegramPreferenceKeys.Global.Default.selectedChatProfileDialogTypes());
                chatProfileController.setSelectedChatProfileDialogTypes(mutableSet);
            } else {
                this$0.dialogTypesExpandableList = false;
                this$0.getChatProfileController().getSelectedChatProfileDialogTypes().clear();
            }
            this$0.getChatProfileController().saveConfig();
            this_with.setChecked(!this_with.isChecked());
            this$1.updateRows();
            this$1.notifyDataSetChanged();
        }
    }
}
