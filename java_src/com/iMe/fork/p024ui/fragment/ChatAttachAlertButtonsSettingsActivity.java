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
import com.iMe.fork.enums.ChatAttachAlertButton;
import com.iMe.fork.enums.DialogType;
import com.iMe.fork.p024ui.view.ChatAttachAlertButtonCell;
import com.iMe.fork.p024ui.view.DialogTypeTopicsBar;
import com.iMe.p031ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Cells.ShadowSectionCell;
import org.telegram.p044ui.Cells.TextCheckCell;
import org.telegram.p044ui.Cells.TextInfoPrivacyCell;
import org.telegram.p044ui.Components.AlertsCreator;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_contacts_toggleTopPeers;
import org.telegram.tgnet.TLRPC$TL_error;
/* compiled from: ChatAttachAlertButtonsSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity */
/* loaded from: classes3.dex */
public final class ChatAttachAlertButtonsSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ChatAttachAlertButtonsSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(ChatAttachAlertButtonsSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(ChatAttachAlertButtonsSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;", 0))};
    private int buttonsEndRow;
    private int buttonsSectionRow;
    private int buttonsStartRow;
    private DialogType currentDialogType;
    private int dialogTypeTopicsBarRow;
    private int enableBotsRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private boolean newSuggest;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private DialogTypeTopicsBar topicsBar;

    public ChatAttachAlertButtonsSettingsActivity() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveSuggestContacts$lambda$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public /* synthetic */ ChatAttachAlertButtonsSettingsActivity(DialogType dialogType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? DialogType.CHAT : dialogType);
    }

    public final DialogType getCurrentDialogType() {
        return this.currentDialogType;
    }

    public final void setCurrentDialogType(DialogType dialogType) {
        Intrinsics.checkNotNullParameter(dialogType, "<set-?>");
        this.currentDialogType = dialogType;
    }

    public ChatAttachAlertButtonsSettingsActivity(DialogType currentDialogType) {
        Intrinsics.checkNotNullParameter(currentDialogType, "currentDialogType");
        this.currentDialogType = currentDialogType;
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new ChatAttachAlertButtonsSettingsActivity$rootView$2(this), 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new ChatAttachAlertButtonsSettingsActivity$listView$2(this), 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new ChatAttachAlertButtonsSettingsActivity$listAdapter$2(this), 1, (Object) null);
        this.newSuggest = getUserConfig().suggestContacts;
    }

    private final FrameLayout getRootView() {
        return (FrameLayout) this.rootView$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final RecyclerListView getListView() {
        return (RecyclerListView) this.listView$delegate.getValue(this, $$delegatedProperties[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ListAdapter getListAdapter() {
        return (ListAdapter) this.listAdapter$delegate.getValue(this, $$delegatedProperties[2]);
    }

    public final void saveSuggestContacts() {
        if (!this.newSuggest) {
            getMediaDataController().clearTopPeers();
        }
        UserConfig userConfig = getUserConfig();
        userConfig.suggestContacts = this.newSuggest;
        userConfig.saveConfig(false);
        ConnectionsManager connectionsManager = getConnectionsManager();
        TLRPC$TL_contacts_toggleTopPeers tLRPC$TL_contacts_toggleTopPeers = new TLRPC$TL_contacts_toggleTopPeers();
        tLRPC$TL_contacts_toggleTopPeers.enabled = this.newSuggest;
        connectionsManager.sendRequest(tLRPC$TL_contacts_toggleTopPeers, ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1.INSTANCE);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        getToolsController().saveConfig();
        if (this.newSuggest != getUserConfig().suggestContacts) {
            saveSuggestContacts();
        }
        super.onFragmentDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$4(ChatAttachAlertButtonsSettingsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogTypeTopicsBar dialogTypeTopicsBar = this$0.topicsBar;
        if (dialogTypeTopicsBar != null) {
            dialogTypeTopicsBar.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3356ActionBar c3356ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ChatAttachAlertButtonsSettingsActivity.getThemeDescriptions$lambda$4(ChatAttachAlertButtonsSettingsActivity.this);
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray), new ThemeDescription(c3356ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, ChatAttachAlertButtonCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"iconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_actionBackground), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        return arrayListOf;
    }

    private final void setupActionBar() {
        C3356ActionBar c3356ActionBar = this.actionBar;
        c3356ActionBar.setBackButtonImage(C3290R.C3292drawable.ic_ab_back);
        c3356ActionBar.setAllowOverlayTitle(true);
        c3356ActionBar.setTitle(LocaleController.getInternalString(C3290R.string.settings_interface_chat_attach_alert_buttons));
        c3356ActionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ChatAttachAlertButtonsSettingsActivity.this.finishFragment();
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
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                ChatAttachAlertButtonsSettingsActivity.initListView$lambda$11$lambda$10(ChatAttachAlertButtonsSettingsActivity.this, view, i);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$11$lambda$10(final ChatAttachAlertButtonsSettingsActivity this$0, final View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof ChatAttachAlertButtonCell) {
            Intrinsics.checkNotNullExpressionValue(view, "view");
            ChatAttachAlertButtonCell chatAttachAlertButtonCell = (ChatAttachAlertButtonCell) view;
            chatAttachAlertButtonCell.setChecked(!chatAttachAlertButtonCell.isChecked());
            ChatAttachAlertButton chatAttachAlertButton = this$0.currentDialogType.getChatAttachAlertButtons().get(i - this$0.buttonsStartRow);
            Set<ChatAttachAlertButton> set = this$0.getToolsController().getSelectedChatAttachAlertButtons().get(this$0.currentDialogType);
            if (set == null) {
                return;
            }
            if (set.contains(chatAttachAlertButton)) {
                set.remove(chatAttachAlertButton);
            } else {
                set.add(chatAttachAlertButton);
            }
        } else if (view instanceof TextCheckCell) {
            if (this$0.newSuggest) {
                AlertsCreator.showDisableSuggestionsAlert(this$0, new Runnable() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatAttachAlertButtonsSettingsActivity.initListView$lambda$11$lambda$10$lambda$9(ChatAttachAlertButtonsSettingsActivity.this, view);
                    }
                });
                return;
            }
            this$0.newSuggest = true;
            ((TextCheckCell) view).setChecked(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$11$lambda$10$lambda$9(ChatAttachAlertButtonsSettingsActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.newSuggest = false;
        ((TextCheckCell) view).setChecked(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isClickableViewType(int i) {
        return i == IdFabric$ViewTypes.CHAT_ATTACH_ALERT_BUTTON || i == IdFabric$ViewTypes.TEXT_CHECK_CELL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needDivider(int i) {
        return (i == IdFabric$ViewTypes.TOPICS_BAR || i == IdFabric$ViewTypes.SHADOW_SECTION) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChatAttachAlertButtonsSettingsActivity.kt */
    /* renamed from: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$ListAdapter */
    /* loaded from: classes3.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {
        public ListAdapter() {
            updateRows();
        }

        public final void updateRows() {
            ChatAttachAlertButtonsSettingsActivity.this.rowCount = 0;
            ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity = ChatAttachAlertButtonsSettingsActivity.this;
            int i = chatAttachAlertButtonsSettingsActivity.rowCount;
            chatAttachAlertButtonsSettingsActivity.rowCount = i + 1;
            chatAttachAlertButtonsSettingsActivity.dialogTypeTopicsBarRow = i;
            ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity2 = ChatAttachAlertButtonsSettingsActivity.this;
            chatAttachAlertButtonsSettingsActivity2.buttonsStartRow = chatAttachAlertButtonsSettingsActivity2.rowCount;
            ChatAttachAlertButtonsSettingsActivity.this.rowCount += ChatAttachAlertButtonsSettingsActivity.this.getCurrentDialogType().getChatAttachAlertButtons().size();
            ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity3 = ChatAttachAlertButtonsSettingsActivity.this;
            chatAttachAlertButtonsSettingsActivity3.buttonsEndRow = chatAttachAlertButtonsSettingsActivity3.rowCount;
            ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity4 = ChatAttachAlertButtonsSettingsActivity.this;
            int i2 = chatAttachAlertButtonsSettingsActivity4.rowCount;
            chatAttachAlertButtonsSettingsActivity4.rowCount = i2 + 1;
            chatAttachAlertButtonsSettingsActivity4.buttonsSectionRow = i2;
            ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity5 = ChatAttachAlertButtonsSettingsActivity.this;
            int i3 = chatAttachAlertButtonsSettingsActivity5.rowCount;
            chatAttachAlertButtonsSettingsActivity5.rowCount = i3 + 1;
            chatAttachAlertButtonsSettingsActivity5.enableBotsRow = i3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatAttachAlertButtonsSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == ChatAttachAlertButtonsSettingsActivity.this.dialogTypeTopicsBarRow ? IdFabric$ViewTypes.TOPICS_BAR : i == ChatAttachAlertButtonsSettingsActivity.this.buttonsSectionRow ? IdFabric$ViewTypes.SHADOW_SECTION : i == ChatAttachAlertButtonsSettingsActivity.this.enableBotsRow ? IdFabric$ViewTypes.TEXT_CHECK_CELL : IdFabric$ViewTypes.CHAT_ATTACH_ALERT_BUTTON;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return ChatAttachAlertButtonsSettingsActivity.this.isClickableViewType(holder.getItemViewType());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            DialogTypeTopicsBar dialogTypeTopicsBar;
            List list;
            Intrinsics.checkNotNullParameter(parent, "parent");
            int i2 = IdFabric$ViewTypes.TOPICS_BAR;
            if (i == i2) {
                Activity parentActivity = ChatAttachAlertButtonsSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                list = ArraysKt___ArraysKt.toList(DialogType.values());
                DialogTypeTopicsBar dialogTypeTopicsBar2 = new DialogTypeTopicsBar(parentActivity, list, ChatAttachAlertButtonsSettingsActivity.this.getCurrentDialogType(), new C1512xcb29bd9c(ChatAttachAlertButtonsSettingsActivity.this, this));
                ChatAttachAlertButtonsSettingsActivity.this.topicsBar = dialogTypeTopicsBar2;
                dialogTypeTopicsBar = dialogTypeTopicsBar2;
            } else if (i == IdFabric$ViewTypes.CHAT_ATTACH_ALERT_BUTTON) {
                Activity parentActivity2 = ChatAttachAlertButtonsSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
                ChatAttachAlertButtonCell chatAttachAlertButtonCell = new ChatAttachAlertButtonCell(parentActivity2);
                chatAttachAlertButtonCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                dialogTypeTopicsBar = chatAttachAlertButtonCell;
            } else if (i == IdFabric$ViewTypes.SHADOW_SECTION) {
                dialogTypeTopicsBar = new ShadowSectionCell(ChatAttachAlertButtonsSettingsActivity.this.getParentActivity());
            } else {
                View textCheckCell = new TextCheckCell(ChatAttachAlertButtonsSettingsActivity.this.getParentActivity());
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                dialogTypeTopicsBar = textCheckCell;
            }
            dialogTypeTopicsBar.setLayoutParams(new RecyclerView.LayoutParams(-1, i == i2 ? AndroidUtilities.m54dp(36) : -2));
            return new RecyclerListView.Holder(dialogTypeTopicsBar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean needDivider = ChatAttachAlertButtonsSettingsActivity.this.needDivider(getItemViewType(i + 1));
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.CHAT_ATTACH_ALERT_BUTTON && (view instanceof ChatAttachAlertButtonCell)) {
                ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity = ChatAttachAlertButtonsSettingsActivity.this;
                ChatAttachAlertButtonCell chatAttachAlertButtonCell = (ChatAttachAlertButtonCell) view;
                ChatAttachAlertButton chatAttachAlertButton = chatAttachAlertButtonsSettingsActivity.getCurrentDialogType().getChatAttachAlertButtons().get(i - chatAttachAlertButtonsSettingsActivity.buttonsStartRow);
                Set<ChatAttachAlertButton> set = chatAttachAlertButtonsSettingsActivity.getToolsController().getSelectedChatAttachAlertButtons().get(chatAttachAlertButtonsSettingsActivity.getCurrentDialogType());
                chatAttachAlertButtonCell.setButton(chatAttachAlertButton, set != null ? set.contains(chatAttachAlertButton) : false, needDivider);
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3290R.string.chat_attach_alert_bot_buttons), ChatAttachAlertButtonsSettingsActivity.this.newSuggest, needDivider);
            }
        }
    }
}
