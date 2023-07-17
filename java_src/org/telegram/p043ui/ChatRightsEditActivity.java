package org.telegram.p043ui;

import android.animation.ValueAnimator;
import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserObject;
import org.telegram.p043ui.ActionBar.ActionBarMenu;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.ActionBar.ThemeDescription;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Cells.DialogRadioCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.PollEditTextCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.Cells.TextCheckCell2;
import org.telegram.p043ui.Cells.TextDetailCell;
import org.telegram.p043ui.Cells.TextInfoPrivacyCell;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Cells.UserCell2;
import org.telegram.p043ui.ChatRightsEditActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.CircularProgressDrawable;
import org.telegram.p043ui.Components.CrossfadeDrawable;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.TwoStepVerificationActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$InputCheckPasswordSRP;
import org.telegram.tgnet.TLRPC$TL_account_getPassword;
import org.telegram.tgnet.TLRPC$TL_channels_editCreator;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputChannel;
import org.telegram.tgnet.TLRPC$TL_inputChannelEmpty;
import org.telegram.tgnet.TLRPC$TL_inputCheckPasswordEmpty;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$account_Password;
/* renamed from: org.telegram.ui.ChatRightsEditActivity */
/* loaded from: classes5.dex */
public class ChatRightsEditActivity extends BaseFragment {
    private int addAdminsRow;
    private FrameLayout addBotButton;
    private FrameLayout addBotButtonContainer;
    private int addBotButtonRow;
    private AnimatedTextView addBotButtonText;
    private int addUsersRow;
    private TLRPC$TL_chatAdminRights adminRights;
    private int anonymousRow;
    private boolean asAdmin;
    private ValueAnimator asAdminAnimator;
    private float asAdminT;
    private int banUsersRow;
    private TLRPC$TL_chatBannedRights bannedRights;
    private String botHash;
    private boolean canEdit;
    private int cantEditInfoRow;
    private int changeInfoRow;
    private long chatId;
    private String currentBannedRights;
    private TLRPC$Chat currentChat;
    private String currentRank;
    private int currentType;
    private TLRPC$User currentUser;
    private TLRPC$TL_chatBannedRights defaultBannedRights;
    private ChatRightsEditActivityDelegate delegate;
    private int deleteMessagesRow;
    private CrossfadeDrawable doneDrawable;
    private ValueAnimator doneDrawableAnimator;
    private int editMesagesRow;
    private int embedLinksRow;
    private boolean initialAsAdmin;
    private boolean initialIsSet;
    private String initialRank;
    private boolean isAddingNew;
    private boolean isChannel;
    private boolean isForum;
    private LinearLayoutManager linearLayoutManager;
    private RecyclerListView listView;
    private ListAdapter listViewAdapter;
    private boolean loading = false;
    private int manageRow;
    private int manageTopicsRow;
    private TLRPC$TL_chatAdminRights myAdminRights;
    private int pinMessagesRow;
    private int postMessagesRow;
    private PollEditTextCell rankEditTextCell;
    private int rankHeaderRow;
    private int rankInfoRow;
    private int rankRow;
    private int removeAdminRow;
    private int removeAdminShadowRow;
    private int rightsShadowRow;
    private int rowCount;
    private int sendFilesRow;
    private int sendGamesRow;
    private int sendGifsRow;
    private int sendInlineRow;
    private boolean sendMediaExpanded;
    private int sendMediaRow;
    private int sendMessagesRow;
    private int sendMusicRow;
    private int sendPhotosRow;
    private int sendPollsRow;
    private int sendRoundRow;
    private int sendStickersRow;
    private int sendVideosRow;
    private int sendVoiceRow;
    private int startVoiceChatRow;
    private int transferOwnerRow;
    private int transferOwnerShadowRow;
    private int untilDateRow;
    private int untilSectionRow;

    /* renamed from: org.telegram.ui.ChatRightsEditActivity$ChatRightsEditActivityDelegate */
    /* loaded from: classes5.dex */
    public interface ChatRightsEditActivityDelegate {
        void didChangeOwner(TLRPC$User tLRPC$User);

        void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$1(DialogInterface dialogInterface, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$3(DialogInterface dialogInterface, int i) {
    }

    public ChatRightsEditActivity(long j, long j2, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2, String str, int i, boolean z, boolean z2, String str2) {
        boolean z3;
        boolean z4;
        TLRPC$UserFull userFull;
        TLRPC$Chat tLRPC$Chat;
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2 = tLRPC$TL_chatAdminRights;
        float f = BitmapDescriptorFactory.HUE_RED;
        this.asAdminT = BitmapDescriptorFactory.HUE_RED;
        this.asAdmin = false;
        this.initialAsAdmin = false;
        this.currentBannedRights = "";
        this.isAddingNew = z2;
        this.chatId = j2;
        this.currentUser = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
        this.currentType = i;
        this.canEdit = z;
        this.botHash = str2;
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chatId));
        this.currentChat = chat;
        String str3 = str != null ? str : "";
        this.currentRank = str3;
        this.initialRank = str3;
        boolean z5 = true;
        if (chat != null) {
            this.isChannel = ChatObject.isChannel(chat) && !this.currentChat.megagroup;
            this.isForum = ChatObject.isForum(this.currentChat);
            this.myAdminRights = this.currentChat.admin_rights;
        }
        if (this.myAdminRights == null) {
            this.myAdminRights = emptyAdminRights(this.currentType != 2 || ((tLRPC$Chat = this.currentChat) != null && tLRPC$Chat.creator));
        }
        if (i == 0 || i == 2) {
            if (i == 2 && (userFull = getMessagesController().getUserFull(j)) != null) {
                TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights3 = this.isChannel ? userFull.bot_broadcast_admin_rights : userFull.bot_group_admin_rights;
                if (tLRPC$TL_chatAdminRights3 != null) {
                    if (tLRPC$TL_chatAdminRights2 == null) {
                        tLRPC$TL_chatAdminRights2 = tLRPC$TL_chatAdminRights3;
                    } else {
                        tLRPC$TL_chatAdminRights2.ban_users = tLRPC$TL_chatAdminRights2.ban_users || tLRPC$TL_chatAdminRights3.ban_users;
                        tLRPC$TL_chatAdminRights2.add_admins = tLRPC$TL_chatAdminRights2.add_admins || tLRPC$TL_chatAdminRights3.add_admins;
                        tLRPC$TL_chatAdminRights2.post_messages = tLRPC$TL_chatAdminRights2.post_messages || tLRPC$TL_chatAdminRights3.post_messages;
                        tLRPC$TL_chatAdminRights2.pin_messages = tLRPC$TL_chatAdminRights2.pin_messages || tLRPC$TL_chatAdminRights3.pin_messages;
                        tLRPC$TL_chatAdminRights2.delete_messages = tLRPC$TL_chatAdminRights2.delete_messages || tLRPC$TL_chatAdminRights3.delete_messages;
                        tLRPC$TL_chatAdminRights2.change_info = tLRPC$TL_chatAdminRights2.change_info || tLRPC$TL_chatAdminRights3.change_info;
                        tLRPC$TL_chatAdminRights2.anonymous = tLRPC$TL_chatAdminRights2.anonymous || tLRPC$TL_chatAdminRights3.anonymous;
                        tLRPC$TL_chatAdminRights2.edit_messages = tLRPC$TL_chatAdminRights2.edit_messages || tLRPC$TL_chatAdminRights3.edit_messages;
                        tLRPC$TL_chatAdminRights2.manage_call = tLRPC$TL_chatAdminRights2.manage_call || tLRPC$TL_chatAdminRights3.manage_call;
                        tLRPC$TL_chatAdminRights2.manage_topics = tLRPC$TL_chatAdminRights2.manage_topics || tLRPC$TL_chatAdminRights3.manage_topics;
                        tLRPC$TL_chatAdminRights2.other = tLRPC$TL_chatAdminRights2.other || tLRPC$TL_chatAdminRights3.other;
                    }
                }
            }
            if (tLRPC$TL_chatAdminRights2 == null) {
                this.initialAsAdmin = false;
                if (i == 2) {
                    this.adminRights = emptyAdminRights(false);
                    boolean z6 = this.isChannel;
                    this.asAdmin = z6;
                    this.asAdminT = z6 ? 1.0f : f;
                    this.initialIsSet = false;
                } else {
                    TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights4 = new TLRPC$TL_chatAdminRights();
                    this.adminRights = tLRPC$TL_chatAdminRights4;
                    TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights5 = this.myAdminRights;
                    tLRPC$TL_chatAdminRights4.change_info = tLRPC$TL_chatAdminRights5.change_info;
                    tLRPC$TL_chatAdminRights4.post_messages = tLRPC$TL_chatAdminRights5.post_messages;
                    tLRPC$TL_chatAdminRights4.edit_messages = tLRPC$TL_chatAdminRights5.edit_messages;
                    tLRPC$TL_chatAdminRights4.delete_messages = tLRPC$TL_chatAdminRights5.delete_messages;
                    tLRPC$TL_chatAdminRights4.manage_call = tLRPC$TL_chatAdminRights5.manage_call;
                    tLRPC$TL_chatAdminRights4.ban_users = tLRPC$TL_chatAdminRights5.ban_users;
                    tLRPC$TL_chatAdminRights4.invite_users = tLRPC$TL_chatAdminRights5.invite_users;
                    tLRPC$TL_chatAdminRights4.pin_messages = tLRPC$TL_chatAdminRights5.pin_messages;
                    tLRPC$TL_chatAdminRights4.manage_topics = tLRPC$TL_chatAdminRights5.manage_topics;
                    tLRPC$TL_chatAdminRights4.other = tLRPC$TL_chatAdminRights5.other;
                    this.initialIsSet = false;
                }
            } else {
                this.initialAsAdmin = true;
                TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights6 = new TLRPC$TL_chatAdminRights();
                this.adminRights = tLRPC$TL_chatAdminRights6;
                boolean z7 = tLRPC$TL_chatAdminRights2.change_info;
                tLRPC$TL_chatAdminRights6.change_info = z7;
                boolean z8 = tLRPC$TL_chatAdminRights2.post_messages;
                tLRPC$TL_chatAdminRights6.post_messages = z8;
                boolean z9 = tLRPC$TL_chatAdminRights2.edit_messages;
                tLRPC$TL_chatAdminRights6.edit_messages = z9;
                boolean z10 = tLRPC$TL_chatAdminRights2.delete_messages;
                tLRPC$TL_chatAdminRights6.delete_messages = z10;
                boolean z11 = tLRPC$TL_chatAdminRights2.manage_call;
                tLRPC$TL_chatAdminRights6.manage_call = z11;
                boolean z12 = tLRPC$TL_chatAdminRights2.ban_users;
                tLRPC$TL_chatAdminRights6.ban_users = z12;
                boolean z13 = tLRPC$TL_chatAdminRights2.invite_users;
                tLRPC$TL_chatAdminRights6.invite_users = z13;
                boolean z14 = tLRPC$TL_chatAdminRights2.pin_messages;
                tLRPC$TL_chatAdminRights6.pin_messages = z14;
                boolean z15 = tLRPC$TL_chatAdminRights2.manage_topics;
                tLRPC$TL_chatAdminRights6.manage_topics = z15;
                boolean z16 = tLRPC$TL_chatAdminRights2.add_admins;
                tLRPC$TL_chatAdminRights6.add_admins = z16;
                boolean z17 = tLRPC$TL_chatAdminRights2.anonymous;
                tLRPC$TL_chatAdminRights6.anonymous = z17;
                boolean z18 = tLRPC$TL_chatAdminRights2.other;
                tLRPC$TL_chatAdminRights6.other = z18;
                boolean z19 = z7 || z8 || z9 || z10 || z12 || z13 || z14 || z16 || z11 || z17 || z15 || z18;
                this.initialIsSet = z19;
                if (i == 2) {
                    boolean z20 = this.isChannel || z19;
                    this.asAdmin = z20;
                    this.asAdminT = z20 ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                    this.initialIsSet = false;
                }
            }
            TLRPC$Chat tLRPC$Chat2 = this.currentChat;
            if (tLRPC$Chat2 != null) {
                this.defaultBannedRights = tLRPC$Chat2.default_banned_rights;
            }
            if (this.defaultBannedRights == null) {
                TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights3 = new TLRPC$TL_chatBannedRights();
                this.defaultBannedRights = tLRPC$TL_chatBannedRights3;
                tLRPC$TL_chatBannedRights3.send_roundvideos = false;
                tLRPC$TL_chatBannedRights3.send_voices = false;
                tLRPC$TL_chatBannedRights3.send_docs = false;
                tLRPC$TL_chatBannedRights3.send_audios = false;
                tLRPC$TL_chatBannedRights3.send_photos = false;
                tLRPC$TL_chatBannedRights3.send_videos = false;
                tLRPC$TL_chatBannedRights3.send_plain = false;
                tLRPC$TL_chatBannedRights3.manage_topics = false;
                tLRPC$TL_chatBannedRights3.pin_messages = false;
                tLRPC$TL_chatBannedRights3.change_info = false;
                tLRPC$TL_chatBannedRights3.invite_users = false;
                tLRPC$TL_chatBannedRights3.send_polls = false;
                tLRPC$TL_chatBannedRights3.send_inline = false;
                tLRPC$TL_chatBannedRights3.send_games = false;
                tLRPC$TL_chatBannedRights3.send_gifs = false;
                tLRPC$TL_chatBannedRights3.send_stickers = false;
                tLRPC$TL_chatBannedRights3.embed_links = false;
                tLRPC$TL_chatBannedRights3.send_messages = false;
                tLRPC$TL_chatBannedRights3.send_media = false;
                tLRPC$TL_chatBannedRights3.view_messages = false;
            }
            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights4 = this.defaultBannedRights;
            if (tLRPC$TL_chatBannedRights4.change_info || this.isChannel) {
                z3 = true;
            } else {
                z3 = true;
                this.adminRights.change_info = true;
            }
            if (!tLRPC$TL_chatBannedRights4.pin_messages) {
                this.adminRights.pin_messages = z3;
            }
            z4 = false;
        } else {
            if (i == 1) {
                this.defaultBannedRights = tLRPC$TL_chatBannedRights;
                if (tLRPC$TL_chatBannedRights == null) {
                    TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights5 = new TLRPC$TL_chatBannedRights();
                    this.defaultBannedRights = tLRPC$TL_chatBannedRights5;
                    tLRPC$TL_chatBannedRights5.send_roundvideos = false;
                    tLRPC$TL_chatBannedRights5.send_voices = false;
                    tLRPC$TL_chatBannedRights5.send_docs = false;
                    tLRPC$TL_chatBannedRights5.send_audios = false;
                    tLRPC$TL_chatBannedRights5.send_photos = false;
                    tLRPC$TL_chatBannedRights5.send_videos = false;
                    tLRPC$TL_chatBannedRights5.send_plain = false;
                    tLRPC$TL_chatBannedRights5.manage_topics = false;
                    tLRPC$TL_chatBannedRights5.pin_messages = false;
                    tLRPC$TL_chatBannedRights5.change_info = false;
                    tLRPC$TL_chatBannedRights5.invite_users = false;
                    tLRPC$TL_chatBannedRights5.send_polls = false;
                    tLRPC$TL_chatBannedRights5.send_inline = false;
                    tLRPC$TL_chatBannedRights5.send_games = false;
                    tLRPC$TL_chatBannedRights5.send_gifs = false;
                    tLRPC$TL_chatBannedRights5.send_stickers = false;
                    tLRPC$TL_chatBannedRights5.embed_links = false;
                    tLRPC$TL_chatBannedRights5.send_messages = false;
                    tLRPC$TL_chatBannedRights5.send_media = false;
                    tLRPC$TL_chatBannedRights5.view_messages = false;
                }
                TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights6 = new TLRPC$TL_chatBannedRights();
                this.bannedRights = tLRPC$TL_chatBannedRights6;
                if (tLRPC$TL_chatBannedRights2 == null) {
                    tLRPC$TL_chatBannedRights6.manage_topics = false;
                    tLRPC$TL_chatBannedRights6.pin_messages = false;
                    tLRPC$TL_chatBannedRights6.change_info = false;
                    tLRPC$TL_chatBannedRights6.invite_users = false;
                    tLRPC$TL_chatBannedRights6.send_polls = false;
                    tLRPC$TL_chatBannedRights6.send_inline = false;
                    tLRPC$TL_chatBannedRights6.send_games = false;
                    tLRPC$TL_chatBannedRights6.send_gifs = false;
                    tLRPC$TL_chatBannedRights6.send_stickers = false;
                    tLRPC$TL_chatBannedRights6.embed_links = false;
                    tLRPC$TL_chatBannedRights6.send_messages = false;
                    tLRPC$TL_chatBannedRights6.send_media = false;
                    tLRPC$TL_chatBannedRights6.view_messages = false;
                } else {
                    tLRPC$TL_chatBannedRights6.view_messages = tLRPC$TL_chatBannedRights2.view_messages;
                    tLRPC$TL_chatBannedRights6.send_messages = tLRPC$TL_chatBannedRights2.send_messages;
                    tLRPC$TL_chatBannedRights6.send_media = tLRPC$TL_chatBannedRights2.send_media;
                    tLRPC$TL_chatBannedRights6.send_stickers = tLRPC$TL_chatBannedRights2.send_stickers;
                    tLRPC$TL_chatBannedRights6.send_gifs = tLRPC$TL_chatBannedRights2.send_gifs;
                    tLRPC$TL_chatBannedRights6.send_games = tLRPC$TL_chatBannedRights2.send_games;
                    tLRPC$TL_chatBannedRights6.send_inline = tLRPC$TL_chatBannedRights2.send_inline;
                    tLRPC$TL_chatBannedRights6.embed_links = tLRPC$TL_chatBannedRights2.embed_links;
                    tLRPC$TL_chatBannedRights6.send_polls = tLRPC$TL_chatBannedRights2.send_polls;
                    tLRPC$TL_chatBannedRights6.invite_users = tLRPC$TL_chatBannedRights2.invite_users;
                    tLRPC$TL_chatBannedRights6.change_info = tLRPC$TL_chatBannedRights2.change_info;
                    tLRPC$TL_chatBannedRights6.pin_messages = tLRPC$TL_chatBannedRights2.pin_messages;
                    tLRPC$TL_chatBannedRights6.until_date = tLRPC$TL_chatBannedRights2.until_date;
                    tLRPC$TL_chatBannedRights6.manage_topics = tLRPC$TL_chatBannedRights2.manage_topics;
                    tLRPC$TL_chatBannedRights6.send_photos = tLRPC$TL_chatBannedRights2.send_photos;
                    tLRPC$TL_chatBannedRights6.send_videos = tLRPC$TL_chatBannedRights2.send_videos;
                    tLRPC$TL_chatBannedRights6.send_roundvideos = tLRPC$TL_chatBannedRights2.send_roundvideos;
                    tLRPC$TL_chatBannedRights6.send_audios = tLRPC$TL_chatBannedRights2.send_audios;
                    tLRPC$TL_chatBannedRights6.send_voices = tLRPC$TL_chatBannedRights2.send_voices;
                    tLRPC$TL_chatBannedRights6.send_docs = tLRPC$TL_chatBannedRights2.send_docs;
                    tLRPC$TL_chatBannedRights6.send_plain = tLRPC$TL_chatBannedRights2.send_plain;
                }
                TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights7 = this.defaultBannedRights;
                if (tLRPC$TL_chatBannedRights7.view_messages) {
                    tLRPC$TL_chatBannedRights6.view_messages = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_messages) {
                    tLRPC$TL_chatBannedRights6.send_messages = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_media) {
                    tLRPC$TL_chatBannedRights6.send_media = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_stickers) {
                    tLRPC$TL_chatBannedRights6.send_stickers = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_gifs) {
                    tLRPC$TL_chatBannedRights6.send_gifs = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_games) {
                    tLRPC$TL_chatBannedRights6.send_games = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_inline) {
                    tLRPC$TL_chatBannedRights6.send_inline = true;
                }
                if (tLRPC$TL_chatBannedRights7.embed_links) {
                    tLRPC$TL_chatBannedRights6.embed_links = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_polls) {
                    tLRPC$TL_chatBannedRights6.send_polls = true;
                }
                if (tLRPC$TL_chatBannedRights7.invite_users) {
                    tLRPC$TL_chatBannedRights6.invite_users = true;
                }
                if (tLRPC$TL_chatBannedRights7.change_info) {
                    tLRPC$TL_chatBannedRights6.change_info = true;
                }
                if (tLRPC$TL_chatBannedRights7.pin_messages) {
                    tLRPC$TL_chatBannedRights6.pin_messages = true;
                }
                if (tLRPC$TL_chatBannedRights7.manage_topics) {
                    tLRPC$TL_chatBannedRights6.manage_topics = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_photos) {
                    tLRPC$TL_chatBannedRights6.send_photos = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_videos) {
                    tLRPC$TL_chatBannedRights6.send_videos = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_audios) {
                    tLRPC$TL_chatBannedRights6.send_audios = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_docs) {
                    tLRPC$TL_chatBannedRights6.send_docs = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_voices) {
                    tLRPC$TL_chatBannedRights6.send_voices = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_roundvideos) {
                    tLRPC$TL_chatBannedRights6.send_roundvideos = true;
                }
                if (tLRPC$TL_chatBannedRights7.send_plain) {
                    tLRPC$TL_chatBannedRights6.send_plain = true;
                }
                this.currentBannedRights = ChatObject.getBannedRightsString(tLRPC$TL_chatBannedRights6);
                if (tLRPC$TL_chatBannedRights2 != null && tLRPC$TL_chatBannedRights2.view_messages) {
                    z5 = false;
                }
                this.initialIsSet = z5;
            }
            z4 = false;
        }
        updateRows(z4);
    }

