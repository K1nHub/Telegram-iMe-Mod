package org.telegram.p043ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Vibrator;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.browser.Browser;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.AdminedChannelCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.LoadingCell;
import org.telegram.p043ui.Cells.RadioButtonCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCell;
import org.telegram.p043ui.Cells.TextCheckCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.ChangeUsernameActivity;
import org.telegram.p043ui.ChatEditTypeActivity;
import org.telegram.p043ui.Components.CircularProgressDrawable;
import org.telegram.p043ui.Components.CrossfadeDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.EditTextBoldCursor;
import org.telegram.p043ui.Components.InviteLinkBottomSheet;
import org.telegram.p043ui.Components.JoinToSendSettingsView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkActionView;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_channels_checkUsername;
import org.telegram.tgnet.TLRPC$TL_channels_deactivateAllUsernames;
import org.telegram.tgnet.TLRPC$TL_channels_getAdminedPublicChannels;
import org.telegram.tgnet.TLRPC$TL_channels_reorderUsernames;
import org.telegram.tgnet.TLRPC$TL_channels_toggleUsername;
import org.telegram.tgnet.TLRPC$TL_channels_updateUsername;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputChannel;
import org.telegram.tgnet.TLRPC$TL_messages_chats;
import org.telegram.tgnet.TLRPC$TL_messages_exportChatInvite;
import org.telegram.tgnet.TLRPC$TL_username;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.ChatEditTypeActivity */
/* loaded from: classes5.dex */
public class ChatEditTypeActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private ShadowSectionCell adminedInfoCell;
    private LinearLayout adminnedChannelsLayout;
    private long chatId;
    private int checkReqId;
    private Runnable checkRunnable;
    private TextInfoPrivacyCell checkTextView;
    private TLRPC$Chat currentChat;
    private ActionBarMenuItem doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private ValueAnimator doneButtonDrawableAnimator;
    private EditTextBoldCursor editText;
    private ChangeUsernameActivity.UsernameCell editableUsernameCell;
    private Boolean editableUsernameUpdated;
    private Boolean editableUsernameWasActive;
    private HeaderCell headerCell;
    private HeaderCell headerCell2;
    private boolean ignoreScroll;
    private boolean ignoreTextChanges;
    private TLRPC$ChatFull info;
    private TextInfoPrivacyCell infoCell;
    private TLRPC$TL_chatInviteExported invite;
    private InviteLinkBottomSheet inviteLinkBottomSheet;
    private boolean isChannel;
    private boolean isForcePublic;
    private boolean isPrivate;
    private boolean isSaveRestricted;
    private JoinToSendSettingsView joinContainer;
    private String lastCheckName;
    private boolean lastNameAvailable;
    private LinearLayout linearLayout;
    private LinearLayout linearLayoutTypeContainer;
    private LinearLayout linkContainer;
    private LoadingCell loadingAdminedCell;
    private boolean loadingAdminedChannels;
    private TextInfoPrivacyCell manageLinksInfoCell;
    private TextCell manageLinksTextView;
    private LinkActionView permanentLinkView;
    private LinearLayout privateContainer;
    private LinearLayout publicContainer;
    private RadioButtonCell radioButtonCell1;
    private RadioButtonCell radioButtonCell2;
    private LinearLayout saveContainer;
    private HeaderCell saveHeaderCell;
    private TextCheckCell saveRestrictCell;
    private TextInfoPrivacyCell saveRestrictInfoCell;
    private ShadowSectionCell sectionCell2;
    private TextSettingsCell textCell;
    private TextSettingsCell textCell2;
    private TextInfoPrivacyCell typeInfoCell;
    private EditTextBoldCursor usernameTextView;
    private UsernamesListView usernamesListView;
    private ArrayList<TLRPC$TL_username> editableUsernames = new ArrayList<>();
    private ArrayList<TLRPC$TL_username> usernames = new ArrayList<>();
    private ArrayList<String> loadingUsernames = new ArrayList<>();
    private boolean canCreatePublic = true;
    private ArrayList<AdminedChannelCell> adminedChannelCells = new ArrayList<>();
    HashMap<Long, TLRPC$User> usersMap = new HashMap<>();
    private Runnable enableDoneLoading = new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda9
        @Override // java.lang.Runnable
        public final void run() {
            ChatEditTypeActivity.this.lambda$new$6();
        }
    };
    private boolean deactivatingLinks = false;

    public ChatEditTypeActivity(long j, boolean z) {
        this.chatId = j;
        this.isForcePublic = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0048, code lost:
        if (r0 == null) goto L9;
     */
    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onFragmentCreate() {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ChatEditTypeActivity.onFragmentCreate():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$1(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                ChatEditTypeActivity.this.lambda$onFragmentCreate$0(tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFragmentCreate$0(TLRPC$TL_error tLRPC$TL_error) {
        boolean z = tLRPC$TL_error == null || !tLRPC$TL_error.text.equals("CHANNELS_ADMIN_PUBLIC_TOO_MUCH");
        this.canCreatePublic = z;
        if (z || !getUserConfig().isPremium()) {
            return;
        }
        loadAdminedChannels();
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.chatInfoDidLoad);
        AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        TLRPC$ChatFull tLRPC$ChatFull;
        super.onResume();
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        TextSettingsCell textSettingsCell = this.textCell2;
        if (textSettingsCell != null && (tLRPC$ChatFull = this.info) != null) {
            if (tLRPC$ChatFull.stickerset != null) {
                textSettingsCell.setTextAndValue(LocaleController.getString("GroupStickers", C3632R.string.GroupStickers), this.info.stickerset.title, false);
            } else {
                textSettingsCell.setText(LocaleController.getString("GroupStickers", C3632R.string.GroupStickers), false);
            }
        }
        TLRPC$ChatFull tLRPC$ChatFull2 = this.info;
        if (tLRPC$ChatFull2 != null) {
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = tLRPC$ChatFull2.exported_invite;
            this.invite = tLRPC$TL_chatInviteExported;
            this.permanentLinkView.setLink(tLRPC$TL_chatInviteExported == null ? null : tLRPC$TL_chatInviteExported.link);
            this.permanentLinkView.loadUsers(this.invite, this.chatId);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        EditTextBoldCursor editTextBoldCursor;
        super.onBecomeFullyVisible();
        if (!this.isForcePublic || (editTextBoldCursor = this.usernameTextView) == null) {
            return;
        }
        editTextBoldCursor.requestFocus();
        AndroidUtilities.showKeyboard(this.usernameTextView);
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChatEditTypeActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    ChatEditTypeActivity.this.finishFragment();
                } else if (i == 1) {
                    if (ChatEditTypeActivity.this.doneButtonDrawable == null || ChatEditTypeActivity.this.doneButtonDrawable.getProgress() <= BitmapDescriptorFactory.HUE_RED) {
                        ChatEditTypeActivity.this.processDone();
                    }
                }
            }
        });
        ActionBarMenu createMenu = this.actionBar.createMenu();
        Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.ic_ab_done).mutate();
        int i = Theme.key_actionBarDefaultIcon;
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i), PorterDuff.Mode.MULTIPLY));
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(mutate, new CircularProgressDrawable(Theme.getColor(i)));
        this.doneButtonDrawable = crossfadeDrawable;
        this.doneButton = createMenu.addItemWithWidth(1, crossfadeDrawable, AndroidUtilities.m107dp(56), LocaleController.getString("Done", C3632R.string.Done));
        ScrollView scrollView = new ScrollView(context) { // from class: org.telegram.ui.ChatEditTypeActivity.2
            @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
            public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
                rect.bottom += AndroidUtilities.m107dp(60);
                return super.requestChildRectangleOnScreen(view, rect, z);
            }

            @Override // android.widget.ScrollView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return super.onTouchEvent(motionEvent);
                }
                return !ChatEditTypeActivity.this.ignoreScroll && super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.ScrollView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return !ChatEditTypeActivity.this.ignoreScroll && super.onInterceptTouchEvent(motionEvent);
            }
        };
        this.fragmentView = scrollView;
        scrollView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        ScrollView scrollView2 = (ScrollView) this.fragmentView;
        scrollView2.setFillViewport(true);
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        scrollView2.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
        this.linearLayout.setOrientation(1);
        if (this.isForcePublic) {
            this.actionBar.setTitle(LocaleController.getString("TypeLocationGroup", C3632R.string.TypeLocationGroup));
        } else if (this.isChannel) {
            this.actionBar.setTitle(LocaleController.getString("ChannelSettingsTitle", C3632R.string.ChannelSettingsTitle));
        } else {
            this.actionBar.setTitle(LocaleController.getString("GroupSettingsTitle", C3632R.string.GroupSettingsTitle));
        }
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.linearLayoutTypeContainer = linearLayout2;
        linearLayout2.setOrientation(1);
        LinearLayout linearLayout3 = this.linearLayoutTypeContainer;
        int i2 = Theme.key_windowBackgroundWhite;
        linearLayout3.setBackgroundColor(Theme.getColor(i2));
        this.linearLayout.addView(this.linearLayoutTypeContainer, LayoutHelper.createLinear(-1, -2));
        HeaderCell headerCell = new HeaderCell(context, 23);
        this.headerCell2 = headerCell;
        headerCell.setHeight(46);
        if (this.isChannel) {
            this.headerCell2.setText(LocaleController.getString("ChannelTypeHeader", C3632R.string.ChannelTypeHeader));
        } else {
            this.headerCell2.setText(LocaleController.getString("GroupTypeHeader", C3632R.string.GroupTypeHeader));
        }
        this.linearLayoutTypeContainer.addView(this.headerCell2);
        RadioButtonCell radioButtonCell = new RadioButtonCell(context);
        this.radioButtonCell2 = radioButtonCell;
        radioButtonCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
        if (this.isChannel) {
            this.radioButtonCell2.setTextAndValue(LocaleController.getString("ChannelPrivate", C3632R.string.ChannelPrivate), LocaleController.getString("ChannelPrivateInfo", C3632R.string.ChannelPrivateInfo), false, this.isPrivate);
        } else {
            this.radioButtonCell2.setTextAndValue(LocaleController.getString("MegaPrivate", C3632R.string.MegaPrivate), LocaleController.getString("MegaPrivateInfo", C3632R.string.MegaPrivateInfo), false, this.isPrivate);
        }
        this.linearLayoutTypeContainer.addView(this.radioButtonCell2, LayoutHelper.createLinear(-1, -2));
        this.radioButtonCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatEditTypeActivity.this.lambda$createView$2(view);
            }
        });
        RadioButtonCell radioButtonCell2 = new RadioButtonCell(context);
        this.radioButtonCell1 = radioButtonCell2;
        radioButtonCell2.setBackgroundDrawable(Theme.getSelectorDrawable(false));
        if (this.isChannel) {
            this.radioButtonCell1.setTextAndValue(LocaleController.getString("ChannelPublic", C3632R.string.ChannelPublic), LocaleController.getString("ChannelPublicInfo", C3632R.string.ChannelPublicInfo), false, !this.isPrivate);
        } else {
            this.radioButtonCell1.setTextAndValue(LocaleController.getString("MegaPublic", C3632R.string.MegaPublic), LocaleController.getString("MegaPublicInfo", C3632R.string.MegaPublicInfo), false, !this.isPrivate);
        }
        this.linearLayoutTypeContainer.addView(this.radioButtonCell1, LayoutHelper.createLinear(-1, -2));
        this.radioButtonCell1.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatEditTypeActivity.this.lambda$createView$3(view);
            }
        });
        ShadowSectionCell shadowSectionCell = new ShadowSectionCell(context);
        this.sectionCell2 = shadowSectionCell;
        this.linearLayout.addView(shadowSectionCell, LayoutHelper.createLinear(-1, -2));
        if (this.isForcePublic) {
            this.radioButtonCell2.setVisibility(8);
            this.radioButtonCell1.setVisibility(8);
            this.sectionCell2.setVisibility(8);
            this.headerCell2.setVisibility(8);
        }
        LinearLayout linearLayout4 = new LinearLayout(context);
        this.linkContainer = linearLayout4;
        linearLayout4.setOrientation(1);
        this.linkContainer.setBackgroundColor(Theme.getColor(i2));
        this.linearLayout.addView(this.linkContainer, LayoutHelper.createLinear(-1, -2));
        HeaderCell headerCell2 = new HeaderCell(context, 23);
        this.headerCell = headerCell2;
        this.linkContainer.addView(headerCell2);
        LinearLayout linearLayout5 = new LinearLayout(context);
        this.publicContainer = linearLayout5;
        linearLayout5.setOrientation(0);
        this.linkContainer.addView(this.publicContainer, LayoutHelper.createLinear(-1, 36, 23, 7, 23, 0));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.editText = editTextBoldCursor;
        editTextBoldCursor.setText(getMessagesController().linkPrefix + "/");
        this.editText.setTextSize(1, 18.0f);
        EditTextBoldCursor editTextBoldCursor2 = this.editText;
        int i3 = Theme.key_windowBackgroundWhiteHintText;
        editTextBoldCursor2.setHintTextColor(Theme.getColor(i3));
        EditTextBoldCursor editTextBoldCursor3 = this.editText;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor3.setTextColor(Theme.getColor(i4));
        this.editText.setMaxLines(1);
        this.editText.setLines(1);
        this.editText.setEnabled(false);
        this.editText.setBackgroundDrawable(null);
        this.editText.setPadding(0, 0, 0, 0);
        this.editText.setSingleLine(true);
        this.editText.setInputType(163840);
        this.editText.setImeOptions(6);
        this.publicContainer.addView(this.editText, LayoutHelper.createLinear(-2, 36));
        EditTextBoldCursor editTextBoldCursor4 = new EditTextBoldCursor(context) { // from class: org.telegram.ui.ChatEditTypeActivity.3
            @Override // org.telegram.p043ui.Components.EditTextBoldCursor, android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                StringBuilder sb = new StringBuilder();
                sb.append((CharSequence) getText());
                if (ChatEditTypeActivity.this.checkTextView != null && ChatEditTypeActivity.this.checkTextView.getTextView() != null && !TextUtils.isEmpty(ChatEditTypeActivity.this.checkTextView.getTextView().getText())) {
                    sb.append("\n");
                    sb.append(ChatEditTypeActivity.this.checkTextView.getTextView().getText());
                }
                accessibilityNodeInfo.setText(sb);
            }
        };
        this.usernameTextView = editTextBoldCursor4;
        editTextBoldCursor4.setTextSize(1, 18.0f);
        this.usernameTextView.setHintTextColor(Theme.getColor(i3));
        this.usernameTextView.setTextColor(Theme.getColor(i4));
        this.usernameTextView.setMaxLines(1);
        this.usernameTextView.setLines(1);
        this.usernameTextView.setBackgroundDrawable(null);
        this.usernameTextView.setPadding(0, 0, 0, 0);
        this.usernameTextView.setSingleLine(true);
        this.usernameTextView.setInputType(163872);
        this.usernameTextView.setImeOptions(6);
        this.usernameTextView.setHint(LocaleController.getString("ChannelUsernamePlaceholder", C3632R.string.ChannelUsernamePlaceholder));
        this.usernameTextView.setCursorColor(Theme.getColor(i4));
        this.usernameTextView.setCursorSize(AndroidUtilities.m107dp(20));
        this.usernameTextView.setCursorWidth(1.5f);
        this.publicContainer.addView(this.usernameTextView, LayoutHelper.createLinear(-1, 36));
        this.usernameTextView.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ChatEditTypeActivity.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                if (ChatEditTypeActivity.this.ignoreTextChanges) {
                    return;
                }
                String obj = ChatEditTypeActivity.this.usernameTextView.getText().toString();
                if (ChatEditTypeActivity.this.editableUsernameCell != null) {
                    ChatEditTypeActivity.this.editableUsernameCell.updateUsername(obj);
                }
                ChatEditTypeActivity.this.checkUserName(obj);
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ChatEditTypeActivity.this.checkDoneButton();
            }
        });
        LinearLayout linearLayout6 = new LinearLayout(context);
        this.privateContainer = linearLayout6;
        linearLayout6.setOrientation(1);
        this.linkContainer.addView(this.privateContainer, LayoutHelper.createLinear(-1, -2));
        LinkActionView linkActionView = new LinkActionView(context, this, null, this.chatId, true, ChatObject.isChannel(this.currentChat));
        this.permanentLinkView = linkActionView;
        linkActionView.setDelegate(new LinkActionView.Delegate() { // from class: org.telegram.ui.ChatEditTypeActivity.5
            @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
            public /* synthetic */ void editLink() {
                LinkActionView.Delegate.CC.$default$editLink(this);
            }

            @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
            public /* synthetic */ void removeLink() {
                LinkActionView.Delegate.CC.$default$removeLink(this);
            }

            @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
            public void revokeLink() {
                ChatEditTypeActivity.this.generateLink(true);
            }

            @Override // org.telegram.p043ui.Components.LinkActionView.Delegate
            public void showUsersForPermanentLink() {
                ChatEditTypeActivity chatEditTypeActivity = ChatEditTypeActivity.this;
                Context context2 = context;
                TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = ChatEditTypeActivity.this.invite;
                TLRPC$ChatFull tLRPC$ChatFull = ChatEditTypeActivity.this.info;
                ChatEditTypeActivity chatEditTypeActivity2 = ChatEditTypeActivity.this;
                chatEditTypeActivity.inviteLinkBottomSheet = new InviteLinkBottomSheet(context2, tLRPC$TL_chatInviteExported, tLRPC$ChatFull, chatEditTypeActivity2.usersMap, chatEditTypeActivity2, chatEditTypeActivity2.chatId, true, ChatObject.isChannel(ChatEditTypeActivity.this.currentChat));
                ChatEditTypeActivity.this.inviteLinkBottomSheet.show();
            }
        });
        this.permanentLinkView.setUsers(0, null, false);
        this.privateContainer.addView(this.permanentLinkView);
        C43526 c43526 = new C43526(context);
        this.checkTextView = c43526;
        c43526.setBackgroundDrawable(Theme.getThemedDrawableByKey(context, C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
        this.checkTextView.setBottomPadding(6);
        this.linearLayout.addView(this.checkTextView, LayoutHelper.createLinear(-2, -2));
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context);
        this.typeInfoCell = textInfoPrivacyCell;
        textInfoPrivacyCell.setImportantForAccessibility(1);
        this.linearLayout.addView(this.typeInfoCell, LayoutHelper.createLinear(-1, -2));
        LoadingCell loadingCell = new LoadingCell(context);
        this.loadingAdminedCell = loadingCell;
        this.linearLayout.addView(loadingCell, LayoutHelper.createLinear(-1, -2));
        LinearLayout linearLayout7 = new LinearLayout(context);
        this.adminnedChannelsLayout = linearLayout7;
        linearLayout7.setBackgroundColor(Theme.getColor(i2));
        this.adminnedChannelsLayout.setOrientation(1);
        this.linearLayout.addView(this.adminnedChannelsLayout, LayoutHelper.createLinear(-1, -2));
        ShadowSectionCell shadowSectionCell2 = new ShadowSectionCell(context);
        this.adminedInfoCell = shadowSectionCell2;
        this.linearLayout.addView(shadowSectionCell2, LayoutHelper.createLinear(-1, -2));
        LinearLayout linearLayout8 = this.linearLayout;
        UsernamesListView usernamesListView = new UsernamesListView(context);
        this.usernamesListView = usernamesListView;
        linearLayout8.addView(usernamesListView, LayoutHelper.createLinear(-1, -2));
        this.usernamesListView.setVisibility((this.isPrivate || this.usernames.isEmpty()) ? 8 : 0);
        TextCell textCell = new TextCell(context);
        this.manageLinksTextView = textCell;
        textCell.setBackgroundDrawable(Theme.getSelectorDrawable(true));
        this.manageLinksTextView.setTextAndIcon((CharSequence) LocaleController.getString("ManageInviteLinks", C3632R.string.ManageInviteLinks), C3632R.C3634drawable.msg_link2, false);
        this.manageLinksTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatEditTypeActivity.this.lambda$createView$4(view);
            }
        });
        this.linearLayout.addView(this.manageLinksTextView, LayoutHelper.createLinear(-1, -2));
        TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(context);
        this.manageLinksInfoCell = textInfoPrivacyCell2;
        this.linearLayout.addView(textInfoPrivacyCell2, LayoutHelper.createLinear(-1, -2));
        JoinToSendSettingsView joinToSendSettingsView = new JoinToSendSettingsView(context, this.currentChat);
        this.joinContainer = joinToSendSettingsView;
        TLRPC$ChatFull tLRPC$ChatFull = this.info;
        joinToSendSettingsView.showJoinToSend((tLRPC$ChatFull == null || tLRPC$ChatFull.linked_chat_id == 0) ? false : true);
        this.linearLayout.addView(this.joinContainer);
        LinearLayout linearLayout9 = new LinearLayout(context);
        this.saveContainer = linearLayout9;
        linearLayout9.setOrientation(1);
        this.linearLayout.addView(this.saveContainer);
        HeaderCell headerCell3 = new HeaderCell(context, 23);
        this.saveHeaderCell = headerCell3;
        headerCell3.setHeight(46);
        this.saveHeaderCell.setText(LocaleController.getString("SavingContentTitle", C3632R.string.SavingContentTitle));
        this.saveHeaderCell.setBackgroundDrawable(Theme.getSelectorDrawable(true));
        this.saveContainer.addView(this.saveHeaderCell, LayoutHelper.createLinear(-1, -2));
        TextCheckCell textCheckCell = new TextCheckCell(context);
        this.saveRestrictCell = textCheckCell;
        textCheckCell.setBackgroundDrawable(Theme.getSelectorDrawable(true));
        this.saveRestrictCell.setTextAndCheck(LocaleController.getString("RestrictSavingContent", C3632R.string.RestrictSavingContent), this.isSaveRestricted, false);
        this.saveRestrictCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatEditTypeActivity.this.lambda$createView$5(view);
            }
        });
        this.saveContainer.addView(this.saveRestrictCell, LayoutHelper.createLinear(-1, -2));
        this.saveRestrictInfoCell = new TextInfoPrivacyCell(context);
        if (this.isChannel && !ChatObject.isMegagroup(this.currentChat)) {
            this.saveRestrictInfoCell.setText(LocaleController.getString("RestrictSavingContentInfoChannel", C3632R.string.RestrictSavingContentInfoChannel));
        } else {
            this.saveRestrictInfoCell.setText(LocaleController.getString("RestrictSavingContentInfoGroup", C3632R.string.RestrictSavingContentInfoGroup));
        }
        this.saveContainer.addView(this.saveRestrictInfoCell, LayoutHelper.createLinear(-1, -2));
        String publicUsername = ChatObject.getPublicUsername(this.currentChat, true);
        if (!this.isPrivate && publicUsername != null) {
            this.ignoreTextChanges = true;
            this.usernameTextView.setText(publicUsername);
            this.usernameTextView.setSelection(publicUsername.length());
            this.ignoreTextChanges = false;
        }
        updatePrivatePublic();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        if (this.isPrivate) {
            return;
        }
        this.isPrivate = true;
        updatePrivatePublic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        if (this.isPrivate) {
            if (!this.canCreatePublic) {
                showPremiumIncreaseLimitDialog();
                return;
            }
            this.isPrivate = false;
            updatePrivatePublic();
        }
    }

    /* renamed from: org.telegram.ui.ChatEditTypeActivity$6 */
    /* loaded from: classes5.dex */
    class C43526 extends TextInfoPrivacyCell {
        int prevHeight;
        ValueAnimator translateAnimator;

        C43526(Context context) {
            super(context);
            this.prevHeight = -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v0, types: [org.telegram.ui.ChatEditTypeActivity$6, org.telegram.ui.Cells.TextInfoPrivacyCell] */
        /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.CharSequence] */
        /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.CharSequence] */
        /* JADX WARN: Type inference failed for: r8v3, types: [android.text.SpannableStringBuilder] */
        @Override // org.telegram.p043ui.Cells.TextInfoPrivacyCell
        public void setText(CharSequence charSequence) {
            if (charSequence != 0) {
                charSequence = AndroidUtilities.replaceTags(charSequence.toString());
                int indexOf = charSequence.toString().indexOf(10);
                if (indexOf >= 0) {
                    charSequence.replace(indexOf, indexOf + 1, " ");
                    charSequence.setSpan(new ForegroundColorSpan(ChatEditTypeActivity.this.getThemedColor(Theme.key_text_RedRegular)), 0, indexOf, 33);
                }
                TypefaceSpan[] typefaceSpanArr = (TypefaceSpan[]) charSequence.getSpans(0, charSequence.length(), TypefaceSpan.class);
                final String obj = (ChatEditTypeActivity.this.usernameTextView == null || ChatEditTypeActivity.this.usernameTextView.getText() == null) ? "" : ChatEditTypeActivity.this.usernameTextView.getText().toString();
                for (int i = 0; i < typefaceSpanArr.length; i++) {
                    charSequence.setSpan(new ClickableSpan() { // from class: org.telegram.ui.ChatEditTypeActivity.6.1
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            Context context = C43526.this.getContext();
                            Browser.openUrl(context, "https://fragment.com/username/" + obj);
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            textPaint.setUnderlineText(false);
                        }
                    }, charSequence.getSpanStart(typefaceSpanArr[i]), charSequence.getSpanEnd(typefaceSpanArr[i]), 33);
                    charSequence.removeSpan(typefaceSpanArr[i]);
                }
            }
            super.setText(charSequence);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.prevHeight != -1 && ChatEditTypeActivity.this.linearLayout != null) {
                final ArrayList arrayList = new ArrayList();
                boolean z2 = false;
                for (int i5 = 0; i5 < ChatEditTypeActivity.this.linearLayout.getChildCount(); i5++) {
                    View childAt = ChatEditTypeActivity.this.linearLayout.getChildAt(i5);
                    if (z2) {
                        arrayList.add(childAt);
                    } else if (childAt == this) {
                        z2 = true;
                    }
                }
                final float height = this.prevHeight - getHeight();
                ValueAnimator valueAnimator = this.translateAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
                this.translateAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatEditTypeActivity$6$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        ChatEditTypeActivity.C43526.lambda$onLayout$0(arrayList, height, valueAnimator2);
                    }
                });
                this.translateAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.translateAnimator.setDuration(350L);
                this.translateAnimator.start();
            }
            this.prevHeight = getHeight();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onLayout$0(ArrayList arrayList, float f, ValueAnimator valueAnimator) {
            float floatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
            for (int i = 0; i < arrayList.size(); i++) {
                View view = (View) arrayList.get(i);
                if (view != null) {
                    view.setTranslationY(f * floatValue);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        ManageLinksActivity manageLinksActivity = new ManageLinksActivity(this.chatId, 0L, 0);
        manageLinksActivity.setInfo(this.info, this.invite);
        presentFragment(manageLinksActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        boolean z = !this.isSaveRestricted;
        this.isSaveRestricted = z;
        ((TextCheckCell) view).setChecked(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        updateDoneProgress(true);
    }

    private void updateDoneProgress(boolean z) {
        if (!z) {
            AndroidUtilities.cancelRunOnUIThread(this.enableDoneLoading);
        }
        if (this.doneButtonDrawable != null) {
            ValueAnimator valueAnimator = this.doneButtonDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float[] fArr = new float[2];
            fArr[0] = this.doneButtonDrawable.getProgress();
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.doneButtonDrawableAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ChatEditTypeActivity.this.lambda$updateDoneProgress$7(valueAnimator2);
                }
            });
            this.doneButtonDrawableAnimator.setDuration(Math.abs(this.doneButtonDrawable.getProgress() - (z ? 1.0f : 0.0f)) * 200.0f);
            this.doneButtonDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.doneButtonDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDoneProgress$7(ValueAnimator valueAnimator) {
        this.doneButtonDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.doneButtonDrawable.invalidateSelf();
    }

    private void showPremiumIncreaseLimitDialog() {
        if (getParentActivity() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, getParentActivity(), 2, this.currentAccount, null);
        limitReachedBottomSheet.parentIsChannel = this.isChannel;
        limitReachedBottomSheet.onSuccessRunnable = new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ChatEditTypeActivity.this.lambda$showPremiumIncreaseLimitDialog$8();
            }
        };
        showDialog(limitReachedBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumIncreaseLimitDialog$8() {
        this.canCreatePublic = true;
        updatePrivatePublic();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC$ChatFull tLRPC$ChatFull = (TLRPC$ChatFull) objArr[0];
            if (tLRPC$ChatFull.f1603id == this.chatId) {
                this.info = tLRPC$ChatFull;
                this.invite = tLRPC$ChatFull.exported_invite;
                updatePrivatePublic();
            }
        }
    }

    public void setInfo(TLRPC$ChatFull tLRPC$ChatFull) {
        this.info = tLRPC$ChatFull;
        if (tLRPC$ChatFull != null) {
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = tLRPC$ChatFull.exported_invite;
            if (tLRPC$TL_chatInviteExported != null) {
                this.invite = tLRPC$TL_chatInviteExported;
            } else {
                generateLink(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        AndroidUtilities.runOnUIThread(this.enableDoneLoading, 200L);
        if (trySetUsername() && trySetRestrict() && tryUpdateJoinSettings()) {
            finishFragment();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean tryUpdateJoinSettings() {
        /*
            r9 = this;
            boolean r0 = r9.isChannel
            r1 = 1
            if (r0 != 0) goto L77
            org.telegram.ui.Components.JoinToSendSettingsView r0 = r9.joinContainer
            if (r0 != 0) goto La
            goto L77
        La:
            android.app.Activity r0 = r9.getParentActivity()
            r2 = 0
            if (r0 != 0) goto L12
            return r2
        L12:
            org.telegram.tgnet.TLRPC$Chat r0 = r9.currentChat
            boolean r0 = org.telegram.messenger.ChatObject.isChannel(r0)
            if (r0 != 0) goto L26
            org.telegram.ui.Components.JoinToSendSettingsView r0 = r9.joinContainer
            boolean r3 = r0.isJoinToSend
            if (r3 != 0) goto L24
            boolean r0 = r0.isJoinRequest
            if (r0 == 0) goto L26
        L24:
            r0 = r1
            goto L27
        L26:
            r0 = r2
        L27:
            if (r0 == 0) goto L3d
            org.telegram.messenger.MessagesController r3 = r9.getMessagesController()
            android.app.Activity r4 = r9.getParentActivity()
            long r5 = r9.chatId
            org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda21 r8 = new org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda21
            r8.<init>()
            r7 = r9
            r3.convertToMegaGroup(r4, r5, r7, r8)
            return r2
        L3d:
            org.telegram.tgnet.TLRPC$Chat r0 = r9.currentChat
            boolean r0 = r0.join_to_send
            org.telegram.ui.Components.JoinToSendSettingsView r2 = r9.joinContainer
            boolean r2 = r2.isJoinToSend
            if (r0 == r2) goto L5a
            org.telegram.messenger.MessagesController r3 = r9.getMessagesController()
            long r4 = r9.chatId
            org.telegram.tgnet.TLRPC$Chat r0 = r9.currentChat
            org.telegram.ui.Components.JoinToSendSettingsView r2 = r9.joinContainer
            boolean r6 = r2.isJoinToSend
            r0.join_to_send = r6
            r7 = 0
            r8 = 0
            r3.toggleChatJoinToSend(r4, r6, r7, r8)
        L5a:
            org.telegram.tgnet.TLRPC$Chat r0 = r9.currentChat
            boolean r0 = r0.join_request
            org.telegram.ui.Components.JoinToSendSettingsView r2 = r9.joinContainer
            boolean r2 = r2.isJoinRequest
            if (r0 == r2) goto L77
            org.telegram.messenger.MessagesController r3 = r9.getMessagesController()
            long r4 = r9.chatId
            org.telegram.tgnet.TLRPC$Chat r0 = r9.currentChat
            org.telegram.ui.Components.JoinToSendSettingsView r2 = r9.joinContainer
            boolean r6 = r2.isJoinRequest
            r0.join_request = r6
            r7 = 0
            r8 = 0
            r3.toggleChatJoinRequest(r4, r6, r7, r8)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ChatEditTypeActivity.tryUpdateJoinSettings():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryUpdateJoinSettings$9(long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = getMessagesController().getChat(Long.valueOf(j));
            processDone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ChatEditTypeActivity$UsernamesListView */
    /* loaded from: classes5.dex */
    public class UsernamesListView extends RecyclerListView {
        private Adapter adapter;
        private Paint backgroundPaint;
        private ItemTouchHelper itemTouchHelper;
        private boolean needReorder;

        public UsernamesListView(Context context) {
            super(context);
            this.needReorder = false;
            this.backgroundPaint = new Paint(1);
            Adapter adapter = new Adapter();
            this.adapter = adapter;
            setAdapter(adapter);
            setLayoutManager(new LinearLayoutManager(context));
            setOnItemClickListener(new C43541(ChatEditTypeActivity.this));
            ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new TouchHelperCallback());
            this.itemTouchHelper = itemTouchHelper;
            itemTouchHelper.attachToRecyclerView(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$1 */
        /* loaded from: classes5.dex */
        public class C43541 implements RecyclerListView.OnItemClickListener {
            C43541(ChatEditTypeActivity chatEditTypeActivity) {
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public void onItemClick(final View view, int i) {
                final TLRPC$TL_username tLRPC$TL_username;
                int i2;
                String str;
                int i3;
                String str2;
                int i4;
                String str3;
                if (!(view instanceof ChangeUsernameActivity.UsernameCell) || (tLRPC$TL_username = ((ChangeUsernameActivity.UsernameCell) view).currentUsername) == null) {
                    return;
                }
                if (tLRPC$TL_username.editable) {
                    ChatEditTypeActivity chatEditTypeActivity = ChatEditTypeActivity.this;
                    View view2 = chatEditTypeActivity.fragmentView;
                    if (view2 instanceof ScrollView) {
                        ((ScrollView) view2).smoothScrollTo(0, chatEditTypeActivity.linkContainer.getTop() - AndroidUtilities.m107dp(128));
                    }
                    ChatEditTypeActivity.this.usernameTextView.requestFocus();
                    AndroidUtilities.showKeyboard(ChatEditTypeActivity.this.usernameTextView);
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(UsernamesListView.this.getContext(), ChatEditTypeActivity.this.getResourceProvider());
                if (tLRPC$TL_username.active) {
                    i2 = C3632R.string.UsernameDeactivateLink;
                    str = "UsernameDeactivateLink";
                } else {
                    i2 = C3632R.string.UsernameActivateLink;
                    str = "UsernameActivateLink";
                }
                AlertDialog.Builder title = builder.setTitle(LocaleController.getString(str, i2));
                if (tLRPC$TL_username.active) {
                    i3 = C3632R.string.UsernameDeactivateLinkChannelMessage;
                    str2 = "UsernameDeactivateLinkChannelMessage";
                } else {
                    i3 = C3632R.string.UsernameActivateLinkChannelMessage;
                    str2 = "UsernameActivateLinkChannelMessage";
                }
                AlertDialog.Builder message = title.setMessage(LocaleController.getString(str2, i3));
                if (tLRPC$TL_username.active) {
                    i4 = C3632R.string.Hide;
                    str3 = "Hide";
                } else {
                    i4 = C3632R.string.Show;
                    str3 = "Show";
                }
                message.setPositiveButton(LocaleController.getString(str3, i4), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$1$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i5) {
                        ChatEditTypeActivity.UsernamesListView.C43541.this.lambda$onItemClick$4(tLRPC$TL_username, view, dialogInterface, i5);
                    }
                }).setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$1$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i5) {
                        dialogInterface.dismiss();
                    }
                }).show();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onItemClick$4(final TLRPC$TL_username tLRPC$TL_username, View view, DialogInterface dialogInterface, int i) {
                if (tLRPC$TL_username.editable) {
                    if (ChatEditTypeActivity.this.editableUsernameWasActive == null) {
                        ChatEditTypeActivity.this.editableUsernameWasActive = Boolean.valueOf(tLRPC$TL_username.active);
                    }
                    ChatEditTypeActivity chatEditTypeActivity = ChatEditTypeActivity.this;
                    boolean z = !tLRPC$TL_username.active;
                    tLRPC$TL_username.active = z;
                    chatEditTypeActivity.editableUsernameUpdated = Boolean.valueOf(z);
                } else {
                    final TLRPC$TL_channels_toggleUsername tLRPC$TL_channels_toggleUsername = new TLRPC$TL_channels_toggleUsername();
                    TLRPC$TL_inputChannel tLRPC$TL_inputChannel = new TLRPC$TL_inputChannel();
                    tLRPC$TL_inputChannel.channel_id = ChatEditTypeActivity.this.currentChat.f1602id;
                    tLRPC$TL_inputChannel.access_hash = ChatEditTypeActivity.this.currentChat.access_hash;
                    tLRPC$TL_channels_toggleUsername.channel = tLRPC$TL_inputChannel;
                    tLRPC$TL_channels_toggleUsername.username = tLRPC$TL_username.username;
                    final boolean z2 = tLRPC$TL_username.active;
                    tLRPC$TL_channels_toggleUsername.active = !z2;
                    ChatEditTypeActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_channels_toggleUsername, new RequestDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$1$$ExternalSyntheticLambda5
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            ChatEditTypeActivity.UsernamesListView.C43541.this.lambda$onItemClick$3(tLRPC$TL_channels_toggleUsername, tLRPC$TL_username, z2, tLObject, tLRPC$TL_error);
                        }
                    });
                    ChatEditTypeActivity.this.loadingUsernames.add(tLRPC$TL_username.username);
                    ((ChangeUsernameActivity.UsernameCell) view).setLoading(true);
                }
                ChatEditTypeActivity.this.checkDoneButton();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onItemClick$3(final TLRPC$TL_channels_toggleUsername tLRPC$TL_channels_toggleUsername, final TLRPC$TL_username tLRPC$TL_username, final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ChatEditTypeActivity.UsernamesListView.C43541.this.lambda$onItemClick$2(tLRPC$TL_channels_toggleUsername, tLObject, tLRPC$TL_username, z, tLRPC$TL_error);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onItemClick$2(TLRPC$TL_channels_toggleUsername tLRPC$TL_channels_toggleUsername, TLObject tLObject, final TLRPC$TL_username tLRPC$TL_username, final boolean z, TLRPC$TL_error tLRPC$TL_error) {
                ChatEditTypeActivity.this.loadingUsernames.remove(tLRPC$TL_channels_toggleUsername.username);
                if (tLObject instanceof TLRPC$TL_boolTrue) {
                    UsernamesListView.this.toggleUsername(tLRPC$TL_username, true ^ z);
                } else if (tLRPC$TL_error != null && "USERNAMES_ACTIVE_TOO_MUCH".equals(tLRPC$TL_error.text)) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$1$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            ChatEditTypeActivity.UsernamesListView.C43541.this.lambda$onItemClick$1(tLRPC$TL_username, z);
                        }
                    });
                } else {
                    UsernamesListView.this.toggleUsername(tLRPC$TL_username, z, true);
                    ChatEditTypeActivity.this.checkDoneButton();
                }
                ChatEditTypeActivity.this.getMessagesController().updateUsernameActiveness(ChatEditTypeActivity.this.currentChat, tLRPC$TL_username.username, tLRPC$TL_username.active);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onItemClick$1(final TLRPC$TL_username tLRPC$TL_username, final boolean z) {
                new AlertDialog.Builder(UsernamesListView.this.getContext(), ((RecyclerListView) UsernamesListView.this).resourcesProvider).setTitle(LocaleController.getString("UsernameActivateErrorTitle", C3632R.string.UsernameActivateErrorTitle)).setMessage(LocaleController.getString("UsernameActivateErrorMessage", C3632R.string.UsernameActivateErrorMessage)).setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$1$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ChatEditTypeActivity.UsernamesListView.C43541.this.lambda$onItemClick$0(tLRPC$TL_username, z, dialogInterface, i);
                    }
                }).show();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onItemClick$0(TLRPC$TL_username tLRPC$TL_username, boolean z, DialogInterface dialogInterface, int i) {
                UsernamesListView.this.toggleUsername(tLRPC$TL_username, z, true);
                ChatEditTypeActivity.this.checkDoneButton();
            }
        }

        public void toggleUsername(TLRPC$TL_username tLRPC$TL_username, boolean z) {
            toggleUsername(tLRPC$TL_username, z, false);
        }

        public void toggleUsername(TLRPC$TL_username tLRPC$TL_username, boolean z, boolean z2) {
            for (int i = 0; i < ChatEditTypeActivity.this.usernames.size(); i++) {
                if (ChatEditTypeActivity.this.usernames.get(i) == tLRPC$TL_username) {
                    toggleUsername(i + 1, z, z2);
                    return;
                }
            }
        }

        public void toggleUsername(int i, boolean z, boolean z2) {
            TLRPC$TL_username tLRPC$TL_username;
            int min;
            int i2 = i - 1;
            if (i2 < 0 || i2 >= ChatEditTypeActivity.this.usernames.size() || (tLRPC$TL_username = (TLRPC$TL_username) ChatEditTypeActivity.this.usernames.get(i2)) == null) {
                return;
            }
            int i3 = 0;
            int i4 = -1;
            if (tLRPC$TL_username.active != z) {
                tLRPC$TL_username.active = z;
                if (z) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= ChatEditTypeActivity.this.usernames.size()) {
                            i5 = -1;
                            break;
                        } else if (!((TLRPC$TL_username) ChatEditTypeActivity.this.usernames.get(i5)).active) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    if (i5 >= 0) {
                        min = Math.max(0, i5 - 1);
                        i4 = min + 1;
                    }
                } else {
                    int i6 = -1;
                    for (int i7 = 0; i7 < ChatEditTypeActivity.this.usernames.size(); i7++) {
                        if (((TLRPC$TL_username) ChatEditTypeActivity.this.usernames.get(i7)).active) {
                            i6 = i7;
                        }
                    }
                    if (i6 >= 0) {
                        min = Math.min(ChatEditTypeActivity.this.usernames.size() - 1, i6 + 1);
                        i4 = min + 1;
                    }
                }
            }
            while (true) {
                if (i3 >= getChildCount()) {
                    break;
                }
                View childAt = getChildAt(i3);
                if (getChildAdapterPosition(childAt) == i) {
                    if (z2) {
                        AndroidUtilities.shakeView(childAt);
                    }
                    if (childAt instanceof ChangeUsernameActivity.UsernameCell) {
                        ChangeUsernameActivity.UsernameCell usernameCell = (ChangeUsernameActivity.UsernameCell) childAt;
                        usernameCell.setLoading(ChatEditTypeActivity.this.loadingUsernames.contains(tLRPC$TL_username.username));
                        usernameCell.update();
                    }
                } else {
                    i3++;
                }
            }
            if (i4 < 0 || i == i4) {
                return;
            }
            this.adapter.moveElement(i, i4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(9999999, Integer.MIN_VALUE));
        }

        /* renamed from: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$TouchHelperCallback */
        /* loaded from: classes5.dex */
        public class TouchHelperCallback extends ItemTouchHelper.Callback {
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean isLongPressDragEnabled() {
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            }

            public TouchHelperCallback() {
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                if (viewHolder.getItemViewType() != 1 || !((ChangeUsernameActivity.UsernameCell) viewHolder.itemView).active) {
                    return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
                }
                return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                if (viewHolder.getItemViewType() == viewHolder2.getItemViewType()) {
                    View view = viewHolder2.itemView;
                    if (!(view instanceof ChangeUsernameActivity.UsernameCell) || ((ChangeUsernameActivity.UsernameCell) view).active) {
                        UsernamesListView.this.adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
                        return true;
                    }
                    return false;
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
                super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
                if (i == 0) {
                    ChatEditTypeActivity.this.ignoreScroll = false;
                    UsernamesListView.this.sendReorder();
                } else {
                    ChatEditTypeActivity.this.ignoreScroll = true;
                    UsernamesListView.this.cancelClickRunnables(false);
                    viewHolder.itemView.setPressed(true);
                }
                super.onSelectedChanged(viewHolder, i);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                super.clearView(recyclerView, viewHolder);
                viewHolder.itemView.setPressed(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendReorder() {
            if (!this.needReorder || ChatEditTypeActivity.this.currentChat == null) {
                return;
            }
            this.needReorder = false;
            TLRPC$TL_channels_reorderUsernames tLRPC$TL_channels_reorderUsernames = new TLRPC$TL_channels_reorderUsernames();
            TLRPC$TL_inputChannel tLRPC$TL_inputChannel = new TLRPC$TL_inputChannel();
            tLRPC$TL_inputChannel.channel_id = ChatEditTypeActivity.this.currentChat.f1602id;
            tLRPC$TL_inputChannel.access_hash = ChatEditTypeActivity.this.currentChat.access_hash;
            tLRPC$TL_channels_reorderUsernames.channel = tLRPC$TL_inputChannel;
            ArrayList<String> arrayList = new ArrayList<>();
            for (int i = 0; i < ChatEditTypeActivity.this.editableUsernames.size(); i++) {
                if (((TLRPC$TL_username) ChatEditTypeActivity.this.editableUsernames.get(i)).active) {
                    arrayList.add(((TLRPC$TL_username) ChatEditTypeActivity.this.editableUsernames.get(i)).username);
                }
            }
            for (int i2 = 0; i2 < ChatEditTypeActivity.this.usernames.size(); i2++) {
                if (((TLRPC$TL_username) ChatEditTypeActivity.this.usernames.get(i2)).active) {
                    arrayList.add(((TLRPC$TL_username) ChatEditTypeActivity.this.usernames.get(i2)).username);
                }
            }
            tLRPC$TL_channels_reorderUsernames.order = arrayList;
            ChatEditTypeActivity.this.getConnectionsManager().sendRequest(tLRPC$TL_channels_reorderUsernames, new RequestDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChatEditTypeActivity.UsernamesListView.lambda$sendReorder$0(tLObject, tLRPC$TL_error);
                }
            });
            updateChat();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$sendReorder$0(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
            boolean z = tLObject instanceof TLRPC$TL_boolTrue;
        }

        private void updateChat() {
            ChatEditTypeActivity.this.currentChat.usernames.clear();
            ChatEditTypeActivity.this.currentChat.usernames.addAll(ChatEditTypeActivity.this.editableUsernames);
            ChatEditTypeActivity.this.currentChat.usernames.addAll(ChatEditTypeActivity.this.usernames);
            ChatEditTypeActivity.this.getMessagesController().putChat(ChatEditTypeActivity.this.currentChat, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: org.telegram.ui.ChatEditTypeActivity$UsernamesListView$Adapter */
        /* loaded from: classes5.dex */
        public class Adapter extends RecyclerListView.SelectionAdapter {
            private Adapter() {
            }

            public void swapElements(int i, int i2) {
                int i3 = i - 1;
                int i4 = i2 - 1;
                if (i3 >= ChatEditTypeActivity.this.usernames.size() || i4 >= ChatEditTypeActivity.this.usernames.size()) {
                    return;
                }
                if (i != i2) {
                    UsernamesListView.this.needReorder = true;
                }
                swapListElements(ChatEditTypeActivity.this.usernames, i3, i4);
                notifyItemMoved(i, i2);
                int size = (ChatEditTypeActivity.this.usernames.size() + 1) - 1;
                if (i == size || i2 == size) {
                    notifyItemChanged(i, 3);
                    notifyItemChanged(i2, 3);
                }
            }

            private void swapListElements(List<TLRPC$TL_username> list, int i, int i2) {
                list.set(i, list.get(i2));
                list.set(i2, list.get(i));
            }

            public void moveElement(int i, int i2) {
                int i3 = i - 1;
                int i4 = i2 - 1;
                if (i3 >= ChatEditTypeActivity.this.usernames.size() || i4 >= ChatEditTypeActivity.this.usernames.size()) {
                    return;
                }
                ChatEditTypeActivity.this.usernames.add(i4, (TLRPC$TL_username) ChatEditTypeActivity.this.usernames.remove(i3));
                notifyItemMoved(i, i2);
                int i5 = 0;
                while (i5 < ChatEditTypeActivity.this.usernames.size()) {
                    i5++;
                    notifyItemChanged(i5);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return new RecyclerListView.Holder(new TextInfoPrivacyCell(UsernamesListView.this.getContext(), ((RecyclerListView) UsernamesListView.this).resourcesProvider));
                    }
                    return new RecyclerListView.Holder(new ChangeUsernameActivity.UsernameCell(UsernamesListView.this.getContext(), ((RecyclerListView) UsernamesListView.this).resourcesProvider) { // from class: org.telegram.ui.ChatEditTypeActivity.UsernamesListView.Adapter.1
                        @Override // org.telegram.p043ui.ChangeUsernameActivity.UsernameCell
                        protected String getUsernameEditable() {
                            if (ChatEditTypeActivity.this.usernameTextView == null) {
                                return null;
                            }
                            return ChatEditTypeActivity.this.usernameTextView.getText().toString();
                        }
                    });
                }
                return new RecyclerListView.Holder(new HeaderCell(UsernamesListView.this.getContext(), ((RecyclerListView) UsernamesListView.this).resourcesProvider));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                int itemViewType = viewHolder.getItemViewType();
                if (itemViewType == 0) {
                    ((HeaderCell) viewHolder.itemView).setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, ((RecyclerListView) UsernamesListView.this).resourcesProvider));
                    ((HeaderCell) viewHolder.itemView).setText(LocaleController.getString("UsernamesChannelHeader", C3632R.string.UsernamesChannelHeader));
                    return;
                }
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    ((TextInfoPrivacyCell) viewHolder.itemView).setText(LocaleController.getString("UsernamesChannelHelp", C3632R.string.UsernamesChannelHelp));
                    ((TextInfoPrivacyCell) viewHolder.itemView).setBackgroundDrawable(Theme.getThemedDrawableByKey(UsernamesListView.this.getContext(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    return;
                }
                TLRPC$TL_username tLRPC$TL_username = (TLRPC$TL_username) ChatEditTypeActivity.this.usernames.get(i - 1);
                if (((ChangeUsernameActivity.UsernameCell) viewHolder.itemView).editable) {
                    ChatEditTypeActivity.this.editableUsernameCell = null;
                }
                ((ChangeUsernameActivity.UsernameCell) viewHolder.itemView).set(tLRPC$TL_username, i < ChatEditTypeActivity.this.usernames.size(), false);
                if (tLRPC$TL_username == null || !tLRPC$TL_username.editable) {
                    return;
                }
                ChatEditTypeActivity.this.editableUsernameCell = (ChangeUsernameActivity.UsernameCell) viewHolder.itemView;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                if (i == 0) {
                    return 0;
                }
                return i <= ChatEditTypeActivity.this.usernames.size() ? 1 : 2;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return ChatEditTypeActivity.this.usernames.size() + 2;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 1;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int childAdapterPosition;
            int size = (ChatEditTypeActivity.this.usernames.size() + 1) - 1;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt != null && (childAdapterPosition = getChildAdapterPosition(childAt)) >= 1 && childAdapterPosition <= size) {
                    i = Math.min(childAt.getTop(), i);
                    i2 = Math.max(childAt.getBottom(), i2);
                }
            }
            if (i < i2) {
                this.backgroundPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider));
                canvas.drawRect(BitmapDescriptorFactory.HUE_RED, i, getWidth(), i2, this.backgroundPaint);
            }
            super.dispatchDraw(canvas);
        }
    }

    private boolean trySetRestrict() {
        TLRPC$Chat tLRPC$Chat = this.currentChat;
        if (tLRPC$Chat.noforwards != this.isSaveRestricted) {
            if (!ChatObject.isChannel(tLRPC$Chat)) {
                updateDoneProgress(true);
                getMessagesController().convertToMegaGroup(getParentActivity(), this.chatId, this, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda20
                    @Override // org.telegram.messenger.MessagesStorage.LongCallback
                    public final void run(long j) {
                        ChatEditTypeActivity.this.lambda$trySetRestrict$10(j);
                    }
                });
                return false;
            }
            MessagesController messagesController = getMessagesController();
            long j = this.chatId;
            TLRPC$Chat tLRPC$Chat2 = this.currentChat;
            boolean z = this.isSaveRestricted;
            tLRPC$Chat2.noforwards = z;
            messagesController.toggleChatNoForwards(j, z);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trySetRestrict$10(long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = getMessagesController().getChat(Long.valueOf(j));
            MessagesController messagesController = getMessagesController();
            long j2 = this.chatId;
            TLRPC$Chat tLRPC$Chat = this.currentChat;
            boolean z = this.isSaveRestricted;
            tLRPC$Chat.noforwards = z;
            messagesController.toggleChatNoForwards(j2, z);
            processDone();
        }
    }

    private boolean trySetUsername() {
        if (getParentActivity() == null) {
            return false;
        }
        String publicUsername = ChatObject.getPublicUsername(this.currentChat, true);
        if (!this.isPrivate && (((publicUsername == null && this.usernameTextView.length() != 0) || (publicUsername != null && !publicUsername.equalsIgnoreCase(this.usernameTextView.getText().toString()))) && this.usernameTextView.length() != 0 && !this.lastNameAvailable)) {
            Vibrator vibrator = (Vibrator) getParentActivity().getSystemService("vibrator");
            if (vibrator != null) {
                vibrator.vibrate(200L);
            }
            AndroidUtilities.shakeView(this.checkTextView);
            updateDoneProgress(false);
            return false;
        }
        if (publicUsername == null) {
            publicUsername = "";
        }
        String obj = this.isPrivate ? "" : this.usernameTextView.getText().toString();
        if (publicUsername.equals(obj)) {
            return tryDeactivateAllLinks();
        } else if (!ChatObject.isChannel(this.currentChat)) {
            getMessagesController().convertToMegaGroup(getParentActivity(), this.chatId, this, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda19
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j) {
                    ChatEditTypeActivity.this.lambda$trySetUsername$11(j);
                }
            });
            return false;
        } else {
            getMessagesController().updateChannelUserName(this, this.chatId, obj, new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ChatEditTypeActivity.this.lambda$trySetUsername$12();
                }
            }, new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    ChatEditTypeActivity.this.lambda$trySetUsername$13();
                }
            });
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trySetUsername$11(long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = getMessagesController().getChat(Long.valueOf(j));
            processDone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trySetUsername$12() {
        this.currentChat = getMessagesController().getChat(Long.valueOf(this.chatId));
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$trySetUsername$13() {
        updateDoneProgress(false);
    }

    private boolean tryDeactivateAllLinks() {
        ArrayList<TLRPC$TL_username> arrayList;
        if (!this.isPrivate || (arrayList = this.currentChat.usernames) == null || arrayList.isEmpty()) {
            return true;
        }
        if (this.deactivatingLinks) {
            return false;
        }
        this.deactivatingLinks = true;
        boolean z = false;
        for (int i = 0; i < this.currentChat.usernames.size(); i++) {
            TLRPC$TL_username tLRPC$TL_username = this.currentChat.usernames.get(i);
            if (tLRPC$TL_username != null && tLRPC$TL_username.active && !tLRPC$TL_username.editable) {
                z = true;
            }
        }
        if (z) {
            TLRPC$TL_channels_deactivateAllUsernames tLRPC$TL_channels_deactivateAllUsernames = new TLRPC$TL_channels_deactivateAllUsernames();
            tLRPC$TL_channels_deactivateAllUsernames.channel = MessagesController.getInputChannel(this.currentChat);
            getConnectionsManager().sendRequest(tLRPC$TL_channels_deactivateAllUsernames, new RequestDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda25
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChatEditTypeActivity.this.lambda$tryDeactivateAllLinks$15(tLObject, tLRPC$TL_error);
                }
            });
        } else {
            this.deactivatingLinks = false;
        }
        return !z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryDeactivateAllLinks$15(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                ChatEditTypeActivity.this.lambda$tryDeactivateAllLinks$14(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryDeactivateAllLinks$14(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            for (int i = 0; i < this.currentChat.usernames.size(); i++) {
                TLRPC$TL_username tLRPC$TL_username = this.currentChat.usernames.get(i);
                if (tLRPC$TL_username != null && tLRPC$TL_username.active && !tLRPC$TL_username.editable) {
                    tLRPC$TL_username.active = false;
                }
            }
        }
        this.deactivatingLinks = false;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                ChatEditTypeActivity.this.processDone();
            }
        });
    }

    private void loadAdminedChannels() {
        if (this.loadingAdminedChannels || this.adminnedChannelsLayout == null) {
            return;
        }
        this.loadingAdminedChannels = true;
        updatePrivatePublic();
        getConnectionsManager().sendRequest(new TLRPC$TL_channels_getAdminedPublicChannels(), new RequestDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatEditTypeActivity.this.lambda$loadAdminedChannels$22(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$22(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ChatEditTypeActivity.this.lambda$loadAdminedChannels$21(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$21(TLObject tLObject) {
        this.loadingAdminedChannels = false;
        if (tLObject == null || getParentActivity() == null) {
            return;
        }
        for (int i = 0; i < this.adminedChannelCells.size(); i++) {
            this.linearLayout.removeView(this.adminedChannelCells.get(i));
        }
        this.adminedChannelCells.clear();
        TLRPC$TL_messages_chats tLRPC$TL_messages_chats = (TLRPC$TL_messages_chats) tLObject;
        for (int i2 = 0; i2 < tLRPC$TL_messages_chats.chats.size(); i2++) {
            AdminedChannelCell adminedChannelCell = new AdminedChannelCell(getParentActivity(), new View.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChatEditTypeActivity.this.lambda$loadAdminedChannels$20(view);
                }
            }, false, 0);
            TLRPC$Chat tLRPC$Chat = tLRPC$TL_messages_chats.chats.get(i2);
            boolean z = true;
            if (i2 != tLRPC$TL_messages_chats.chats.size() - 1) {
                z = false;
            }
            adminedChannelCell.setChannel(tLRPC$Chat, z);
            this.adminedChannelCells.add(adminedChannelCell);
            this.adminnedChannelsLayout.addView(adminedChannelCell, LayoutHelper.createLinear(-1, 72));
        }
        updatePrivatePublic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$20(View view) {
        final TLRPC$Chat currentChannel = ((AdminedChannelCell) view.getParent()).getCurrentChannel();
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("AppName", C3632R.string.AppName));
        if (this.isChannel) {
            int i = C3632R.string.RevokeLinkAlertChannel;
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlertChannel", i, getMessagesController().linkPrefix + "/" + ChatObject.getPublicUsername(currentChannel), currentChannel.title)));
        } else {
            int i2 = C3632R.string.RevokeLinkAlert;
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlert", i2, getMessagesController().linkPrefix + "/" + ChatObject.getPublicUsername(currentChannel), currentChannel.title)));
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("RevokeButton", C3632R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                ChatEditTypeActivity.this.lambda$loadAdminedChannels$19(currentChannel, dialogInterface, i3);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$19(TLRPC$Chat tLRPC$Chat, DialogInterface dialogInterface, int i) {
        TLRPC$TL_channels_updateUsername tLRPC$TL_channels_updateUsername = new TLRPC$TL_channels_updateUsername();
        tLRPC$TL_channels_updateUsername.channel = MessagesController.getInputChannel(tLRPC$Chat);
        tLRPC$TL_channels_updateUsername.username = "";
        getConnectionsManager().sendRequest(tLRPC$TL_channels_updateUsername, new RequestDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda22
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatEditTypeActivity.this.lambda$loadAdminedChannels$18(tLObject, tLRPC$TL_error);
            }
        }, 64);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$18(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    ChatEditTypeActivity.this.lambda$loadAdminedChannels$17();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$17() {
        this.canCreatePublic = true;
        if (this.usernameTextView.length() > 0) {
            checkUserName(this.usernameTextView.getText().toString());
        }
        updatePrivatePublic();
    }

    private void updatePrivatePublic() {
        int i;
        String str;
        int i2;
        String str2;
        if (this.sectionCell2 == null) {
            return;
        }
        int i3 = 8;
        if (!this.isPrivate && !this.canCreatePublic && getUserConfig().isPremium()) {
            this.typeInfoCell.setText(LocaleController.getString("ChangePublicLimitReached", C3632R.string.ChangePublicLimitReached));
            TextInfoPrivacyCell textInfoPrivacyCell = this.typeInfoCell;
            int i4 = Theme.key_text_RedRegular;
            textInfoPrivacyCell.setTag(Integer.valueOf(i4));
            this.typeInfoCell.setTextColor(Theme.getColor(i4));
            this.linkContainer.setVisibility(8);
            this.checkTextView.setVisibility(8);
            this.sectionCell2.setVisibility(8);
            this.adminedInfoCell.setVisibility(0);
            if (this.loadingAdminedChannels) {
                this.loadingAdminedCell.setVisibility(0);
                this.adminnedChannelsLayout.setVisibility(8);
                this.typeInfoCell.setBackgroundDrawable(this.checkTextView.getVisibility() == 0 ? null : Theme.getThemedDrawableByKey(this.typeInfoCell.getContext(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                this.adminedInfoCell.setBackgroundDrawable(null);
            } else {
                ShadowSectionCell shadowSectionCell = this.adminedInfoCell;
                Context context = shadowSectionCell.getContext();
                int i5 = C3632R.C3634drawable.greydivider_bottom;
                int i6 = Theme.key_windowBackgroundGrayShadow;
                shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(context, i5, i6));
                TextInfoPrivacyCell textInfoPrivacyCell2 = this.typeInfoCell;
                textInfoPrivacyCell2.setBackgroundDrawable(Theme.getThemedDrawableByKey(textInfoPrivacyCell2.getContext(), C3632R.C3634drawable.greydivider_top, i6));
                this.loadingAdminedCell.setVisibility(8);
                this.adminnedChannelsLayout.setVisibility(0);
            }
        } else {
            TextInfoPrivacyCell textInfoPrivacyCell3 = this.typeInfoCell;
            int i7 = Theme.key_windowBackgroundWhiteGrayText4;
            textInfoPrivacyCell3.setTag(Integer.valueOf(i7));
            this.typeInfoCell.setTextColor(Theme.getColor(i7));
            if (this.isForcePublic) {
                this.sectionCell2.setVisibility(8);
            } else {
                this.sectionCell2.setVisibility(0);
            }
            this.adminedInfoCell.setVisibility(8);
            TextInfoPrivacyCell textInfoPrivacyCell4 = this.typeInfoCell;
            Context context2 = textInfoPrivacyCell4.getContext();
            int i8 = C3632R.C3634drawable.greydivider_bottom;
            int i9 = Theme.key_windowBackgroundGrayShadow;
            textInfoPrivacyCell4.setBackgroundDrawable(Theme.getThemedDrawableByKey(context2, i8, i9));
            this.adminnedChannelsLayout.setVisibility(8);
            this.linkContainer.setVisibility(0);
            this.loadingAdminedCell.setVisibility(8);
            if (this.isChannel) {
                TextInfoPrivacyCell textInfoPrivacyCell5 = this.typeInfoCell;
                if (this.isPrivate) {
                    i2 = C3632R.string.ChannelPrivateLinkHelp;
                    str2 = "ChannelPrivateLinkHelp";
                } else {
                    i2 = C3632R.string.ChannelUsernameHelp;
                    str2 = "ChannelUsernameHelp";
                }
                textInfoPrivacyCell5.setText(LocaleController.getString(str2, i2));
                this.headerCell.setText(this.isPrivate ? LocaleController.getString("ChannelInviteLinkTitle", C3632R.string.ChannelInviteLinkTitle) : LocaleController.getString("ChannelLinkTitle", C3632R.string.ChannelLinkTitle));
            } else {
                TextInfoPrivacyCell textInfoPrivacyCell6 = this.typeInfoCell;
                if (this.isPrivate) {
                    i = C3632R.string.MegaPrivateLinkHelp;
                    str = "MegaPrivateLinkHelp";
                } else {
                    i = C3632R.string.MegaUsernameHelp;
                    str = "MegaUsernameHelp";
                }
                textInfoPrivacyCell6.setText(LocaleController.getString(str, i));
                this.headerCell.setText(this.isPrivate ? LocaleController.getString("ChannelInviteLinkTitle", C3632R.string.ChannelInviteLinkTitle) : LocaleController.getString("ChannelLinkTitle", C3632R.string.ChannelLinkTitle));
            }
            this.publicContainer.setVisibility(this.isPrivate ? 8 : 0);
            this.privateContainer.setVisibility(this.isPrivate ? 0 : 8);
            this.saveContainer.setVisibility(0);
            this.manageLinksTextView.setVisibility(0);
            this.manageLinksInfoCell.setVisibility(0);
            this.linkContainer.setPadding(0, 0, 0, this.isPrivate ? 0 : AndroidUtilities.m107dp(7));
            LinkActionView linkActionView = this.permanentLinkView;
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = this.invite;
            linkActionView.setLink(tLRPC$TL_chatInviteExported != null ? tLRPC$TL_chatInviteExported.link : null);
            this.permanentLinkView.loadUsers(this.invite, this.chatId);
            TextInfoPrivacyCell textInfoPrivacyCell7 = this.checkTextView;
            textInfoPrivacyCell7.setVisibility((this.isPrivate || textInfoPrivacyCell7.length() == 0) ? 8 : 0);
            this.manageLinksInfoCell.setText(LocaleController.getString("ManageLinksInfoHelp", C3632R.string.ManageLinksInfoHelp));
            if (this.isPrivate) {
                TextInfoPrivacyCell textInfoPrivacyCell8 = this.typeInfoCell;
                textInfoPrivacyCell8.setBackgroundDrawable(Theme.getThemedDrawableByKey(textInfoPrivacyCell8.getContext(), C3632R.C3634drawable.greydivider, i9));
                this.manageLinksInfoCell.setBackground(Theme.getThemedDrawableByKey(this.typeInfoCell.getContext(), i8, i9));
            } else {
                this.typeInfoCell.setBackgroundDrawable(this.checkTextView.getVisibility() != 0 ? Theme.getThemedDrawableByKey(this.typeInfoCell.getContext(), i8, i9) : null);
            }
        }
        boolean z = true;
        this.radioButtonCell1.setChecked(!this.isPrivate, true);
        this.radioButtonCell2.setChecked(this.isPrivate, true);
        this.usernameTextView.clearFocus();
        JoinToSendSettingsView joinToSendSettingsView = this.joinContainer;
        if (joinToSendSettingsView != null) {
            joinToSendSettingsView.setVisibility((this.isChannel || this.isPrivate) ? 8 : 0);
            JoinToSendSettingsView joinToSendSettingsView2 = this.joinContainer;
            TLRPC$ChatFull tLRPC$ChatFull = this.info;
            if (tLRPC$ChatFull == null || tLRPC$ChatFull.linked_chat_id == 0) {
                z = false;
            }
            joinToSendSettingsView2.showJoinToSend(z);
        }
        UsernamesListView usernamesListView = this.usernamesListView;
        if (usernamesListView != null) {
            if (!this.isPrivate && !this.usernames.isEmpty()) {
                i3 = 0;
            }
            usernamesListView.setVisibility(i3);
        }
        checkDoneButton();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDoneButton() {
        if (this.isPrivate || this.usernameTextView.length() > 0 || hasActiveLink()) {
            this.doneButton.setEnabled(true);
            this.doneButton.setAlpha(1.0f);
            return;
        }
        this.doneButton.setEnabled(false);
        this.doneButton.setAlpha(0.5f);
    }

    public boolean hasActiveLink() {
        if (this.usernames == null) {
            return false;
        }
        for (int i = 0; i < this.usernames.size(); i++) {
            TLRPC$TL_username tLRPC$TL_username = this.usernames.get(i);
            if (tLRPC$TL_username != null && tLRPC$TL_username.active && !TextUtils.isEmpty(tLRPC$TL_username.username)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkUserName(final String str) {
        if (str != null && str.length() > 0) {
            this.checkTextView.setVisibility(0);
        } else {
            this.checkTextView.setVisibility(8);
        }
        this.typeInfoCell.setBackgroundDrawable(this.checkTextView.getVisibility() == 0 ? null : Theme.getThemedDrawableByKey(this.typeInfoCell.getContext(), C3632R.C3634drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
        Runnable runnable = this.checkRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.checkRunnable = null;
            this.lastCheckName = null;
            if (this.checkReqId != 0) {
                getConnectionsManager().cancelRequest(this.checkReqId, true);
            }
        }
        this.lastNameAvailable = false;
        if (str != null) {
            if (str.startsWith("_") || str.endsWith("_")) {
                this.checkTextView.setText(LocaleController.getString("LinkInvalid", C3632R.string.LinkInvalid));
                this.checkTextView.setTextColorByKey(Theme.key_text_RedRegular);
                return false;
            }
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (i == 0 && charAt >= '0' && charAt <= '9') {
                    if (this.isChannel) {
                        this.checkTextView.setText(LocaleController.getString("LinkInvalidStartNumber", C3632R.string.LinkInvalidStartNumber));
                    } else {
                        this.checkTextView.setText(LocaleController.getString("LinkInvalidStartNumberMega", C3632R.string.LinkInvalidStartNumberMega));
                    }
                    this.checkTextView.setTextColorByKey(Theme.key_text_RedRegular);
                    return false;
                } else if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && charAt != '_'))) {
                    this.checkTextView.setText(LocaleController.getString("LinkInvalid", C3632R.string.LinkInvalid));
                    this.checkTextView.setTextColorByKey(Theme.key_text_RedRegular);
                    return false;
                }
            }
        }
        if (str == null || str.length() < 4) {
            if (this.isChannel) {
                this.checkTextView.setText(LocaleController.getString("LinkInvalidShort", C3632R.string.LinkInvalidShort));
            } else {
                this.checkTextView.setText(LocaleController.getString("LinkInvalidShortMega", C3632R.string.LinkInvalidShortMega));
            }
            this.checkTextView.setTextColorByKey(Theme.key_text_RedRegular);
            return false;
        } else if (str.length() > 32) {
            this.checkTextView.setText(LocaleController.getString("LinkInvalidLong", C3632R.string.LinkInvalidLong));
            this.checkTextView.setTextColorByKey(Theme.key_text_RedRegular);
            return false;
        } else {
            this.checkTextView.setText(LocaleController.getString("LinkChecking", C3632R.string.LinkChecking));
            this.checkTextView.setTextColorByKey(Theme.key_windowBackgroundWhiteGrayText8);
            this.lastCheckName = str;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    ChatEditTypeActivity.this.lambda$checkUserName$25(str);
                }
            };
            this.checkRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 300L);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$25(final String str) {
        final TLRPC$TL_channels_checkUsername tLRPC$TL_channels_checkUsername = new TLRPC$TL_channels_checkUsername();
        tLRPC$TL_channels_checkUsername.username = str;
        tLRPC$TL_channels_checkUsername.channel = getMessagesController().getInputChannel(this.chatId);
        this.checkReqId = getConnectionsManager().sendRequest(tLRPC$TL_channels_checkUsername, new RequestDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatEditTypeActivity.this.lambda$checkUserName$24(str, tLRPC$TL_channels_checkUsername, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$24(final String str, final TLRPC$TL_channels_checkUsername tLRPC$TL_channels_checkUsername, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ChatEditTypeActivity.this.lambda$checkUserName$23(str, tLRPC$TL_error, tLObject, tLRPC$TL_channels_checkUsername);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$23(String str, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_channels_checkUsername tLRPC$TL_channels_checkUsername) {
        this.checkReqId = 0;
        String str2 = this.lastCheckName;
        if (str2 == null || !str2.equals(str)) {
            return;
        }
        if (tLRPC$TL_error == null && (tLObject instanceof TLRPC$TL_boolTrue)) {
            this.checkTextView.setText(LocaleController.formatString("LinkAvailable", C3632R.string.LinkAvailable, str));
            this.checkTextView.setTextColorByKey(Theme.key_windowBackgroundWhiteGreenText);
            this.lastNameAvailable = true;
            return;
        }
        if (tLRPC$TL_error != null && "USERNAME_INVALID".equals(tLRPC$TL_error.text) && tLRPC$TL_channels_checkUsername.username.length() == 4) {
            this.checkTextView.setText(LocaleController.getString("UsernameInvalidShort", C3632R.string.UsernameInvalidShort));
            this.checkTextView.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
        } else if (tLRPC$TL_error != null && "USERNAME_PURCHASE_AVAILABLE".equals(tLRPC$TL_error.text)) {
            if (tLRPC$TL_channels_checkUsername.username.length() == 4) {
                this.checkTextView.setText(LocaleController.getString("UsernameInvalidShortPurchase", C3632R.string.UsernameInvalidShortPurchase));
            } else {
                this.checkTextView.setText(LocaleController.getString("UsernameInUsePurchase", C3632R.string.UsernameInUsePurchase));
            }
            this.checkTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText8));
        } else if (tLRPC$TL_error != null && "CHANNELS_ADMIN_PUBLIC_TOO_MUCH".equals(tLRPC$TL_error.text)) {
            this.canCreatePublic = false;
            showPremiumIncreaseLimitDialog();
        } else {
            this.checkTextView.setText(LocaleController.getString("LinkInUse", C3632R.string.LinkInUse));
            this.checkTextView.setTextColorByKey(Theme.key_text_RedRegular);
        }
        this.lastNameAvailable = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void generateLink(final boolean z) {
        TLRPC$TL_messages_exportChatInvite tLRPC$TL_messages_exportChatInvite = new TLRPC$TL_messages_exportChatInvite();
        tLRPC$TL_messages_exportChatInvite.legacy_revoke_permanent = true;
        tLRPC$TL_messages_exportChatInvite.peer = getMessagesController().getInputPeer(-this.chatId);
        getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tLRPC$TL_messages_exportChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda27
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatEditTypeActivity.this.lambda$generateLink$27(z, tLObject, tLRPC$TL_error);
            }
        }), this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$27(final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                ChatEditTypeActivity.this.lambda$generateLink$26(tLRPC$TL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$26(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, boolean z) {
        if (tLRPC$TL_error == null) {
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = (TLRPC$TL_chatInviteExported) tLObject;
            this.invite = tLRPC$TL_chatInviteExported;
            TLRPC$ChatFull tLRPC$ChatFull = this.info;
            if (tLRPC$ChatFull != null) {
                tLRPC$ChatFull.exported_invite = tLRPC$TL_chatInviteExported;
            }
            if (z) {
                if (getParentActivity() == null) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                builder.setMessage(LocaleController.getString("RevokeAlertNewLink", C3632R.string.RevokeAlertNewLink));
                builder.setTitle(LocaleController.getString("RevokeLink", C3632R.string.RevokeLink));
                builder.setNegativeButton(LocaleController.getString("OK", C3632R.string.OK), null);
                showDialog(builder.create());
            }
        }
        LinkActionView linkActionView = this.permanentLinkView;
        if (linkActionView != null) {
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported2 = this.invite;
            linkActionView.setLink(tLRPC$TL_chatInviteExported2 != null ? tLRPC$TL_chatInviteExported2.link : null);
            this.permanentLinkView.loadUsers(this.invite, this.chatId);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ChatEditTypeActivity$$ExternalSyntheticLambda28
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ChatEditTypeActivity.this.lambda$getThemeDescriptions$28();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        int i = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.sectionCell2, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.infoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i));
        int i2 = Theme.key_windowBackgroundWhiteGrayText4;
        arrayList.add(new ThemeDescription(this.infoCell, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        TextSettingsCell textSettingsCell = this.textCell;
        int i3 = ThemeDescription.FLAG_SELECTOR;
        int i4 = Theme.key_listSelector;
        arrayList.add(new ThemeDescription(textSettingsCell, i3, null, null, null, null, i4));
        int i5 = Theme.key_text_RedRegular;
        arrayList.add(new ThemeDescription(this.textCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.textCell2, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i4));
        int i6 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.textCell2, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.usernameTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i6));
        EditTextBoldCursor editTextBoldCursor = this.usernameTextView;
        int i7 = ThemeDescription.FLAG_HINTTEXTCOLOR;
        int i8 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(editTextBoldCursor, i7, null, null, null, null, i8));
        LinearLayout linearLayout = this.linearLayoutTypeContainer;
        int i9 = ThemeDescription.FLAG_BACKGROUND;
        int i10 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(linearLayout, i9, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.linkContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i10));
        int i11 = Theme.key_windowBackgroundWhiteBlueHeader;
        arrayList.add(new ThemeDescription(this.headerCell, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
        arrayList.add(new ThemeDescription(this.headerCell2, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
        arrayList.add(new ThemeDescription(this.saveHeaderCell, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.saveRestrictCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.saveRestrictCell, 0, new Class[]{TextCheckCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.saveRestrictCell, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrack));
        arrayList.add(new ThemeDescription(this.saveRestrictCell, 0, new Class[]{TextCheckCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switchTrackChecked));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText8));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGreenText));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.manageLinksInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.manageLinksInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.manageLinksInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.saveRestrictInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.saveRestrictInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.saveRestrictInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.adminedInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.loadingAdminedCell, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i4));
        int i12 = Theme.key_radioBackground;
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i12));
        int i13 = Theme.key_radioBackgroundChecked;
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        int i14 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i12));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        int i15 = Theme.key_windowBackgroundWhiteGrayText;
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_LINKCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteLinkText));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"deleteButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
        arrayList.add(new ThemeDescription(null, 0, null, null, Theme.avatarDrawables, themeDescriptionDelegate, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.manageLinksTextView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.manageLinksTextView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.manageLinksTextView, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$28() {
        LinearLayout linearLayout = this.adminnedChannelsLayout;
        if (linearLayout != null) {
            int childCount = linearLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.adminnedChannelsLayout.getChildAt(i);
                if (childAt instanceof AdminedChannelCell) {
                    ((AdminedChannelCell) childAt).update();
                }
            }
        }
        this.permanentLinkView.updateColors();
        this.manageLinksTextView.setBackgroundDrawable(Theme.getSelectorDrawable(true));
        InviteLinkBottomSheet inviteLinkBottomSheet = this.inviteLinkBottomSheet;
        if (inviteLinkBottomSheet != null) {
            inviteLinkBottomSheet.updateColors();
        }
    }
}
