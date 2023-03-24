package org.fork.p046ui.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.p031ui.base.mvp.MvpFragment;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt;
import com.smedialink.utils.extentions.delegate.ResettableLazyManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.fork.controller.ToolsController;
import org.fork.enums.DrawerHolidayIconType;
import org.fork.enums.FilterActivityType;
import org.fork.enums.SettingsToolsCategory;
import org.fork.p046ui.dialog.DrawerHeaderSettingsBottomSheet;
import org.fork.p046ui.dialog.DrawerItemsSettingsBottomSheet;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ActionBar.ThemeDescription;
import org.telegram.p048ui.Cells.AppIconsSelectorCell;
import org.telegram.p048ui.Cells.NotificationsCheckCell;
import org.telegram.p048ui.Cells.RadioColorCell;
import org.telegram.p048ui.Cells.ShadowSectionCell;
import org.telegram.p048ui.Cells.TextCell;
import org.telegram.p048ui.Cells.TextCheckCell;
import org.telegram.p048ui.Cells.TextSettingsCell;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.RecyclerListView;
import org.telegram.p048ui.FiltersSetupActivity;
/* compiled from: SettingsToolsCategoryActivity.kt */
/* renamed from: org.fork.ui.fragment.SettingsToolsCategoryActivity */
/* loaded from: classes4.dex */
public final class SettingsToolsCategoryActivity extends MvpFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(SettingsToolsCategoryActivity.class, "rootView", "getRootView()Landroid/widget/FrameLayout;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsCategoryActivity.class, "listView", "getListView()Lorg/telegram/ui/Components/RecyclerListView;", 0)), Reflection.property1(new PropertyReference1Impl(SettingsToolsCategoryActivity.class, "listAdapter", "getListAdapter()Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;", 0))};
    private final SettingsToolsCategory category;
    private int chatAttachMenuButtonsRow;
    private int chatBottomPanelRow;
    private int chatExtendedAvatarPreviewerRow;
    private int chatFolderAndChatSortingRow;
    private int chatHideKeyboardOnScrollRow;
    private int chatListActionBarAccountSwitchRow;
    private int chatListActionBarMenuRow;
    private int chatListRecentChatsRow;
    private int chatMemoryRow;
    private int chatMultiPanelRow;
    private int chatProfileTelegramIdRow;
    private int chatSwipeToGoToNextUnreadDialogRow;
    private int chatThemesEnableRow;
    private int chatsTemplatesRow;
    private int cloudAlbumsRow;
    private int confirmationCallsRow;
    private int confirmationDeleteCloudRow;
    private int confirmationDeleteTwoSideRow;
    private int confirmationSendingGifRow;
    private int confirmationSendingStickerRow;
    private int confirmationSpeakWithoutHoldRow;
    private int confirmationVideoSpeakWithoutHoldRow;
    private int confirmationVideoVoiceCameraRow;
    private int customSharingRow;
    private int customizationAutoOpenForwardingOptionsRow;
    private int drawerHeaderSettingsRow;
    private int drawerHolidayIconType;
    private int drawerItemsRow;
    private final ResettableLazy listAdapter$delegate;
    private final ResettableLazy listView$delegate;
    private int messageWidePostsRow;
    private int messagesContextMenu;
    private int messagesTranslate;
    private int multiReplyRow;
    private int proxyButtonForceVisibleRow;
    private int reactionSettingsRow;
    private final ResettableLazy rootView$delegate;
    private int rowCount;
    private int sendMessages;
    private int sendPopupReactionsRow;
    private int settingsTopicsRow;

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public void onViewReady() {
    }

    public SettingsToolsCategoryActivity(SettingsToolsCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        this.category = category;
        this.rootView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SettingsToolsCategoryActivity$rootView$2(this), 1, (Object) null);
        this.listView$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SettingsToolsCategoryActivity$listView$2(this), 1, (Object) null);
        this.listAdapter$delegate = ResettableLazyDelegateKt.resettableLazy$default(this, (ResettableLazyManager) null, new SettingsToolsCategoryActivity$listAdapter$2(this), 1, (Object) null);
    }

    public final SettingsToolsCategory getCategory() {
        return this.category;
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

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment
    public FrameLayout onCreateView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        FrameLayout rootView = getRootView();
        setupActionBar();
        rootView.addView(getListView());
        return rootView;
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpFragment, org.telegram.p048ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        getListAdapter().notifyDataSetChanged();
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayListOf;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundGray"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"), new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"), new ThemeDescription(getListView(), ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, TextCell.class, NotificationsCheckCell.class, TextCheckCell.class, AppIconsSelectorCell.class}, null, null, null, "windowBackgroundWhite"), new ThemeDescription(getListView(), ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, "windowBackgroundGrayShadow"), new ThemeDescription(getListView(), ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, "actionBarDefault"), new ThemeDescription(getListView(), ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"), new ThemeDescription(getListView(), 0, new Class[]{View.class}, Theme.dividerPaint, null, null, "divider"), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteValueText"), new ThemeDescription(getListView(), 0, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"), new ThemeDescription(getListView(), 0, new Class[]{NotificationsCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrack"), new ThemeDescription(getListView(), 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "switchTrackChecked"));
        return arrayListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initRootView() {
        FrameLayout frameLayout = new FrameLayout(getParentActivity());
        frameLayout.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getHint(int i) {
        if (i == this.customSharingRow) {
            return LocaleController.getInternalString(C3301R.string.settings_tools_custom_sharing_hint);
        }
        if (i == this.multiReplyRow) {
            return LocaleController.getInternalString(C3301R.string.settings_tools_multi_reply_hint);
        }
        if (i == this.cloudAlbumsRow) {
            return LocaleController.getInternalString(C3301R.string.settings_tools_cloud_albums_hint);
        }
        if (i == this.sendPopupReactionsRow) {
            return LocaleController.getInternalString(C3301R.string.settings_tools_send_popup_reactions_hint);
        }
        return null;
    }

    private final void showHintDialog(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setMessage(str);
        builder.setPositiveButton(LocaleController.getString("OK", C3301R.string.OK), null);
        showDialog(builder.create());
    }

    private final void showChooseVideoVoiceCameraDialog() {
        showDialog(AlertsCreator.createChooseVideoVoiceCamera(getParentActivity()), new DialogInterface.OnDismissListener() { // from class: org.fork.ui.fragment.SettingsToolsCategoryActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                SettingsToolsCategoryActivity.showChooseVideoVoiceCameraDialog$lambda$3(SettingsToolsCategoryActivity.this, dialogInterface);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showChooseVideoVoiceCameraDialog$lambda$3(SettingsToolsCategoryActivity this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListAdapter().notifyItemChanged(this$0.confirmationVideoVoiceCameraRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecyclerListView initListView() {
        RecyclerListView recyclerListView = new RecyclerListView(getParentActivity());
        recyclerListView.setFocusable(true);
        recyclerListView.setLayoutManager(new LinearLayoutManager(recyclerListView.getContext()));
        recyclerListView.setAdapter(getListAdapter());
        recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.fork.ui.fragment.SettingsToolsCategoryActivity$$ExternalSyntheticLambda5
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
                SettingsToolsCategoryActivity.initListView$lambda$12$lambda$11(SettingsToolsCategoryActivity.this, view, i, f, f2);
            }
        });
        return recyclerListView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$12$lambda$11(final SettingsToolsCategoryActivity this$0, View view, final int i, float f, float f2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view instanceof TextCheckCell) {
            String hint = this$0.getHint(i);
            if (hint != null && !((TextCheckCell) view).checkSwitchLocation(f)) {
                this$0.showHintDialog(hint);
                return;
            }
            ((TextCheckCell) view).toggleCheckbox();
            if (i == this$0.customizationAutoOpenForwardingOptionsRow) {
                SharedConfig.setOpenForwardingOptionsAutomaticallyEnabled(!SharedConfig.isOpenForwardingOptionsAutomaticallyEnabled);
            } else if (i == this$0.customSharingRow) {
                SharedConfig.setCustomSharingModeEnabled(!SharedConfig.isCustomSharingModeEnabled);
            } else if (i == this$0.multiReplyRow) {
                SharedConfig.setMultiReplyEnabled(!SharedConfig.isMultiReplyEnabled);
            } else if (i == this$0.chatListActionBarAccountSwitchRow) {
                SharedConfig.setActionBarAccountSwitchEnabled(!SharedConfig.isActionBarAccountSwitchEnabled);
                this$0.getNotificationCenter().postNotificationName(NotificationCenter.needUpdateMainActionBarMenu, new Object[0]);
            } else if (i == this$0.chatListActionBarMenuRow) {
                SharedConfig.setMainActionBarMenuEnabled(!SharedConfig.isMainActionBarMenuEnabled);
                this$0.getNotificationCenter().postNotificationName(NotificationCenter.needUpdateMainActionBarMenu, new Object[0]);
            } else if (i == this$0.proxyButtonForceVisibleRow) {
                SharedConfig.setProxyButtonForceVisible(!SharedConfig.isProxyButtonForceVisible);
            } else if (i == this$0.cloudAlbumsRow) {
                SharedConfig.setCloudAlbumsEnabled(!SharedConfig.isCloudAlbumsEnabled);
            } else if (i == this$0.chatBottomPanelRow) {
                ToolsController toolsController = this$0.getToolsController();
                toolsController.setShowChannelBottomPanel(!toolsController.isShowChannelBottomPanel());
                toolsController.saveConfig();
            } else if (i == this$0.chatHideKeyboardOnScrollRow) {
                SharedConfig.setHideChatKeyboardOnScrollEnabled(!SharedConfig.isHideChatKeyboardOnScrollEnabled);
            } else if (i == this$0.chatThemesEnableRow) {
                SharedConfig.setChatThemesEnabled(!SharedConfig.isChatThemesEnabled);
            } else if (i == this$0.chatMemoryRow) {
                ToolsController toolsController2 = this$0.getToolsController();
                toolsController2.setRememberLastDialogEnabled(!toolsController2.isRememberLastDialogEnabled());
                toolsController2.saveConfig();
            } else if (i == this$0.sendPopupReactionsRow) {
                SharedConfig.setReactionsInSendPopupEnabled(!SharedConfig.isReactionsInSendPopupEnabled);
            } else if (i == this$0.confirmationCallsRow) {
                SharedConfig.setCallsConfirmationEnabled(!SharedConfig.isCallsConfirmationEnabled);
            } else if (i == this$0.confirmationDeleteCloudRow) {
                SharedConfig.setDeleteCloudConfirmationEnabled(!SharedConfig.isDeleteCloudConfirmationEnabled);
            } else if (i == this$0.confirmationDeleteTwoSideRow) {
                ToolsController toolsController3 = this$0.getToolsController();
                toolsController3.setRevokeByDefault(!toolsController3.isRevokeByDefault());
                toolsController3.saveConfig();
            } else if (i == this$0.confirmationSendingGifRow) {
                SharedConfig.setSendingGifConfirmationEnabled(!SharedConfig.isSendingGifConfirmationEnabled);
            } else if (i == this$0.confirmationSendingStickerRow) {
                SharedConfig.setSendingStickerConfirmationEnabled(!SharedConfig.isSendingStickerConfirmationEnabled);
            } else if (i == this$0.confirmationSpeakWithoutHoldRow) {
                SharedConfig.setSpeakWithoutHoldEnabled(!SharedConfig.isSpeakWithoutHoldEnabled);
            } else if (i == this$0.confirmationVideoSpeakWithoutHoldRow) {
                SharedConfig.setVideoSpeakWithoutHoldEnabled(!SharedConfig.isVideoSpeakWithoutHoldEnabled);
            } else if (i == this$0.messageWidePostsRow) {
                ToolsController toolsController4 = this$0.getToolsController();
                toolsController4.setChannelWidePostsEnabled(!toolsController4.isChannelWidePostsEnabled());
                toolsController4.saveConfig();
            }
        } else if (view instanceof NotificationsCheckCell) {
            if (i == this$0.chatMultiPanelRow) {
                NotificationsCheckCell notificationsCheckCell = (NotificationsCheckCell) view;
                if (notificationsCheckCell.checkSwitchLocation(f)) {
                    notificationsCheckCell.setChecked(!this$0.getMultiPanelController().isMultiPanelEnabled());
                    this$0.getMultiPanelController().setMultiPanelEnabled(!this$0.getMultiPanelController().isMultiPanelEnabled());
                    this$0.getMultiPanelController().saveConfig();
                    this$0.getListAdapter().notifyItemChanged(i);
                    return;
                }
                this$0.presentFragment(new MultiPanelSettingsActivity(null, 1, null));
            } else if (i == this$0.chatSwipeToGoToNextUnreadDialogRow) {
                NotificationsCheckCell notificationsCheckCell2 = (NotificationsCheckCell) view;
                if (notificationsCheckCell2.checkSwitchLocation(f)) {
                    notificationsCheckCell2.setChecked(!this$0.getToolsController().isSwipeToGoToNextUnreadDialogEnabled());
                    this$0.getToolsController().setSwipeToGoToNextUnreadDialogEnabled(!this$0.getToolsController().isSwipeToGoToNextUnreadDialogEnabled());
                    this$0.getToolsController().saveConfig();
                    this$0.getListAdapter().notifyItemChanged(i);
                    return;
                }
                this$0.presentFragment(new SwipeToGoToNextUnreadDialogSettingsActivity());
            } else if (i == this$0.chatListRecentChatsRow) {
                NotificationsCheckCell notificationsCheckCell3 = (NotificationsCheckCell) view;
                if (notificationsCheckCell3.checkSwitchLocation(f)) {
                    notificationsCheckCell3.setChecked(!this$0.getRecentChatsController().isRecentChatsEnabled());
                    this$0.getRecentChatsController().toggleEnabled();
                    this$0.getListAdapter().notifyItemChanged(i);
                    this$0.getNotificationCenter().postNotificationName(NotificationCenter.recentChatsDidLoad, new Object[0]);
                    return;
                }
                this$0.presentFragment(new RecentChatsDialogTypeSettingsActivity());
            }
        } else if (view instanceof TextCell) {
            if (i == this$0.drawerHeaderSettingsRow) {
                this$0.showChooseDrawerAccountDataDialog();
            } else if (i == this$0.drawerItemsRow) {
                Activity parentActivity = this$0.getParentActivity();
                Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
                this$0.showDialog(new DrawerItemsSettingsBottomSheet(parentActivity));
            } else if (i == this$0.chatFolderAndChatSortingRow) {
                this$0.presentFragment(new FiltersSetupActivity());
            } else if (i == this$0.settingsTopicsRow) {
                this$0.presentFragment(new FiltersSetupActivity(FilterActivityType.TOPIC));
            } else if (i == this$0.chatAttachMenuButtonsRow) {
                this$0.presentFragment(new ChatAttachAlertButtonsSettingsActivity(null, 1, null));
            } else if (i == this$0.chatExtendedAvatarPreviewerRow) {
                this$0.presentFragment(new ExtendedAvatarPreviewerSettingsActivity());
            } else if (i == this$0.reactionSettingsRow) {
                this$0.presentFragment(new ReactionsSettingsActivity());
            } else if (i == this$0.messagesTranslate) {
                this$0.presentFragment(new SettingsToolsMessageActivity(i));
            } else if (i == this$0.messagesContextMenu) {
                this$0.presentFragment(new CombineContextMenuActivity(true));
            } else if (i == this$0.sendMessages) {
                this$0.presentFragment(new SettingsToolsMessageActivity(i));
            }
        } else if (view instanceof TextSettingsCell) {
            if (i == this$0.chatProfileTelegramIdRow) {
                DialogsFactoryKt.showChatProfileTelegramIdDialog(this$0, new Callbacks$Callback() { // from class: org.fork.ui.fragment.SettingsToolsCategoryActivity$$ExternalSyntheticLambda4
                    @Override // org.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        SettingsToolsCategoryActivity.initListView$lambda$12$lambda$11$lambda$8(SettingsToolsCategoryActivity.this);
                    }
                });
            } else if (i == this$0.chatsTemplatesRow) {
                this$0.showDialog(AlertsCreator.createChooseTemplatesModeDialog(this$0.getParentActivity(), true), new DialogInterface.OnDismissListener() { // from class: org.fork.ui.fragment.SettingsToolsCategoryActivity$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        SettingsToolsCategoryActivity.initListView$lambda$12$lambda$11$lambda$9(SettingsToolsCategoryActivity.this, i, dialogInterface);
                    }
                });
            } else if (i == this$0.confirmationVideoVoiceCameraRow) {
                this$0.showChooseVideoVoiceCameraDialog();
            } else if (i == this$0.drawerHolidayIconType) {
                this$0.showDialog(this$0.createChooseSelectedIconHolidayDesignSideMenuDialog(), new DialogInterface.OnDismissListener() { // from class: org.fork.ui.fragment.SettingsToolsCategoryActivity$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        SettingsToolsCategoryActivity.initListView$lambda$12$lambda$11$lambda$10(SettingsToolsCategoryActivity.this, i, dialogInterface);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$12$lambda$11$lambda$8(SettingsToolsCategoryActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListAdapter().notifyItemChanged(this$0.chatProfileTelegramIdRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$12$lambda$11$lambda$9(SettingsToolsCategoryActivity this$0, int i, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListAdapter().notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initListView$lambda$12$lambda$11$lambda$10(SettingsToolsCategoryActivity this$0, int i, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getListAdapter().notifyItemChanged(i);
    }

    private final void setupActionBar() {
        C3366ActionBar c3366ActionBar = this.actionBar;
        c3366ActionBar.setBackButtonImage(C3301R.C3303drawable.ic_ab_back);
        c3366ActionBar.setAllowOverlayTitle(true);
        c3366ActionBar.setTitle(this.category.getTitle());
        c3366ActionBar.setActionBarMenuOnItemClick(new C3366ActionBar.ActionBarMenuOnItemClick() { // from class: org.fork.ui.fragment.SettingsToolsCategoryActivity$setupActionBar$1$1
            @Override // org.telegram.p048ui.ActionBar.C3366ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    SettingsToolsCategoryActivity.this.finishFragment();
                }
            }
        });
    }

    private final void showChooseDrawerAccountDataDialog() {
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        showDialog(new DrawerHeaderSettingsBottomSheet(parentActivity));
    }

    private final AlertDialog createChooseSelectedIconHolidayDesignSideMenuDialog() {
        final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getInternalString(C3301R.string.settings_tools_design_icon));
        builder.setNegativeButton(LocaleController.getInternalString(C3301R.string.common_cancel), null);
        LinearLayout linearLayout = new LinearLayout(getParentActivity());
        linearLayout.setOrientation(1);
        DrawerHolidayIconType[] values = DrawerHolidayIconType.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            DrawerHolidayIconType drawerHolidayIconType = values[i];
            RadioColorCell radioColorCell = new RadioColorCell(getContext());
            radioColorCell.setTag(drawerHolidayIconType);
            radioColorCell.setPadding(AndroidUtilities.m50dp(4), 0, AndroidUtilities.m50dp(4), 0);
            radioColorCell.setCheckColor(Theme.getColor("radioBackground"), Theme.getColor("dialogRadioBackgroundChecked"));
            radioColorCell.setTextAndValue(drawerHolidayIconType.getTitle(), SharedConfig.drawerHolidayIconType == drawerHolidayIconType);
            radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.fragment.SettingsToolsCategoryActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsToolsCategoryActivity.m57x12572646(AlertDialog.Builder.this, view);
                }
            });
            linearLayout.addView(radioColorCell);
        }
        return builder.setView(linearLayout).create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createChooseSelectedIconHolidayDesignSideMenuDialog$lambda$15$lambda$14 */
    public static final void m57x12572646(AlertDialog.Builder builder, View view) {
        Intrinsics.checkNotNullParameter(builder, "$builder");
        Intrinsics.checkNotNullParameter(view, "view");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type org.fork.enums.DrawerHolidayIconType");
        DrawerHolidayIconType drawerHolidayIconType = (DrawerHolidayIconType) tag;
        if (drawerHolidayIconType == SharedConfig.drawerHolidayIconType) {
            return;
        }
        SharedConfig.setDrawerHolidayIconType(drawerHolidayIconType);
        NotificationCenter.getInstance(UserConfig.selectedAccount).postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SettingsToolsCategoryActivity.kt */
    /* renamed from: org.fork.ui.fragment.SettingsToolsCategoryActivity$ListAdapter */
    /* loaded from: classes4.dex */
    public final class ListAdapter extends RecyclerListView.SelectionAdapter {

        /* compiled from: SettingsToolsCategoryActivity.kt */
        /* renamed from: org.fork.ui.fragment.SettingsToolsCategoryActivity$ListAdapter$WhenMappings */
        /* loaded from: classes4.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[SettingsToolsCategory.values().length];
                try {
                    iArr[SettingsToolsCategory.SETTINGS_CUSTOMIZATION.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_SIDE_MENU.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_BASIC_TOOLBAR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_CHAT_PROFILE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_CLOUD.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_CHAT_LIST_VIEW.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_CHATS.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_MESSAGES.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_REACTIONS_BUTTON.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[SettingsToolsCategory.SETTINGS_CONFIRMATION.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        @Override // org.telegram.p048ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ListAdapter() {
            updateRows();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (((((((((i == SettingsToolsCategoryActivity.this.drawerItemsRow || i == SettingsToolsCategoryActivity.this.drawerHeaderSettingsRow) || i == SettingsToolsCategoryActivity.this.chatFolderAndChatSortingRow) || i == SettingsToolsCategoryActivity.this.settingsTopicsRow) || i == SettingsToolsCategoryActivity.this.chatAttachMenuButtonsRow) || i == SettingsToolsCategoryActivity.this.chatExtendedAvatarPreviewerRow) || i == SettingsToolsCategoryActivity.this.reactionSettingsRow) || i == SettingsToolsCategoryActivity.this.messagesTranslate) || i == SettingsToolsCategoryActivity.this.messagesContextMenu) || i == SettingsToolsCategoryActivity.this.sendMessages) {
                return IdFabric$ViewTypes.TEXT;
            }
            if (((i == SettingsToolsCategoryActivity.this.chatProfileTelegramIdRow || i == SettingsToolsCategoryActivity.this.chatsTemplatesRow) || i == SettingsToolsCategoryActivity.this.confirmationVideoVoiceCameraRow) || i == SettingsToolsCategoryActivity.this.drawerHolidayIconType) {
                return IdFabric$ViewTypes.TEXT_SETTINGS;
            }
            return (i == SettingsToolsCategoryActivity.this.chatMultiPanelRow || i == SettingsToolsCategoryActivity.this.chatSwipeToGoToNextUnreadDialogRow) || i == SettingsToolsCategoryActivity.this.chatListRecentChatsRow ? IdFabric$ViewTypes.NOTIFICATION_CHECK : IdFabric$ViewTypes.TEXT_CHECK;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerListView.Holder onCreateViewHolder(ViewGroup parent, int i) {
            TextCell textCell;
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i == IdFabric$ViewTypes.TEXT_CHECK) {
                View textCheckCell = new TextCheckCell(SettingsToolsCategoryActivity.this.getContext());
                textCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textCell = textCheckCell;
            } else if (i == IdFabric$ViewTypes.TEXT) {
                TextCell textCell2 = new TextCell(SettingsToolsCategoryActivity.this.getContext());
                textCell2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textCell = textCell2;
            } else if (i == IdFabric$ViewTypes.TEXT_SETTINGS) {
                TextSettingsCell textSettingsCell = new TextSettingsCell(SettingsToolsCategoryActivity.this.getContext());
                textSettingsCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textCell = textSettingsCell;
            } else if (i == IdFabric$ViewTypes.NOTIFICATION_CHECK) {
                NotificationsCheckCell notificationsCheckCell = new NotificationsCheckCell(SettingsToolsCategoryActivity.this.getContext());
                notificationsCheckCell.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
                textCell = notificationsCheckCell;
            } else {
                textCell = new ShadowSectionCell(SettingsToolsCategoryActivity.this.getContext());
            }
            textCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            String str;
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean z = false;
            boolean z2 = i < getItemCount() - 1;
            int itemViewType = holder.getItemViewType();
            View view = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
            if (itemViewType == IdFabric$ViewTypes.TEXT_CHECK && (view instanceof TextCheckCell)) {
                TextCheckCell textCheckCell = (TextCheckCell) view;
                textCheckCell.setDrawSwitchDivider(hasHint(i));
                if (i == SettingsToolsCategoryActivity.this.customizationAutoOpenForwardingOptionsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.auto_open_forwarding_options), SharedConfig.isOpenForwardingOptionsAutomaticallyEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.customSharingRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_tools_custom_sharing), SharedConfig.isCustomSharingModeEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.multiReplyRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_tools_multi_reply), SharedConfig.isMultiReplyEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatListActionBarAccountSwitchRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_action_bar_account_switch), SharedConfig.isActionBarAccountSwitchEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatListActionBarMenuRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_action_bar_menu), SharedConfig.isMainActionBarMenuEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.proxyButtonForceVisibleRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_proxy_button_in_toolbar), SharedConfig.isProxyButtonForceVisible, z2);
                } else if (i == SettingsToolsCategoryActivity.this.cloudAlbumsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_tools_cloud_albums), SharedConfig.isCloudAlbumsEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatBottomPanelRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_bottom_panel_in_channel), SettingsToolsCategoryActivity.this.getToolsController().isShowChannelBottomPanel(), z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatHideKeyboardOnScrollRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_chat_hide_keyboard_on_scroll), SharedConfig.isHideChatKeyboardOnScrollEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatThemesEnableRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_chat_themes), SharedConfig.isChatThemesEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatMemoryRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_tools_remember_chat), SettingsToolsCategoryActivity.this.getToolsController().isRememberLastDialogEnabled(), z2);
                } else if (i == SettingsToolsCategoryActivity.this.sendPopupReactionsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_tools_send_popup_reactions), SharedConfig.isReactionsInSendPopupEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationCallsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_calls_confirmation), SharedConfig.isCallsConfirmationEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationDeleteCloudRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_delete_cloud_confirmation), SharedConfig.isDeleteCloudConfirmationEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationDeleteTwoSideRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_revoke_by_default), SettingsToolsCategoryActivity.this.getToolsController().isRevokeByDefault(), z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationSendingGifRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_sending_gif_confirmation), SharedConfig.isSendingGifConfirmationEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationSendingStickerRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_sending_sticker_confirmation), SharedConfig.isSendingStickerConfirmationEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationSpeakWithoutHoldRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_speak_without_hold), SharedConfig.isSpeakWithoutHoldEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationVideoSpeakWithoutHoldRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_video_speak_without_hold), SharedConfig.isVideoSpeakWithoutHoldEnabled, z2);
                } else if (i == SettingsToolsCategoryActivity.this.messageWidePostsRow) {
                    textCheckCell.setTextAndCheck(LocaleController.getInternalString(C3301R.string.settings_interface_wide_posts_in_channel), SettingsToolsCategoryActivity.this.getToolsController().isChannelWidePostsEnabled(), z2);
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT && (view instanceof TextCell)) {
                if (i == SettingsToolsCategoryActivity.this.drawerHeaderSettingsRow) {
                    ((TextCell) view).setText(LocaleController.getInternalString(C3301R.string.settings_interface_drawer_account_info), z2);
                } else if (i == SettingsToolsCategoryActivity.this.drawerItemsRow) {
                    ((TextCell) view).setText(LocaleController.getInternalString(C3301R.string.settings_interface_drawer_items), z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatFolderAndChatSortingRow) {
                    ((TextCell) view).setText(LocaleController.getString("FilterAvailableTitle", C3301R.string.FilterAvailableTitle), z2);
                } else if (i == SettingsToolsCategoryActivity.this.settingsTopicsRow) {
                    ((TextCell) view).setText(LocaleController.getInternalString(C3301R.string.topics), z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatAttachMenuButtonsRow) {
                    ((TextCell) view).setText(LocaleController.getInternalString(C3301R.string.settings_interface_chat_attach_alert_buttons), z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatExtendedAvatarPreviewerRow) {
                    ((TextCell) view).setText(LocaleController.getInternalString(C3301R.string.settings_interface_chat_user_options_by_avatar_click_subtitle), z2);
                } else if (i == SettingsToolsCategoryActivity.this.reactionSettingsRow) {
                    ((TextCell) view).setText(LocaleController.getString("Reactions", C3301R.string.Reactions), z2);
                } else if (i == SettingsToolsCategoryActivity.this.messagesTranslate) {
                    ((TextCell) view).setTextAndIcon(LocaleController.getInternalString(C3301R.string.settings_tools_translator), C3301R.C3303drawable.msg_translate, z2);
                } else if (i == SettingsToolsCategoryActivity.this.messagesContextMenu) {
                    ((TextCell) view).setTextAndIcon(LocaleController.getInternalString(C3301R.string.settings_interface_message_context_menu), C3301R.C3303drawable.fork_settings_context_menu, z2);
                } else if (i == SettingsToolsCategoryActivity.this.sendMessages) {
                    ((TextCell) view).setTextAndIcon(LocaleController.getInternalString(C3301R.string.sending_settings_send), C3301R.C3303drawable.msg_send, z2);
                }
            } else if (itemViewType == IdFabric$ViewTypes.TEXT_SETTINGS && (view instanceof TextSettingsCell)) {
                if (i == SettingsToolsCategoryActivity.this.chatProfileTelegramIdRow) {
                    ((TextSettingsCell) view).setTextAndValue(LocaleController.getInternalString(C3301R.string.settings_tools_chat_profile_id_telegram), LocaleController.getInternalString(SharedConfig.selectedChatProfileTelegramIdMode.getTextResId()), z2);
                } else if (i == SettingsToolsCategoryActivity.this.chatsTemplatesRow) {
                    ((TextSettingsCell) view).setTextAndValue(LocaleController.getInternalString(C3301R.string.chat_templates), LocaleController.getInternalString(SharedConfig.selectedTemplatesMode.getTextResId()), z2);
                } else if (i == SettingsToolsCategoryActivity.this.confirmationVideoVoiceCameraRow) {
                    ((TextSettingsCell) view).setTextAndValue(LocaleController.getInternalString(C3301R.string.settings_interface_video_voice_camera), LocaleController.getInternalString(SharedConfig.selectedVideoVoiceCamera.getShortTextResId()), z2);
                } else if (i == SettingsToolsCategoryActivity.this.drawerHolidayIconType) {
                    ((TextSettingsCell) view).setTextAndValue(LocaleController.getInternalString(C3301R.string.settings_tools_design_icon), SharedConfig.drawerHolidayIconType.getTitle(), z2);
                }
            } else if (itemViewType == IdFabric$ViewTypes.NOTIFICATION_CHECK && (holder.itemView instanceof NotificationsCheckCell)) {
                String str2 = null;
                if (i != SettingsToolsCategoryActivity.this.chatMultiPanelRow) {
                    if (i != SettingsToolsCategoryActivity.this.chatSwipeToGoToNextUnreadDialogRow) {
                        if (i == SettingsToolsCategoryActivity.this.chatListRecentChatsRow) {
                            str2 = LocaleController.getInternalString(C3301R.string.settings_interface_recent_chats);
                            z = SettingsToolsCategoryActivity.this.getRecentChatsController().isRecentChatsEnabled();
                            if (z) {
                                List<String> dialogTypesSettingsRecentChats = SettingsToolsCategoryActivity.this.getRecentChatsController().getDialogTypesSettingsRecentChats();
                                if (dialogTypesSettingsRecentChats.isEmpty()) {
                                    str = LocaleController.getInternalString(C3301R.string.settings_interface_multi_panel_no_buttons);
                                } else {
                                    str = TextUtils.join(", ", dialogTypesSettingsRecentChats);
                                }
                            } else {
                                str = LocaleController.getInternalString(C3301R.string.folder_tabs_sorting_settings_item_value_off);
                            }
                        } else {
                            str = null;
                        }
                    } else {
                        str2 = LocaleController.getInternalString(C3301R.string.settings_interface_swipe_to_next_unread_dialog);
                        z = SettingsToolsCategoryActivity.this.getToolsController().isSwipeToGoToNextUnreadDialogEnabled();
                        if (z) {
                            List<String> swipeToGoToNextUnreadDialogTypeNames = SettingsToolsCategoryActivity.this.getToolsController().getSwipeToGoToNextUnreadDialogTypeNames();
                            if (swipeToGoToNextUnreadDialogTypeNames.isEmpty()) {
                                str = LocaleController.getInternalString(C3301R.string.settings_interface_multi_panel_no_buttons);
                            } else {
                                str = TextUtils.join(", ", swipeToGoToNextUnreadDialogTypeNames);
                            }
                        } else {
                            str = LocaleController.getInternalString(C3301R.string.folder_tabs_sorting_settings_item_value_off);
                        }
                    }
                } else {
                    str2 = LocaleController.getInternalString(C3301R.string.settings_multi_panel_item_title);
                    z = SettingsToolsCategoryActivity.this.getMultiPanelController().isMultiPanelEnabled();
                    if (z) {
                        List<String> activeDialogTypeNames = SettingsToolsCategoryActivity.this.getMultiPanelController().getActiveDialogTypeNames();
                        if (activeDialogTypeNames.isEmpty()) {
                            str = LocaleController.getInternalString(C3301R.string.settings_interface_multi_panel_no_buttons);
                        } else {
                            str = TextUtils.join(", ", activeDialogTypeNames);
                        }
                    } else {
                        str = LocaleController.getInternalString(C3301R.string.folder_tabs_sorting_settings_item_value_off);
                    }
                }
                ((NotificationsCheckCell) holder.itemView).setTextAndValueAndCheck(str2, str, z, true);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SettingsToolsCategoryActivity.this.rowCount;
        }

        private final void updateRows() {
            SettingsToolsCategoryActivity.this.customizationAutoOpenForwardingOptionsRow = -1;
            SettingsToolsCategoryActivity.this.customSharingRow = -1;
            SettingsToolsCategoryActivity.this.multiReplyRow = -1;
            SettingsToolsCategoryActivity.this.drawerHeaderSettingsRow = -1;
            SettingsToolsCategoryActivity.this.drawerItemsRow = -1;
            SettingsToolsCategoryActivity.this.drawerHolidayIconType = -1;
            SettingsToolsCategoryActivity.this.chatListActionBarAccountSwitchRow = -1;
            SettingsToolsCategoryActivity.this.chatListActionBarMenuRow = -1;
            SettingsToolsCategoryActivity.this.proxyButtonForceVisibleRow = -1;
            SettingsToolsCategoryActivity.this.chatProfileTelegramIdRow = -1;
            SettingsToolsCategoryActivity.this.cloudAlbumsRow = -1;
            SettingsToolsCategoryActivity.this.chatListRecentChatsRow = -1;
            SettingsToolsCategoryActivity.this.chatFolderAndChatSortingRow = -1;
            SettingsToolsCategoryActivity.this.settingsTopicsRow = -1;
            SettingsToolsCategoryActivity.this.chatMultiPanelRow = -1;
            SettingsToolsCategoryActivity.this.chatSwipeToGoToNextUnreadDialogRow = -1;
            SettingsToolsCategoryActivity.this.chatBottomPanelRow = -1;
            SettingsToolsCategoryActivity.this.chatThemesEnableRow = -1;
            SettingsToolsCategoryActivity.this.chatHideKeyboardOnScrollRow = -1;
            SettingsToolsCategoryActivity.this.chatAttachMenuButtonsRow = -1;
            SettingsToolsCategoryActivity.this.chatExtendedAvatarPreviewerRow = -1;
            SettingsToolsCategoryActivity.this.messagesTranslate = -1;
            SettingsToolsCategoryActivity.this.messagesContextMenu = -1;
            SettingsToolsCategoryActivity.this.sendMessages = -1;
            SettingsToolsCategoryActivity.this.chatsTemplatesRow = -1;
            SettingsToolsCategoryActivity.this.chatMemoryRow = -1;
            SettingsToolsCategoryActivity.this.reactionSettingsRow = -1;
            SettingsToolsCategoryActivity.this.sendPopupReactionsRow = -1;
            SettingsToolsCategoryActivity.this.confirmationCallsRow = -1;
            SettingsToolsCategoryActivity.this.confirmationDeleteCloudRow = -1;
            SettingsToolsCategoryActivity.this.confirmationDeleteTwoSideRow = -1;
            SettingsToolsCategoryActivity.this.confirmationSendingGifRow = -1;
            SettingsToolsCategoryActivity.this.confirmationSendingStickerRow = -1;
            SettingsToolsCategoryActivity.this.confirmationSpeakWithoutHoldRow = -1;
            SettingsToolsCategoryActivity.this.confirmationVideoSpeakWithoutHoldRow = -1;
            SettingsToolsCategoryActivity.this.confirmationVideoVoiceCameraRow = -1;
            SettingsToolsCategoryActivity.this.messageWidePostsRow = -1;
            SettingsToolsCategoryActivity.this.rowCount = 0;
            switch (WhenMappings.$EnumSwitchMapping$0[SettingsToolsCategoryActivity.this.getCategory().ordinal()]) {
                case 1:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity = SettingsToolsCategoryActivity.this;
                    int i = settingsToolsCategoryActivity.rowCount;
                    settingsToolsCategoryActivity.rowCount = i + 1;
                    settingsToolsCategoryActivity.customizationAutoOpenForwardingOptionsRow = i;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity2 = SettingsToolsCategoryActivity.this;
                    int i2 = settingsToolsCategoryActivity2.rowCount;
                    settingsToolsCategoryActivity2.rowCount = i2 + 1;
                    settingsToolsCategoryActivity2.customSharingRow = i2;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity3 = SettingsToolsCategoryActivity.this;
                    int i3 = settingsToolsCategoryActivity3.rowCount;
                    settingsToolsCategoryActivity3.rowCount = i3 + 1;
                    settingsToolsCategoryActivity3.multiReplyRow = i3;
                    return;
                case 2:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity4 = SettingsToolsCategoryActivity.this;
                    int i4 = settingsToolsCategoryActivity4.rowCount;
                    settingsToolsCategoryActivity4.rowCount = i4 + 1;
                    settingsToolsCategoryActivity4.drawerHeaderSettingsRow = i4;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity5 = SettingsToolsCategoryActivity.this;
                    int i5 = settingsToolsCategoryActivity5.rowCount;
                    settingsToolsCategoryActivity5.rowCount = i5 + 1;
                    settingsToolsCategoryActivity5.drawerItemsRow = i5;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity6 = SettingsToolsCategoryActivity.this;
                    int i6 = settingsToolsCategoryActivity6.rowCount;
                    settingsToolsCategoryActivity6.rowCount = i6 + 1;
                    settingsToolsCategoryActivity6.drawerHolidayIconType = i6;
                    return;
                case 3:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity7 = SettingsToolsCategoryActivity.this;
                    int i7 = settingsToolsCategoryActivity7.rowCount;
                    settingsToolsCategoryActivity7.rowCount = i7 + 1;
                    settingsToolsCategoryActivity7.chatListActionBarAccountSwitchRow = i7;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity8 = SettingsToolsCategoryActivity.this;
                    int i8 = settingsToolsCategoryActivity8.rowCount;
                    settingsToolsCategoryActivity8.rowCount = i8 + 1;
                    settingsToolsCategoryActivity8.chatListActionBarMenuRow = i8;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity9 = SettingsToolsCategoryActivity.this;
                    int i9 = settingsToolsCategoryActivity9.rowCount;
                    settingsToolsCategoryActivity9.rowCount = i9 + 1;
                    settingsToolsCategoryActivity9.proxyButtonForceVisibleRow = i9;
                    return;
                case 4:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity10 = SettingsToolsCategoryActivity.this;
                    int i10 = settingsToolsCategoryActivity10.rowCount;
                    settingsToolsCategoryActivity10.rowCount = i10 + 1;
                    settingsToolsCategoryActivity10.chatProfileTelegramIdRow = i10;
                    return;
                case 5:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity11 = SettingsToolsCategoryActivity.this;
                    int i11 = settingsToolsCategoryActivity11.rowCount;
                    settingsToolsCategoryActivity11.rowCount = i11 + 1;
                    settingsToolsCategoryActivity11.cloudAlbumsRow = i11;
                    return;
                case 6:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity12 = SettingsToolsCategoryActivity.this;
                    int i12 = settingsToolsCategoryActivity12.rowCount;
                    settingsToolsCategoryActivity12.rowCount = i12 + 1;
                    settingsToolsCategoryActivity12.chatListRecentChatsRow = i12;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity13 = SettingsToolsCategoryActivity.this;
                    int i13 = settingsToolsCategoryActivity13.rowCount;
                    settingsToolsCategoryActivity13.rowCount = i13 + 1;
                    settingsToolsCategoryActivity13.chatFolderAndChatSortingRow = i13;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity14 = SettingsToolsCategoryActivity.this;
                    int i14 = settingsToolsCategoryActivity14.rowCount;
                    settingsToolsCategoryActivity14.rowCount = i14 + 1;
                    settingsToolsCategoryActivity14.settingsTopicsRow = i14;
                    return;
                case 7:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity15 = SettingsToolsCategoryActivity.this;
                    int i15 = settingsToolsCategoryActivity15.rowCount;
                    settingsToolsCategoryActivity15.rowCount = i15 + 1;
                    settingsToolsCategoryActivity15.chatMultiPanelRow = i15;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity16 = SettingsToolsCategoryActivity.this;
                    int i16 = settingsToolsCategoryActivity16.rowCount;
                    settingsToolsCategoryActivity16.rowCount = i16 + 1;
                    settingsToolsCategoryActivity16.chatSwipeToGoToNextUnreadDialogRow = i16;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity17 = SettingsToolsCategoryActivity.this;
                    int i17 = settingsToolsCategoryActivity17.rowCount;
                    settingsToolsCategoryActivity17.rowCount = i17 + 1;
                    settingsToolsCategoryActivity17.chatBottomPanelRow = i17;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity18 = SettingsToolsCategoryActivity.this;
                    int i18 = settingsToolsCategoryActivity18.rowCount;
                    settingsToolsCategoryActivity18.rowCount = i18 + 1;
                    settingsToolsCategoryActivity18.chatThemesEnableRow = i18;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity19 = SettingsToolsCategoryActivity.this;
                    int i19 = settingsToolsCategoryActivity19.rowCount;
                    settingsToolsCategoryActivity19.rowCount = i19 + 1;
                    settingsToolsCategoryActivity19.chatMemoryRow = i19;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity20 = SettingsToolsCategoryActivity.this;
                    int i20 = settingsToolsCategoryActivity20.rowCount;
                    settingsToolsCategoryActivity20.rowCount = i20 + 1;
                    settingsToolsCategoryActivity20.chatHideKeyboardOnScrollRow = i20;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity21 = SettingsToolsCategoryActivity.this;
                    int i21 = settingsToolsCategoryActivity21.rowCount;
                    settingsToolsCategoryActivity21.rowCount = i21 + 1;
                    settingsToolsCategoryActivity21.chatsTemplatesRow = i21;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity22 = SettingsToolsCategoryActivity.this;
                    int i22 = settingsToolsCategoryActivity22.rowCount;
                    settingsToolsCategoryActivity22.rowCount = i22 + 1;
                    settingsToolsCategoryActivity22.chatAttachMenuButtonsRow = i22;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity23 = SettingsToolsCategoryActivity.this;
                    int i23 = settingsToolsCategoryActivity23.rowCount;
                    settingsToolsCategoryActivity23.rowCount = i23 + 1;
                    settingsToolsCategoryActivity23.chatExtendedAvatarPreviewerRow = i23;
                    return;
                case 8:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity24 = SettingsToolsCategoryActivity.this;
                    int i24 = settingsToolsCategoryActivity24.rowCount;
                    settingsToolsCategoryActivity24.rowCount = i24 + 1;
                    settingsToolsCategoryActivity24.messagesTranslate = i24;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity25 = SettingsToolsCategoryActivity.this;
                    int i25 = settingsToolsCategoryActivity25.rowCount;
                    settingsToolsCategoryActivity25.rowCount = i25 + 1;
                    settingsToolsCategoryActivity25.messagesContextMenu = i25;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity26 = SettingsToolsCategoryActivity.this;
                    int i26 = settingsToolsCategoryActivity26.rowCount;
                    settingsToolsCategoryActivity26.rowCount = i26 + 1;
                    settingsToolsCategoryActivity26.sendMessages = i26;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity27 = SettingsToolsCategoryActivity.this;
                    int i27 = settingsToolsCategoryActivity27.rowCount;
                    settingsToolsCategoryActivity27.rowCount = i27 + 1;
                    settingsToolsCategoryActivity27.messageWidePostsRow = i27;
                    return;
                case 9:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity28 = SettingsToolsCategoryActivity.this;
                    int i28 = settingsToolsCategoryActivity28.rowCount;
                    settingsToolsCategoryActivity28.rowCount = i28 + 1;
                    settingsToolsCategoryActivity28.reactionSettingsRow = i28;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity29 = SettingsToolsCategoryActivity.this;
                    int i29 = settingsToolsCategoryActivity29.rowCount;
                    settingsToolsCategoryActivity29.rowCount = i29 + 1;
                    settingsToolsCategoryActivity29.sendPopupReactionsRow = i29;
                    return;
                case 10:
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity30 = SettingsToolsCategoryActivity.this;
                    int i30 = settingsToolsCategoryActivity30.rowCount;
                    settingsToolsCategoryActivity30.rowCount = i30 + 1;
                    settingsToolsCategoryActivity30.confirmationCallsRow = i30;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity31 = SettingsToolsCategoryActivity.this;
                    int i31 = settingsToolsCategoryActivity31.rowCount;
                    settingsToolsCategoryActivity31.rowCount = i31 + 1;
                    settingsToolsCategoryActivity31.confirmationDeleteCloudRow = i31;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity32 = SettingsToolsCategoryActivity.this;
                    int i32 = settingsToolsCategoryActivity32.rowCount;
                    settingsToolsCategoryActivity32.rowCount = i32 + 1;
                    settingsToolsCategoryActivity32.confirmationDeleteTwoSideRow = i32;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity33 = SettingsToolsCategoryActivity.this;
                    int i33 = settingsToolsCategoryActivity33.rowCount;
                    settingsToolsCategoryActivity33.rowCount = i33 + 1;
                    settingsToolsCategoryActivity33.confirmationSendingGifRow = i33;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity34 = SettingsToolsCategoryActivity.this;
                    int i34 = settingsToolsCategoryActivity34.rowCount;
                    settingsToolsCategoryActivity34.rowCount = i34 + 1;
                    settingsToolsCategoryActivity34.confirmationSendingStickerRow = i34;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity35 = SettingsToolsCategoryActivity.this;
                    int i35 = settingsToolsCategoryActivity35.rowCount;
                    settingsToolsCategoryActivity35.rowCount = i35 + 1;
                    settingsToolsCategoryActivity35.confirmationSpeakWithoutHoldRow = i35;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity36 = SettingsToolsCategoryActivity.this;
                    int i36 = settingsToolsCategoryActivity36.rowCount;
                    settingsToolsCategoryActivity36.rowCount = i36 + 1;
                    settingsToolsCategoryActivity36.confirmationVideoSpeakWithoutHoldRow = i36;
                    SettingsToolsCategoryActivity settingsToolsCategoryActivity37 = SettingsToolsCategoryActivity.this;
                    int i37 = settingsToolsCategoryActivity37.rowCount;
                    settingsToolsCategoryActivity37.rowCount = i37 + 1;
                    settingsToolsCategoryActivity37.confirmationVideoVoiceCameraRow = i37;
                    return;
                default:
                    return;
            }
        }

        private final boolean hasHint(int i) {
            return SettingsToolsCategoryActivity.this.getHint(i) != null;
        }
    }
}