    public static TLRPC$TL_chatAdminRights rightsOR(TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2) {
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights3 = new TLRPC$TL_chatAdminRights();
        boolean z = false;
        tLRPC$TL_chatAdminRights3.change_info = tLRPC$TL_chatAdminRights.change_info || tLRPC$TL_chatAdminRights2.change_info;
        tLRPC$TL_chatAdminRights3.post_messages = tLRPC$TL_chatAdminRights.post_messages || tLRPC$TL_chatAdminRights2.post_messages;
        tLRPC$TL_chatAdminRights3.edit_messages = tLRPC$TL_chatAdminRights.edit_messages || tLRPC$TL_chatAdminRights2.edit_messages;
        tLRPC$TL_chatAdminRights3.delete_messages = tLRPC$TL_chatAdminRights.delete_messages || tLRPC$TL_chatAdminRights2.delete_messages;
        tLRPC$TL_chatAdminRights3.ban_users = tLRPC$TL_chatAdminRights.ban_users || tLRPC$TL_chatAdminRights2.ban_users;
        tLRPC$TL_chatAdminRights3.invite_users = tLRPC$TL_chatAdminRights.invite_users || tLRPC$TL_chatAdminRights2.invite_users;
        tLRPC$TL_chatAdminRights3.pin_messages = tLRPC$TL_chatAdminRights.pin_messages || tLRPC$TL_chatAdminRights2.pin_messages;
        tLRPC$TL_chatAdminRights3.add_admins = tLRPC$TL_chatAdminRights.add_admins || tLRPC$TL_chatAdminRights2.add_admins;
        tLRPC$TL_chatAdminRights3.manage_call = tLRPC$TL_chatAdminRights.manage_call || tLRPC$TL_chatAdminRights2.manage_call;
        if (tLRPC$TL_chatAdminRights.manage_topics || tLRPC$TL_chatAdminRights2.manage_topics) {
            z = true;
        }
        tLRPC$TL_chatAdminRights3.manage_topics = z;
        return tLRPC$TL_chatAdminRights3;
    }

