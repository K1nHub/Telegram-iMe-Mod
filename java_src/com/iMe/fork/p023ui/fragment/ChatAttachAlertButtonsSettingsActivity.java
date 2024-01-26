package com.iMe.fork.p023ui.fragment;

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
import com.iMe.fork.p023ui.fragment.ChatAttachAlertButtonsSettingsActivity;
import com.iMe.fork.p023ui.view.ChatAttachAlertButtonCell;
import com.iMe.fork.p023ui.view.DialogTypeTopicsBar;
import com.iMe.p030ui.base.mvp.MvpFragment;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.iMe.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_attachMenuBot;
import org.telegram.tgnet.TLRPC$TL_attachMenuBots;
import org.telegram.tgnet.TLRPC$TL_contacts_toggleTopPeers;
import org.telegram.tgnet.TLRPC$TL_error;
/* compiled from: ChatAttachAlertButtonsSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity */
/* loaded from: classes3.dex */
public final class ChatAttachAlertButtonsSettingsActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(ChatAttachAlertButtonsSettingsActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(ChatAttachAlertButtonsSettingsActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(ChatAttachAlertButtonsSettingsActivity.class, "listAdapter", "getListAdapter()Lcom/iMe/fork/ui/fragment/ChatAttachAlertButtonsSettingsActivity$ListAdapter;", 0))};
    private int botSuggestionsRow;
    private int botsHeaderRow;
    private int buttonsEndRow;
    private int buttonsSectionRow;
    private int buttonsStartRow;
    private DialogType currentDialogType;
    private int dialogTypeTopicsBarRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private boolean newSuggest;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private DialogTypeTopicsBar topicsBar;
    private int walletBotRow;

    public ChatAttachAlertButtonsSettingsActivity() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void saveSuggestContacts$lambda$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
    }

    @Override // com.iMe.p030ui.base.mvp.MvpFragment
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
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<FrameLayout>() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$rootView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FrameLayout invoke() {
                FrameLayout initRootView;
                initRootView = ChatAttachAlertButtonsSettingsActivity.this.initRootView();
                return initRootView;
            }
        }, 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<RecyclerListView>() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$listView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RecyclerListView invoke() {
                RecyclerListView initListView;
                initListView = ChatAttachAlertButtonsSettingsActivity.this.initListView();
                return initListView;
            }
        }, 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new Function0<ListAdapter>() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$listAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ChatAttachAlertButtonsSettingsActivity.ListAdapter invoke() {
                return new ChatAttachAlertButtonsSettingsActivity.ListAdapter();
            }
        }, 1, (Object) null);
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
        connectionsManager.sendRequest(tLRPC$TL_contacts_toggleTopPeers, new RequestDelegate() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatAttachAlertButtonsSettingsActivity.saveSuggestContacts$lambda$2(tLObject, tLRPC$TL_error);
            }
        });
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
    public void onFragmentDestroy() {
        getToolsController().saveConfig();
        if (this.newSuggest != getUserConfig().suggestContacts) {
            saveSuggestContacts();
        }
        super.onFragmentDestroy();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        C3704ActionBar c3704ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ChatAttachAlertButtonsSettingsActivity.getThemeDescriptions$lambda$4(ChatAttachAlertButtonsSettingsActivity.this);
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        }, Theme.key_windowBackgroundGray), new ThemeDescription(c3704ActionBar, i, null, null, null, null, i2), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextCheckCell.class, HeaderCell.class, ChatAttachAlertButtonCell.class}, null, null, null, Theme.key_windowBackgroundWhite), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundChecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, null, null, null, Theme.key_windowBackgroundUnchecked), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundCheckText), new ThemeDescription(getListView(), ThemeDescription.FLAG_CHECKTAG, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlue), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumb), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueThumbChecked), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelector), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackBlueSelectorChecked), new ThemeDescription(getListView(), 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader), new ThemeDescription(getListView(), 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"titleView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3), new ThemeDescription(getListView(), 0, new Class[]{ChatAttachAlertButtonCell.class}, new String[]{"iconView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_actionBackground), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getThemeDescriptions$lambda$4(ChatAttachAlertButtonsSettingsActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DialogTypeTopicsBar dialogTypeTopicsBar = this$0.topicsBar;
        if (dialogTypeTopicsBar != null) {
            dialogTypeTopicsBar.notifyDataSetChanged();
        }
    }

    private final void setupActionBar() {
        C3704ActionBar c3704ActionBar = this.actionBar;
        c3704ActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        c3704ActionBar.setAllowOverlayTitle(true);
        c3704ActionBar.setTitle(LocaleController.getInternalString(C3632R.string.settings_interface_chat_attach_alert_buttons));
        c3704ActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$setupActionBar$1$1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
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
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
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
            if (i == this$0.walletBotRow) {
                SharedConfig.setChatAttachAlertWalletBotEnabled(!SharedConfig.isChatAttachAlertWalletBotEnabled);
                ((TextCheckCell) view).toggleCheckBox();
            } else if (i == this$0.botSuggestionsRow) {
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
            ArrayList<TLRPC$TL_attachMenuBot> arrayList;
            boolean z;
            boolean z2;
            ChatAttachAlertButtonsSettingsActivity.this.walletBotRow = -1;
            boolean z3 = false;
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
            chatAttachAlertButtonsSettingsActivity5.botsHeaderRow = i3;
            TLRPC$TL_attachMenuBots attachMenuBots = ChatAttachAlertButtonsSettingsActivity.this.getMediaDataController().getAttachMenuBots();
            if (attachMenuBots != null && (arrayList = attachMenuBots.bots) != null) {
                if (!arrayList.isEmpty()) {
                    for (TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot : arrayList) {
                        if (tLRPC$TL_attachMenuBot.show_in_attach_menu && tLRPC$TL_attachMenuBot.bot_id == 1985737506) {
                            z = true;
                            continue;
                        } else {
                            z = false;
                            continue;
                        }
                        if (z) {
                            z2 = true;
                            break;
                        }
                    }
                }
                z2 = false;
                if (z2) {
                    z3 = true;
                }
            }
            if (z3) {
                ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity6 = ChatAttachAlertButtonsSettingsActivity.this;
                int i4 = chatAttachAlertButtonsSettingsActivity6.rowCount;
                chatAttachAlertButtonsSettingsActivity6.rowCount = i4 + 1;
                chatAttachAlertButtonsSettingsActivity6.walletBotRow = i4;
            }
            ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity7 = ChatAttachAlertButtonsSettingsActivity.this;
            int i5 = chatAttachAlertButtonsSettingsActivity7.rowCount;
            chatAttachAlertButtonsSettingsActivity7.rowCount = i5 + 1;
            chatAttachAlertButtonsSettingsActivity7.botSuggestionsRow = i5;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatAttachAlertButtonsSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == ChatAttachAlertButtonsSettingsActivity.this.dialogTypeTopicsBarRow) {
                return IdFabric$ViewTypes.TOPICS_BAR;
            }
            if (i == ChatAttachAlertButtonsSettingsActivity.this.buttonsSectionRow) {
                return IdFabric$ViewTypes.SHADOW_SECTION;
            }
            if (i == ChatAttachAlertButtonsSettingsActivity.this.botsHeaderRow) {
                return IdFabric$ViewTypes.HEADER_CELL;
            }
            boolean z = true;
            if (i != ChatAttachAlertButtonsSettingsActivity.this.walletBotRow && i != ChatAttachAlertButtonsSettingsActivity.this.botSuggestionsRow) {
                z = false;
            }
            return z ? IdFabric$ViewTypes.TEXT_CHECK_CELL : IdFabric$ViewTypes.CHAT_ATTACH_ALERT_BUTTON;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
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
                DialogType currentDialogType = ChatAttachAlertButtonsSettingsActivity.this.getCurrentDialogType();
                final ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity = ChatAttachAlertButtonsSettingsActivity.this;
                DialogTypeTopicsBar dialogTypeTopicsBar2 = new DialogTypeTopicsBar(parentActivity, list, currentDialogType, new Function1<DialogType, Unit>() { // from class: com.iMe.fork.ui.fragment.ChatAttachAlertButtonsSettingsActivity$ListAdapter$onCreateViewHolder$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(DialogType dialogType) {
                        ChatAttachAlertButtonsSettingsActivity.ListAdapter listAdapter;
                        Intrinsics.checkNotNullParameter(dialogType, "dialogType");
                        ChatAttachAlertButtonsSettingsActivity.this.setCurrentDialogType(dialogType);
                        this.updateRows();
                        listAdapter = ChatAttachAlertButtonsSettingsActivity.this.getListAdapter();
                        listAdapter.notifyDataSetChanged();
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DialogType dialogType) {
                        invoke2(dialogType);
                        return Unit.INSTANCE;
                    }
                });
                ChatAttachAlertButtonsSettingsActivity.this.topicsBar = dialogTypeTopicsBar2;
                dialogTypeTopicsBar = dialogTypeTopicsBar2;
            } else if (i == IdFabric$ViewTypes.CHAT_ATTACH_ALERT_BUTTON) {
                Activity parentActivity2 = ChatAttachAlertButtonsSettingsActivity.this.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity2, "parentActivity");
                ChatAttachAlertButtonCell chatAttachAlertButtonCell = new ChatAttachAlertButtonCell(parentActivity2);
                chatAttachAlertButtonCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                dialogTypeTopicsBar = chatAttachAlertButtonCell;
            } else if (i == IdFabric$ViewTypes.HEADER_CELL) {
                HeaderCell headerCell = new HeaderCell(ChatAttachAlertButtonsSettingsActivity.this.getParentActivity());
                headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                dialogTypeTopicsBar = headerCell;
            } else if (i == IdFabric$ViewTypes.SHADOW_SECTION) {
                dialogTypeTopicsBar = new ShadowSectionCell(ChatAttachAlertButtonsSettingsActivity.this.getParentActivity());
            } else {
                View textCheckCell = new TextCheckCell(ChatAttachAlertButtonsSettingsActivity.this.getParentActivity());
                textCheckCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                dialogTypeTopicsBar = textCheckCell;
            }
            dialogTypeTopicsBar.setLayoutParams(new RecyclerView.LayoutParams(-1, i == i2 ? AndroidUtilities.m107dp(36) : -2));
            return new RecyclerListView.Holder(dialogTypeTopicsBar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean z = true;
            if (i >= getItemCount() - 1 || !ChatAttachAlertButtonsSettingsActivity.this.needDivider(getItemViewType(i + 1))) {
                z = false;
            }
            int itemViewType = getItemViewType(i);
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.CHAT_ATTACH_ALERT_BUTTON && (view instanceof ChatAttachAlertButtonCell)) {
                ChatAttachAlertButtonsSettingsActivity chatAttachAlertButtonsSettingsActivity = ChatAttachAlertButtonsSettingsActivity.this;
                ChatAttachAlertButtonCell chatAttachAlertButtonCell = (ChatAttachAlertButtonCell) view;
                ChatAttachAlertButton chatAttachAlertButton = chatAttachAlertButtonsSettingsActivity.getCurrentDialogType().getChatAttachAlertButtons().get(i - chatAttachAlertButtonsSettingsActivity.buttonsStartRow);
                Set<ChatAttachAlertButton> set = chatAttachAlertButtonsSettingsActivity.getToolsController().getSelectedChatAttachAlertButtons().get(chatAttachAlertButtonsSettingsActivity.getCurrentDialogType());
                chatAttachAlertButtonCell.setButton(chatAttachAlertButton, set != null ? set.contains(chatAttachAlertButton) : false, z);
            } else if (itemViewType == IdFabric$ViewTypes.HEADER_CELL && (view instanceof HeaderCell)) {
                if (i == ChatAttachAlertButtonsSettingsActivity.this.botsHeaderRow) {
                    ((HeaderCell) view).setText(LocaleController.getString("FilterBots", C3632R.string.FilterBots));
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK_CELL && (view instanceof TextCheckCell)) {
                if (i != ChatAttachAlertButtonsSettingsActivity.this.walletBotRow) {
                    if (i == ChatAttachAlertButtonsSettingsActivity.this.botSuggestionsRow) {
                        ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3632R.string.chat_attach_alert_bot_buttons), ChatAttachAlertButtonsSettingsActivity.this.newSuggest, z);
                        return;
                    }
                    return;
                }
                ((TextCheckCell) view).setTextAndCheck(LocaleController.getInternalString(C3632R.string.drawer_wallet_bot), SharedConfig.isChatAttachAlertWalletBotEnabled, z);
            }
        }
    }
}