    public static TLRPC$TL_chatAdminRights emptyAdminRights(boolean z) {
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = new TLRPC$TL_chatAdminRights();
        tLRPC$TL_chatAdminRights.manage_topics = z;
        tLRPC$TL_chatAdminRights.manage_call = z;
        tLRPC$TL_chatAdminRights.add_admins = z;
        tLRPC$TL_chatAdminRights.pin_messages = z;
        tLRPC$TL_chatAdminRights.invite_users = z;
        tLRPC$TL_chatAdminRights.ban_users = z;
        tLRPC$TL_chatAdminRights.delete_messages = z;
        tLRPC$TL_chatAdminRights.edit_messages = z;
        tLRPC$TL_chatAdminRights.post_messages = z;
        tLRPC$TL_chatAdminRights.change_info = z;
        return tLRPC$TL_chatAdminRights;
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public View createView(final Context context) {
        this.actionBar.setBackButtonImage(C3417R.C3419drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        int i = this.currentType;
        if (i == 0) {
            this.actionBar.setTitle(LocaleController.getString("EditAdmin", C3417R.string.EditAdmin));
        } else if (i == 2) {
            this.actionBar.setTitle(LocaleController.getString("AddBot", C3417R.string.AddBot));
        } else {
            this.actionBar.setTitle(LocaleController.getString("UserRestrictions", C3417R.string.UserRestrictions));
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3484ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChatRightsEditActivity.1
            @Override // org.telegram.p043ui.ActionBar.C3484ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (ChatRightsEditActivity.this.checkDiscard()) {
                        ChatRightsEditActivity.this.finishFragment();
                    }
                } else if (i2 == 1) {
                    ChatRightsEditActivity.this.onDonePressed();
                }
            }
        });
        if (this.canEdit || (!this.isChannel && this.currentChat.creator && UserObject.isUserSelf(this.currentUser))) {
            ActionBarMenu createMenu = this.actionBar.createMenu();
            Drawable mutate = context.getResources().getDrawable(C3417R.C3419drawable.ic_ab_done).mutate();
            int i2 = Theme.key_actionBarDefaultIcon;
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
            this.doneDrawable = new CrossfadeDrawable(mutate, new CircularProgressDrawable(Theme.getColor(i2)));
            createMenu.addItemWithWidth(1, 0, AndroidUtilities.m54dp(56), LocaleController.getString("Done", C3417R.string.Done));
            createMenu.getItem(1).setIcon(this.doneDrawable);
        }
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.ChatRightsEditActivity.2
            private int previousHeight = -1;

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                super.onLayout(z, i3, i4, i5, i6);
                int i7 = i6 - i4;
                int i8 = this.previousHeight;
                if (i8 != -1 && Math.abs(i8 - i7) > AndroidUtilities.m54dp(20)) {
                    ChatRightsEditActivity.this.listView.smoothScrollToPosition(ChatRightsEditActivity.this.rowCount - 1);
                }
                this.previousHeight = i7;
            }
        };
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        View view = this.fragmentView;
        FrameLayout frameLayout2 = (FrameLayout) view;
        view.setFocusableInTouchMode(true);
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.ChatRightsEditActivity.3
            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (ChatRightsEditActivity.this.loading) {
                    return false;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (ChatRightsEditActivity.this.loading) {
                    return false;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setClipChildren(this.currentType != 2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, context, 1, false) { // from class: org.telegram.ui.ChatRightsEditActivity.4
            @Override // androidx.recyclerview.widget.LinearLayoutManager
            protected int getExtraLayoutSpace(RecyclerView.State state) {
                return DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS;
            }
        };
        this.linearLayoutManager = linearLayoutManager;
        linearLayoutManager.setInitialPrefetchItemCount(100);
        this.listView.setLayoutManager(this.linearLayoutManager);
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listViewAdapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        if (this.currentType == 2) {
            this.listView.setResetSelectorOnChanged(false);
        }
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setVerticalScrollbarPosition(LocaleController.isRTL ? 1 : 2);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ChatRightsEditActivity.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 1) {
                    AndroidUtilities.hideKeyboard(ChatRightsEditActivity.this.getParentActivity().getCurrentFocus());
                }
            }
        });
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda25
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i3) {
                ChatRightsEditActivity.this.lambda$createView$6(context, view2, i3);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(Context context, View view, int i) {
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights;
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2;
        View findViewByPosition;
        boolean z;
        String string;
        if (this.canEdit || (this.currentChat.creator && this.currentType == 0 && i == this.anonymousRow)) {
            boolean z2 = false;
            if (i == this.sendMediaRow) {
                this.sendMediaExpanded = !this.sendMediaExpanded;
                updateRows(false);
                if (this.sendMediaExpanded) {
                    this.listViewAdapter.notifyItemRangeInserted(this.sendMediaRow + 1, 12);
                } else {
                    this.listViewAdapter.notifyItemRangeRemoved(this.sendMediaRow + 1, 12);
                }
            } else if (i == 0) {
                if (this.currentUser == null) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", this.currentUser.f1656id);
                presentFragment(new ProfileActivity(bundle));
            } else if (i == this.removeAdminRow) {
                int i2 = this.currentType;
                if (i2 == 0) {
                    if (this.currentUser == null) {
                        return;
                    }
                    MessagesController.getInstance(this.currentAccount).setUserAdminRole(this.chatId, this.currentUser, new TLRPC$TL_chatAdminRights(), this.currentRank, this.isChannel, getFragmentForAlert(0), this.isAddingNew, false, null, null);
                    ChatRightsEditActivityDelegate chatRightsEditActivityDelegate = this.delegate;
                    if (chatRightsEditActivityDelegate != null) {
                        chatRightsEditActivityDelegate.didSetRights(0, this.adminRights, this.bannedRights, this.currentRank);
                    }
                    finishFragment();
                } else if (i2 == 1) {
                    TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights3 = new TLRPC$TL_chatBannedRights();
                    this.bannedRights = tLRPC$TL_chatBannedRights3;
                    tLRPC$TL_chatBannedRights3.view_messages = true;
                    tLRPC$TL_chatBannedRights3.send_media = true;
                    tLRPC$TL_chatBannedRights3.send_messages = true;
                    tLRPC$TL_chatBannedRights3.send_stickers = true;
                    tLRPC$TL_chatBannedRights3.send_gifs = true;
                    tLRPC$TL_chatBannedRights3.send_games = true;
                    tLRPC$TL_chatBannedRights3.send_inline = true;
                    tLRPC$TL_chatBannedRights3.embed_links = true;
                    tLRPC$TL_chatBannedRights3.pin_messages = true;
                    tLRPC$TL_chatBannedRights3.send_polls = true;
                    tLRPC$TL_chatBannedRights3.invite_users = true;
                    tLRPC$TL_chatBannedRights3.change_info = true;
                    tLRPC$TL_chatBannedRights3.manage_topics = true;
                    tLRPC$TL_chatBannedRights3.until_date = 0;
                    onDonePressed();
                }
            } else if (i == this.transferOwnerRow) {
                lambda$initTransfer$8(null, null);
            } else if (i == this.untilDateRow) {
                if (getParentActivity() == null) {
                    return;
                }
                final BottomSheet.Builder builder = new BottomSheet.Builder(context);
                builder.setApplyTopPadding(false);
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                HeaderCell headerCell = new HeaderCell(context, Theme.key_dialogTextBlue2, 23, 15, false);
                headerCell.setHeight(47);
                headerCell.setText(LocaleController.getString("UserRestrictionsDuration", C3417R.string.UserRestrictionsDuration));
                linearLayout.addView(headerCell);
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(1);
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2));
                BottomSheet.BottomSheetCell[] bottomSheetCellArr = new BottomSheet.BottomSheetCell[5];
                for (int i3 = 0; i3 < 5; i3++) {
                    bottomSheetCellArr[i3] = new BottomSheet.BottomSheetCell(context, 0);
                    bottomSheetCellArr[i3].setPadding(AndroidUtilities.m54dp(7), 0, AndroidUtilities.m54dp(7), 0);
                    bottomSheetCellArr[i3].setTag(Integer.valueOf(i3));
                    bottomSheetCellArr[i3].setBackgroundDrawable(Theme.getSelectorDrawable(false));
                    if (i3 == 0) {
                        string = LocaleController.getString("UserRestrictionsUntilForever", C3417R.string.UserRestrictionsUntilForever);
                    } else if (i3 == 1) {
                        string = LocaleController.formatPluralString("Days", 1, new Object[0]);
                    } else if (i3 == 2) {
                        string = LocaleController.formatPluralString("Weeks", 1, new Object[0]);
                    } else if (i3 == 3) {
                        string = LocaleController.formatPluralString("Months", 1, new Object[0]);
                    } else {
                        string = LocaleController.getString("UserRestrictionsCustom", C3417R.string.UserRestrictionsCustom);
                    }
                    bottomSheetCellArr[i3].setTextAndIcon(string, 0);
                    linearLayout2.addView(bottomSheetCellArr[i3], LayoutHelper.createLinear(-1, -2));
                    bottomSheetCellArr[i3].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda12
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ChatRightsEditActivity.this.lambda$createView$5(builder, view2);
                        }
                    });
                }
                builder.setCustomView(linearLayout);
                showDialog(builder.create());
            } else if (view instanceof CheckBoxCell) {
                CheckBoxCell checkBoxCell = (CheckBoxCell) view;
                if (this.currentType != 1 || this.bannedRights == null) {
                    return;
                }
                checkBoxCell.isChecked();
                if (checkBoxCell.hasIcon()) {
                    if (this.currentType != 2) {
                        new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString("UserRestrictionsCantModify", C3417R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString("UserRestrictionsCantModifyDisabled", C3417R.string.UserRestrictionsCantModifyDisabled)).setPositiveButton(LocaleController.getString("OK", C3417R.string.OK), null).create().show();
                        return;
                    }
                    return;
                }
                int i4 = this.sendGifsRow;
                if (i == i4) {
                    TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights4 = this.bannedRights;
                    z = !tLRPC$TL_chatBannedRights4.send_gifs;
                    tLRPC$TL_chatBannedRights4.send_gifs = z;
                    if (!z) {
                        tLRPC$TL_chatBannedRights4.send_stickers = false;
                        this.listViewAdapter.notifyItemChanged(this.sendStickersRow);
                    }
                } else if (i == this.sendGamesRow) {
                    TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights5 = this.bannedRights;
                    z = !tLRPC$TL_chatBannedRights5.send_games;
                    tLRPC$TL_chatBannedRights5.send_games = z;
                    if (!z) {
                        tLRPC$TL_chatBannedRights5.send_stickers = false;
                        this.listViewAdapter.notifyItemChanged(this.sendStickersRow);
                    }
                } else if (i == this.sendInlineRow) {
                    TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights6 = this.bannedRights;
                    z = !tLRPC$TL_chatBannedRights6.send_inline;
                    tLRPC$TL_chatBannedRights6.send_inline = z;
                    if (!z) {
                        tLRPC$TL_chatBannedRights6.send_stickers = false;
                        this.listViewAdapter.notifyItemChanged(this.sendStickersRow);
                    }
                } else {
                    if (i == this.sendPhotosRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights7 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights7.send_photos;
                        tLRPC$TL_chatBannedRights7.send_photos = z2;
                    } else if (i == this.sendVideosRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights8 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights8.send_videos;
                        tLRPC$TL_chatBannedRights8.send_videos = z2;
                    } else if (i == this.sendMusicRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights9 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights9.send_audios;
                        tLRPC$TL_chatBannedRights9.send_audios = z2;
                    } else if (i == this.sendFilesRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights10 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights10.send_docs;
                        tLRPC$TL_chatBannedRights10.send_docs = z2;
                    } else if (i == this.sendRoundRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights11 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights11.send_roundvideos;
                        tLRPC$TL_chatBannedRights11.send_roundvideos = z2;
                    } else if (i == this.sendVoiceRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights12 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights12.send_voices;
                        tLRPC$TL_chatBannedRights12.send_voices = z2;
                    } else if (i == this.sendStickersRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights13 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights13.send_stickers;
                        tLRPC$TL_chatBannedRights13.send_stickers = z2;
                        if (z2) {
                            tLRPC$TL_chatBannedRights13.send_gifs = true;
                            this.listViewAdapter.notifyItemChanged(i4);
                            this.bannedRights.send_games = true;
                            this.listViewAdapter.notifyItemChanged(this.sendGamesRow);
                            this.bannedRights.send_inline = true;
                            this.listViewAdapter.notifyItemChanged(this.sendInlineRow);
                        }
                    } else if (i == this.embedLinksRow) {
                        if ((this.bannedRights.send_plain || this.defaultBannedRights.send_plain) && (findViewByPosition = this.linearLayoutManager.findViewByPosition(this.sendMessagesRow)) != null) {
                            AndroidUtilities.shakeViewSpring(findViewByPosition);
                            BotWebViewVibrationEffect.APP_ERROR.vibrate();
                            return;
                        }
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights14 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights14.embed_links;
                        tLRPC$TL_chatBannedRights14.embed_links = z2;
                    } else if (i == this.sendPollsRow) {
                        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights15 = this.bannedRights;
                        z2 = !tLRPC$TL_chatBannedRights15.send_polls;
                        tLRPC$TL_chatBannedRights15.send_polls = z2;
                    }
                    this.listViewAdapter.notifyItemChanged(this.sendMediaRow);
                    checkBoxCell.setChecked(!z2, true);
                }
                z2 = z;
                this.listViewAdapter.notifyItemChanged(this.sendMediaRow);
                checkBoxCell.setChecked(!z2, true);
            } else if (view instanceof TextCheckCell2) {
                TextCheckCell2 textCheckCell2 = (TextCheckCell2) view;
                if (textCheckCell2.hasIcon()) {
                    if (this.currentType != 2) {
                        new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString("UserRestrictionsCantModify", C3417R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString("UserRestrictionsCantModifyDisabled", C3417R.string.UserRestrictionsCantModifyDisabled)).setPositiveButton(LocaleController.getString("OK", C3417R.string.OK), null).create().show();
                    }
                } else if (!textCheckCell2.isEnabled()) {
                    int i5 = this.currentType;
                    if (i5 == 2 || i5 == 0) {
                        if ((i != this.changeInfoRow || (tLRPC$TL_chatBannedRights2 = this.defaultBannedRights) == null || tLRPC$TL_chatBannedRights2.change_info) && (i != this.pinMessagesRow || (tLRPC$TL_chatBannedRights = this.defaultBannedRights) == null || tLRPC$TL_chatBannedRights.pin_messages)) {
                            return;
                        }
                        new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString("UserRestrictionsCantModify", C3417R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString("UserRestrictionsCantModifyEnabled", C3417R.string.UserRestrictionsCantModifyEnabled)).setPositiveButton(LocaleController.getString("OK", C3417R.string.OK), null).create().show();
                    }
                } else {
                    if (this.currentType != 2) {
                        textCheckCell2.setChecked(!textCheckCell2.isChecked());
                    }
                    boolean isChecked = textCheckCell2.isChecked();
                    if (i == this.manageRow) {
                        isChecked = !this.asAdmin;
                        this.asAdmin = isChecked;
                        updateAsAdmin(true);
                    } else if (i == this.changeInfoRow) {
                        int i6 = this.currentType;
                        if (i6 == 0 || i6 == 2) {
                            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = this.adminRights;
                            isChecked = !tLRPC$TL_chatAdminRights.change_info;
                            tLRPC$TL_chatAdminRights.change_info = isChecked;
                        } else {
                            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights16 = this.bannedRights;
                            isChecked = !tLRPC$TL_chatBannedRights16.change_info;
                            tLRPC$TL_chatBannedRights16.change_info = isChecked;
                        }
                    } else if (i == this.postMessagesRow) {
                        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2 = this.adminRights;
                        isChecked = !tLRPC$TL_chatAdminRights2.post_messages;
                        tLRPC$TL_chatAdminRights2.post_messages = isChecked;
                    } else if (i == this.editMesagesRow) {
                        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights3 = this.adminRights;
                        isChecked = !tLRPC$TL_chatAdminRights3.edit_messages;
                        tLRPC$TL_chatAdminRights3.edit_messages = isChecked;
                    } else if (i == this.deleteMessagesRow) {
                        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights4 = this.adminRights;
                        isChecked = !tLRPC$TL_chatAdminRights4.delete_messages;
                        tLRPC$TL_chatAdminRights4.delete_messages = isChecked;
                    } else if (i == this.addAdminsRow) {
                        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights5 = this.adminRights;
                        isChecked = !tLRPC$TL_chatAdminRights5.add_admins;
                        tLRPC$TL_chatAdminRights5.add_admins = isChecked;
                    } else if (i == this.anonymousRow) {
                        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights6 = this.adminRights;
                        isChecked = !tLRPC$TL_chatAdminRights6.anonymous;
                        tLRPC$TL_chatAdminRights6.anonymous = isChecked;
                    } else if (i == this.banUsersRow) {
                        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights7 = this.adminRights;
                        isChecked = !tLRPC$TL_chatAdminRights7.ban_users;
                        tLRPC$TL_chatAdminRights7.ban_users = isChecked;
                    } else if (i == this.startVoiceChatRow) {
                        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights8 = this.adminRights;
                        isChecked = !tLRPC$TL_chatAdminRights8.manage_call;
                        tLRPC$TL_chatAdminRights8.manage_call = isChecked;
                    } else if (i == this.manageTopicsRow) {
                        int i7 = this.currentType;
                        if (i7 == 0 || i7 == 2) {
                            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights9 = this.adminRights;
                            isChecked = !tLRPC$TL_chatAdminRights9.manage_topics;
                            tLRPC$TL_chatAdminRights9.manage_topics = isChecked;
                        } else {
                            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights17 = this.bannedRights;
                            isChecked = !tLRPC$TL_chatBannedRights17.manage_topics;
                            tLRPC$TL_chatBannedRights17.manage_topics = isChecked;
                        }
                    } else if (i == this.addUsersRow) {
                        int i8 = this.currentType;
                        if (i8 == 0 || i8 == 2) {
                            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights10 = this.adminRights;
                            isChecked = !tLRPC$TL_chatAdminRights10.invite_users;
                            tLRPC$TL_chatAdminRights10.invite_users = isChecked;
                        } else {
                            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights18 = this.bannedRights;
                            isChecked = !tLRPC$TL_chatBannedRights18.invite_users;
                            tLRPC$TL_chatBannedRights18.invite_users = isChecked;
                        }
                    } else if (i == this.pinMessagesRow) {
                        int i9 = this.currentType;
                        if (i9 == 0 || i9 == 2) {
                            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights11 = this.adminRights;
                            isChecked = !tLRPC$TL_chatAdminRights11.pin_messages;
                            tLRPC$TL_chatAdminRights11.pin_messages = isChecked;
                        } else {
                            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights19 = this.bannedRights;
                            isChecked = !tLRPC$TL_chatBannedRights19.pin_messages;
                            tLRPC$TL_chatBannedRights19.pin_messages = isChecked;
                        }
                    } else if (this.currentType == 1 && this.bannedRights != null) {
                        boolean z3 = !textCheckCell2.isChecked();
                        if (i == this.sendMessagesRow) {
                            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights20 = this.bannedRights;
                            isChecked = !tLRPC$TL_chatBannedRights20.send_plain;
                            tLRPC$TL_chatBannedRights20.send_plain = isChecked;
                        }
                        if (!z3) {
                            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights21 = this.bannedRights;
                            if ((!tLRPC$TL_chatBannedRights21.send_plain || !tLRPC$TL_chatBannedRights21.embed_links || !tLRPC$TL_chatBannedRights21.send_inline || !tLRPC$TL_chatBannedRights21.send_photos || !tLRPC$TL_chatBannedRights21.send_videos || !tLRPC$TL_chatBannedRights21.send_audios || !tLRPC$TL_chatBannedRights21.send_docs || !tLRPC$TL_chatBannedRights21.send_voices || !tLRPC$TL_chatBannedRights21.send_roundvideos || !tLRPC$TL_chatBannedRights21.send_polls || !tLRPC$TL_chatBannedRights21.send_stickers || !tLRPC$TL_chatBannedRights21.send_gifs || !tLRPC$TL_chatBannedRights21.send_games) && tLRPC$TL_chatBannedRights21.view_messages) {
                                tLRPC$TL_chatBannedRights21.view_messages = false;
                            }
                        }
                        int i10 = this.embedLinksRow;
                        if (i10 >= 0) {
                            this.listViewAdapter.notifyItemChanged(i10);
                        }
                        int i11 = this.sendMediaRow;
                        if (i11 >= 0) {
                            this.listViewAdapter.notifyItemChanged(i11);
                        }
                    }
                    if (this.currentType == 2) {
                        if (this.asAdmin && isChecked) {
                            z2 = true;
                        }
                        textCheckCell2.setChecked(z2);
                    }
                    updateRows(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(BottomSheet.Builder builder, View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (intValue == 0) {
            this.bannedRights.until_date = 0;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (intValue == 1) {
            this.bannedRights.until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 86400;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (intValue == 2) {
            this.bannedRights.until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 604800;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (intValue == 3) {
            this.bannedRights.until_date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() + 2592000;
            this.listViewAdapter.notifyItemChanged(this.untilDateRow);
        } else if (intValue == 4) {
            Calendar calendar = Calendar.getInstance();
            try {
                DatePickerDialog datePickerDialog = new DatePickerDialog(getParentActivity(), new DatePickerDialog.OnDateSetListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda2
                    @Override // android.app.DatePickerDialog.OnDateSetListener
                    public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                        ChatRightsEditActivity.this.lambda$createView$2(datePicker, i, i2, i3);
                    }
                }, calendar.get(1), calendar.get(2), calendar.get(5));
                final DatePicker datePicker = datePickerDialog.getDatePicker();
                Calendar calendar2 = Calendar.getInstance();
                calendar2.setTimeInMillis(System.currentTimeMillis());
                calendar2.set(11, calendar2.getMinimum(11));
                calendar2.set(12, calendar2.getMinimum(12));
                calendar2.set(13, calendar2.getMinimum(13));
                calendar2.set(14, calendar2.getMinimum(14));
                datePicker.setMinDate(calendar2.getTimeInMillis());
                calendar2.setTimeInMillis(System.currentTimeMillis() + 31536000000L);
                calendar2.set(11, calendar2.getMaximum(11));
                calendar2.set(12, calendar2.getMaximum(12));
                calendar2.set(13, calendar2.getMaximum(13));
                calendar2.set(14, calendar2.getMaximum(14));
                datePicker.setMaxDate(calendar2.getTimeInMillis());
                datePickerDialog.setButton(-1, LocaleController.getString("Set", C3417R.string.Set), datePickerDialog);
                datePickerDialog.setButton(-2, LocaleController.getString("Cancel", C3417R.string.Cancel), ChatRightsEditActivity$$ExternalSyntheticLambda10.INSTANCE);
                if (Build.VERSION.SDK_INT >= 21) {
                    datePickerDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda11
                        @Override // android.content.DialogInterface.OnShowListener
                        public final void onShow(DialogInterface dialogInterface) {
                            ChatRightsEditActivity.lambda$createView$4(datePicker, dialogInterface);
                        }
                    });
                }
                showDialog(datePickerDialog);
            } catch (Exception e) {
                FileLog.m49e(e);
            }
        }
        builder.getDismissRunnable().run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(DatePicker datePicker, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(i, i2, i3);
        final int time = (int) (calendar.getTime().getTime() / 1000);
        try {
            TimePickerDialog timePickerDialog = new TimePickerDialog(getParentActivity(), new TimePickerDialog.OnTimeSetListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda3
                @Override // android.app.TimePickerDialog.OnTimeSetListener
                public final void onTimeSet(TimePicker timePicker, int i4, int i5) {
                    ChatRightsEditActivity.this.lambda$createView$0(time, timePicker, i4, i5);
                }
            }, 0, 0, true);
            timePickerDialog.setButton(-1, LocaleController.getString("Set", C3417R.string.Set), timePickerDialog);
            timePickerDialog.setButton(-2, LocaleController.getString("Cancel", C3417R.string.Cancel), ChatRightsEditActivity$$ExternalSyntheticLambda9.INSTANCE);
            showDialog(timePickerDialog);
        } catch (Exception e) {
            FileLog.m49e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(int i, TimePicker timePicker, int i2, int i3) {
        this.bannedRights.until_date = i + (i2 * 3600) + (i3 * 60);
        this.listViewAdapter.notifyItemChanged(this.untilDateRow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$4(DatePicker datePicker, DialogInterface dialogInterface) {
        int childCount = datePicker.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = datePicker.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.width = -1;
            childAt.setLayoutParams(layoutParams);
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listViewAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
    }

    private boolean isDefaultAdminRights() {
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = this.adminRights;
        boolean z = tLRPC$TL_chatAdminRights.change_info;
        return (z && tLRPC$TL_chatAdminRights.delete_messages && tLRPC$TL_chatAdminRights.ban_users && tLRPC$TL_chatAdminRights.invite_users && tLRPC$TL_chatAdminRights.pin_messages && ((!this.isForum || tLRPC$TL_chatAdminRights.manage_topics) && tLRPC$TL_chatAdminRights.manage_call && !tLRPC$TL_chatAdminRights.add_admins && !tLRPC$TL_chatAdminRights.anonymous)) || !(z || tLRPC$TL_chatAdminRights.delete_messages || tLRPC$TL_chatAdminRights.ban_users || tLRPC$TL_chatAdminRights.invite_users || tLRPC$TL_chatAdminRights.pin_messages || ((this.isForum && tLRPC$TL_chatAdminRights.manage_topics) || tLRPC$TL_chatAdminRights.manage_call || tLRPC$TL_chatAdminRights.add_admins || tLRPC$TL_chatAdminRights.anonymous));
    }

    private boolean hasAllAdminRights() {
        if (this.isChannel) {
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = this.adminRights;
            return tLRPC$TL_chatAdminRights.change_info && tLRPC$TL_chatAdminRights.post_messages && tLRPC$TL_chatAdminRights.edit_messages && tLRPC$TL_chatAdminRights.delete_messages && tLRPC$TL_chatAdminRights.invite_users && tLRPC$TL_chatAdminRights.add_admins && tLRPC$TL_chatAdminRights.manage_call;
        }
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights2 = this.adminRights;
        return tLRPC$TL_chatAdminRights2.change_info && tLRPC$TL_chatAdminRights2.delete_messages && tLRPC$TL_chatAdminRights2.ban_users && tLRPC$TL_chatAdminRights2.invite_users && tLRPC$TL_chatAdminRights2.pin_messages && tLRPC$TL_chatAdminRights2.add_admins && tLRPC$TL_chatAdminRights2.manage_call && (!this.isForum || tLRPC$TL_chatAdminRights2.manage_topics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initTransfer */
    public void lambda$initTransfer$8(final TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity) {
        if (getParentActivity() == null) {
            return;
        }
        if (tLRPC$InputCheckPasswordSRP != null && !ChatObject.isChannel(this.currentChat)) {
            MessagesController.getInstance(this.currentAccount).convertToMegaGroup(getParentActivity(), this.chatId, this, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda21
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j) {
                    ChatRightsEditActivity.this.lambda$initTransfer$7(tLRPC$InputCheckPasswordSRP, twoStepVerificationActivity, j);
                }
            });
            return;
        }
        final TLRPC$TL_channels_editCreator tLRPC$TL_channels_editCreator = new TLRPC$TL_channels_editCreator();
        if (ChatObject.isChannel(this.currentChat)) {
            TLRPC$TL_inputChannel tLRPC$TL_inputChannel = new TLRPC$TL_inputChannel();
            tLRPC$TL_channels_editCreator.channel = tLRPC$TL_inputChannel;
            TLRPC$Chat tLRPC$Chat = this.currentChat;
            tLRPC$TL_inputChannel.channel_id = tLRPC$Chat.f1515id;
            tLRPC$TL_inputChannel.access_hash = tLRPC$Chat.access_hash;
        } else {
            tLRPC$TL_channels_editCreator.channel = new TLRPC$TL_inputChannelEmpty();
        }
        tLRPC$TL_channels_editCreator.password = tLRPC$InputCheckPasswordSRP != null ? tLRPC$InputCheckPasswordSRP : new TLRPC$TL_inputCheckPasswordEmpty();
        tLRPC$TL_channels_editCreator.user_id = getMessagesController().getInputUser(this.currentUser);
        getConnectionsManager().sendRequest(tLRPC$TL_channels_editCreator, new RequestDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda22
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChatRightsEditActivity.this.lambda$initTransfer$14(tLRPC$InputCheckPasswordSRP, twoStepVerificationActivity, tLRPC$TL_channels_editCreator, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$7(TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, TwoStepVerificationActivity twoStepVerificationActivity, long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
            lambda$initTransfer$8(tLRPC$InputCheckPasswordSRP, twoStepVerificationActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$14(final TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity, final TLRPC$TL_channels_editCreator tLRPC$TL_channels_editCreator, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                ChatRightsEditActivity.this.lambda$initTransfer$13(tLRPC$TL_error, tLRPC$InputCheckPasswordSRP, twoStepVerificationActivity, tLRPC$TL_channels_editCreator);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$13(TLRPC$TL_error tLRPC$TL_error, TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity, TLRPC$TL_channels_editCreator tLRPC$TL_channels_editCreator) {
        int i;
        if (tLRPC$TL_error == null) {
            if (tLRPC$InputCheckPasswordSRP != null) {
                this.delegate.didChangeOwner(this.currentUser);
                removeSelfFromStack();
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
            }
        } else if (getParentActivity() == null) {
        } else {
            if ("PASSWORD_HASH_INVALID".equals(tLRPC$TL_error.text)) {
                if (tLRPC$InputCheckPasswordSRP == null) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                    if (this.isChannel) {
                        builder.setTitle(LocaleController.getString("EditAdminChannelTransfer", C3417R.string.EditAdminChannelTransfer));
                    } else {
                        builder.setTitle(LocaleController.getString("EditAdminGroupTransfer", C3417R.string.EditAdminGroupTransfer));
                    }
                    builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("EditAdminTransferReadyAlertText", C3417R.string.EditAdminTransferReadyAlertText, this.currentChat.title, UserObject.getFirstName(this.currentUser))));
                    builder.setPositiveButton(LocaleController.getString("EditAdminTransferChangeOwner", C3417R.string.EditAdminTransferChangeOwner), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda6
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            ChatRightsEditActivity.this.lambda$initTransfer$9(dialogInterface, i2);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString("Cancel", C3417R.string.Cancel), null);
                    showDialog(builder.create());
                }
            } else if ("PASSWORD_MISSING".equals(tLRPC$TL_error.text) || tLRPC$TL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tLRPC$TL_error.text.startsWith("SESSION_TOO_FRESH_")) {
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.needHideProgress();
                }
                AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
                builder2.setTitle(LocaleController.getString("EditAdminTransferAlertTitle", C3417R.string.EditAdminTransferAlertTitle));
                LinearLayout linearLayout = new LinearLayout(getParentActivity());
                linearLayout.setPadding(AndroidUtilities.m54dp(24), AndroidUtilities.m54dp(2), AndroidUtilities.m54dp(24), 0);
                linearLayout.setOrientation(1);
                builder2.setView(linearLayout);
                TextView textView = new TextView(getParentActivity());
                int i2 = Theme.key_dialogTextBlack;
                textView.setTextColor(Theme.getColor(i2));
                textView.setTextSize(1, 16.0f);
                textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                if (this.isChannel) {
                    textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("EditChannelAdminTransferAlertText", C3417R.string.EditChannelAdminTransferAlertText, UserObject.getFirstName(this.currentUser))));
                } else {
                    textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("EditAdminTransferAlertText", C3417R.string.EditAdminTransferAlertText, UserObject.getFirstName(this.currentUser))));
                }
                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
                LinearLayout linearLayout2 = new LinearLayout(getParentActivity());
                linearLayout2.setOrientation(0);
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                ImageView imageView = new ImageView(getParentActivity());
                int i3 = C3417R.C3419drawable.list_circle;
                imageView.setImageResource(i3);
                imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.m54dp(11) : 0, AndroidUtilities.m54dp(9), LocaleController.isRTL ? 0 : AndroidUtilities.m54dp(11), 0);
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
                TextView textView2 = new TextView(getParentActivity());
                textView2.setTextColor(Theme.getColor(i2));
                textView2.setTextSize(1, 16.0f);
                textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString("EditAdminTransferAlertText1", C3417R.string.EditAdminTransferAlertText1)));
                if (LocaleController.isRTL) {
                    linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                    linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
                } else {
                    linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
                    linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                }
                LinearLayout linearLayout3 = new LinearLayout(getParentActivity());
                linearLayout3.setOrientation(0);
                linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                ImageView imageView2 = new ImageView(getParentActivity());
                imageView2.setImageResource(i3);
                imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.m54dp(11) : 0, AndroidUtilities.m54dp(9), LocaleController.isRTL ? 0 : AndroidUtilities.m54dp(11), 0);
                imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
                TextView textView3 = new TextView(getParentActivity());
                textView3.setTextColor(Theme.getColor(i2));
                textView3.setTextSize(1, 16.0f);
                textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString("EditAdminTransferAlertText2", C3417R.string.EditAdminTransferAlertText2)));
                if (LocaleController.isRTL) {
                    linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                    i = 5;
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
                } else {
                    i = 5;
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
                    linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                }
                if ("PASSWORD_MISSING".equals(tLRPC$TL_error.text)) {
                    builder2.setPositiveButton(LocaleController.getString("EditAdminTransferSetPassword", C3417R.string.EditAdminTransferSetPassword), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda7
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            ChatRightsEditActivity.this.lambda$initTransfer$10(dialogInterface, i4);
                        }
                    });
                    builder2.setNegativeButton(LocaleController.getString("Cancel", C3417R.string.Cancel), null);
                } else {
                    TextView textView4 = new TextView(getParentActivity());
                    textView4.setTextColor(Theme.getColor(i2));
                    textView4.setTextSize(1, 16.0f);
                    textView4.setGravity((LocaleController.isRTL ? i : 3) | 48);
                    textView4.setText(LocaleController.getString("EditAdminTransferAlertText3", C3417R.string.EditAdminTransferAlertText3));
                    linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                    builder2.setNegativeButton(LocaleController.getString("OK", C3417R.string.OK), null);
                }
                showDialog(builder2.create());
            } else if ("SRP_ID_INVALID".equals(tLRPC$TL_error.text)) {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC$TL_account_getPassword(), new RequestDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda23
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error2) {
                        ChatRightsEditActivity.this.lambda$initTransfer$12(twoStepVerificationActivity, tLObject, tLRPC$TL_error2);
                    }
                }, 8);
            } else if (tLRPC$TL_error.text.equals("CHANNELS_TOO_MUCH")) {
                if (getParentActivity() != null && !AccountInstance.getInstance(this.currentAccount).getUserConfig().isPremium()) {
                    showDialog(new LimitReachedBottomSheet(this, getParentActivity(), 5, this.currentAccount));
                } else {
                    presentFragment(new TooManyCommunitiesActivity(1));
                }
            } else {
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.needHideProgress();
                    twoStepVerificationActivity.finishFragment();
                }
                AlertsCreator.showAddUserAlert(tLRPC$TL_error.text, this, this.isChannel, tLRPC$TL_channels_editCreator);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$9(DialogInterface dialogInterface, int i) {
        final TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
        twoStepVerificationActivity.setDelegate(new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.p043ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
            public final void didEnterPassword(TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP) {
                ChatRightsEditActivity.this.lambda$initTransfer$8(twoStepVerificationActivity, tLRPC$InputCheckPasswordSRP);
            }
        });
        presentFragment(twoStepVerificationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$10(DialogInterface dialogInterface, int i) {
        presentFragment(new TwoStepVerificationSetupActivity(6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$12(final TwoStepVerificationActivity twoStepVerificationActivity, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ChatRightsEditActivity.this.lambda$initTransfer$11(tLRPC$TL_error, tLObject, twoStepVerificationActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$11(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TwoStepVerificationActivity twoStepVerificationActivity) {
        if (tLRPC$TL_error == null) {
            TLRPC$account_Password tLRPC$account_Password = (TLRPC$account_Password) tLObject;
            twoStepVerificationActivity.setCurrentPasswordInfo(null, tLRPC$account_Password);
            TwoStepVerificationActivity.initPasswordNewAlgo(tLRPC$account_Password);
            lambda$initTransfer$8(twoStepVerificationActivity.getNewSrpPassword(), twoStepVerificationActivity);
        }
    }

    private void updateRows(boolean z) {
        int i;
        TLRPC$User tLRPC$User;
        this.sendInlineRow = -1;
        this.sendGamesRow = -1;
        this.sendGifsRow = -1;
        int min = Math.min(this.transferOwnerShadowRow, this.transferOwnerRow);
        this.manageRow = -1;
        this.changeInfoRow = -1;
        this.postMessagesRow = -1;
        this.editMesagesRow = -1;
        this.deleteMessagesRow = -1;
        this.addAdminsRow = -1;
        this.anonymousRow = -1;
        this.banUsersRow = -1;
        this.addUsersRow = -1;
        this.pinMessagesRow = -1;
        this.rightsShadowRow = -1;
        this.removeAdminRow = -1;
        this.removeAdminShadowRow = -1;
        this.cantEditInfoRow = -1;
        this.transferOwnerShadowRow = -1;
        this.transferOwnerRow = -1;
        this.rankHeaderRow = -1;
        this.rankRow = -1;
        this.rankInfoRow = -1;
        this.sendMessagesRow = -1;
        this.sendMediaRow = -1;
        this.sendPhotosRow = -1;
        this.sendVideosRow = -1;
        this.sendMusicRow = -1;
        this.sendFilesRow = -1;
        this.sendVoiceRow = -1;
        this.sendRoundRow = -1;
        this.sendStickersRow = -1;
        this.sendPollsRow = -1;
        this.embedLinksRow = -1;
        this.startVoiceChatRow = -1;
        this.untilSectionRow = -1;
        this.untilDateRow = -1;
        this.addBotButtonRow = -1;
        this.manageTopicsRow = -1;
        this.rowCount = 3;
        int i2 = this.currentType;
        if (i2 == 0 || i2 == 2) {
            if (this.isChannel) {
                int i3 = 3 + 1;
                this.rowCount = i3;
                this.changeInfoRow = 3;
                int i4 = i3 + 1;
                this.rowCount = i4;
                this.postMessagesRow = i3;
                int i5 = i4 + 1;
                this.rowCount = i5;
                this.editMesagesRow = i4;
                int i6 = i5 + 1;
                this.rowCount = i6;
                this.deleteMessagesRow = i5;
                int i7 = i6 + 1;
                this.rowCount = i7;
                this.addUsersRow = i6;
                int i8 = i7 + 1;
                this.rowCount = i8;
                this.startVoiceChatRow = i7;
                this.rowCount = i8 + 1;
                this.addAdminsRow = i8;
            } else {
                if (i2 == 2) {
                    this.rowCount = 3 + 1;
                    this.manageRow = 3;
                }
                int i9 = this.rowCount;
                int i10 = i9 + 1;
                this.rowCount = i10;
                this.changeInfoRow = i9;
                int i11 = i10 + 1;
                this.rowCount = i11;
                this.deleteMessagesRow = i10;
                int i12 = i11 + 1;
                this.rowCount = i12;
                this.banUsersRow = i11;
                int i13 = i12 + 1;
                this.rowCount = i13;
                this.addUsersRow = i12;
                int i14 = i13 + 1;
                this.rowCount = i14;
                this.pinMessagesRow = i13;
                int i15 = i14 + 1;
                this.rowCount = i15;
                this.startVoiceChatRow = i14;
                int i16 = i15 + 1;
                this.rowCount = i16;
                this.addAdminsRow = i15;
                int i17 = i16 + 1;
                this.rowCount = i17;
                this.anonymousRow = i16;
                if (this.isForum) {
                    this.rowCount = i17 + 1;
                    this.manageTopicsRow = i17;
                }
            }
        } else if (i2 == 1) {
            int i18 = 3 + 1;
            this.rowCount = i18;
            this.sendMessagesRow = 3;
            int i19 = i18 + 1;
            this.rowCount = i19;
            this.sendMediaRow = i18;
            if (this.sendMediaExpanded) {
                int i20 = i19 + 1;
                this.rowCount = i20;
                this.sendPhotosRow = i19;
                int i21 = i20 + 1;
                this.rowCount = i21;
                this.sendVideosRow = i20;
                int i22 = i21 + 1;
                this.rowCount = i22;
                this.sendFilesRow = i21;
                int i23 = i22 + 1;
                this.rowCount = i23;
                this.sendMusicRow = i22;
                int i24 = i23 + 1;
                this.rowCount = i24;
                this.sendVoiceRow = i23;
                int i25 = i24 + 1;
                this.rowCount = i25;
                this.sendRoundRow = i24;
                int i26 = i25 + 1;
                this.rowCount = i26;
                this.sendStickersRow = i25;
                int i27 = i26 + 1;
                this.rowCount = i27;
                this.sendGifsRow = i26;
                int i28 = i27 + 1;
                this.rowCount = i28;
                this.sendGamesRow = i27;
                int i29 = i28 + 1;
                this.rowCount = i29;
                this.sendInlineRow = i28;
                int i30 = i29 + 1;
                this.rowCount = i30;
                this.sendPollsRow = i29;
                this.rowCount = i30 + 1;
                this.embedLinksRow = i30;
            }
            int i31 = this.rowCount;
            int i32 = i31 + 1;
            this.rowCount = i32;
            this.addUsersRow = i31;
            int i33 = i32 + 1;
            this.rowCount = i33;
            this.pinMessagesRow = i32;
            int i34 = i33 + 1;
            this.rowCount = i34;
            this.changeInfoRow = i33;
            if (this.isForum) {
                this.rowCount = i34 + 1;
                this.manageTopicsRow = i34;
            }
            int i35 = this.rowCount;
            int i36 = i35 + 1;
            this.rowCount = i36;
            this.untilSectionRow = i35;
            this.rowCount = i36 + 1;
            this.untilDateRow = i36;
        }
        int i37 = this.rowCount;
        if (this.canEdit) {
            if (!this.isChannel && (i2 == 0 || (i2 == 2 && this.asAdmin))) {
                int i38 = i37 + 1;
                this.rowCount = i38;
                this.rightsShadowRow = i37;
                int i39 = i38 + 1;
                this.rowCount = i39;
                this.rankHeaderRow = i38;
                int i40 = i39 + 1;
                this.rowCount = i40;
                this.rankRow = i39;
                this.rowCount = i40 + 1;
                this.rankInfoRow = i40;
            }
            TLRPC$Chat tLRPC$Chat = this.currentChat;
            if (tLRPC$Chat != null && tLRPC$Chat.creator && i2 == 0 && hasAllAdminRights() && ((tLRPC$User = this.currentUser) == null || !tLRPC$User.bot)) {
                int i41 = this.rightsShadowRow;
                if (i41 == -1) {
                    int i42 = this.rowCount;
                    this.rowCount = i42 + 1;
                    this.transferOwnerShadowRow = i42;
                }
                int i43 = this.rowCount;
                int i44 = i43 + 1;
                this.rowCount = i44;
                this.transferOwnerRow = i43;
                if (i41 != -1) {
                    this.rowCount = i44 + 1;
                    this.transferOwnerShadowRow = i44;
                }
            }
            if (this.initialIsSet) {
                if (this.rightsShadowRow == -1) {
                    int i45 = this.rowCount;
                    this.rowCount = i45 + 1;
                    this.rightsShadowRow = i45;
                }
                int i46 = this.rowCount;
                int i47 = i46 + 1;
                this.rowCount = i47;
                this.removeAdminRow = i46;
                this.rowCount = i47 + 1;
                this.removeAdminShadowRow = i47;
            }
        } else if (i2 == 0) {
            if (!this.isChannel && (!this.currentRank.isEmpty() || (this.currentChat.creator && UserObject.isUserSelf(this.currentUser)))) {
                int i48 = this.rowCount;
                int i49 = i48 + 1;
                this.rowCount = i49;
                this.rightsShadowRow = i48;
                int i50 = i49 + 1;
                this.rowCount = i50;
                this.rankHeaderRow = i49;
                this.rowCount = i50 + 1;
                this.rankRow = i50;
                if (this.currentChat.creator && UserObject.isUserSelf(this.currentUser)) {
                    int i51 = this.rowCount;
                    this.rowCount = i51 + 1;
                    this.rankInfoRow = i51;
                } else {
                    int i52 = this.rowCount;
                    this.rowCount = i52 + 1;
                    this.cantEditInfoRow = i52;
                }
            } else {
                int i53 = this.rowCount;
                this.rowCount = i53 + 1;
                this.cantEditInfoRow = i53;
            }
        } else {
            this.rowCount = i37 + 1;
            this.rightsShadowRow = i37;
        }
        if (this.currentType == 2) {
            int i54 = this.rowCount;
            this.rowCount = i54 + 1;
            this.addBotButtonRow = i54;
        }
        if (z) {
            if (min == -1 && (i = this.transferOwnerShadowRow) != -1) {
                this.listViewAdapter.notifyItemRangeInserted(Math.min(i, this.transferOwnerRow), 2);
            } else if (min == -1 || this.transferOwnerShadowRow != -1) {
            } else {
                this.listViewAdapter.notifyItemRangeRemoved(min, 2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
        if (r0.codePointCount(0, r0.length()) <= 16) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
        if (isDefaultAdminRights() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDonePressed() {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ChatRightsEditActivity.onDonePressed():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$15(long j) {
        if (j != 0) {
            this.chatId = j;
            this.currentChat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
            onDonePressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$16() {
        ChatRightsEditActivityDelegate chatRightsEditActivityDelegate = this.delegate;
        if (chatRightsEditActivityDelegate != null) {
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights = this.adminRights;
            chatRightsEditActivityDelegate.didSetRights((tLRPC$TL_chatAdminRights.change_info || tLRPC$TL_chatAdminRights.post_messages || tLRPC$TL_chatAdminRights.edit_messages || tLRPC$TL_chatAdminRights.delete_messages || tLRPC$TL_chatAdminRights.ban_users || tLRPC$TL_chatAdminRights.invite_users || (this.isForum && tLRPC$TL_chatAdminRights.manage_topics) || tLRPC$TL_chatAdminRights.pin_messages || tLRPC$TL_chatAdminRights.add_admins || tLRPC$TL_chatAdminRights.anonymous || tLRPC$TL_chatAdminRights.manage_call || tLRPC$TL_chatAdminRights.other) ? 1 : 0, tLRPC$TL_chatAdminRights, this.bannedRights, this.currentRank);
            finishFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onDonePressed$17(TLRPC$TL_error tLRPC$TL_error) {
        setLoading(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$21(DialogInterface dialogInterface, int i) {
        setLoading(true);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ChatRightsEditActivity.this.lambda$onDonePressed$18();
            }
        };
        if (this.asAdmin || this.initialAsAdmin) {
            getMessagesController().setUserAdminRole(this.currentChat.f1515id, this.currentUser, this.asAdmin ? this.adminRights : emptyAdminRights(false), this.currentRank, false, this, this.isAddingNew, this.asAdmin, this.botHash, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda19
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean lambda$onDonePressed$19;
                    lambda$onDonePressed$19 = ChatRightsEditActivity.this.lambda$onDonePressed$19(tLRPC$TL_error);
                    return lambda$onDonePressed$19;
                }
            });
        } else {
            getMessagesController().addUserToChat(this.currentChat.f1515id, this.currentUser, 0, this.botHash, this, true, runnable, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda18
                @Override // org.telegram.messenger.MessagesController.ErrorDelegate
                public final boolean run(TLRPC$TL_error tLRPC$TL_error) {
                    boolean lambda$onDonePressed$20;
                    lambda$onDonePressed$20 = ChatRightsEditActivity.this.lambda$onDonePressed$20(tLRPC$TL_error);
                    return lambda$onDonePressed$20;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDonePressed$18() {
        ChatRightsEditActivityDelegate chatRightsEditActivityDelegate = this.delegate;
        if (chatRightsEditActivityDelegate != null) {
            chatRightsEditActivityDelegate.didSetRights(0, this.asAdmin ? this.adminRights : null, null, this.currentRank);
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("scrollToTopOnResume", true);
        bundle.putLong("chat_id", this.currentChat.f1515id);
        if (!getMessagesController().checkCanOpenChat(bundle, this)) {
            setLoading(false);
            return;
        }
        ChatActivity chatActivity = new ChatActivity(bundle);
        presentFragment(chatActivity, true);
        if (BulletinFactory.canShowBulletin(chatActivity)) {
            boolean z = this.isAddingNew;
            if (z && this.asAdmin) {
                BulletinFactory.createAddedAsAdminBulletin(chatActivity, this.currentUser.first_name).show();
            } else if (z || this.initialAsAdmin || !this.asAdmin) {
            } else {
                BulletinFactory.createPromoteToAdminBulletin(chatActivity, this.currentUser.first_name).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onDonePressed$19(TLRPC$TL_error tLRPC$TL_error) {
        setLoading(false);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onDonePressed$20(TLRPC$TL_error tLRPC$TL_error) {
        setLoading(false);
        return true;
    }

    public void setLoading(boolean z) {
        ValueAnimator valueAnimator = this.doneDrawableAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.loading = !z ? 1 : 0;
        this.actionBar.getBackButton().setEnabled(!z ? 1 : 0);
        CrossfadeDrawable crossfadeDrawable = this.doneDrawable;
        if (crossfadeDrawable != null) {
            float[] fArr = new float[2];
            fArr[0] = crossfadeDrawable.getProgress();
            fArr[1] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.doneDrawableAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ChatRightsEditActivity.this.lambda$setLoading$22(valueAnimator2);
                }
            });
            this.doneDrawableAnimator.setDuration(Math.abs(this.doneDrawable.getProgress() - (z ? 1.0f : 0.0f)) * 150.0f);
            this.doneDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLoading$22(ValueAnimator valueAnimator) {
        this.doneDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.doneDrawable.invalidateSelf();
    }

    public void setDelegate(ChatRightsEditActivityDelegate chatRightsEditActivityDelegate) {
        this.delegate = chatRightsEditActivityDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard() {
        boolean equals;
        int i = this.currentType;
        if (i == 2) {
            return true;
        }
        if (i == 1) {
            equals = this.currentBannedRights.equals(ChatObject.getBannedRightsString(this.bannedRights));
        } else {
            equals = this.initialRank.equals(this.currentRank);
        }
        if (!equals) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("UserRestrictionsApplyChanges", C3417R.string.UserRestrictionsApplyChanges));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("UserRestrictionsApplyChangesText", C3417R.string.UserRestrictionsApplyChangesText, MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chatId)).title)));
            builder.setPositiveButton(LocaleController.getString("ApplyTheme", C3417R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ChatRightsEditActivity.this.lambda$checkDiscard$23(dialogInterface, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString("PassportDiscard", C3417R.string.PassportDiscard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ChatRightsEditActivity.this.lambda$checkDiscard$24(dialogInterface, i2);
                }
            });
            showDialog(builder.create());
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$23(DialogInterface dialogInterface, int i) {
        onDonePressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$24(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextLeft(View view) {
        if (view instanceof HeaderCell) {
            HeaderCell headerCell = (HeaderCell) view;
            String str = this.currentRank;
            int codePointCount = 16 - (str != null ? str.codePointCount(0, str.length()) : 0);
            if (codePointCount <= 4.8f) {
                headerCell.setText2(String.format("%d", Integer.valueOf(codePointCount)));
                SimpleTextView textView2 = headerCell.getTextView2();
                int i = codePointCount < 0 ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayText3;
                textView2.setTextColor(Theme.getColor(i));
                textView2.setTag(Integer.valueOf(i));
                return;
            }
            headerCell.setText2("");
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return checkDiscard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.ChatRightsEditActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private boolean ignoreTextChange;
        private Context mContext;

        public ListAdapter(Context context) {
            if (ChatRightsEditActivity.this.currentType == 2) {
                setHasStableIds(true);
            }
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            if (ChatRightsEditActivity.this.currentType == 2) {
                if (i == ChatRightsEditActivity.this.manageRow) {
                    return 1L;
                }
                if (i == ChatRightsEditActivity.this.changeInfoRow) {
                    return 2L;
                }
                if (i == ChatRightsEditActivity.this.postMessagesRow) {
                    return 3L;
                }
                if (i == ChatRightsEditActivity.this.editMesagesRow) {
                    return 4L;
                }
                if (i == ChatRightsEditActivity.this.deleteMessagesRow) {
                    return 5L;
                }
                if (i == ChatRightsEditActivity.this.addAdminsRow) {
                    return 6L;
                }
                if (i == ChatRightsEditActivity.this.anonymousRow) {
                    return 7L;
                }
                if (i == ChatRightsEditActivity.this.banUsersRow) {
                    return 8L;
                }
                if (i == ChatRightsEditActivity.this.addUsersRow) {
                    return 9L;
                }
                if (i == ChatRightsEditActivity.this.pinMessagesRow) {
                    return 10L;
                }
                if (i == ChatRightsEditActivity.this.rightsShadowRow) {
                    return 11L;
                }
                if (i == ChatRightsEditActivity.this.removeAdminRow) {
                    return 12L;
                }
                if (i == ChatRightsEditActivity.this.removeAdminShadowRow) {
                    return 13L;
                }
                if (i == ChatRightsEditActivity.this.cantEditInfoRow) {
                    return 14L;
                }
                if (i == ChatRightsEditActivity.this.transferOwnerShadowRow) {
                    return 15L;
                }
                if (i == ChatRightsEditActivity.this.transferOwnerRow) {
                    return 16L;
                }
                if (i == ChatRightsEditActivity.this.rankHeaderRow) {
                    return 17L;
                }
                if (i == ChatRightsEditActivity.this.rankRow) {
                    return 18L;
                }
                if (i == ChatRightsEditActivity.this.rankInfoRow) {
                    return 19L;
                }
                if (i == ChatRightsEditActivity.this.sendMessagesRow) {
                    return 20L;
                }
                if (i == ChatRightsEditActivity.this.sendPhotosRow) {
                    return 21L;
                }
                if (i == ChatRightsEditActivity.this.sendStickersRow) {
                    return 22L;
                }
                if (i == ChatRightsEditActivity.this.sendPollsRow) {
                    return 23L;
                }
                if (i == ChatRightsEditActivity.this.embedLinksRow) {
                    return 24L;
                }
                if (i == ChatRightsEditActivity.this.startVoiceChatRow) {
                    return 25L;
                }
                if (i == ChatRightsEditActivity.this.untilSectionRow) {
                    return 26L;
                }
                if (i == ChatRightsEditActivity.this.untilDateRow) {
                    return 27L;
                }
                if (i == ChatRightsEditActivity.this.addBotButtonRow) {
                    return 28L;
                }
                if (i == ChatRightsEditActivity.this.manageTopicsRow) {
                    return 29L;
                }
                if (i == ChatRightsEditActivity.this.sendVideosRow) {
                    return 30L;
                }
                if (i == ChatRightsEditActivity.this.sendFilesRow) {
                    return 31L;
                }
                if (i == ChatRightsEditActivity.this.sendMusicRow) {
                    return 32L;
                }
                if (i == ChatRightsEditActivity.this.sendVoiceRow) {
                    return 33L;
                }
                if (i == ChatRightsEditActivity.this.sendRoundRow) {
                    return 34L;
                }
                return i == ChatRightsEditActivity.this.sendMediaRow ? 35L : 0L;
            }
            return super.getItemId(i);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            if (ChatRightsEditActivity.this.currentChat.creator && ((ChatRightsEditActivity.this.currentType == 0 || (ChatRightsEditActivity.this.currentType == 2 && ChatRightsEditActivity.this.asAdmin)) && itemViewType == 4 && viewHolder.getAdapterPosition() == ChatRightsEditActivity.this.anonymousRow)) {
                return true;
            }
            if (ChatRightsEditActivity.this.canEdit) {
                if ((ChatRightsEditActivity.this.currentType == 0 || ChatRightsEditActivity.this.currentType == 2) && itemViewType == 4) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition == ChatRightsEditActivity.this.manageRow) {
                        if (ChatRightsEditActivity.this.myAdminRights.add_admins) {
                            return true;
                        }
                        return ChatRightsEditActivity.this.currentChat != null && ChatRightsEditActivity.this.currentChat.creator;
                    } else if (ChatRightsEditActivity.this.currentType == 2 && !ChatRightsEditActivity.this.asAdmin) {
                        return false;
                    } else {
                        if (adapterPosition == ChatRightsEditActivity.this.changeInfoRow) {
                            return ChatRightsEditActivity.this.myAdminRights.change_info && (ChatRightsEditActivity.this.defaultBannedRights == null || ChatRightsEditActivity.this.defaultBannedRights.change_info || ChatRightsEditActivity.this.isChannel);
                        } else if (adapterPosition == ChatRightsEditActivity.this.postMessagesRow) {
                            return ChatRightsEditActivity.this.myAdminRights.post_messages;
                        } else {
                            if (adapterPosition == ChatRightsEditActivity.this.editMesagesRow) {
                                return ChatRightsEditActivity.this.myAdminRights.edit_messages;
                            }
                            if (adapterPosition == ChatRightsEditActivity.this.deleteMessagesRow) {
                                return ChatRightsEditActivity.this.myAdminRights.delete_messages;
                            }
                            if (adapterPosition == ChatRightsEditActivity.this.startVoiceChatRow) {
                                return ChatRightsEditActivity.this.myAdminRights.manage_call;
                            }
                            if (adapterPosition == ChatRightsEditActivity.this.addAdminsRow) {
                                return ChatRightsEditActivity.this.myAdminRights.add_admins;
                            }
                            if (adapterPosition == ChatRightsEditActivity.this.anonymousRow) {
                                return ChatRightsEditActivity.this.myAdminRights.anonymous;
                            }
                            if (adapterPosition == ChatRightsEditActivity.this.banUsersRow) {
                                return ChatRightsEditActivity.this.myAdminRights.ban_users;
                            }
                            if (adapterPosition == ChatRightsEditActivity.this.addUsersRow) {
                                return ChatRightsEditActivity.this.myAdminRights.invite_users;
                            }
                            if (adapterPosition == ChatRightsEditActivity.this.pinMessagesRow) {
                                return ChatRightsEditActivity.this.myAdminRights.pin_messages && (ChatRightsEditActivity.this.defaultBannedRights == null || ChatRightsEditActivity.this.defaultBannedRights.pin_messages);
                            } else if (adapterPosition == ChatRightsEditActivity.this.manageTopicsRow) {
                                return ChatRightsEditActivity.this.myAdminRights.manage_topics;
                            }
                        }
                    }
                }
                return (itemViewType == 3 || itemViewType == 1 || itemViewType == 5 || itemViewType == 8) ? false : true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ChatRightsEditActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2;
            String str;
            CheckBoxCell checkBoxCell;
            switch (i) {
                case 0:
                    View userCell2 = new UserCell2(this.mContext, 4, 0);
                    userCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    checkBoxCell = userCell2;
                    break;
                case 1:
                    View textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
                    textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                    checkBoxCell = textInfoPrivacyCell;
                    break;
                case 2:
                default:
                    View textSettingsCell = new TextSettingsCell(this.mContext);
                    textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    checkBoxCell = textSettingsCell;
                    break;
                case 3:
                    View headerCell = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 21, 15, true);
                    headerCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    checkBoxCell = headerCell;
                    break;
                case 4:
                case 9:
                    View textCheckCell2 = new TextCheckCell2(this.mContext);
                    textCheckCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    checkBoxCell = textCheckCell2;
                    break;
                case 5:
                    checkBoxCell = new ShadowSectionCell(this.mContext);
                    break;
                case 6:
                    View textDetailCell = new TextDetailCell(this.mContext);
                    textDetailCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    checkBoxCell = textDetailCell;
                    break;
                case 7:
                    PollEditTextCell pollEditTextCell = ChatRightsEditActivity.this.rankEditTextCell = new PollEditTextCell(this.mContext, null);
                    pollEditTextCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    pollEditTextCell.addTextWatcher(new TextWatcher() { // from class: org.telegram.ui.ChatRightsEditActivity.ListAdapter.1
                        @Override // android.text.TextWatcher
                        public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                        }

                        @Override // android.text.TextWatcher
                        public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                        }

                        @Override // android.text.TextWatcher
                        public void afterTextChanged(Editable editable) {
                            if (ListAdapter.this.ignoreTextChange) {
                                return;
                            }
                            ChatRightsEditActivity.this.currentRank = editable.toString();
                            RecyclerView.ViewHolder findViewHolderForAdapterPosition = ChatRightsEditActivity.this.listView.findViewHolderForAdapterPosition(ChatRightsEditActivity.this.rankHeaderRow);
                            if (findViewHolderForAdapterPosition != null) {
                                ChatRightsEditActivity.this.setTextLeft(findViewHolderForAdapterPosition.itemView);
                            }
                        }
                    });
                    checkBoxCell = pollEditTextCell;
                    break;
                case 8:
                    ChatRightsEditActivity.this.addBotButtonContainer = new FrameLayout(this.mContext);
                    FrameLayout frameLayout = ChatRightsEditActivity.this.addBotButtonContainer;
                    int i3 = Theme.key_windowBackgroundGray;
                    frameLayout.setBackgroundColor(Theme.getColor(i3));
                    ChatRightsEditActivity.this.addBotButton = new FrameLayout(this.mContext);
                    ChatRightsEditActivity.this.addBotButtonText = new AnimatedTextView(this.mContext, true, false, false);
                    ChatRightsEditActivity.this.addBotButtonText.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                    ChatRightsEditActivity.this.addBotButtonText.setTextColor(-1);
                    ChatRightsEditActivity.this.addBotButtonText.setTextSize(AndroidUtilities.m54dp(14));
                    ChatRightsEditActivity.this.addBotButtonText.setGravity(17);
                    AnimatedTextView animatedTextView = ChatRightsEditActivity.this.addBotButtonText;
                    StringBuilder sb = new StringBuilder();
                    sb.append(LocaleController.getString("AddBotButton", C3417R.string.AddBotButton));
                    sb.append(" ");
                    if (ChatRightsEditActivity.this.asAdmin) {
                        i2 = C3417R.string.AddBotButtonAsAdmin;
                        str = "AddBotButtonAsAdmin";
                    } else {
                        i2 = C3417R.string.AddBotButtonAsMember;
                        str = "AddBotButtonAsMember";
                    }
                    sb.append(LocaleController.getString(str, i2));
                    animatedTextView.setText(sb.toString());
                    ChatRightsEditActivity.this.addBotButton.addView(ChatRightsEditActivity.this.addBotButtonText, LayoutHelper.createFrame(-2, -2, 17));
                    ChatRightsEditActivity.this.addBotButton.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 4.0f));
                    ChatRightsEditActivity.this.addBotButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ChatRightsEditActivity.ListAdapter.this.lambda$onCreateViewHolder$0(view);
                        }
                    });
                    ChatRightsEditActivity.this.addBotButtonContainer.addView(ChatRightsEditActivity.this.addBotButton, LayoutHelper.createFrame(-1, 48, 119, 14, 28, 14, 14));
                    ChatRightsEditActivity.this.addBotButtonContainer.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                    View view = new View(this.mContext);
                    view.setBackgroundColor(Theme.getColor(i3));
                    ChatRightsEditActivity.this.addBotButtonContainer.setClipChildren(false);
                    ChatRightsEditActivity.this.addBotButtonContainer.setClipToPadding(false);
                    ChatRightsEditActivity.this.addBotButtonContainer.addView(view, LayoutHelper.createFrame(-1, 800, 87, 0, 0, 0, -800));
                    checkBoxCell = ChatRightsEditActivity.this.addBotButtonContainer;
                    break;
                case 10:
                    CheckBoxCell checkBoxCell2 = new CheckBoxCell(this.mContext, 4, 21, ChatRightsEditActivity.this.getResourceProvider());
                    checkBoxCell2.getCheckBoxRound().setDrawBackgroundAsArc(14);
                    checkBoxCell2.getCheckBoxRound().setColor(Theme.key_switch2TrackChecked, Theme.key_radioBackground, Theme.key_checkboxCheck);
                    checkBoxCell2.setEnabled(true);
                    checkBoxCell2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                    checkBoxCell = checkBoxCell2;
                    break;
            }
            return new RecyclerListView.Holder(checkBoxCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            ChatRightsEditActivity.this.onDonePressed();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String string2;
            String string3;
            boolean z = true;
            switch (viewHolder.getItemViewType()) {
                case 0:
                    ((UserCell2) viewHolder.itemView).setData(ChatRightsEditActivity.this.currentUser, null, ChatRightsEditActivity.this.currentType == 2 ? LocaleController.getString("Bot", C3417R.string.Bot) : null, 0);
                    return;
                case 1:
                    TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                    if (i != ChatRightsEditActivity.this.cantEditInfoRow) {
                        if (i == ChatRightsEditActivity.this.rankInfoRow) {
                            if (UserObject.isUserSelf(ChatRightsEditActivity.this.currentUser) && ChatRightsEditActivity.this.currentChat.creator) {
                                string = LocaleController.getString("ChannelCreator", C3417R.string.ChannelCreator);
                            } else {
                                string = LocaleController.getString("ChannelAdmin", C3417R.string.ChannelAdmin);
                            }
                            textInfoPrivacyCell.setText(LocaleController.formatString("EditAdminRankInfo", C3417R.string.EditAdminRankInfo, string));
                            return;
                        }
                        return;
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString("EditAdminCantEdit", C3417R.string.EditAdminCantEdit));
                    return;
                case 2:
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    if (i != ChatRightsEditActivity.this.removeAdminRow) {
                        if (i == ChatRightsEditActivity.this.transferOwnerRow) {
                            int i2 = Theme.key_windowBackgroundWhiteBlackText;
                            textSettingsCell.setTextColor(Theme.getColor(i2));
                            textSettingsCell.setTag(Integer.valueOf(i2));
                            if (ChatRightsEditActivity.this.isChannel) {
                                textSettingsCell.setText(LocaleController.getString("EditAdminChannelTransfer", C3417R.string.EditAdminChannelTransfer), false);
                                return;
                            } else {
                                textSettingsCell.setText(LocaleController.getString("EditAdminGroupTransfer", C3417R.string.EditAdminGroupTransfer), false);
                                return;
                            }
                        }
                        return;
                    }
                    int i3 = Theme.key_text_RedRegular;
                    textSettingsCell.setTextColor(Theme.getColor(i3));
                    textSettingsCell.setTag(Integer.valueOf(i3));
                    if (ChatRightsEditActivity.this.currentType != 0) {
                        if (ChatRightsEditActivity.this.currentType == 1) {
                            textSettingsCell.setText(LocaleController.getString("UserRestrictionsBlock", C3417R.string.UserRestrictionsBlock), false);
                            return;
                        }
                        return;
                    }
                    textSettingsCell.setText(LocaleController.getString("EditAdminRemoveAdmin", C3417R.string.EditAdminRemoveAdmin), false);
                    return;
                case 3:
                    HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                    if (i == 2) {
                        if (ChatRightsEditActivity.this.currentType != 2 && (ChatRightsEditActivity.this.currentUser == null || !ChatRightsEditActivity.this.currentUser.bot)) {
                            if (ChatRightsEditActivity.this.currentType != 0) {
                                if (ChatRightsEditActivity.this.currentType == 1) {
                                    headerCell.setText(LocaleController.getString("UserRestrictionsCanDo", C3417R.string.UserRestrictionsCanDo));
                                    return;
                                }
                                return;
                            }
                            headerCell.setText(LocaleController.getString("EditAdminWhatCanDo", C3417R.string.EditAdminWhatCanDo));
                            return;
                        }
                        headerCell.setText(LocaleController.getString("BotRestrictionsCanDo", C3417R.string.BotRestrictionsCanDo));
                        return;
                    } else if (i == ChatRightsEditActivity.this.rankHeaderRow) {
                        headerCell.setText(LocaleController.getString("EditAdminRank", C3417R.string.EditAdminRank));
                        return;
                    } else {
                        return;
                    }
                case 4:
                case 9:
                    final TextCheckCell2 textCheckCell2 = (TextCheckCell2) viewHolder.itemView;
                    boolean z2 = ChatRightsEditActivity.this.currentType != 2 || ChatRightsEditActivity.this.asAdmin;
                    boolean z3 = ChatRightsEditActivity.this.currentChat != null && ChatRightsEditActivity.this.currentChat.creator;
                    if (i == ChatRightsEditActivity.this.sendMediaRow) {
                        int sendMediaSelectedCount = ChatRightsEditActivity.this.getSendMediaSelectedCount();
                        textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsSendMedia", C3417R.string.UserRestrictionsSendMedia), sendMediaSelectedCount > 0, true, true);
                        textCheckCell2.setCollapseArrow(String.format(Locale.US, "%d/9".replace(String.valueOf(9), String.valueOf(12)), Integer.valueOf(sendMediaSelectedCount)), !ChatRightsEditActivity.this.sendMediaExpanded, new Runnable() { // from class: org.telegram.ui.ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChatRightsEditActivity.ListAdapter.this.lambda$onBindViewHolder$1(textCheckCell2);
                            }
                        });
                        textCheckCell2.setIcon(ChatRightsEditActivity.this.allDefaultMediaBanned() ? C3417R.C3419drawable.permission_locked : 0);
                    } else if (i == ChatRightsEditActivity.this.manageRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("ManageGroup", C3417R.string.ManageGroup), ChatRightsEditActivity.this.asAdmin, true);
                        textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.add_admins || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                    } else if (i == ChatRightsEditActivity.this.changeInfoRow) {
                        if (ChatRightsEditActivity.this.currentType == 0 || ChatRightsEditActivity.this.currentType == 2) {
                            if (ChatRightsEditActivity.this.isChannel) {
                                textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminChangeChannelInfo", C3417R.string.EditAdminChangeChannelInfo), z2 && ChatRightsEditActivity.this.adminRights.change_info, true);
                            } else {
                                textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminChangeGroupInfo", C3417R.string.EditAdminChangeGroupInfo), (z2 && ChatRightsEditActivity.this.adminRights.change_info) || !ChatRightsEditActivity.this.defaultBannedRights.change_info, true);
                            }
                            if (ChatRightsEditActivity.this.currentType == 2) {
                                textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.change_info || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                            }
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsChangeInfo", C3417R.string.UserRestrictionsChangeInfo), (ChatRightsEditActivity.this.bannedRights.change_info || ChatRightsEditActivity.this.defaultBannedRights.change_info) ? false : true, ChatRightsEditActivity.this.manageTopicsRow != -1);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.change_info ? C3417R.C3419drawable.permission_locked : 0);
                        }
                    } else if (i == ChatRightsEditActivity.this.postMessagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminPostMessages", C3417R.string.EditAdminPostMessages), z2 && ChatRightsEditActivity.this.adminRights.post_messages, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.post_messages || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.editMesagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminEditMessages", C3417R.string.EditAdminEditMessages), z2 && ChatRightsEditActivity.this.adminRights.edit_messages, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.edit_messages || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.deleteMessagesRow) {
                        if (ChatRightsEditActivity.this.isChannel) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminDeleteMessages", C3417R.string.EditAdminDeleteMessages), z2 && ChatRightsEditActivity.this.adminRights.delete_messages, true);
                        } else {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminGroupDeleteMessages", C3417R.string.EditAdminGroupDeleteMessages), z2 && ChatRightsEditActivity.this.adminRights.delete_messages, true);
                        }
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.delete_messages || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.addAdminsRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminAddAdmins", C3417R.string.EditAdminAddAdmins), z2 && ChatRightsEditActivity.this.adminRights.add_admins, ChatRightsEditActivity.this.anonymousRow != -1);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.add_admins || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.anonymousRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminSendAnonymously", C3417R.string.EditAdminSendAnonymously), z2 && ChatRightsEditActivity.this.adminRights.anonymous, ChatRightsEditActivity.this.manageTopicsRow != -1);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.anonymous || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.banUsersRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminBanUsers", C3417R.string.EditAdminBanUsers), z2 && ChatRightsEditActivity.this.adminRights.ban_users, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.ban_users || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.startVoiceChatRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("StartVoipChatPermission", C3417R.string.StartVoipChatPermission), z2 && ChatRightsEditActivity.this.adminRights.manage_call, true);
                        if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.manage_call || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.manageTopicsRow) {
                        if (ChatRightsEditActivity.this.currentType == 0) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("ManageTopicsPermission", C3417R.string.ManageTopicsPermission), z2 && ChatRightsEditActivity.this.adminRights.manage_topics, false);
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("CreateTopicsPermission", C3417R.string.CreateTopicsPermission), (ChatRightsEditActivity.this.bannedRights.manage_topics || ChatRightsEditActivity.this.defaultBannedRights.manage_topics) ? false : true, false);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.manage_topics ? C3417R.C3419drawable.permission_locked : 0);
                        } else if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("ManageTopicsPermission", C3417R.string.ManageTopicsPermission), z2 && ChatRightsEditActivity.this.adminRights.manage_topics, false);
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.manage_topics || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.addUsersRow) {
                        if (ChatRightsEditActivity.this.currentType == 0) {
                            if (ChatObject.isActionBannedByDefault(ChatRightsEditActivity.this.currentChat, 3)) {
                                textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminAddUsers", C3417R.string.EditAdminAddUsers), ChatRightsEditActivity.this.adminRights.invite_users, true);
                            } else {
                                textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminAddUsersViaLink", C3417R.string.EditAdminAddUsersViaLink), ChatRightsEditActivity.this.adminRights.invite_users, true);
                            }
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsInviteUsers", C3417R.string.UserRestrictionsInviteUsers), (ChatRightsEditActivity.this.bannedRights.invite_users || ChatRightsEditActivity.this.defaultBannedRights.invite_users) ? false : true, true);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.invite_users ? C3417R.C3419drawable.permission_locked : 0);
                        } else if (ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminAddUsersViaLink", C3417R.string.EditAdminAddUsersViaLink), z2 && ChatRightsEditActivity.this.adminRights.invite_users, true);
                            textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.invite_users || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                        }
                    } else if (i == ChatRightsEditActivity.this.pinMessagesRow) {
                        if (ChatRightsEditActivity.this.currentType == 0 || ChatRightsEditActivity.this.currentType == 2) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("EditAdminPinMessages", C3417R.string.EditAdminPinMessages), (z2 && ChatRightsEditActivity.this.adminRights.pin_messages) || !ChatRightsEditActivity.this.defaultBannedRights.pin_messages, true);
                            if (ChatRightsEditActivity.this.currentType == 2) {
                                textCheckCell2.setIcon((ChatRightsEditActivity.this.myAdminRights.pin_messages || z3) ? 0 : C3417R.C3419drawable.permission_locked);
                            }
                        } else if (ChatRightsEditActivity.this.currentType == 1) {
                            textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsPinMessages", C3417R.string.UserRestrictionsPinMessages), (ChatRightsEditActivity.this.bannedRights.pin_messages || ChatRightsEditActivity.this.defaultBannedRights.pin_messages) ? false : true, true);
                            textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.pin_messages ? C3417R.C3419drawable.permission_locked : 0);
                        }
                    } else if (i == ChatRightsEditActivity.this.sendMessagesRow) {
                        textCheckCell2.setTextAndCheck(LocaleController.getString("UserRestrictionsSend", C3417R.string.UserRestrictionsSend), (ChatRightsEditActivity.this.bannedRights.send_plain || ChatRightsEditActivity.this.defaultBannedRights.send_plain) ? false : true, true);
                        textCheckCell2.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_plain ? C3417R.C3419drawable.permission_locked : 0);
                    }
                    if (ChatRightsEditActivity.this.currentType != 2 && i == ChatRightsEditActivity.this.sendMessagesRow) {
                        if (ChatRightsEditActivity.this.bannedRights.view_messages || ChatRightsEditActivity.this.defaultBannedRights.view_messages) {
                            z = false;
                        }
                        textCheckCell2.setEnabled(z);
                        return;
                    }
                    return;
                case 5:
                    ShadowSectionCell shadowSectionCell = (ShadowSectionCell) viewHolder.itemView;
                    if (ChatRightsEditActivity.this.currentType == 2 && (i == ChatRightsEditActivity.this.rightsShadowRow || i == ChatRightsEditActivity.this.rankInfoRow)) {
                        shadowSectionCell.setAlpha(ChatRightsEditActivity.this.asAdminT);
                    } else {
                        shadowSectionCell.setAlpha(1.0f);
                    }
                    if (i == ChatRightsEditActivity.this.rightsShadowRow) {
                        shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, (ChatRightsEditActivity.this.removeAdminRow == -1 && ChatRightsEditActivity.this.rankRow == -1) ? C3417R.C3419drawable.greydivider_bottom : C3417R.C3419drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                        return;
                    } else if (i != ChatRightsEditActivity.this.removeAdminShadowRow) {
                        if (i == ChatRightsEditActivity.this.rankInfoRow) {
                            shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, ChatRightsEditActivity.this.canEdit ? C3417R.C3419drawable.greydivider : C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                            return;
                        } else {
                            shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3417R.C3419drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                            return;
                        }
                    } else {
                        shadowSectionCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C3417R.C3419drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                        return;
                    }
                case 6:
                    TextDetailCell textDetailCell = (TextDetailCell) viewHolder.itemView;
                    if (i == ChatRightsEditActivity.this.untilDateRow) {
                        if (ChatRightsEditActivity.this.bannedRights.until_date != 0 && Math.abs(ChatRightsEditActivity.this.bannedRights.until_date - (System.currentTimeMillis() / 1000)) <= 315360000) {
                            string2 = LocaleController.formatDateForBan(ChatRightsEditActivity.this.bannedRights.until_date);
                        } else {
                            string2 = LocaleController.getString("UserRestrictionsUntilForever", C3417R.string.UserRestrictionsUntilForever);
                        }
                        textDetailCell.setTextAndValue(LocaleController.getString("UserRestrictionsDuration", C3417R.string.UserRestrictionsDuration), string2, false);
                        return;
                    }
                    return;
                case 7:
                    PollEditTextCell pollEditTextCell = (PollEditTextCell) viewHolder.itemView;
                    if (UserObject.isUserSelf(ChatRightsEditActivity.this.currentUser) && ChatRightsEditActivity.this.currentChat.creator) {
                        string3 = LocaleController.getString("ChannelCreator", C3417R.string.ChannelCreator);
                    } else {
                        string3 = LocaleController.getString("ChannelAdmin", C3417R.string.ChannelAdmin);
                    }
                    this.ignoreTextChange = true;
                    pollEditTextCell.getTextView().setEnabled(ChatRightsEditActivity.this.canEdit || ChatRightsEditActivity.this.currentChat.creator);
                    pollEditTextCell.getTextView().setSingleLine(true);
                    pollEditTextCell.getTextView().setImeOptions(6);
                    pollEditTextCell.setTextAndHint(ChatRightsEditActivity.this.currentRank, string3, false);
                    this.ignoreTextChange = false;
                    return;
                case 8:
                default:
                    return;
                case 10:
                    CheckBoxCell checkBoxCell = (CheckBoxCell) viewHolder.itemView;
                    boolean z4 = checkBoxCell.getTag() != null && ((Integer) checkBoxCell.getTag()).intValue() == i;
                    checkBoxCell.setTag(Integer.valueOf(i));
                    if (i == ChatRightsEditActivity.this.sendGifsRow) {
                        checkBoxCell.setText(LocaleController.getInternalString(C3417R.string.user_restrictions_send_gifs), "", (ChatRightsEditActivity.this.bannedRights.send_gifs || ChatRightsEditActivity.this.defaultBannedRights.send_gifs) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_gifs ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendGamesRow) {
                        checkBoxCell.setText(LocaleController.getInternalString(C3417R.string.user_restrictions_send_games), "", (ChatRightsEditActivity.this.bannedRights.send_games || ChatRightsEditActivity.this.defaultBannedRights.send_games) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_games ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendInlineRow) {
                        checkBoxCell.setText(LocaleController.getInternalString(C3417R.string.user_restrictions_send_inline), "", (ChatRightsEditActivity.this.bannedRights.send_inline || ChatRightsEditActivity.this.defaultBannedRights.send_inline) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_inline ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendStickersRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionStickersGifs", C3417R.string.SendMediaPermissionStickersGifs), "", (ChatRightsEditActivity.this.bannedRights.send_stickers || ChatRightsEditActivity.this.defaultBannedRights.send_stickers) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_stickers ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.embedLinksRow) {
                        checkBoxCell.setText(LocaleController.getString("UserRestrictionsEmbedLinks", C3417R.string.UserRestrictionsEmbedLinks), "", (ChatRightsEditActivity.this.bannedRights.embed_links || ChatRightsEditActivity.this.defaultBannedRights.embed_links || ChatRightsEditActivity.this.bannedRights.send_plain || ChatRightsEditActivity.this.defaultBannedRights.send_plain) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.embed_links ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendPollsRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPolls", C3417R.string.SendMediaPolls), "", (ChatRightsEditActivity.this.bannedRights.send_polls || ChatRightsEditActivity.this.defaultBannedRights.send_polls) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_polls ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendPhotosRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionPhotos", C3417R.string.SendMediaPermissionPhotos), "", (ChatRightsEditActivity.this.bannedRights.send_photos || ChatRightsEditActivity.this.defaultBannedRights.send_photos) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_photos ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendVideosRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionVideos", C3417R.string.SendMediaPermissionVideos), "", (ChatRightsEditActivity.this.bannedRights.send_videos || ChatRightsEditActivity.this.defaultBannedRights.send_videos) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_videos ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendMusicRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionMusic", C3417R.string.SendMediaPermissionMusic), "", (ChatRightsEditActivity.this.bannedRights.send_audios || ChatRightsEditActivity.this.defaultBannedRights.send_audios) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_audios ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendFilesRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionFiles", C3417R.string.SendMediaPermissionFiles), "", (ChatRightsEditActivity.this.bannedRights.send_docs || ChatRightsEditActivity.this.defaultBannedRights.send_docs) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_docs ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendVoiceRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionVoice", C3417R.string.SendMediaPermissionVoice), "", (ChatRightsEditActivity.this.bannedRights.send_voices || ChatRightsEditActivity.this.defaultBannedRights.send_voices) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_voices ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else if (i == ChatRightsEditActivity.this.sendRoundRow) {
                        checkBoxCell.setText(LocaleController.getString("SendMediaPermissionRound", C3417R.string.SendMediaPermissionRound), "", (ChatRightsEditActivity.this.bannedRights.send_roundvideos || ChatRightsEditActivity.this.defaultBannedRights.send_roundvideos) ? false : true, true, z4);
                        checkBoxCell.setIcon(ChatRightsEditActivity.this.defaultBannedRights.send_roundvideos ? C3417R.C3419drawable.permission_locked : 0);
                        return;
                    } else {
                        return;
                    }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$1(TextCheckCell2 textCheckCell2) {
            if (ChatRightsEditActivity.this.allDefaultMediaBanned()) {
                new AlertDialog.Builder(ChatRightsEditActivity.this.getParentActivity()).setTitle(LocaleController.getString("UserRestrictionsCantModify", C3417R.string.UserRestrictionsCantModify)).setMessage(LocaleController.getString("UserRestrictionsCantModifyEnabled", C3417R.string.UserRestrictionsCantModifyEnabled)).setPositiveButton(LocaleController.getString("OK", C3417R.string.OK), null).create().show();
                return;
            }
            boolean z = !textCheckCell2.isChecked();
            textCheckCell2.setChecked(z);
            ChatRightsEditActivity.this.setSendMediaEnabled(z);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() == ChatRightsEditActivity.this.rankHeaderRow) {
                ChatRightsEditActivity.this.setTextLeft(viewHolder.itemView);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getAdapterPosition() != ChatRightsEditActivity.this.rankRow || ChatRightsEditActivity.this.getParentActivity() == null) {
                return;
            }
            AndroidUtilities.hideKeyboard(ChatRightsEditActivity.this.getParentActivity().getCurrentFocus());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (ChatRightsEditActivity.this.isExpandableSendMediaRow(i)) {
                return 10;
            }
            if (i == ChatRightsEditActivity.this.sendMediaRow) {
                return 9;
            }
            if (i == 0) {
                return 0;
            }
            if (i == 1 || i == ChatRightsEditActivity.this.rightsShadowRow || i == ChatRightsEditActivity.this.removeAdminShadowRow || i == ChatRightsEditActivity.this.untilSectionRow || i == ChatRightsEditActivity.this.transferOwnerShadowRow) {
                return 5;
            }
            if (i == 2 || i == ChatRightsEditActivity.this.rankHeaderRow) {
                return 3;
            }
            if (i == ChatRightsEditActivity.this.changeInfoRow || i == ChatRightsEditActivity.this.postMessagesRow || i == ChatRightsEditActivity.this.editMesagesRow || i == ChatRightsEditActivity.this.deleteMessagesRow || i == ChatRightsEditActivity.this.addAdminsRow || i == ChatRightsEditActivity.this.banUsersRow || i == ChatRightsEditActivity.this.addUsersRow || i == ChatRightsEditActivity.this.pinMessagesRow || i == ChatRightsEditActivity.this.sendMessagesRow || i == ChatRightsEditActivity.this.anonymousRow || i == ChatRightsEditActivity.this.startVoiceChatRow || i == ChatRightsEditActivity.this.manageRow || i == ChatRightsEditActivity.this.manageTopicsRow) {
                return 4;
            }
            if (i == ChatRightsEditActivity.this.cantEditInfoRow || i == ChatRightsEditActivity.this.rankInfoRow) {
                return 1;
            }
            if (i == ChatRightsEditActivity.this.untilDateRow) {
                return 6;
            }
            if (i == ChatRightsEditActivity.this.rankRow) {
                return 7;
            }
            return i == ChatRightsEditActivity.this.addBotButtonRow ? 8 : 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSendMediaEnabled(boolean z) {
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights = this.bannedRights;
        tLRPC$TL_chatBannedRights.send_media = !z;
        tLRPC$TL_chatBannedRights.send_photos = !z;
        tLRPC$TL_chatBannedRights.send_videos = !z;
        tLRPC$TL_chatBannedRights.send_stickers = !z;
        tLRPC$TL_chatBannedRights.send_audios = !z;
        tLRPC$TL_chatBannedRights.send_docs = !z;
        tLRPC$TL_chatBannedRights.send_voices = !z;
        tLRPC$TL_chatBannedRights.send_roundvideos = !z;
        tLRPC$TL_chatBannedRights.embed_links = !z;
        tLRPC$TL_chatBannedRights.send_polls = !z;
        AndroidUtilities.updateVisibleRows(this.listView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSendMediaSelectedCount() {
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights = this.bannedRights;
        int i = (tLRPC$TL_chatBannedRights.send_photos || this.defaultBannedRights.send_photos) ? 0 : 1;
        if (!tLRPC$TL_chatBannedRights.send_videos && !this.defaultBannedRights.send_videos) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_stickers && !this.defaultBannedRights.send_stickers) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_gifs && !this.defaultBannedRights.send_gifs) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_games && !this.defaultBannedRights.send_games) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_inline && !this.defaultBannedRights.send_inline) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_audios && !this.defaultBannedRights.send_audios) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_docs && !this.defaultBannedRights.send_docs) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_voices && !this.defaultBannedRights.send_voices) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.send_roundvideos && !this.defaultBannedRights.send_roundvideos) {
            i++;
        }
        if (!tLRPC$TL_chatBannedRights.embed_links) {
            TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights2 = this.defaultBannedRights;
            if (!tLRPC$TL_chatBannedRights2.embed_links && !tLRPC$TL_chatBannedRights.send_plain && !tLRPC$TL_chatBannedRights2.send_plain) {
                i++;
            }
        }
        return (tLRPC$TL_chatBannedRights.send_polls || this.defaultBannedRights.send_polls) ? i : i + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean allDefaultMediaBanned() {
        TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights = this.defaultBannedRights;
        return tLRPC$TL_chatBannedRights.send_photos && tLRPC$TL_chatBannedRights.send_videos && tLRPC$TL_chatBannedRights.send_stickers && tLRPC$TL_chatBannedRights.send_audios && tLRPC$TL_chatBannedRights.send_docs && tLRPC$TL_chatBannedRights.send_voices && tLRPC$TL_chatBannedRights.send_roundvideos && tLRPC$TL_chatBannedRights.embed_links && tLRPC$TL_chatBannedRights.send_polls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isExpandableSendMediaRow(int i) {
        return i == this.sendStickersRow || i == this.embedLinksRow || i == this.sendPollsRow || i == this.sendPhotosRow || i == this.sendVideosRow || i == this.sendFilesRow || i == this.sendMusicRow || i == this.sendRoundRow || i == this.sendVoiceRow || i == this.sendGifsRow || i == this.sendGamesRow || i == this.sendInlineRow;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
        if (r5.creator == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x007d, code lost:
        if (r8.defaultBannedRights.change_info != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d8, code lost:
        if (r8.defaultBannedRights.pin_messages != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0109, code lost:
        if (r5.creator == false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateAsAdmin(boolean r9) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.ChatRightsEditActivity.updateAsAdmin(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAsAdmin$25(ValueAnimator valueAnimator) {
        this.asAdminT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        FrameLayout frameLayout = this.addBotButton;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }

    @Override // org.telegram.p043ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ChatRightsEditActivity$$ExternalSyntheticLambda24
            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ChatRightsEditActivity.this.lambda$getThemeDescriptions$26();
            }

            @Override // org.telegram.p043ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{UserCell2.class, TextSettingsCell.class, TextCheckCell2.class, HeaderCell.class, TextDetailCell.class, PollEditTextCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        C3484ActionBar c3484ActionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3484ActionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i3 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i4 = Theme.key_text_RedRegular;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        int i5 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        int i6 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switch2Track));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextCheckCell2.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_switch2TrackChecked));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{HeaderCell.class}, new String[]{"textView2"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{PollEditTextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteHintText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteGrayText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{UserCell2.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription((View) null, 0, new Class[]{DialogRadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogTextBlack));
        arrayList.add(new ThemeDescription((View) null, 0, new Class[]{DialogRadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogTextGray2));
        arrayList.add(new ThemeDescription((View) null, ThemeDescription.FLAG_CHECKBOX, new Class[]{DialogRadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogRadioBackground));
        arrayList.add(new ThemeDescription((View) null, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{DialogRadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_dialogRadioBackgroundChecked));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$26() {
        RecyclerListView recyclerListView = this.listView;
        if (recyclerListView != null) {
            int childCount = recyclerListView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.listView.getChildAt(i);
                if (childAt instanceof UserCell2) {
                    ((UserCell2) childAt).update(0);
                }
            }
        }
    }
}
