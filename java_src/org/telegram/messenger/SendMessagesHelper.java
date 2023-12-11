package org.telegram.messenger;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.media.MediaCodecInfo;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Spannable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.collection.LongSparseArray;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.AlertsCreator;
import org.telegram.p043ui.Components.AnimatedEmojiSpan;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.Point;
import org.telegram.p043ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p043ui.Components.Reactions.ReactionsUtils;
import org.telegram.p043ui.PaymentFormActivity;
import org.telegram.p043ui.TwoStepVerificationActivity;
import org.telegram.p043ui.TwoStepVerificationSetupActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.QuickAckDelegate;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$BotInlineMessage;
import org.telegram.tgnet.TLRPC$BotInlineResult;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$DecryptedMessage;
import org.telegram.tgnet.TLRPC$DecryptedMessageAction;
import org.telegram.tgnet.TLRPC$DecryptedMessageMedia;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$InputCheckPasswordSRP;
import org.telegram.tgnet.TLRPC$InputDocument;
import org.telegram.tgnet.TLRPC$InputEncryptedFile;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$InputMedia;
import org.telegram.tgnet.TLRPC$InputPeer;
import org.telegram.tgnet.TLRPC$InputReplyTo;
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$MessageReplies;
import org.telegram.tgnet.TLRPC$MessageReplyHeader;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$ReplyMarkup;
import org.telegram.tgnet.TLRPC$TL_account_getPassword;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaAuto;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaContact;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaGeo;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaVenue;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaWebPage;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageText;
import org.telegram.tgnet.TLRPC$TL_decryptedMessage;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionAbortKey;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionAcceptKey;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionCommitKey;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionDeleteMessages;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionFlushHistory;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionNoop;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionNotifyLayer;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionReadMessages;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionRequestKey;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionResend;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionScreenshotMessages;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionSetMessageTTL;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageActionTyping;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_decryptedMessageMediaVideo;
import org.telegram.tgnet.TLRPC$TL_document;
import org.telegram.tgnet.TLRPC$TL_documentAttributeSticker_layer55;
import org.telegram.tgnet.TLRPC$TL_document_layer82;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_fileLocationUnavailable;
import org.telegram.tgnet.TLRPC$TL_fileLocation_layer82;
import org.telegram.tgnet.TLRPC$TL_game;
import org.telegram.tgnet.TLRPC$TL_geoPoint;
import org.telegram.tgnet.TLRPC$TL_inputDocument;
import org.telegram.tgnet.TLRPC$TL_inputEncryptedFile;
import org.telegram.tgnet.TLRPC$TL_inputMediaDocument;
import org.telegram.tgnet.TLRPC$TL_inputMediaGame;
import org.telegram.tgnet.TLRPC$TL_inputMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_inputMediaUploadedDocument;
import org.telegram.tgnet.TLRPC$TL_inputMediaUploadedPhoto;
import org.telegram.tgnet.TLRPC$TL_inputPeerChannel;
import org.telegram.tgnet.TLRPC$TL_inputPeerChat;
import org.telegram.tgnet.TLRPC$TL_inputPeerSelf;
import org.telegram.tgnet.TLRPC$TL_inputPeerUser;
import org.telegram.tgnet.TLRPC$TL_inputReplyToMessage;
import org.telegram.tgnet.TLRPC$TL_inputReplyToStory;
import org.telegram.tgnet.TLRPC$TL_inputSingleMedia;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetItem;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetShortName;
import org.telegram.tgnet.TLRPC$TL_inputUserSelf;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonBuy;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonGame;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonUrlAuth;
import org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken;
import org.telegram.tgnet.TLRPC$TL_messageEncryptedAction;
import org.telegram.tgnet.TLRPC$TL_messageEntityUrl;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messageMediaEmpty;
import org.telegram.tgnet.TLRPC$TL_messageMediaGame;
import org.telegram.tgnet.TLRPC$TL_messageMediaGeo;
import org.telegram.tgnet.TLRPC$TL_messageMediaGeoLive;
import org.telegram.tgnet.TLRPC$TL_messageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaPoll;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
import org.telegram.tgnet.TLRPC$TL_messageMediaWebPage;
import org.telegram.tgnet.TLRPC$TL_messageReplies;
import org.telegram.tgnet.TLRPC$TL_messageReplyHeader;
import org.telegram.tgnet.TLRPC$TL_messageService;
import org.telegram.tgnet.TLRPC$TL_messages_botCallbackAnswer;
import org.telegram.tgnet.TLRPC$TL_messages_editMessage;
import org.telegram.tgnet.TLRPC$TL_messages_forwardMessages;
import org.telegram.tgnet.TLRPC$TL_messages_getBotCallbackAnswer;
import org.telegram.tgnet.TLRPC$TL_messages_getStickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_historyImport;
import org.telegram.tgnet.TLRPC$TL_messages_initHistoryImport;
import org.telegram.tgnet.TLRPC$TL_messages_messages;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
import org.telegram.tgnet.TLRPC$TL_messages_sendEncryptedMultiMedia;
import org.telegram.tgnet.TLRPC$TL_messages_sendMedia;
import org.telegram.tgnet.TLRPC$TL_messages_sendMessage;
import org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia;
import org.telegram.tgnet.TLRPC$TL_messages_sendReaction;
import org.telegram.tgnet.TLRPC$TL_messages_sendScreenshotNotification;
import org.telegram.tgnet.TLRPC$TL_messages_sendVote;
import org.telegram.tgnet.TLRPC$TL_messages_startHistoryImport;
import org.telegram.tgnet.TLRPC$TL_messages_stickerSet;
import org.telegram.tgnet.TLRPC$TL_messages_uploadImportedMedia;
import org.telegram.tgnet.TLRPC$TL_messages_uploadMedia;
import org.telegram.tgnet.TLRPC$TL_payments_paymentForm;
import org.telegram.tgnet.TLRPC$TL_payments_paymentReceipt;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_photo;
import org.telegram.tgnet.TLRPC$TL_photoCachedSize;
import org.telegram.tgnet.TLRPC$TL_photoPathSize;
import org.telegram.tgnet.TLRPC$TL_photoSize;
import org.telegram.tgnet.TLRPC$TL_photoSizeEmpty;
import org.telegram.tgnet.TLRPC$TL_photoSizeProgressive;
import org.telegram.tgnet.TLRPC$TL_photoSize_layer127;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
import org.telegram.tgnet.TLRPC$TL_pollAnswer;
import org.telegram.tgnet.TLRPC$TL_reactionCustomEmoji;
import org.telegram.tgnet.TLRPC$TL_reactionEmoji;
import org.telegram.tgnet.TLRPC$TL_restrictionReason;
import org.telegram.tgnet.TLRPC$TL_stickers_createStickerSet;
import org.telegram.tgnet.TLRPC$TL_updateEditChannelMessage;
import org.telegram.tgnet.TLRPC$TL_updateEditMessage;
import org.telegram.tgnet.TLRPC$TL_updateMessageID;
import org.telegram.tgnet.TLRPC$TL_updateNewChannelMessage;
import org.telegram.tgnet.TLRPC$TL_updateNewMessage;
import org.telegram.tgnet.TLRPC$TL_updateNewScheduledMessage;
import org.telegram.tgnet.TLRPC$TL_updateShortSentMessage;
import org.telegram.tgnet.TLRPC$TL_urlAuthResultAccepted;
import org.telegram.tgnet.TLRPC$TL_urlAuthResultDefault;
import org.telegram.tgnet.TLRPC$TL_urlAuthResultRequest;
import org.telegram.tgnet.TLRPC$TL_user;
import org.telegram.tgnet.TLRPC$TL_webPagePending;
import org.telegram.tgnet.TLRPC$Update;
import org.telegram.tgnet.TLRPC$Updates;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$VideoSize;
import org.telegram.tgnet.TLRPC$WebDocument;
import org.telegram.tgnet.TLRPC$WebPage;
import org.telegram.tgnet.TLRPC$account_Password;
import org.telegram.tgnet.TLRPC$messages_Messages;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* loaded from: classes4.dex */
public class SendMessagesHelper extends BaseController implements NotificationCenter.NotificationCenterDelegate {
    private static final int ERROR_TYPE_FILE_TOO_LARGE = 2;
    private static final int ERROR_TYPE_UNSUPPORTED = 1;
    private static volatile SendMessagesHelper[] Instance = null;
    public static final int MEDIA_TYPE_DICE = 11;
    public static final int MEDIA_TYPE_STORY = 12;
    private static DispatchQueue mediaSendQueue = new DispatchQueue("mediaSendQueue");
    private static ThreadPoolExecutor mediaSendThreadPool;
    private HashMap<String, ArrayList<DelayedMessage>> delayedMessages;
    private SparseArray<TLRPC$Message> editingMessages;
    private HashMap<String, ImportingHistory> importingHistoryFiles;
    private LongSparseArray<ImportingHistory> importingHistoryMap;
    private HashMap<String, ImportingStickers> importingStickersFiles;
    private HashMap<String, ImportingStickers> importingStickersMap;
    private LocationProvider locationProvider;
    private SparseArray<TLRPC$Message> sendingMessages;
    private LongSparseArray<Integer> sendingMessagesIdDialogs;
    private SparseArray<MessageObject> unsentMessages;
    private SparseArray<TLRPC$Message> uploadMessages;
    private LongSparseArray<Integer> uploadingMessagesIdDialogs;
    private LongSparseArray<Long> voteSendTime;
    private HashMap<String, Boolean> waitingForCallback;
    private HashMap<String, List<String>> waitingForCallbackMap;
    private HashMap<String, MessageObject> waitingForLocation;
    private HashMap<String, byte[]> waitingForVote;

    /* loaded from: classes4.dex */
    public static class SendingMediaInfo {
        public boolean canDeleteAfter;
        public String caption;
        public TLRPC$VideoSize emojiMarkup;
        public ArrayList<TLRPC$MessageEntity> entities;
        public boolean forceImage;
        public boolean hasMediaSpoilers;
        public TLRPC$BotInlineResult inlineResult;
        public boolean isVideo;
        public ArrayList<TLRPC$InputDocument> masks;
        public String paintPath;
        public HashMap<String, String> params;
        public String path;
        public MediaController.SearchImage searchImage;
        public String thumbPath;
        public int ttl;
        public boolean updateStickersOrder;
        public Uri uri;
        public VideoEditedInfo videoEditedInfo;
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i, MessageObject messageObject) {
        return sendMessage(arrayList, j, z, z2, z3, i, messageObject, null, false, null);
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i, MessageObject messageObject, MessagePreviewParams messagePreviewParams, boolean z4) {
        return sendMessage(arrayList, j, z, z2, z3, i, messageObject, messagePreviewParams, z4, null);
    }

    /* renamed from: sendCallback */
    public void lambda$sendCallback$24(boolean z, MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton, TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, TwoStepVerificationActivity twoStepVerificationActivity, ChatActivity chatActivity) {
        sendCallback(z, messageObject, tLRPC$KeyboardButton, tLRPC$InputCheckPasswordSRP, twoStepVerificationActivity, chatActivity, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0153, code lost:
        if (org.telegram.messenger.DialogObject.isEncryptedDialog(r37) == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void forwardWithoutAuthor(org.telegram.messenger.MessageObject r32, org.telegram.messenger.MessageObject r33, org.telegram.messenger.MessageObject r34, java.lang.Long r35, boolean r36, long r37, boolean r39, int r40, boolean r41, boolean r42, boolean r43) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.forwardWithoutAuthor(org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, java.lang.Long, boolean, long, boolean, int, boolean, boolean, boolean):void");
    }

    public static boolean checkUpdateStickersOrder(CharSequence charSequence) {
        if (charSequence instanceof Spannable) {
            for (AnimatedEmojiSpan animatedEmojiSpan : (AnimatedEmojiSpan[]) ((Spannable) charSequence).getSpans(0, charSequence.length(), AnimatedEmojiSpan.class)) {
                if (animatedEmojiSpan.fromEmojiKeyboard) {
                    return true;
                }
            }
        }
        return false;
    }

    public TLRPC$InputReplyTo createReplyInput(TL_stories$StoryItem tL_stories$StoryItem) {
        TLRPC$TL_inputReplyToStory tLRPC$TL_inputReplyToStory = new TLRPC$TL_inputReplyToStory();
        tLRPC$TL_inputReplyToStory.story_id = tL_stories$StoryItem.f1761id;
        tLRPC$TL_inputReplyToStory.user_id = getMessagesController().getInputUser(tL_stories$StoryItem.dialogId);
        return tLRPC$TL_inputReplyToStory;
    }

    public TLRPC$InputReplyTo createReplyInput(int i) {
        return createReplyInput(null, i, 0, null);
    }

    public TLRPC$InputReplyTo createReplyInput(TLRPC$InputPeer tLRPC$InputPeer, int i, int i2, ChatActivity.ReplyQuote replyQuote) {
        MessageObject messageObject;
        TLRPC$TL_inputReplyToMessage tLRPC$TL_inputReplyToMessage = new TLRPC$TL_inputReplyToMessage();
        tLRPC$TL_inputReplyToMessage.reply_to_msg_id = i;
        if (i2 != 0) {
            tLRPC$TL_inputReplyToMessage.flags |= 1;
            tLRPC$TL_inputReplyToMessage.top_msg_id = i2;
        }
        if (replyQuote != null) {
            String text = replyQuote.getText();
            tLRPC$TL_inputReplyToMessage.quote_text = text;
            if (!TextUtils.isEmpty(text)) {
                tLRPC$TL_inputReplyToMessage.flags |= 4;
                ArrayList<TLRPC$MessageEntity> entities = replyQuote.getEntities();
                tLRPC$TL_inputReplyToMessage.quote_entities = entities;
                if (entities != null && !entities.isEmpty()) {
                    tLRPC$TL_inputReplyToMessage.quote_entities = new ArrayList<>(tLRPC$TL_inputReplyToMessage.quote_entities);
                    tLRPC$TL_inputReplyToMessage.flags |= 8;
                }
            }
        }
        if (replyQuote != null && (messageObject = replyQuote.message) != null) {
            TLRPC$InputPeer inputPeer = getMessagesController().getInputPeer(messageObject.getDialogId());
            if (inputPeer != null && !MessageObject.peersEqual(inputPeer, tLRPC$InputPeer)) {
                tLRPC$TL_inputReplyToMessage.flags |= 2;
                tLRPC$TL_inputReplyToMessage.reply_to_peer_id = inputPeer;
            }
        }
        return tLRPC$TL_inputReplyToMessage;
    }

    public TLRPC$InputReplyTo createReplyInput(TLRPC$TL_messageReplyHeader tLRPC$TL_messageReplyHeader) {
        TLRPC$TL_inputReplyToMessage tLRPC$TL_inputReplyToMessage = new TLRPC$TL_inputReplyToMessage();
        tLRPC$TL_inputReplyToMessage.reply_to_msg_id = tLRPC$TL_messageReplyHeader.reply_to_msg_id;
        int i = tLRPC$TL_messageReplyHeader.flags;
        if ((i & 2) != 0) {
            tLRPC$TL_inputReplyToMessage.flags |= 1;
            tLRPC$TL_inputReplyToMessage.top_msg_id = tLRPC$TL_messageReplyHeader.reply_to_top_id;
        }
        if ((i & 1) != 0) {
            tLRPC$TL_inputReplyToMessage.flags |= 2;
            tLRPC$TL_inputReplyToMessage.reply_to_peer_id = MessagesController.getInstance(this.currentAccount).getInputPeer(tLRPC$TL_messageReplyHeader.reply_to_peer_id);
        }
        if (tLRPC$TL_messageReplyHeader.quote) {
            int i2 = tLRPC$TL_messageReplyHeader.flags;
            if ((i2 & 64) != 0) {
                tLRPC$TL_inputReplyToMessage.flags |= 4;
                tLRPC$TL_inputReplyToMessage.quote_text = tLRPC$TL_messageReplyHeader.quote_text;
            }
            if ((i2 & 128) != 0) {
                tLRPC$TL_inputReplyToMessage.flags |= 8;
                tLRPC$TL_inputReplyToMessage.quote_entities = tLRPC$TL_messageReplyHeader.quote_entities;
            }
        }
        return tLRPC$TL_inputReplyToMessage;
    }

    /* loaded from: classes4.dex */
    public class ImportingHistory {
        public long dialogId;
        public double estimatedUploadSpeed;
        public String historyPath;
        public long importId;
        private long lastUploadSize;
        private long lastUploadTime;
        public TLRPC$InputPeer peer;
        public long totalSize;
        public int uploadProgress;
        public long uploadedSize;
        public ArrayList<Uri> mediaPaths = new ArrayList<>();
        public HashSet<String> uploadSet = new HashSet<>();
        public HashMap<String, Float> uploadProgresses = new HashMap<>();
        public HashMap<String, Long> uploadSize = new HashMap<>();
        public ArrayList<String> uploadMedia = new ArrayList<>();
        public int timeUntilFinish = Integer.MAX_VALUE;

        public ImportingHistory() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initImport(TLRPC$InputFile tLRPC$InputFile) {
            TLRPC$TL_messages_initHistoryImport tLRPC$TL_messages_initHistoryImport = new TLRPC$TL_messages_initHistoryImport();
            tLRPC$TL_messages_initHistoryImport.file = tLRPC$InputFile;
            tLRPC$TL_messages_initHistoryImport.media_count = this.mediaPaths.size();
            tLRPC$TL_messages_initHistoryImport.peer = this.peer;
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_initHistoryImport, new C36401(tLRPC$TL_messages_initHistoryImport), 2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1 */
        /* loaded from: classes4.dex */
        public class C36401 implements RequestDelegate {
            final /* synthetic */ TLRPC$TL_messages_initHistoryImport val$req;

            C36401(TLRPC$TL_messages_initHistoryImport tLRPC$TL_messages_initHistoryImport) {
                this.val$req = tLRPC$TL_messages_initHistoryImport;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
                final TLRPC$TL_messages_initHistoryImport tLRPC$TL_messages_initHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingHistory.C36401.this.lambda$run$0(tLObject, tLRPC$TL_messages_initHistoryImport, tLRPC$TL_error);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLObject tLObject, TLRPC$TL_messages_initHistoryImport tLRPC$TL_messages_initHistoryImport, TLRPC$TL_error tLRPC$TL_error) {
                if (!(tLObject instanceof TLRPC$TL_messages_historyImport)) {
                    SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tLRPC$TL_messages_initHistoryImport, tLRPC$TL_error);
                    return;
                }
                ImportingHistory importingHistory = ImportingHistory.this;
                importingHistory.importId = ((TLRPC$TL_messages_historyImport) tLObject).f1703id;
                importingHistory.uploadSet.remove(importingHistory.historyPath);
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                if (ImportingHistory.this.uploadSet.isEmpty()) {
                    ImportingHistory.this.startImport();
                }
                ImportingHistory.this.lastUploadTime = SystemClock.elapsedRealtime();
                int size = ImportingHistory.this.uploadMedia.size();
                for (int i = 0; i < size; i++) {
                    SendMessagesHelper.this.getFileLoader().uploadFile(ImportingHistory.this.uploadMedia.get(i), false, true, ConnectionsManager.FileTypeFile);
                }
            }
        }

        public long getUploadedCount() {
            return this.uploadedSize;
        }

        public long getTotalCount() {
            return this.totalSize;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFileFailedToUpload(String str) {
            if (str.equals(this.historyPath)) {
                SendMessagesHelper.this.importingHistoryMap.remove(this.dialogId);
                TLRPC$TL_error tLRPC$TL_error = new TLRPC$TL_error();
                tLRPC$TL_error.code = 400;
                tLRPC$TL_error.text = "IMPORT_UPLOAD_FAILED";
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId), new TLRPC$TL_messages_initHistoryImport(), tLRPC$TL_error);
                return;
            }
            this.uploadSet.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUploadProgress(String str, long j, float f) {
            long j2;
            long j3;
            this.uploadProgresses.put(str, Float.valueOf(f));
            this.uploadSize.put(str, Long.valueOf(j));
            this.uploadedSize = 0L;
            for (Map.Entry<String, Long> entry : this.uploadSize.entrySet()) {
                this.uploadedSize += entry.getValue().longValue();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!str.equals(this.historyPath)) {
                long j4 = this.uploadedSize;
                if (j4 != this.lastUploadSize) {
                    if (elapsedRealtime != this.lastUploadTime) {
                        double d = (j4 - j2) / ((elapsedRealtime - j3) / 1000.0d);
                        double d2 = this.estimatedUploadSpeed;
                        if (d2 == 0.0d) {
                            this.estimatedUploadSpeed = d;
                        } else {
                            this.estimatedUploadSpeed = (d * 0.01d) + (0.99d * d2);
                        }
                        this.timeUntilFinish = (int) (((this.totalSize - j4) * 1000) / this.estimatedUploadSpeed);
                        this.lastUploadSize = j4;
                        this.lastUploadTime = elapsedRealtime;
                    }
                }
            }
            int uploadedCount = (int) ((((float) getUploadedCount()) / ((float) getTotalCount())) * 100.0f);
            if (this.uploadProgress != uploadedCount) {
                this.uploadProgress = uploadedCount;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onMediaImport(String str, long j, TLRPC$InputFile tLRPC$InputFile) {
            addUploadProgress(str, j, 1.0f);
            TLRPC$TL_messages_uploadImportedMedia tLRPC$TL_messages_uploadImportedMedia = new TLRPC$TL_messages_uploadImportedMedia();
            tLRPC$TL_messages_uploadImportedMedia.peer = this.peer;
            tLRPC$TL_messages_uploadImportedMedia.import_id = this.importId;
            tLRPC$TL_messages_uploadImportedMedia.file_name = new File(str).getName();
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            int lastIndexOf = tLRPC$TL_messages_uploadImportedMedia.file_name.lastIndexOf(46);
            String lowerCase = lastIndexOf != -1 ? tLRPC$TL_messages_uploadImportedMedia.file_name.substring(lastIndexOf + 1).toLowerCase() : "txt";
            String mimeTypeFromExtension = singleton.getMimeTypeFromExtension(lowerCase);
            if (mimeTypeFromExtension == null) {
                if ("opus".equals(lowerCase)) {
                    mimeTypeFromExtension = MimeTypes.AUDIO_OPUS;
                } else {
                    mimeTypeFromExtension = "webp".equals(lowerCase) ? "image/webp" : "text/plain";
                }
            }
            if (mimeTypeFromExtension.equals("image/jpg") || mimeTypeFromExtension.equals(MimeTypes.IMAGE_JPEG)) {
                TLRPC$TL_inputMediaUploadedPhoto tLRPC$TL_inputMediaUploadedPhoto = new TLRPC$TL_inputMediaUploadedPhoto();
                tLRPC$TL_inputMediaUploadedPhoto.file = tLRPC$InputFile;
                tLRPC$TL_messages_uploadImportedMedia.media = tLRPC$TL_inputMediaUploadedPhoto;
            } else {
                TLRPC$TL_inputMediaUploadedDocument tLRPC$TL_inputMediaUploadedDocument = new TLRPC$TL_inputMediaUploadedDocument();
                tLRPC$TL_inputMediaUploadedDocument.file = tLRPC$InputFile;
                tLRPC$TL_inputMediaUploadedDocument.mime_type = mimeTypeFromExtension;
                tLRPC$TL_messages_uploadImportedMedia.media = tLRPC$TL_inputMediaUploadedDocument;
            }
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_uploadImportedMedia, new C36412(str), 2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2 */
        /* loaded from: classes4.dex */
        public class C36412 implements RequestDelegate {
            final /* synthetic */ String val$path;

            C36412(String str) {
                this.val$path = str;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                final String str = this.val$path;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingHistory.C36412.this.lambda$run$0(str);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(String str) {
                ImportingHistory.this.uploadSet.remove(str);
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                if (ImportingHistory.this.uploadSet.isEmpty()) {
                    ImportingHistory.this.startImport();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startImport() {
            TLRPC$TL_messages_startHistoryImport tLRPC$TL_messages_startHistoryImport = new TLRPC$TL_messages_startHistoryImport();
            tLRPC$TL_messages_startHistoryImport.peer = this.peer;
            tLRPC$TL_messages_startHistoryImport.import_id = this.importId;
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_startHistoryImport, new C36423(tLRPC$TL_messages_startHistoryImport));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3 */
        /* loaded from: classes4.dex */
        public class C36423 implements RequestDelegate {
            final /* synthetic */ TLRPC$TL_messages_startHistoryImport val$req;

            C36423(TLRPC$TL_messages_startHistoryImport tLRPC$TL_messages_startHistoryImport) {
                this.val$req = tLRPC$TL_messages_startHistoryImport;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
                final TLRPC$TL_messages_startHistoryImport tLRPC$TL_messages_startHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingHistory.C36423.this.lambda$run$0(tLRPC$TL_error, tLRPC$TL_messages_startHistoryImport);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_messages_startHistoryImport tLRPC$TL_messages_startHistoryImport) {
                SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                if (tLRPC$TL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                } else {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tLRPC$TL_messages_startHistoryImport, tLRPC$TL_error);
                }
            }
        }

        public void setImportProgress(int i) {
            if (i == 100) {
                SendMessagesHelper.this.importingHistoryMap.remove(this.dialogId);
            }
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
        }
    }

    /* loaded from: classes4.dex */
    public static class ImportingSticker {
        public boolean animated;
        public String emoji;
        public TLRPC$TL_inputStickerSetItem item;
        public String mimeType;
        public String path;
        public boolean validated;

        public void uploadMedia(int i, TLRPC$InputFile tLRPC$InputFile, Runnable runnable) {
            TLRPC$TL_messages_uploadMedia tLRPC$TL_messages_uploadMedia = new TLRPC$TL_messages_uploadMedia();
            tLRPC$TL_messages_uploadMedia.peer = new TLRPC$TL_inputPeerSelf();
            TLRPC$TL_inputMediaUploadedDocument tLRPC$TL_inputMediaUploadedDocument = new TLRPC$TL_inputMediaUploadedDocument();
            tLRPC$TL_messages_uploadMedia.media = tLRPC$TL_inputMediaUploadedDocument;
            tLRPC$TL_inputMediaUploadedDocument.file = tLRPC$InputFile;
            tLRPC$TL_inputMediaUploadedDocument.mime_type = this.mimeType;
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_messages_uploadMedia, new C36431(runnable), 2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1 */
        /* loaded from: classes4.dex */
        public class C36431 implements RequestDelegate {
            final /* synthetic */ Runnable val$onFinish;

            C36431(Runnable runnable) {
                this.val$onFinish = runnable;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                final Runnable runnable = this.val$onFinish;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingSticker.C36431.this.lambda$run$0(tLObject, runnable);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLObject tLObject, Runnable runnable) {
                if (tLObject instanceof TLRPC$TL_messageMediaDocument) {
                    ImportingSticker.this.item = new TLRPC$TL_inputStickerSetItem();
                    ImportingSticker.this.item.document = new TLRPC$TL_inputDocument();
                    ImportingSticker importingSticker = ImportingSticker.this;
                    TLRPC$TL_inputStickerSetItem tLRPC$TL_inputStickerSetItem = importingSticker.item;
                    TLRPC$InputDocument tLRPC$InputDocument = tLRPC$TL_inputStickerSetItem.document;
                    TLRPC$Document tLRPC$Document = ((TLRPC$TL_messageMediaDocument) tLObject).document;
                    tLRPC$InputDocument.f1618id = tLRPC$Document.f1610id;
                    tLRPC$InputDocument.access_hash = tLRPC$Document.access_hash;
                    tLRPC$InputDocument.file_reference = tLRPC$Document.file_reference;
                    String str = importingSticker.emoji;
                    if (str == null) {
                        str = "";
                    }
                    tLRPC$TL_inputStickerSetItem.emoji = str;
                    importingSticker.mimeType = tLRPC$Document.mime_type;
                } else {
                    ImportingSticker importingSticker2 = ImportingSticker.this;
                    if (importingSticker2.animated) {
                        importingSticker2.mimeType = "application/x-bad-tgsticker";
                    }
                }
                runnable.run();
            }
        }
    }

    /* loaded from: classes4.dex */
    public class ImportingStickers {
        public double estimatedUploadSpeed;
        private long lastUploadSize;
        private long lastUploadTime;
        public String shortName;
        public String software;
        public String title;
        public long totalSize;
        public int uploadProgress;
        public long uploadedSize;
        public HashMap<String, ImportingSticker> uploadSet = new HashMap<>();
        public HashMap<String, Float> uploadProgresses = new HashMap<>();
        public HashMap<String, Long> uploadSize = new HashMap<>();
        public ArrayList<ImportingSticker> uploadMedia = new ArrayList<>();
        public int timeUntilFinish = Integer.MAX_VALUE;

        public ImportingStickers() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void initImport() {
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            this.lastUploadTime = SystemClock.elapsedRealtime();
            int size = this.uploadMedia.size();
            for (int i = 0; i < size; i++) {
                SendMessagesHelper.this.getFileLoader().uploadFile(this.uploadMedia.get(i).path, false, true, ConnectionsManager.FileTypeFile);
            }
        }

        public long getUploadedCount() {
            return this.uploadedSize;
        }

        public long getTotalCount() {
            return this.totalSize;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFileFailedToUpload(String str) {
            ImportingSticker remove = this.uploadSet.remove(str);
            if (remove != null) {
                this.uploadMedia.remove(remove);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUploadProgress(String str, long j, float f) {
            long j2;
            long j3;
            this.uploadProgresses.put(str, Float.valueOf(f));
            this.uploadSize.put(str, Long.valueOf(j));
            this.uploadedSize = 0L;
            for (Map.Entry<String, Long> entry : this.uploadSize.entrySet()) {
                this.uploadedSize += entry.getValue().longValue();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j4 = this.uploadedSize;
            if (j4 != this.lastUploadSize) {
                if (elapsedRealtime != this.lastUploadTime) {
                    double d = (j4 - j2) / ((elapsedRealtime - j3) / 1000.0d);
                    double d2 = this.estimatedUploadSpeed;
                    if (d2 == 0.0d) {
                        this.estimatedUploadSpeed = d;
                    } else {
                        this.estimatedUploadSpeed = (d * 0.01d) + (0.99d * d2);
                    }
                    this.timeUntilFinish = (int) (((this.totalSize - j4) * 1000) / this.estimatedUploadSpeed);
                    this.lastUploadSize = j4;
                    this.lastUploadTime = elapsedRealtime;
                }
            }
            int uploadedCount = (int) ((((float) getUploadedCount()) / ((float) getTotalCount())) * 100.0f);
            if (this.uploadProgress != uploadedCount) {
                this.uploadProgress = uploadedCount;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onMediaImport(final String str, long j, TLRPC$InputFile tLRPC$InputFile) {
            addUploadProgress(str, j, 1.0f);
            ImportingSticker importingSticker = this.uploadSet.get(str);
            if (importingSticker == null) {
                return;
            }
            importingSticker.uploadMedia(SendMessagesHelper.this.currentAccount, tLRPC$InputFile, new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingStickers$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.ImportingStickers.this.lambda$onMediaImport$0(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMediaImport$0(String str) {
            this.uploadSet.remove(str);
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
            if (this.uploadSet.isEmpty()) {
                startImport();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startImport() {
            TLRPC$TL_stickers_createStickerSet tLRPC$TL_stickers_createStickerSet = new TLRPC$TL_stickers_createStickerSet();
            tLRPC$TL_stickers_createStickerSet.user_id = new TLRPC$TL_inputUserSelf();
            tLRPC$TL_stickers_createStickerSet.title = this.title;
            tLRPC$TL_stickers_createStickerSet.short_name = this.shortName;
            tLRPC$TL_stickers_createStickerSet.animated = this.uploadMedia.get(0).animated;
            String str = this.software;
            if (str != null) {
                tLRPC$TL_stickers_createStickerSet.software = str;
                tLRPC$TL_stickers_createStickerSet.flags |= 8;
            }
            int size = this.uploadMedia.size();
            for (int i = 0; i < size; i++) {
                TLRPC$TL_inputStickerSetItem tLRPC$TL_inputStickerSetItem = this.uploadMedia.get(i).item;
                if (tLRPC$TL_inputStickerSetItem != null) {
                    tLRPC$TL_stickers_createStickerSet.stickers.add(tLRPC$TL_inputStickerSetItem);
                }
            }
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_stickers_createStickerSet, new C36441(tLRPC$TL_stickers_createStickerSet));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1 */
        /* loaded from: classes4.dex */
        public class C36441 implements RequestDelegate {
            final /* synthetic */ TLRPC$TL_stickers_createStickerSet val$req;

            C36441(TLRPC$TL_stickers_createStickerSet tLRPC$TL_stickers_createStickerSet) {
                this.val$req = tLRPC$TL_stickers_createStickerSet;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
                final TLRPC$TL_stickers_createStickerSet tLRPC$TL_stickers_createStickerSet = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingStickers.C36441.this.lambda$run$0(tLRPC$TL_error, tLRPC$TL_stickers_createStickerSet, tLObject);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_stickers_createStickerSet tLRPC$TL_stickers_createStickerSet, TLObject tLObject) {
                SendMessagesHelper.this.importingStickersMap.remove(ImportingStickers.this.shortName);
                if (tLRPC$TL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName);
                } else {
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName, tLRPC$TL_stickers_createStickerSet, tLRPC$TL_error);
                }
                if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
                    NotificationCenter notificationCenter = SendMessagesHelper.this.getNotificationCenter();
                    int i = NotificationCenter.stickersImportComplete;
                    if (notificationCenter.hasObservers(i)) {
                        SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, tLObject);
                    } else {
                        SendMessagesHelper.this.getMediaDataController().toggleStickerSet(null, tLObject, 2, null, false, false);
                    }
                }
            }
        }

        public void setImportProgress(int i) {
            if (i == 100) {
                SendMessagesHelper.this.importingStickersMap.remove(this.shortName);
            }
            SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stickersImportProgressChanged, this.shortName);
        }
    }

    static {
        int availableProcessors = Build.VERSION.SDK_INT >= 17 ? Runtime.getRuntime().availableProcessors() : 2;
        mediaSendThreadPool = new ThreadPoolExecutor(availableProcessors, availableProcessors, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        Instance = new SendMessagesHelper[5];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class MediaSendPrepareWorker {
        public volatile String parentObject;
        public volatile TLRPC$TL_photo photo;
        public CountDownLatch sync;

        private MediaSendPrepareWorker() {
        }
    }

    /* loaded from: classes4.dex */
    public static class LocationProvider {
        private LocationProviderDelegate delegate;
        private Location lastKnownLocation;
        private LocationManager locationManager;
        private Runnable locationQueryCancelRunnable;
        private GpsLocationListener gpsLocationListener = new GpsLocationListener();
        private GpsLocationListener networkLocationListener = new GpsLocationListener();

        /* loaded from: classes4.dex */
        public interface LocationProviderDelegate {
            void onLocationAcquired(Location location);

            void onUnableLocationAcquire();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes4.dex */
        public class GpsLocationListener implements LocationListener {
            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i, Bundle bundle) {
            }

            private GpsLocationListener() {
            }

            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location == null || LocationProvider.this.locationQueryCancelRunnable == null) {
                    return;
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m102d("found location " + location);
                }
                LocationProvider.this.lastKnownLocation = location;
                if (location.getAccuracy() < 100.0f) {
                    if (LocationProvider.this.delegate != null) {
                        LocationProvider.this.delegate.onLocationAcquired(location);
                    }
                    if (LocationProvider.this.locationQueryCancelRunnable != null) {
                        AndroidUtilities.cancelRunOnUIThread(LocationProvider.this.locationQueryCancelRunnable);
                    }
                    LocationProvider.this.cleanup();
                }
            }
        }

        public LocationProvider() {
        }

        public LocationProvider(LocationProviderDelegate locationProviderDelegate) {
            this.delegate = locationProviderDelegate;
        }

        public void setDelegate(LocationProviderDelegate locationProviderDelegate) {
            this.delegate = locationProviderDelegate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cleanup() {
            this.locationManager.removeUpdates(this.gpsLocationListener);
            this.locationManager.removeUpdates(this.networkLocationListener);
            this.lastKnownLocation = null;
            this.locationQueryCancelRunnable = null;
        }

        public void start() {
            if (this.locationManager == null) {
                this.locationManager = (LocationManager) ApplicationLoader.applicationContext.getSystemService("location");
            }
            try {
                this.locationManager.requestLocationUpdates("gps", 1L, BitmapDescriptorFactory.HUE_RED, this.gpsLocationListener);
            } catch (Exception e) {
                FileLog.m99e(e);
            }
            try {
                this.locationManager.requestLocationUpdates("network", 1L, BitmapDescriptorFactory.HUE_RED, this.networkLocationListener);
            } catch (Exception e2) {
                FileLog.m99e(e2);
            }
            try {
                Location lastKnownLocation = this.locationManager.getLastKnownLocation("gps");
                this.lastKnownLocation = lastKnownLocation;
                if (lastKnownLocation == null) {
                    this.lastKnownLocation = this.locationManager.getLastKnownLocation("network");
                }
            } catch (Exception e3) {
                FileLog.m99e(e3);
            }
            Runnable runnable = this.locationQueryCancelRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$LocationProvider$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.LocationProvider.this.lambda$start$0();
                }
            };
            this.locationQueryCancelRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 5000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$0() {
            LocationProviderDelegate locationProviderDelegate = this.delegate;
            if (locationProviderDelegate != null) {
                Location location = this.lastKnownLocation;
                if (location != null) {
                    locationProviderDelegate.onLocationAcquired(location);
                } else {
                    locationProviderDelegate.onUnableLocationAcquire();
                }
            }
            cleanup();
        }

        public void stop() {
            if (this.locationManager == null) {
                return;
            }
            Runnable runnable = this.locationQueryCancelRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            cleanup();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public class DelayedMessageSendAfterRequest {
        public DelayedMessage delayedMessage;
        public MessageObject msgObj;
        public ArrayList<MessageObject> msgObjs;
        public String originalPath;
        public ArrayList<String> originalPaths;
        public Object parentObject;
        public ArrayList<Object> parentObjects;
        public TLObject request;
        public boolean scheduled;

        protected DelayedMessageSendAfterRequest() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public class DelayedMessage {
        public TLRPC$EncryptedChat encryptedChat;
        public HashMap<Object, Object> extraHashMap;
        public int finalGroupMessage;
        public long groupId;
        public String httpLocation;
        public ArrayList<String> httpLocations;
        public ArrayList<TLRPC$InputMedia> inputMedias;
        public TLRPC$InputMedia inputUploadMedia;
        public TLObject locationParent;
        public ArrayList<TLRPC$PhotoSize> locations;
        public ArrayList<MessageObject> messageObjects;
        public ArrayList<TLRPC$Message> messages;
        public MessageObject obj;
        public String originalPath;
        public ArrayList<String> originalPaths;
        public Object parentObject;
        public ArrayList<Object> parentObjects;
        public long peer;
        public boolean performMediaUpload;
        public TLRPC$PhotoSize photoSize;
        ArrayList<DelayedMessageSendAfterRequest> requests;
        public boolean retriedToSend;
        public boolean scheduled;
        public TLObject sendEncryptedRequest;
        public TLObject sendRequest;
        public int topMessageId;
        public int type;
        public VideoEditedInfo videoEditedInfo;
        public ArrayList<VideoEditedInfo> videoEditedInfos;

        public DelayedMessage(long j) {
            this.peer = j;
        }

        public void initForGroup(long j) {
            this.type = 4;
            this.groupId = j;
            this.messageObjects = new ArrayList<>();
            this.messages = new ArrayList<>();
            this.inputMedias = new ArrayList<>();
            this.originalPaths = new ArrayList<>();
            this.parentObjects = new ArrayList<>();
            this.extraHashMap = new HashMap<>();
            this.locations = new ArrayList<>();
            this.httpLocations = new ArrayList<>();
            this.videoEditedInfos = new ArrayList<>();
        }

        public void addDelayedRequest(TLObject tLObject, MessageObject messageObject, String str, Object obj, DelayedMessage delayedMessage, boolean z) {
            DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = new DelayedMessageSendAfterRequest();
            delayedMessageSendAfterRequest.request = tLObject;
            delayedMessageSendAfterRequest.msgObj = messageObject;
            delayedMessageSendAfterRequest.originalPath = str;
            delayedMessageSendAfterRequest.delayedMessage = delayedMessage;
            delayedMessageSendAfterRequest.parentObject = obj;
            delayedMessageSendAfterRequest.scheduled = z;
            if (this.requests == null) {
                this.requests = new ArrayList<>();
            }
            this.requests.add(delayedMessageSendAfterRequest);
        }

        public void addDelayedRequest(TLObject tLObject, ArrayList<MessageObject> arrayList, ArrayList<String> arrayList2, ArrayList<Object> arrayList3, DelayedMessage delayedMessage, boolean z) {
            DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = new DelayedMessageSendAfterRequest();
            delayedMessageSendAfterRequest.request = tLObject;
            delayedMessageSendAfterRequest.msgObjs = arrayList;
            delayedMessageSendAfterRequest.originalPaths = arrayList2;
            delayedMessageSendAfterRequest.delayedMessage = delayedMessage;
            delayedMessageSendAfterRequest.parentObjects = arrayList3;
            delayedMessageSendAfterRequest.scheduled = z;
            if (this.requests == null) {
                this.requests = new ArrayList<>();
            }
            this.requests.add(delayedMessageSendAfterRequest);
        }

        public void sendDelayedRequests() {
            ArrayList<DelayedMessageSendAfterRequest> arrayList = this.requests;
            if (arrayList != null) {
                int i = this.type;
                if (i == 4 || i == 0) {
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        DelayedMessageSendAfterRequest delayedMessageSendAfterRequest = this.requests.get(i2);
                        TLObject tLObject = delayedMessageSendAfterRequest.request;
                        if (tLObject instanceof TLRPC$TL_messages_sendEncryptedMultiMedia) {
                            SendMessagesHelper.this.getSecretChatHelper().performSendEncryptedRequest((TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessageSendAfterRequest.request, this);
                        } else if (!(tLObject instanceof TLRPC$TL_messages_sendMultiMedia)) {
                            SendMessagesHelper.this.performSendMessageRequest(tLObject, delayedMessageSendAfterRequest.msgObj, delayedMessageSendAfterRequest.originalPath, delayedMessageSendAfterRequest.delayedMessage, delayedMessageSendAfterRequest.parentObject, null, delayedMessageSendAfterRequest.scheduled);
                        } else {
                            SendMessagesHelper.this.performSendMessageRequestMulti((TLRPC$TL_messages_sendMultiMedia) tLObject, delayedMessageSendAfterRequest.msgObjs, delayedMessageSendAfterRequest.originalPaths, delayedMessageSendAfterRequest.parentObjects, delayedMessageSendAfterRequest.delayedMessage, delayedMessageSendAfterRequest.scheduled);
                        }
                    }
                    this.requests = null;
                }
            }
        }

        public void markAsError() {
            if (this.type == 4) {
                for (int i = 0; i < this.messageObjects.size(); i++) {
                    MessageObject messageObject = this.messageObjects.get(i);
                    SendMessagesHelper.this.getMessagesStorage().markMessageAsSendError(messageObject.messageOwner, messageObject.scheduled);
                    messageObject.messageOwner.send_state = 2;
                    SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
                    SendMessagesHelper.this.processSentMessage(messageObject.getId());
                    SendMessagesHelper.this.removeFromUploadingMessages(messageObject.getId(), this.scheduled);
                }
                SendMessagesHelper.this.delayedMessages.remove("group_" + this.groupId);
            } else {
                MessagesStorage messagesStorage = SendMessagesHelper.this.getMessagesStorage();
                MessageObject messageObject2 = this.obj;
                messagesStorage.markMessageAsSendError(messageObject2.messageOwner, messageObject2.scheduled);
                this.obj.messageOwner.send_state = 2;
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(this.obj.getId()));
                SendMessagesHelper.this.processSentMessage(this.obj.getId());
                SendMessagesHelper.this.removeFromUploadingMessages(this.obj.getId(), this.scheduled);
            }
            sendDelayedRequests();
        }
    }

    public static SendMessagesHelper getInstance(int i) {
        SendMessagesHelper sendMessagesHelper = Instance[i];
        if (sendMessagesHelper == null) {
            synchronized (SendMessagesHelper.class) {
                sendMessagesHelper = Instance[i];
                if (sendMessagesHelper == null) {
                    SendMessagesHelper[] sendMessagesHelperArr = Instance;
                    SendMessagesHelper sendMessagesHelper2 = new SendMessagesHelper(i);
                    sendMessagesHelperArr[i] = sendMessagesHelper2;
                    sendMessagesHelper = sendMessagesHelper2;
                }
            }
        }
        return sendMessagesHelper;
    }

    public SendMessagesHelper(int i) {
        super(i);
        this.delayedMessages = new HashMap<>();
        this.unsentMessages = new SparseArray<>();
        this.sendingMessages = new SparseArray<>();
        this.editingMessages = new SparseArray<>();
        this.uploadMessages = new SparseArray<>();
        this.sendingMessagesIdDialogs = new LongSparseArray<>();
        this.uploadingMessagesIdDialogs = new LongSparseArray<>();
        this.waitingForLocation = new HashMap<>();
        this.waitingForCallback = new HashMap<>();
        this.waitingForCallbackMap = new HashMap<>();
        this.waitingForVote = new HashMap<>();
        this.voteSendTime = new LongSparseArray<>();
        this.importingHistoryFiles = new HashMap<>();
        this.importingHistoryMap = new LongSparseArray<>();
        this.importingStickersFiles = new HashMap<>();
        this.importingStickersMap = new HashMap<>();
        this.locationProvider = new LocationProvider(new LocationProvider.LocationProviderDelegate() { // from class: org.telegram.messenger.SendMessagesHelper.1
            @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
            public void onLocationAcquired(Location location) {
                SendMessagesHelper.this.sendLocation(location);
                SendMessagesHelper.this.waitingForLocation.clear();
            }

            @Override // org.telegram.messenger.SendMessagesHelper.LocationProvider.LocationProviderDelegate
            public void onUnableLocationAcquire() {
                SendMessagesHelper.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.wasUnableToFindCurrentLocation, new HashMap(SendMessagesHelper.this.waitingForLocation));
                SendMessagesHelper.this.waitingForLocation.clear();
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$new$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploaded);
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploadProgressChanged);
        getNotificationCenter().addObserver(this, NotificationCenter.fileUploadFailed);
        getNotificationCenter().addObserver(this, NotificationCenter.filePreparingStarted);
        getNotificationCenter().addObserver(this, NotificationCenter.fileNewChunkAvailable);
        getNotificationCenter().addObserver(this, NotificationCenter.filePreparingFailed);
        getNotificationCenter().addObserver(this, NotificationCenter.httpFileDidFailedLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.httpFileDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.fileLoaded);
        getNotificationCenter().addObserver(this, NotificationCenter.fileLoadFailed);
    }

    public void cleanup() {
        this.delayedMessages.clear();
        this.unsentMessages.clear();
        this.sendingMessages.clear();
        this.editingMessages.clear();
        this.sendingMessagesIdDialogs.clear();
        this.uploadMessages.clear();
        this.uploadingMessagesIdDialogs.clear();
        this.waitingForLocation.clear();
        this.waitingForCallback.clear();
        this.waitingForVote.clear();
        this.importingHistoryFiles.clear();
        this.importingHistoryMap.clear();
        this.importingStickersFiles.clear();
        this.importingStickersMap.clear();
        this.locationProvider.stop();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        String str;
        ArrayList<DelayedMessage> arrayList;
        char c;
        final MessageObject messageObject;
        MessageObject messageObject2;
        String str2;
        ArrayList<DelayedMessage> arrayList2;
        ArrayList<DelayedMessage> arrayList3;
        TLRPC$InputMedia tLRPC$InputMedia;
        ArrayList<DelayedMessage> arrayList4;
        TLRPC$InputFile tLRPC$InputFile;
        String str3;
        TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile;
        TLObject tLObject;
        TLRPC$TL_decryptedMessage tLRPC$TL_decryptedMessage;
        ArrayList<DelayedMessage> arrayList5;
        TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile2;
        int i3;
        String str4;
        int i4;
        TLRPC$PhotoSize tLRPC$PhotoSize;
        TLRPC$PhotoSize tLRPC$PhotoSize2;
        int i5 = 0;
        if (i == NotificationCenter.fileUploadProgressChanged) {
            String str5 = (String) objArr[0];
            ImportingHistory importingHistory = this.importingHistoryFiles.get(str5);
            if (importingHistory != null) {
                Long l = (Long) objArr[1];
                importingHistory.addUploadProgress(str5, l.longValue(), ((float) l.longValue()) / ((float) ((Long) objArr[2]).longValue()));
            }
            ImportingStickers importingStickers = this.importingStickersFiles.get(str5);
            if (importingStickers != null) {
                Long l2 = (Long) objArr[1];
                importingStickers.addUploadProgress(str5, l2.longValue(), ((float) l2.longValue()) / ((float) ((Long) objArr[2]).longValue()));
            }
        } else if (i == NotificationCenter.fileUploaded) {
            String str6 = (String) objArr[0];
            TLRPC$InputFile tLRPC$InputFile2 = (TLRPC$InputFile) objArr[1];
            TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile3 = (TLRPC$InputEncryptedFile) objArr[2];
            ImportingHistory importingHistory2 = this.importingHistoryFiles.get(str6);
            if (importingHistory2 != null) {
                if (str6.equals(importingHistory2.historyPath)) {
                    importingHistory2.initImport(tLRPC$InputFile2);
                } else {
                    importingHistory2.onMediaImport(str6, ((Long) objArr[5]).longValue(), tLRPC$InputFile2);
                }
            }
            ImportingStickers importingStickers2 = this.importingStickersFiles.get(str6);
            if (importingStickers2 != null) {
                importingStickers2.onMediaImport(str6, ((Long) objArr[5]).longValue(), tLRPC$InputFile2);
            }
            ArrayList<DelayedMessage> arrayList6 = this.delayedMessages.get(str6);
            if (arrayList6 != null) {
                while (i5 < arrayList6.size()) {
                    DelayedMessage delayedMessage = arrayList6.get(i5);
                    TLObject tLObject2 = delayedMessage.sendRequest;
                    if (tLObject2 instanceof TLRPC$TL_messages_sendMedia) {
                        tLRPC$InputMedia = ((TLRPC$TL_messages_sendMedia) tLObject2).media;
                    } else if (tLObject2 instanceof TLRPC$TL_messages_editMessage) {
                        tLRPC$InputMedia = ((TLRPC$TL_messages_editMessage) tLObject2).media;
                    } else {
                        tLRPC$InputMedia = tLObject2 instanceof TLRPC$TL_messages_sendMultiMedia ? (TLRPC$InputMedia) delayedMessage.extraHashMap.get(str6) : null;
                    }
                    if (tLRPC$InputFile2 == null || tLRPC$InputMedia == null) {
                        arrayList4 = arrayList6;
                        tLRPC$InputFile = tLRPC$InputFile2;
                        str3 = str6;
                        tLRPC$InputEncryptedFile = tLRPC$InputEncryptedFile3;
                        if (tLRPC$InputEncryptedFile != null && (tLObject = delayedMessage.sendEncryptedRequest) != null) {
                            if (delayedMessage.type == 4) {
                                TLRPC$TL_messages_sendEncryptedMultiMedia tLRPC$TL_messages_sendEncryptedMultiMedia = (TLRPC$TL_messages_sendEncryptedMultiMedia) tLObject;
                                TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile4 = (TLRPC$InputEncryptedFile) delayedMessage.extraHashMap.get(str3);
                                int indexOf = tLRPC$TL_messages_sendEncryptedMultiMedia.files.indexOf(tLRPC$InputEncryptedFile4);
                                if (indexOf >= 0) {
                                    tLRPC$TL_messages_sendEncryptedMultiMedia.files.set(indexOf, tLRPC$InputEncryptedFile);
                                    if (tLRPC$InputEncryptedFile4.f1619id == 1) {
                                        delayedMessage.photoSize = (TLRPC$PhotoSize) delayedMessage.extraHashMap.get(str3 + "_t");
                                    }
                                    tLRPC$TL_decryptedMessage = tLRPC$TL_messages_sendEncryptedMultiMedia.messages.get(indexOf);
                                } else {
                                    tLRPC$TL_decryptedMessage = null;
                                }
                            } else {
                                tLRPC$TL_decryptedMessage = (TLRPC$TL_decryptedMessage) tLObject;
                            }
                            if (tLRPC$TL_decryptedMessage != null) {
                                TLRPC$DecryptedMessageMedia tLRPC$DecryptedMessageMedia = tLRPC$TL_decryptedMessage.media;
                                if ((tLRPC$DecryptedMessageMedia instanceof TLRPC$TL_decryptedMessageMediaVideo) || (tLRPC$DecryptedMessageMedia instanceof TLRPC$TL_decryptedMessageMediaPhoto) || (tLRPC$DecryptedMessageMedia instanceof TLRPC$TL_decryptedMessageMediaDocument)) {
                                    tLRPC$TL_decryptedMessage.media.size = ((Long) objArr[5]).longValue();
                                }
                                TLRPC$DecryptedMessageMedia tLRPC$DecryptedMessageMedia2 = tLRPC$TL_decryptedMessage.media;
                                tLRPC$DecryptedMessageMedia2.key = (byte[]) objArr[3];
                                tLRPC$DecryptedMessageMedia2.f1606iv = (byte[]) objArr[4];
                                if (delayedMessage.type == 4) {
                                    uploadMultiMedia(delayedMessage, null, tLRPC$InputEncryptedFile, str3);
                                } else {
                                    SecretChatHelper secretChatHelper = getSecretChatHelper();
                                    MessageObject messageObject3 = delayedMessage.obj;
                                    secretChatHelper.performSendEncryptedRequest(tLRPC$TL_decryptedMessage, messageObject3.messageOwner, delayedMessage.encryptedChat, tLRPC$InputEncryptedFile, delayedMessage.originalPath, messageObject3);
                                }
                            }
                            arrayList4.remove(i5);
                            i5--;
                        }
                    } else {
                        int i6 = delayedMessage.type;
                        if (i6 == 0) {
                            tLRPC$InputMedia.file = tLRPC$InputFile2;
                            arrayList5 = arrayList6;
                            tLRPC$InputEncryptedFile2 = tLRPC$InputEncryptedFile3;
                            i3 = i5;
                            tLRPC$InputFile = tLRPC$InputFile2;
                            str4 = str6;
                            performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, delayedMessage, true, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                        } else {
                            arrayList5 = arrayList6;
                            tLRPC$InputEncryptedFile2 = tLRPC$InputEncryptedFile3;
                            i3 = i5;
                            tLRPC$InputFile = tLRPC$InputFile2;
                            str4 = str6;
                            if (i6 == 1) {
                                if (tLRPC$InputMedia.file == null) {
                                    tLRPC$InputMedia.file = tLRPC$InputFile;
                                    if (tLRPC$InputMedia.thumb == null && (tLRPC$PhotoSize2 = delayedMessage.photoSize) != null && tLRPC$PhotoSize2.location != null) {
                                        performSendDelayedMessage(delayedMessage);
                                    } else {
                                        performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                    }
                                } else {
                                    tLRPC$InputMedia.thumb = tLRPC$InputFile;
                                    tLRPC$InputMedia.flags |= 4;
                                    performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                }
                            } else if (i6 == 2) {
                                if (tLRPC$InputMedia.file == null) {
                                    tLRPC$InputMedia.file = tLRPC$InputFile;
                                    if (tLRPC$InputMedia.thumb == null && (tLRPC$PhotoSize = delayedMessage.photoSize) != null && tLRPC$PhotoSize.location != null) {
                                        performSendDelayedMessage(delayedMessage);
                                    } else {
                                        performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                    }
                                } else {
                                    tLRPC$InputMedia.thumb = tLRPC$InputFile;
                                    tLRPC$InputMedia.flags |= 4;
                                    performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                                }
                            } else if (i6 == 3) {
                                tLRPC$InputMedia.file = tLRPC$InputFile;
                                performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                            } else {
                                if (i6 != 4) {
                                    str3 = str4;
                                } else if (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaUploadedDocument) {
                                    if (tLRPC$InputMedia.file == null) {
                                        tLRPC$InputMedia.file = tLRPC$InputFile;
                                        HashMap<Object, Object> hashMap = delayedMessage.extraHashMap;
                                        StringBuilder sb = new StringBuilder();
                                        str3 = str4;
                                        sb.append(str3);
                                        sb.append("_i");
                                        int indexOf2 = delayedMessage.messageObjects.indexOf((MessageObject) hashMap.get(sb.toString()));
                                        TLRPC$PhotoSize tLRPC$PhotoSize3 = (TLRPC$PhotoSize) delayedMessage.extraHashMap.get(str3 + "_t");
                                        delayedMessage.photoSize = tLRPC$PhotoSize3;
                                        if (tLRPC$InputMedia.thumb == null && tLRPC$PhotoSize3 != null && tLRPC$PhotoSize3.location != null) {
                                            delayedMessage.performMediaUpload = true;
                                            performSendDelayedMessage(delayedMessage, indexOf2);
                                        } else {
                                            uploadMultiMedia(delayedMessage, tLRPC$InputMedia, null, str3);
                                        }
                                    } else {
                                        str3 = str4;
                                        tLRPC$InputMedia.thumb = tLRPC$InputFile;
                                        tLRPC$InputMedia.flags |= 4;
                                        uploadMultiMedia(delayedMessage, tLRPC$InputMedia, null, (String) delayedMessage.extraHashMap.get(str3 + "_o"));
                                    }
                                } else {
                                    str3 = str4;
                                    tLRPC$InputMedia.file = tLRPC$InputFile;
                                    uploadMultiMedia(delayedMessage, tLRPC$InputMedia, null, str3);
                                }
                                arrayList4 = arrayList5;
                                i4 = i3;
                                arrayList4.remove(i4);
                                i5 = i4 - 1;
                                tLRPC$InputEncryptedFile = tLRPC$InputEncryptedFile2;
                            }
                        }
                        arrayList4 = arrayList5;
                        i4 = i3;
                        str3 = str4;
                        arrayList4.remove(i4);
                        i5 = i4 - 1;
                        tLRPC$InputEncryptedFile = tLRPC$InputEncryptedFile2;
                    }
                    i5++;
                    tLRPC$InputEncryptedFile3 = tLRPC$InputEncryptedFile;
                    str6 = str3;
                    tLRPC$InputFile2 = tLRPC$InputFile;
                    arrayList6 = arrayList4;
                }
                ArrayList<DelayedMessage> arrayList7 = arrayList6;
                String str7 = str6;
                if (arrayList7.isEmpty()) {
                    this.delayedMessages.remove(str7);
                }
            }
        } else if (i == NotificationCenter.fileUploadFailed) {
            String str8 = (String) objArr[0];
            boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
            ImportingHistory importingHistory3 = this.importingHistoryFiles.get(str8);
            if (importingHistory3 != null) {
                importingHistory3.onFileFailedToUpload(str8);
            }
            ImportingStickers importingStickers3 = this.importingStickersFiles.get(str8);
            if (importingStickers3 != null) {
                importingStickers3.onFileFailedToUpload(str8);
            }
            ArrayList<DelayedMessage> arrayList8 = this.delayedMessages.get(str8);
            if (arrayList8 != null) {
                while (i5 < arrayList8.size()) {
                    DelayedMessage delayedMessage2 = arrayList8.get(i5);
                    if ((booleanValue && delayedMessage2.sendEncryptedRequest != null) || (!booleanValue && delayedMessage2.sendRequest != null)) {
                        delayedMessage2.markAsError();
                        arrayList8.remove(i5);
                        i5--;
                    }
                    i5++;
                }
                if (arrayList8.isEmpty()) {
                    this.delayedMessages.remove(str8);
                }
            }
        } else if (i == NotificationCenter.filePreparingStarted) {
            MessageObject messageObject4 = (MessageObject) objArr[0];
            if (messageObject4.getId() == 0) {
                return;
            }
            String str9 = (String) objArr[1];
            ArrayList<DelayedMessage> arrayList9 = this.delayedMessages.get(messageObject4.messageOwner.attachPath);
            if (arrayList9 != null) {
                while (true) {
                    if (i5 >= arrayList9.size()) {
                        break;
                    }
                    DelayedMessage delayedMessage3 = arrayList9.get(i5);
                    if (delayedMessage3.type == 4) {
                        int indexOf3 = delayedMessage3.messageObjects.indexOf(messageObject4);
                        delayedMessage3.photoSize = (TLRPC$PhotoSize) delayedMessage3.extraHashMap.get(messageObject4.messageOwner.attachPath + "_t");
                        delayedMessage3.performMediaUpload = true;
                        performSendDelayedMessage(delayedMessage3, indexOf3);
                        arrayList9.remove(i5);
                        break;
                    } else if (delayedMessage3.obj == messageObject4) {
                        delayedMessage3.videoEditedInfo = null;
                        performSendDelayedMessage(delayedMessage3);
                        arrayList9.remove(i5);
                        break;
                    } else {
                        i5++;
                    }
                }
                if (arrayList9.isEmpty()) {
                    this.delayedMessages.remove(messageObject4.messageOwner.attachPath);
                }
            }
        } else {
            MessageObject messageObject5 = null;
            if (i == NotificationCenter.fileNewChunkAvailable) {
                MessageObject messageObject6 = (MessageObject) objArr[0];
                if (messageObject6.getId() == 0) {
                    return;
                }
                String str10 = (String) objArr[1];
                long longValue = ((Long) objArr[2]).longValue();
                long longValue2 = ((Long) objArr[3]).longValue();
                getFileLoader().checkUploadNewDataAvailable(str10, DialogObject.isEncryptedDialog(messageObject6.getDialogId()), longValue, longValue2, (Float) objArr[4]);
                if (longValue2 == 0 || (arrayList3 = this.delayedMessages.get(messageObject6.messageOwner.attachPath)) == null) {
                    return;
                }
                for (int i7 = 0; i7 < arrayList3.size(); i7++) {
                    DelayedMessage delayedMessage4 = arrayList3.get(i7);
                    if (delayedMessage4.type == 4) {
                        int i8 = 0;
                        while (true) {
                            if (i8 >= delayedMessage4.messageObjects.size()) {
                                break;
                            }
                            MessageObject messageObject7 = delayedMessage4.messageObjects.get(i8);
                            if (messageObject7 == messageObject6) {
                                delayedMessage4.obj.shouldRemoveVideoEditedInfo = true;
                                messageObject7.messageOwner.params.remove("ve");
                                messageObject7.messageOwner.media.document.size = longValue2;
                                ArrayList<TLRPC$Message> arrayList10 = new ArrayList<>();
                                arrayList10.add(messageObject7.messageOwner);
                                getMessagesStorage().putMessages(arrayList10, false, true, false, 0, messageObject7.scheduled, 0);
                                break;
                            }
                            i8++;
                        }
                    } else {
                        MessageObject messageObject8 = delayedMessage4.obj;
                        if (messageObject8 == messageObject6) {
                            messageObject8.shouldRemoveVideoEditedInfo = true;
                            messageObject8.messageOwner.params.remove("ve");
                            delayedMessage4.obj.messageOwner.media.document.size = longValue2;
                            ArrayList<TLRPC$Message> arrayList11 = new ArrayList<>();
                            arrayList11.add(delayedMessage4.obj.messageOwner);
                            getMessagesStorage().putMessages(arrayList11, false, true, false, 0, delayedMessage4.obj.scheduled, 0);
                            return;
                        }
                    }
                }
            } else if (i == NotificationCenter.filePreparingFailed) {
                MessageObject messageObject9 = (MessageObject) objArr[0];
                if (messageObject9.getId() == 0 || (arrayList2 = this.delayedMessages.get((str2 = (String) objArr[1]))) == null) {
                    return;
                }
                int i9 = 0;
                while (i9 < arrayList2.size()) {
                    DelayedMessage delayedMessage5 = arrayList2.get(i9);
                    if (delayedMessage5.type == 4) {
                        for (int i10 = 0; i10 < delayedMessage5.messages.size(); i10++) {
                            if (delayedMessage5.messageObjects.get(i10) == messageObject9) {
                                delayedMessage5.markAsError();
                                arrayList2.remove(i9);
                                i9--;
                                break;
                            }
                        }
                        i9++;
                    } else if (delayedMessage5.obj == messageObject9) {
                        delayedMessage5.markAsError();
                        arrayList2.remove(i9);
                        i9--;
                        break;
                        i9++;
                    } else {
                        i9++;
                    }
                }
                if (arrayList2.isEmpty()) {
                    this.delayedMessages.remove(str2);
                }
            } else if (i == NotificationCenter.httpFileDidLoad) {
                final String str11 = (String) objArr[0];
                ArrayList<DelayedMessage> arrayList12 = this.delayedMessages.get(str11);
                if (arrayList12 != null) {
                    int i11 = 0;
                    while (i11 < arrayList12.size()) {
                        final DelayedMessage delayedMessage6 = arrayList12.get(i11);
                        int i12 = delayedMessage6.type;
                        if (i12 == 0) {
                            messageObject = delayedMessage6.obj;
                            c = 0;
                        } else {
                            if (i12 == 2) {
                                messageObject2 = delayedMessage6.obj;
                            } else if (i12 == 4) {
                                messageObject2 = (MessageObject) delayedMessage6.extraHashMap.get(str11);
                                if (messageObject2.getDocument() == null) {
                                    messageObject = messageObject2;
                                    c = 0;
                                }
                            } else {
                                c = 65535;
                                messageObject = messageObject5;
                            }
                            messageObject = messageObject2;
                            c = 1;
                        }
                        if (c == 0) {
                            final File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str11) + "." + ImageLoader.getHttpUrlExtension(str11, "file"));
                            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda25
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.this.lambda$didReceivedNotification$2(file, messageObject, delayedMessage6, str11);
                                }
                            });
                        } else if (c == 1) {
                            final File file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(str11) + ".gif");
                            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda37
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.this.lambda$didReceivedNotification$4(delayedMessage6, file2, messageObject);
                                }
                            });
                        }
                        i11++;
                        messageObject5 = null;
                    }
                    this.delayedMessages.remove(str11);
                }
            } else if (i == NotificationCenter.fileLoaded) {
                String str12 = (String) objArr[0];
                ArrayList<DelayedMessage> arrayList13 = this.delayedMessages.get(str12);
                if (arrayList13 != null) {
                    while (i5 < arrayList13.size()) {
                        performSendDelayedMessage(arrayList13.get(i5));
                        i5++;
                    }
                    this.delayedMessages.remove(str12);
                }
            } else if ((i == NotificationCenter.httpFileDidFailedLoad || i == NotificationCenter.fileLoadFailed) && (arrayList = this.delayedMessages.get((str = (String) objArr[0]))) != null) {
                while (i5 < arrayList.size()) {
                    arrayList.get(i5).markAsError();
                    i5++;
                }
                this.delayedMessages.remove(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$2(final File file, final MessageObject messageObject, final DelayedMessage delayedMessage, final String str) {
        final TLRPC$TL_photo generatePhotoSizes = generatePhotoSizes(file.toString(), null);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$didReceivedNotification$1(generatePhotoSizes, messageObject, file, delayedMessage, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$1(TLRPC$TL_photo tLRPC$TL_photo, MessageObject messageObject, File file, DelayedMessage delayedMessage, String str) {
        if (tLRPC$TL_photo != null) {
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            tLRPC$Message.media.photo = tLRPC$TL_photo;
            tLRPC$Message.attachPath = file.toString();
            ArrayList<TLRPC$Message> arrayList = new ArrayList<>();
            arrayList.add(messageObject.messageOwner);
            getMessagesStorage().putMessages(arrayList, false, true, false, 0, messageObject.scheduled, 0);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateMessageMedia, messageObject.messageOwner);
            ArrayList<TLRPC$PhotoSize> arrayList2 = tLRPC$TL_photo.sizes;
            delayedMessage.photoSize = arrayList2.get(arrayList2.size() - 1);
            delayedMessage.locationParent = tLRPC$TL_photo;
            delayedMessage.httpLocation = null;
            if (delayedMessage.type == 4) {
                delayedMessage.performMediaUpload = true;
                performSendDelayedMessage(delayedMessage, delayedMessage.messageObjects.indexOf(messageObject));
                return;
            }
            performSendDelayedMessage(delayedMessage);
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m101e("can't load image " + str + " to file " + file.toString());
        }
        delayedMessage.markAsError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$4(final DelayedMessage delayedMessage, final File file, final MessageObject messageObject) {
        final TLRPC$Document document = delayedMessage.obj.getDocument();
        if (document.thumbs.isEmpty() || (document.thumbs.get(0).location instanceof TLRPC$TL_fileLocationUnavailable)) {
            try {
                Bitmap loadBitmap = ImageLoader.loadBitmap(file.getAbsolutePath(), null, 90.0f, 90.0f, true);
                if (loadBitmap != null) {
                    document.thumbs.clear();
                    document.thumbs.add(ImageLoader.scaleAndSaveImage(loadBitmap, 90.0f, 90.0f, 55, delayedMessage.sendEncryptedRequest != null));
                    loadBitmap.recycle();
                }
            } catch (Exception e) {
                document.thumbs.clear();
                FileLog.m99e(e);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$didReceivedNotification$3(delayedMessage, file, document, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didReceivedNotification$3(DelayedMessage delayedMessage, File file, TLRPC$Document tLRPC$Document, MessageObject messageObject) {
        delayedMessage.httpLocation = null;
        delayedMessage.obj.messageOwner.attachPath = file.toString();
        if (!tLRPC$Document.thumbs.isEmpty()) {
            TLRPC$PhotoSize tLRPC$PhotoSize = tLRPC$Document.thumbs.get(0);
            if (!(tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize)) {
                delayedMessage.photoSize = tLRPC$PhotoSize;
                delayedMessage.locationParent = tLRPC$Document;
            }
        }
        ArrayList<TLRPC$Message> arrayList = new ArrayList<>();
        arrayList.add(messageObject.messageOwner);
        getMessagesStorage().putMessages(arrayList, false, true, false, 0, messageObject.scheduled, 0);
        delayedMessage.performMediaUpload = true;
        performSendDelayedMessage(delayedMessage);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateMessageMedia, delayedMessage.obj.messageOwner);
    }

    private void revertEditingMessageObject(MessageObject messageObject) {
        messageObject.cancelEditing = true;
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        tLRPC$Message.media = messageObject.previousMedia;
        tLRPC$Message.message = messageObject.previousMessage;
        ArrayList<TLRPC$MessageEntity> arrayList = messageObject.previousMessageEntities;
        tLRPC$Message.entities = arrayList;
        tLRPC$Message.attachPath = messageObject.previousAttachPath;
        tLRPC$Message.send_state = 0;
        if (arrayList != null) {
            tLRPC$Message.flags |= 128;
        } else {
            tLRPC$Message.flags &= -129;
        }
        messageObject.previousMedia = null;
        messageObject.previousMessage = null;
        messageObject.previousMessageEntities = null;
        messageObject.previousAttachPath = null;
        messageObject.videoEditedInfo = null;
        messageObject.type = -1;
        messageObject.setType();
        messageObject.caption = null;
        if (messageObject.type != 0) {
            messageObject.generateCaption();
        } else {
            messageObject.resetLayout();
        }
        ArrayList<TLRPC$Message> arrayList2 = new ArrayList<>();
        arrayList2.add(messageObject.messageOwner);
        getMessagesStorage().putMessages(arrayList2, false, true, false, 0, messageObject.scheduled, 0);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(messageObject);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.replaceMessagesObjects, Long.valueOf(messageObject.getDialogId()), arrayList3);
    }

    public void cancelSendingMessage(MessageObject messageObject) {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        cancelSendingMessage(arrayList);
    }

    public void cancelSendingMessage(ArrayList<MessageObject> arrayList) {
        Iterator<Map.Entry<String, ArrayList<DelayedMessage>>> it;
        ArrayList<Integer> arrayList2;
        ArrayList<Long> arrayList3 = new ArrayList<>();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList<Integer> arrayList6 = new ArrayList<>();
        long j = 0;
        long j2 = 0;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (i < arrayList.size()) {
            MessageObject messageObject = arrayList.get(i);
            if (messageObject.scheduled) {
                z = true;
            }
            long dialogId = messageObject.getDialogId();
            arrayList6.add(Integer.valueOf(messageObject.getId()));
            long j3 = messageObject.messageOwner.random_id;
            if (j3 != j) {
                arrayList3.add(Long.valueOf(j3));
            }
            TLRPC$Message removeFromSendingMessages = removeFromSendingMessages(messageObject.getId(), messageObject.scheduled);
            if (removeFromSendingMessages != null) {
                getConnectionsManager().cancelRequest(removeFromSendingMessages.reqId, true);
            }
            Iterator<Map.Entry<String, ArrayList<DelayedMessage>>> it2 = this.delayedMessages.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, ArrayList<DelayedMessage>> next = it2.next();
                ArrayList<DelayedMessage> value = next.getValue();
                int i2 = 0;
                while (true) {
                    if (i2 >= value.size()) {
                        it = it2;
                        break;
                    }
                    DelayedMessage delayedMessage = value.get(i2);
                    it = it2;
                    if (delayedMessage.type == 4) {
                        int i3 = -1;
                        MessageObject messageObject2 = null;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= delayedMessage.messageObjects.size()) {
                                break;
                            }
                            messageObject2 = delayedMessage.messageObjects.get(i4);
                            if (messageObject2.getId() == messageObject.getId()) {
                                removeFromUploadingMessages(messageObject.getId(), messageObject.scheduled);
                                i3 = i4;
                                break;
                            }
                            i4++;
                        }
                        if (i3 >= 0) {
                            delayedMessage.messageObjects.remove(i3);
                            delayedMessage.messages.remove(i3);
                            delayedMessage.originalPaths.remove(i3);
                            if (!delayedMessage.parentObjects.isEmpty()) {
                                delayedMessage.parentObjects.remove(i3);
                            }
                            TLObject tLObject = delayedMessage.sendRequest;
                            if (tLObject != null) {
                                ((TLRPC$TL_messages_sendMultiMedia) tLObject).multi_media.remove(i3);
                            } else {
                                TLRPC$TL_messages_sendEncryptedMultiMedia tLRPC$TL_messages_sendEncryptedMultiMedia = (TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                                tLRPC$TL_messages_sendEncryptedMultiMedia.messages.remove(i3);
                                tLRPC$TL_messages_sendEncryptedMultiMedia.files.remove(i3);
                            }
                            MediaController.getInstance().cancelVideoConvert(messageObject);
                            String str = (String) delayedMessage.extraHashMap.get(messageObject2);
                            if (str != null) {
                                arrayList4.add(str);
                            }
                            if (delayedMessage.messageObjects.isEmpty()) {
                                delayedMessage.sendDelayedRequests();
                            } else {
                                if (delayedMessage.finalGroupMessage == messageObject.getId()) {
                                    ArrayList<MessageObject> arrayList7 = delayedMessage.messageObjects;
                                    MessageObject messageObject3 = arrayList7.get(arrayList7.size() - 1);
                                    delayedMessage.finalGroupMessage = messageObject3.getId();
                                    messageObject3.messageOwner.params.put("final", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                                    TLRPC$TL_messages_messages tLRPC$TL_messages_messages = new TLRPC$TL_messages_messages();
                                    tLRPC$TL_messages_messages.messages.add(messageObject3.messageOwner);
                                    arrayList2 = arrayList6;
                                    getMessagesStorage().putMessages((TLRPC$messages_Messages) tLRPC$TL_messages_messages, delayedMessage.peer, -2, 0, false, z, 0);
                                } else {
                                    arrayList2 = arrayList6;
                                }
                                if (!arrayList5.contains(delayedMessage)) {
                                    arrayList5.add(delayedMessage);
                                }
                            }
                        }
                    } else {
                        arrayList2 = arrayList6;
                        if (delayedMessage.obj.getId() == messageObject.getId()) {
                            removeFromUploadingMessages(messageObject.getId(), messageObject.scheduled);
                            value.remove(i2);
                            delayedMessage.sendDelayedRequests();
                            MediaController.getInstance().cancelVideoConvert(delayedMessage.obj);
                            if (value.size() == 0) {
                                arrayList4.add(next.getKey());
                                if (delayedMessage.sendEncryptedRequest != null) {
                                    z2 = true;
                                }
                            }
                        } else {
                            i2++;
                            arrayList6 = arrayList2;
                            it2 = it;
                        }
                    }
                }
                arrayList2 = arrayList6;
                arrayList6 = arrayList2;
                it2 = it;
            }
            i++;
            j2 = dialogId;
            j = 0;
        }
        ArrayList<Integer> arrayList8 = arrayList6;
        for (int i5 = 0; i5 < arrayList4.size(); i5++) {
            String str2 = (String) arrayList4.get(i5);
            if (str2.startsWith("http")) {
                ImageLoader.getInstance().cancelLoadHttpFile(str2);
            } else {
                getFileLoader().cancelFileUpload(str2, z2);
            }
            this.delayedMessages.remove(str2);
        }
        int size = arrayList5.size();
        for (int i6 = 0; i6 < size; i6++) {
            sendReadyToSendGroup((DelayedMessage) arrayList5.get(i6), false, true);
        }
        if (arrayList.size() == 1 && arrayList.get(0).isEditing() && arrayList.get(0).previousMedia != null) {
            revertEditingMessageObject(arrayList.get(0));
        } else {
            getMessagesController().deleteMessages(arrayList8, arrayList3, null, j2, false, z);
        }
    }

    public boolean retrySendMessage(MessageObject messageObject, boolean z) {
        if (messageObject.getId() >= 0) {
            if (messageObject.isEditing()) {
                editMessage(messageObject, null, null, null, null, null, true, messageObject.hasMediaSpoilers(), messageObject);
            }
            return false;
        }
        TLRPC$MessageAction tLRPC$MessageAction = messageObject.messageOwner.action;
        if (tLRPC$MessageAction instanceof TLRPC$TL_messageEncryptedAction) {
            TLRPC$EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(messageObject.getDialogId())));
            if (encryptedChat == null) {
                getMessagesStorage().markMessageAsSendError(messageObject.messageOwner, messageObject.scheduled);
                messageObject.messageOwner.send_state = 2;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
                processSentMessage(messageObject.getId());
                return false;
            }
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            if (tLRPC$Message.random_id == 0) {
                tLRPC$Message.random_id = getNextRandomId();
            }
            TLRPC$DecryptedMessageAction tLRPC$DecryptedMessageAction = messageObject.messageOwner.action.encryptedAction;
            if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionSetMessageTTL) {
                getSecretChatHelper().sendTTLMessage(encryptedChat, messageObject.messageOwner);
            } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionDeleteMessages) {
                getSecretChatHelper().sendMessagesDeleteMessage(encryptedChat, null, messageObject.messageOwner);
            } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionFlushHistory) {
                getSecretChatHelper().sendClearHistoryMessage(encryptedChat, messageObject.messageOwner);
            } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionNotifyLayer) {
                getSecretChatHelper().sendNotifyLayerMessage(encryptedChat, messageObject.messageOwner);
            } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionReadMessages) {
                getSecretChatHelper().sendMessagesReadMessage(encryptedChat, null, messageObject.messageOwner);
            } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionScreenshotMessages) {
                getSecretChatHelper().sendScreenshotMessage(encryptedChat, null, messageObject.messageOwner);
            } else if (!(tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionTyping)) {
                if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionResend) {
                    getSecretChatHelper().sendResendMessage(encryptedChat, 0, 0, messageObject.messageOwner);
                } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionCommitKey) {
                    getSecretChatHelper().sendCommitKeyMessage(encryptedChat, messageObject.messageOwner);
                } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionAbortKey) {
                    getSecretChatHelper().sendAbortKeyMessage(encryptedChat, messageObject.messageOwner, 0L);
                } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionRequestKey) {
                    getSecretChatHelper().sendRequestKeyMessage(encryptedChat, messageObject.messageOwner);
                } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionAcceptKey) {
                    getSecretChatHelper().sendAcceptKeyMessage(encryptedChat, messageObject.messageOwner);
                } else if (tLRPC$DecryptedMessageAction instanceof TLRPC$TL_decryptedMessageActionNoop) {
                    getSecretChatHelper().sendNoopMessage(encryptedChat, messageObject.messageOwner);
                }
            }
            return true;
        }
        if (tLRPC$MessageAction instanceof TLRPC$TL_messageActionScreenshotTaken) {
            sendScreenshotMessage(getMessagesController().getUser(Long.valueOf(messageObject.getDialogId())), messageObject.getReplyMsgId(), messageObject.messageOwner);
        }
        if (z) {
            this.unsentMessages.put(messageObject.getId(), messageObject);
        }
        sendMessage(SendMessageParams.m88of(messageObject, null));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processSentMessage(int i) {
        int size = this.unsentMessages.size();
        this.unsentMessages.remove(i);
        if (size == 0 || this.unsentMessages.size() != 0) {
            return;
        }
        checkUnsentMessages();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processForwardFromMyName(org.telegram.messenger.MessageObject r28, long r29) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.processForwardFromMyName(org.telegram.messenger.MessageObject, long):void");
    }

    public void sendScreenshotMessage(TLRPC$User tLRPC$User, int i, TLRPC$Message tLRPC$Message) {
        if (tLRPC$User == null || i == 0 || tLRPC$User.f1749id == getUserConfig().getClientUserId()) {
            return;
        }
        TLRPC$TL_messages_sendScreenshotNotification tLRPC$TL_messages_sendScreenshotNotification = new TLRPC$TL_messages_sendScreenshotNotification();
        TLRPC$TL_inputPeerUser tLRPC$TL_inputPeerUser = new TLRPC$TL_inputPeerUser();
        tLRPC$TL_messages_sendScreenshotNotification.peer = tLRPC$TL_inputPeerUser;
        tLRPC$TL_inputPeerUser.access_hash = tLRPC$User.access_hash;
        tLRPC$TL_inputPeerUser.user_id = tLRPC$User.f1749id;
        if (tLRPC$Message != null) {
            tLRPC$TL_messages_sendScreenshotNotification.reply_to = createReplyInput(i);
            tLRPC$TL_messages_sendScreenshotNotification.random_id = tLRPC$Message.random_id;
        } else {
            tLRPC$Message = new TLRPC$TL_messageService();
            tLRPC$Message.random_id = getNextRandomId();
            tLRPC$Message.dialog_id = tLRPC$User.f1749id;
            tLRPC$Message.unread = true;
            tLRPC$Message.out = true;
            int newMessageId = getUserConfig().getNewMessageId();
            tLRPC$Message.f1626id = newMessageId;
            tLRPC$Message.local_id = newMessageId;
            TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
            tLRPC$Message.from_id = tLRPC$TL_peerUser;
            tLRPC$TL_peerUser.user_id = getUserConfig().getClientUserId();
            int i2 = tLRPC$Message.flags | 256;
            tLRPC$Message.flags = i2;
            tLRPC$Message.flags = i2 | 8;
            TLRPC$TL_messageReplyHeader tLRPC$TL_messageReplyHeader = new TLRPC$TL_messageReplyHeader();
            tLRPC$Message.reply_to = tLRPC$TL_messageReplyHeader;
            tLRPC$TL_messageReplyHeader.flags |= 16;
            tLRPC$TL_messageReplyHeader.reply_to_msg_id = i;
            TLRPC$TL_peerUser tLRPC$TL_peerUser2 = new TLRPC$TL_peerUser();
            tLRPC$Message.peer_id = tLRPC$TL_peerUser2;
            tLRPC$TL_peerUser2.user_id = tLRPC$User.f1749id;
            tLRPC$Message.date = getConnectionsManager().getCurrentTime();
            tLRPC$Message.action = new TLRPC$TL_messageActionScreenshotTaken();
            getUserConfig().saveConfig(false);
        }
        tLRPC$TL_messages_sendScreenshotNotification.random_id = tLRPC$Message.random_id;
        MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$Message, false, true);
        messageObject.messageOwner.send_state = 1;
        messageObject.wasJustSent = true;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        getMessagesController().updateInterfaceWithMessages(tLRPC$Message.dialog_id, arrayList, false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        ArrayList<TLRPC$Message> arrayList2 = new ArrayList<>();
        arrayList2.add(tLRPC$Message);
        getMessagesStorage().putMessages(arrayList2, false, true, false, 0, false, 0);
        performSendMessageRequest(tLRPC$TL_messages_sendScreenshotNotification, messageObject, null, null, null, null, false);
    }

    public void sendSticker(TLRPC$Document tLRPC$Document, String str, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final MessageObject.SendAnimationData sendAnimationData, final boolean z, final int i, boolean z2, final Object obj, final String str2) {
        final TLRPC$TL_document_layer82 tLRPC$TL_document_layer82;
        HashMap hashMap;
        TLRPC$PhotoSize tLRPC$PhotoSize;
        byte[] bArr;
        if (tLRPC$Document == null) {
            return;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            if (getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                return;
            }
            TLRPC$TL_document_layer82 tLRPC$TL_document_layer822 = new TLRPC$TL_document_layer82();
            tLRPC$TL_document_layer822.f1610id = tLRPC$Document.f1610id;
            tLRPC$TL_document_layer822.access_hash = tLRPC$Document.access_hash;
            tLRPC$TL_document_layer822.date = tLRPC$Document.date;
            tLRPC$TL_document_layer822.mime_type = tLRPC$Document.mime_type;
            byte[] bArr2 = tLRPC$Document.file_reference;
            tLRPC$TL_document_layer822.file_reference = bArr2;
            if (bArr2 == null) {
                tLRPC$TL_document_layer822.file_reference = new byte[0];
            }
            tLRPC$TL_document_layer822.size = tLRPC$Document.size;
            tLRPC$TL_document_layer822.dc_id = tLRPC$Document.dc_id;
            tLRPC$TL_document_layer822.attributes = new ArrayList<>(tLRPC$Document.attributes);
            if (tLRPC$TL_document_layer822.mime_type == null) {
                tLRPC$TL_document_layer822.mime_type = "";
            }
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 10);
            if ((closestPhotoSizeWithSize instanceof TLRPC$TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC$TL_photoSizeProgressive) || (closestPhotoSizeWithSize instanceof TLRPC$TL_photoStrippedSize)) {
                File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true);
                if ((closestPhotoSizeWithSize instanceof TLRPC$TL_photoStrippedSize) || pathToAttach.exists()) {
                    try {
                        if (closestPhotoSizeWithSize instanceof TLRPC$TL_photoStrippedSize) {
                            tLRPC$PhotoSize = new TLRPC$TL_photoStrippedSize();
                            bArr = closestPhotoSizeWithSize.bytes;
                        } else {
                            TLRPC$TL_photoCachedSize tLRPC$TL_photoCachedSize = new TLRPC$TL_photoCachedSize();
                            pathToAttach.length();
                            byte[] bArr3 = new byte[(int) pathToAttach.length()];
                            new RandomAccessFile(pathToAttach, "r").readFully(bArr3);
                            tLRPC$PhotoSize = tLRPC$TL_photoCachedSize;
                            bArr = bArr3;
                        }
                        TLRPC$TL_fileLocation_layer82 tLRPC$TL_fileLocation_layer82 = new TLRPC$TL_fileLocation_layer82();
                        TLRPC$FileLocation tLRPC$FileLocation = closestPhotoSizeWithSize.location;
                        tLRPC$TL_fileLocation_layer82.dc_id = tLRPC$FileLocation.dc_id;
                        tLRPC$TL_fileLocation_layer82.volume_id = tLRPC$FileLocation.volume_id;
                        tLRPC$TL_fileLocation_layer82.local_id = tLRPC$FileLocation.local_id;
                        tLRPC$TL_fileLocation_layer82.secret = tLRPC$FileLocation.secret;
                        tLRPC$PhotoSize.location = tLRPC$TL_fileLocation_layer82;
                        tLRPC$PhotoSize.size = closestPhotoSizeWithSize.size;
                        tLRPC$PhotoSize.f1634w = closestPhotoSizeWithSize.f1634w;
                        tLRPC$PhotoSize.f1633h = closestPhotoSizeWithSize.f1633h;
                        tLRPC$PhotoSize.type = closestPhotoSizeWithSize.type;
                        tLRPC$PhotoSize.bytes = bArr;
                        tLRPC$TL_document_layer822.thumbs.add(tLRPC$PhotoSize);
                        tLRPC$TL_document_layer822.flags |= 1;
                    } catch (Exception e) {
                        FileLog.m99e(e);
                    }
                }
            }
            if (tLRPC$TL_document_layer822.thumbs.isEmpty()) {
                TLRPC$TL_photoSizeEmpty tLRPC$TL_photoSizeEmpty = new TLRPC$TL_photoSizeEmpty();
                tLRPC$TL_photoSizeEmpty.type = "s";
                tLRPC$TL_document_layer822.thumbs.add(tLRPC$TL_photoSizeEmpty);
            }
            tLRPC$TL_document_layer82 = tLRPC$TL_document_layer822;
        } else {
            tLRPC$TL_document_layer82 = tLRPC$Document;
        }
        if (MessageObject.isGifDocument(tLRPC$TL_document_layer82)) {
            mediaSendQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$sendSticker$6(tLRPC$TL_document_layer82, j, messageObject, messageObject2, z, i, obj, sendAnimationData, str2, tL_stories$StoryItem, replyQuote);
                }
            });
            return;
        }
        if (TextUtils.isEmpty(str)) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            hashMap.put(SearchIntents.EXTRA_QUERY, str);
        }
        SendMessageParams m86of = SendMessageParams.m86of((TLRPC$TL_document) tLRPC$TL_document_layer82, null, null, j, messageObject, messageObject2, null, null, null, hashMap, z, i, 0, obj, sendAnimationData, z2, str2);
        m86of.replyToStoryItem = tL_stories$StoryItem;
        m86of.replyQuote = replyQuote;
        sendMessage(m86of);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$6(final TLRPC$Document tLRPC$Document, final long j, final MessageObject messageObject, final MessageObject messageObject2, final boolean z, final int i, final Object obj, final MessageObject.SendAnimationData sendAnimationData, final String str, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote) {
        String str2;
        final Bitmap[] bitmapArr = new Bitmap[1];
        final String[] strArr = new String[1];
        String key = ImageLocation.getForDocument(tLRPC$Document).getKey(null, null, false);
        if (MimeTypes.VIDEO_MP4.equals(tLRPC$Document.mime_type)) {
            str2 = ".mp4";
        } else {
            str2 = MimeTypes.VIDEO_MATROSKA.equals(tLRPC$Document.mime_type) ? ".mkv" : "";
        }
        File directory = FileLoader.getDirectory(3);
        File file = new File(directory, key + str2);
        if (!file.exists()) {
            File directory2 = FileLoader.getDirectory(2);
            file = new File(directory2, key + str2);
        }
        ensureMediaThumbExists(getAccountInstance(), false, tLRPC$Document, file.getAbsolutePath(), null, 0L);
        strArr[0] = getKeyForPhotoSize(getAccountInstance(), FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 320), bitmapArr, true, true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda72
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendSticker$5(bitmapArr, strArr, tLRPC$Document, j, messageObject, messageObject2, z, i, obj, sendAnimationData, str, tL_stories$StoryItem, replyQuote);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$5(Bitmap[] bitmapArr, String[] strArr, TLRPC$Document tLRPC$Document, long j, MessageObject messageObject, MessageObject messageObject2, boolean z, int i, Object obj, MessageObject.SendAnimationData sendAnimationData, String str, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        SendMessageParams m86of = SendMessageParams.m86of((TLRPC$TL_document) tLRPC$Document, null, null, j, messageObject, messageObject2, null, null, null, null, z, i, 0, obj, sendAnimationData, false, str);
        m86of.replyToStoryItem = tL_stories$StoryItem;
        m86of.replyQuote = replyQuote;
        sendMessage(m86of);
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i) {
        return sendMessage(arrayList, j, z, z2, z3, i, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:410:0x0962, code lost:
        if (r11.contains(java.lang.Integer.valueOf(r2.reply_to_msg_id)) != false) goto L349;
     */
    /* JADX WARN: Removed duplicated region for block: B:347:0x07f3  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0818  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0876  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0888  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x08a5  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x08ce  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x08d0  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0958  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0982  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0984  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x099f  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x09dd  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x09e7  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x09e9  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0a27  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0a54  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0a94  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0aa9  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0aac  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0abd  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x0abf  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0adf  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0b06  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0b14  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0b24  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0b4e  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0b6c  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0b7b  */
    /* JADX WARN: Removed duplicated region for block: B:484:0x0b89  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0b8c  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0bda  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int sendMessage(java.util.ArrayList<org.telegram.messenger.MessageObject> r71, final long r72, boolean r74, boolean r75, boolean r76, final int r77, org.telegram.messenger.MessageObject r78, org.telegram.messenger.MessagePreviewParams r79, boolean r80, org.telegram.messenger.MessageObject r81) {
        /*
            Method dump skipped, instructions count: 3381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.sendMessage(java.util.ArrayList, long, boolean, boolean, boolean, int, org.telegram.messenger.MessageObject, org.telegram.messenger.MessagePreviewParams, boolean, org.telegram.messenger.MessageObject):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$sendMessage$14(final long r26, final int r28, boolean r29, boolean r30, androidx.collection.LongSparseArray r31, java.util.ArrayList r32, java.util.ArrayList r33, final org.telegram.messenger.MessageObject r34, final org.telegram.tgnet.TLRPC$Peer r35, final org.telegram.tgnet.TLRPC$TL_messages_forwardMessages r36, org.telegram.tgnet.TLObject r37, final org.telegram.tgnet.TLRPC$TL_error r38) {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$sendMessage$14(long, int, boolean, boolean, androidx.collection.LongSparseArray, java.util.ArrayList, java.util.ArrayList, org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$Peer, org.telegram.tgnet.TLRPC$TL_messages_forwardMessages, org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$9(final int i, final TLRPC$Message tLRPC$Message, final ArrayList arrayList, final MessageObject messageObject, final int i2) {
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        arrayList2.add(Integer.valueOf(i));
        getMessagesController().deleteMessages(arrayList2, null, null, tLRPC$Message.dialog_id, false, true);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendMessage$8(arrayList, messageObject, tLRPC$Message, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$8(ArrayList arrayList, final MessageObject messageObject, final TLRPC$Message tLRPC$Message, final int i, final int i2) {
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, false, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendMessage$7(messageObject, tLRPC$Message, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$7(MessageObject messageObject, TLRPC$Message tLRPC$Message, int i, int i2) {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(new MessageObject(messageObject.currentAccount, messageObject.messageOwner, true, true));
        getMessagesController().updateInterfaceWithMessages(tLRPC$Message.dialog_id, arrayList, false);
        getMediaDataController().increasePeerRaiting(tLRPC$Message.dialog_id);
        processSentMessage(i);
        removeFromSendingMessages(i, i2 != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$11(final TLRPC$Message tLRPC$Message, TLRPC$Peer tLRPC$Peer, final int i, final int i2, ArrayList arrayList, final long j, final TLRPC$Message tLRPC$Message2, final int i3) {
        getMessagesStorage().updateMessageStateAndId(tLRPC$Message.random_id, MessageObject.getPeerId(tLRPC$Peer), Integer.valueOf(i), tLRPC$Message.f1626id, 0, false, i2 != 0 ? 1 : 0);
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, i2 != 0, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendMessage$10(tLRPC$Message, j, i, tLRPC$Message2, i3, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$10(TLRPC$Message tLRPC$Message, long j, int i, TLRPC$Message tLRPC$Message2, int i2, int i3) {
        tLRPC$Message.send_state = 0;
        getMediaDataController().increasePeerRaiting(j);
        NotificationCenter notificationCenter = getNotificationCenter();
        int i4 = NotificationCenter.messageReceivedByServer;
        Object[] objArr = new Object[7];
        objArr[0] = Integer.valueOf(i);
        objArr[1] = Integer.valueOf(tLRPC$Message2.f1626id);
        objArr[2] = tLRPC$Message2;
        objArr[3] = Long.valueOf(j);
        objArr[4] = 0L;
        objArr[5] = Integer.valueOf(i2);
        objArr[6] = Boolean.valueOf(i3 != 0);
        notificationCenter.lambda$postNotificationNameOnUIThread$1(i4, objArr);
        processSentMessage(i);
        removeFromSendingMessages(i, i3 != 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$12(TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_messages_forwardMessages tLRPC$TL_messages_forwardMessages) {
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, null, tLRPC$TL_messages_forwardMessages, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$13(TLRPC$Message tLRPC$Message, int i) {
        tLRPC$Message.send_state = 2;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(tLRPC$Message.f1626id));
        processSentMessage(tLRPC$Message.f1626id);
        removeFromSendingMessages(tLRPC$Message.f1626id, i != 0);
    }

    public static int canSendMessageToChat(TLRPC$Chat tLRPC$Chat, MessageObject messageObject) {
        boolean canSendStickers = ChatObject.canSendStickers(tLRPC$Chat);
        boolean canSendPhoto = ChatObject.canSendPhoto(tLRPC$Chat);
        boolean canSendVideo = ChatObject.canSendVideo(tLRPC$Chat);
        boolean canSendDocument = ChatObject.canSendDocument(tLRPC$Chat);
        ChatObject.canSendEmbed(tLRPC$Chat);
        boolean canSendPolls = ChatObject.canSendPolls(tLRPC$Chat);
        boolean canSendRoundVideo = ChatObject.canSendRoundVideo(tLRPC$Chat);
        boolean canSendVoice = ChatObject.canSendVoice(tLRPC$Chat);
        boolean canSendMusic = ChatObject.canSendMusic(tLRPC$Chat);
        boolean z = messageObject.isSticker() || messageObject.isAnimatedSticker() || messageObject.isGif() || messageObject.isGame();
        if (!canSendStickers && z) {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 8) ? 4 : 1;
        } else if (!canSendPhoto && (messageObject.messageOwner.media instanceof TLRPC$TL_messageMediaPhoto) && !messageObject.isVideo() && !z) {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 16) ? 10 : 12;
        } else if (!canSendMusic && messageObject.isMusic()) {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 18) ? 19 : 20;
        } else if (!canSendVideo && messageObject.isVideo() && !z) {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 17) ? 9 : 11;
        } else if (!canSendPolls && (messageObject.messageOwner.media instanceof TLRPC$TL_messageMediaPoll)) {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 10) ? 6 : 3;
        } else if (!canSendVoice && MessageObject.isVoiceMessage(messageObject.messageOwner)) {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 20) ? 13 : 14;
        } else if (!canSendRoundVideo && MessageObject.isRoundVideoMessage(messageObject.messageOwner)) {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 21) ? 15 : 16;
        } else if (canSendDocument || !(messageObject.messageOwner.media instanceof TLRPC$TL_messageMediaDocument) || z) {
            return 0;
        } else {
            return ChatObject.isActionBannedByDefault(tLRPC$Chat, 19) ? 17 : 18;
        }
    }

    private void writePreviousMessageData(TLRPC$Message tLRPC$Message, SerializedData serializedData) {
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$Message.media;
        if (tLRPC$MessageMedia == null) {
            new TLRPC$TL_messageMediaEmpty().serializeToStream(serializedData);
        } else {
            tLRPC$MessageMedia.serializeToStream(serializedData);
        }
        String str = tLRPC$Message.message;
        if (str == null) {
            str = "";
        }
        serializedData.writeString(str);
        String str2 = tLRPC$Message.attachPath;
        serializedData.writeString(str2 != null ? str2 : "");
        int size = tLRPC$Message.entities.size();
        serializedData.writeInt32(size);
        for (int i = 0; i < size; i++) {
            tLRPC$Message.entities.get(i).serializeToStream(serializedData);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:242:0x051b A[Catch: Exception -> 0x0636, TryCatch #0 {Exception -> 0x0636, blocks: (B:9:0x0024, B:11:0x002c, B:12:0x0034, B:14:0x003a, B:16:0x004c, B:23:0x005d, B:26:0x0067, B:29:0x006c, B:31:0x0070, B:43:0x0096, B:46:0x009c, B:48:0x00a2, B:50:0x00a9, B:77:0x017d, B:79:0x0181, B:80:0x0185, B:88:0x019f, B:93:0x01a8, B:95:0x01ac, B:97:0x01bc, B:99:0x01c0, B:116:0x0219, B:118:0x0225, B:119:0x0246, B:121:0x025a, B:123:0x0262, B:126:0x0267, B:127:0x026e, B:128:0x0271, B:130:0x027d, B:132:0x029d, B:135:0x02be, B:137:0x02c6, B:147:0x02de, B:149:0x02e2, B:152:0x02e8, B:159:0x02fc, B:161:0x0300, B:240:0x04fe, B:242:0x051b, B:243:0x0523, B:245:0x0527, B:246:0x0533, B:248:0x0537, B:252:0x054a, B:254:0x0550, B:261:0x057d, B:256:0x0559, B:258:0x056d, B:260:0x0573, B:263:0x0583, B:266:0x0588, B:270:0x05a5, B:271:0x05aa, B:275:0x05c2, B:276:0x05c7, B:279:0x05e1, B:283:0x05fc, B:284:0x0600, B:288:0x061c, B:289:0x0620, B:154:0x02ee, B:156:0x02f2, B:165:0x031c, B:167:0x0325, B:169:0x032d, B:171:0x033e, B:172:0x0353, B:173:0x035c, B:180:0x038a, B:182:0x039e, B:184:0x03a4, B:186:0x03ae, B:187:0x03b1, B:176:0x0367, B:178:0x0381, B:179:0x0386, B:191:0x03ca, B:193:0x03d3, B:195:0x03db, B:197:0x03ec, B:198:0x03fd, B:199:0x0406, B:202:0x0418, B:206:0x0421, B:208:0x0428, B:210:0x0431, B:217:0x045e, B:219:0x0478, B:221:0x0485, B:222:0x0489, B:213:0x043c, B:215:0x0456, B:216:0x045b, B:225:0x0493, B:232:0x04cf, B:234:0x04e3, B:236:0x04f0, B:237:0x04f4, B:228:0x04ad, B:230:0x04c7, B:231:0x04cc, B:131:0x0294, B:100:0x01c9, B:102:0x01cf, B:103:0x01d6, B:105:0x01da, B:114:0x0213, B:106:0x01e3, B:108:0x01f6, B:110:0x01fc, B:111:0x0205, B:113:0x020d, B:85:0x0194, B:87:0x019c, B:32:0x0078, B:34:0x007c, B:40:0x008c, B:51:0x00bc, B:53:0x00ce, B:54:0x00d3, B:56:0x00fe, B:58:0x0111, B:60:0x0117, B:62:0x011d, B:76:0x0171, B:63:0x0120, B:66:0x0144, B:73:0x0163, B:74:0x016d), top: B:294:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0527 A[Catch: Exception -> 0x0636, TryCatch #0 {Exception -> 0x0636, blocks: (B:9:0x0024, B:11:0x002c, B:12:0x0034, B:14:0x003a, B:16:0x004c, B:23:0x005d, B:26:0x0067, B:29:0x006c, B:31:0x0070, B:43:0x0096, B:46:0x009c, B:48:0x00a2, B:50:0x00a9, B:77:0x017d, B:79:0x0181, B:80:0x0185, B:88:0x019f, B:93:0x01a8, B:95:0x01ac, B:97:0x01bc, B:99:0x01c0, B:116:0x0219, B:118:0x0225, B:119:0x0246, B:121:0x025a, B:123:0x0262, B:126:0x0267, B:127:0x026e, B:128:0x0271, B:130:0x027d, B:132:0x029d, B:135:0x02be, B:137:0x02c6, B:147:0x02de, B:149:0x02e2, B:152:0x02e8, B:159:0x02fc, B:161:0x0300, B:240:0x04fe, B:242:0x051b, B:243:0x0523, B:245:0x0527, B:246:0x0533, B:248:0x0537, B:252:0x054a, B:254:0x0550, B:261:0x057d, B:256:0x0559, B:258:0x056d, B:260:0x0573, B:263:0x0583, B:266:0x0588, B:270:0x05a5, B:271:0x05aa, B:275:0x05c2, B:276:0x05c7, B:279:0x05e1, B:283:0x05fc, B:284:0x0600, B:288:0x061c, B:289:0x0620, B:154:0x02ee, B:156:0x02f2, B:165:0x031c, B:167:0x0325, B:169:0x032d, B:171:0x033e, B:172:0x0353, B:173:0x035c, B:180:0x038a, B:182:0x039e, B:184:0x03a4, B:186:0x03ae, B:187:0x03b1, B:176:0x0367, B:178:0x0381, B:179:0x0386, B:191:0x03ca, B:193:0x03d3, B:195:0x03db, B:197:0x03ec, B:198:0x03fd, B:199:0x0406, B:202:0x0418, B:206:0x0421, B:208:0x0428, B:210:0x0431, B:217:0x045e, B:219:0x0478, B:221:0x0485, B:222:0x0489, B:213:0x043c, B:215:0x0456, B:216:0x045b, B:225:0x0493, B:232:0x04cf, B:234:0x04e3, B:236:0x04f0, B:237:0x04f4, B:228:0x04ad, B:230:0x04c7, B:231:0x04cc, B:131:0x0294, B:100:0x01c9, B:102:0x01cf, B:103:0x01d6, B:105:0x01da, B:114:0x0213, B:106:0x01e3, B:108:0x01f6, B:110:0x01fc, B:111:0x0205, B:113:0x020d, B:85:0x0194, B:87:0x019c, B:32:0x0078, B:34:0x007c, B:40:0x008c, B:51:0x00bc, B:53:0x00ce, B:54:0x00d3, B:56:0x00fe, B:58:0x0111, B:60:0x0117, B:62:0x011d, B:76:0x0171, B:63:0x0120, B:66:0x0144, B:73:0x0163, B:74:0x016d), top: B:294:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0537 A[Catch: Exception -> 0x0636, TryCatch #0 {Exception -> 0x0636, blocks: (B:9:0x0024, B:11:0x002c, B:12:0x0034, B:14:0x003a, B:16:0x004c, B:23:0x005d, B:26:0x0067, B:29:0x006c, B:31:0x0070, B:43:0x0096, B:46:0x009c, B:48:0x00a2, B:50:0x00a9, B:77:0x017d, B:79:0x0181, B:80:0x0185, B:88:0x019f, B:93:0x01a8, B:95:0x01ac, B:97:0x01bc, B:99:0x01c0, B:116:0x0219, B:118:0x0225, B:119:0x0246, B:121:0x025a, B:123:0x0262, B:126:0x0267, B:127:0x026e, B:128:0x0271, B:130:0x027d, B:132:0x029d, B:135:0x02be, B:137:0x02c6, B:147:0x02de, B:149:0x02e2, B:152:0x02e8, B:159:0x02fc, B:161:0x0300, B:240:0x04fe, B:242:0x051b, B:243:0x0523, B:245:0x0527, B:246:0x0533, B:248:0x0537, B:252:0x054a, B:254:0x0550, B:261:0x057d, B:256:0x0559, B:258:0x056d, B:260:0x0573, B:263:0x0583, B:266:0x0588, B:270:0x05a5, B:271:0x05aa, B:275:0x05c2, B:276:0x05c7, B:279:0x05e1, B:283:0x05fc, B:284:0x0600, B:288:0x061c, B:289:0x0620, B:154:0x02ee, B:156:0x02f2, B:165:0x031c, B:167:0x0325, B:169:0x032d, B:171:0x033e, B:172:0x0353, B:173:0x035c, B:180:0x038a, B:182:0x039e, B:184:0x03a4, B:186:0x03ae, B:187:0x03b1, B:176:0x0367, B:178:0x0381, B:179:0x0386, B:191:0x03ca, B:193:0x03d3, B:195:0x03db, B:197:0x03ec, B:198:0x03fd, B:199:0x0406, B:202:0x0418, B:206:0x0421, B:208:0x0428, B:210:0x0431, B:217:0x045e, B:219:0x0478, B:221:0x0485, B:222:0x0489, B:213:0x043c, B:215:0x0456, B:216:0x045b, B:225:0x0493, B:232:0x04cf, B:234:0x04e3, B:236:0x04f0, B:237:0x04f4, B:228:0x04ad, B:230:0x04c7, B:231:0x04cc, B:131:0x0294, B:100:0x01c9, B:102:0x01cf, B:103:0x01d6, B:105:0x01da, B:114:0x0213, B:106:0x01e3, B:108:0x01f6, B:110:0x01fc, B:111:0x0205, B:113:0x020d, B:85:0x0194, B:87:0x019c, B:32:0x0078, B:34:0x007c, B:40:0x008c, B:51:0x00bc, B:53:0x00ce, B:54:0x00d3, B:56:0x00fe, B:58:0x0111, B:60:0x0117, B:62:0x011d, B:76:0x0171, B:63:0x0120, B:66:0x0144, B:73:0x0163, B:74:0x016d), top: B:294:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0583 A[Catch: Exception -> 0x0636, TryCatch #0 {Exception -> 0x0636, blocks: (B:9:0x0024, B:11:0x002c, B:12:0x0034, B:14:0x003a, B:16:0x004c, B:23:0x005d, B:26:0x0067, B:29:0x006c, B:31:0x0070, B:43:0x0096, B:46:0x009c, B:48:0x00a2, B:50:0x00a9, B:77:0x017d, B:79:0x0181, B:80:0x0185, B:88:0x019f, B:93:0x01a8, B:95:0x01ac, B:97:0x01bc, B:99:0x01c0, B:116:0x0219, B:118:0x0225, B:119:0x0246, B:121:0x025a, B:123:0x0262, B:126:0x0267, B:127:0x026e, B:128:0x0271, B:130:0x027d, B:132:0x029d, B:135:0x02be, B:137:0x02c6, B:147:0x02de, B:149:0x02e2, B:152:0x02e8, B:159:0x02fc, B:161:0x0300, B:240:0x04fe, B:242:0x051b, B:243:0x0523, B:245:0x0527, B:246:0x0533, B:248:0x0537, B:252:0x054a, B:254:0x0550, B:261:0x057d, B:256:0x0559, B:258:0x056d, B:260:0x0573, B:263:0x0583, B:266:0x0588, B:270:0x05a5, B:271:0x05aa, B:275:0x05c2, B:276:0x05c7, B:279:0x05e1, B:283:0x05fc, B:284:0x0600, B:288:0x061c, B:289:0x0620, B:154:0x02ee, B:156:0x02f2, B:165:0x031c, B:167:0x0325, B:169:0x032d, B:171:0x033e, B:172:0x0353, B:173:0x035c, B:180:0x038a, B:182:0x039e, B:184:0x03a4, B:186:0x03ae, B:187:0x03b1, B:176:0x0367, B:178:0x0381, B:179:0x0386, B:191:0x03ca, B:193:0x03d3, B:195:0x03db, B:197:0x03ec, B:198:0x03fd, B:199:0x0406, B:202:0x0418, B:206:0x0421, B:208:0x0428, B:210:0x0431, B:217:0x045e, B:219:0x0478, B:221:0x0485, B:222:0x0489, B:213:0x043c, B:215:0x0456, B:216:0x045b, B:225:0x0493, B:232:0x04cf, B:234:0x04e3, B:236:0x04f0, B:237:0x04f4, B:228:0x04ad, B:230:0x04c7, B:231:0x04cc, B:131:0x0294, B:100:0x01c9, B:102:0x01cf, B:103:0x01d6, B:105:0x01da, B:114:0x0213, B:106:0x01e3, B:108:0x01f6, B:110:0x01fc, B:111:0x0205, B:113:0x020d, B:85:0x0194, B:87:0x019c, B:32:0x0078, B:34:0x007c, B:40:0x008c, B:51:0x00bc, B:53:0x00ce, B:54:0x00d3, B:56:0x00fe, B:58:0x0111, B:60:0x0117, B:62:0x011d, B:76:0x0171, B:63:0x0120, B:66:0x0144, B:73:0x0163, B:74:0x016d), top: B:294:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0588 A[Catch: Exception -> 0x0636, TryCatch #0 {Exception -> 0x0636, blocks: (B:9:0x0024, B:11:0x002c, B:12:0x0034, B:14:0x003a, B:16:0x004c, B:23:0x005d, B:26:0x0067, B:29:0x006c, B:31:0x0070, B:43:0x0096, B:46:0x009c, B:48:0x00a2, B:50:0x00a9, B:77:0x017d, B:79:0x0181, B:80:0x0185, B:88:0x019f, B:93:0x01a8, B:95:0x01ac, B:97:0x01bc, B:99:0x01c0, B:116:0x0219, B:118:0x0225, B:119:0x0246, B:121:0x025a, B:123:0x0262, B:126:0x0267, B:127:0x026e, B:128:0x0271, B:130:0x027d, B:132:0x029d, B:135:0x02be, B:137:0x02c6, B:147:0x02de, B:149:0x02e2, B:152:0x02e8, B:159:0x02fc, B:161:0x0300, B:240:0x04fe, B:242:0x051b, B:243:0x0523, B:245:0x0527, B:246:0x0533, B:248:0x0537, B:252:0x054a, B:254:0x0550, B:261:0x057d, B:256:0x0559, B:258:0x056d, B:260:0x0573, B:263:0x0583, B:266:0x0588, B:270:0x05a5, B:271:0x05aa, B:275:0x05c2, B:276:0x05c7, B:279:0x05e1, B:283:0x05fc, B:284:0x0600, B:288:0x061c, B:289:0x0620, B:154:0x02ee, B:156:0x02f2, B:165:0x031c, B:167:0x0325, B:169:0x032d, B:171:0x033e, B:172:0x0353, B:173:0x035c, B:180:0x038a, B:182:0x039e, B:184:0x03a4, B:186:0x03ae, B:187:0x03b1, B:176:0x0367, B:178:0x0381, B:179:0x0386, B:191:0x03ca, B:193:0x03d3, B:195:0x03db, B:197:0x03ec, B:198:0x03fd, B:199:0x0406, B:202:0x0418, B:206:0x0421, B:208:0x0428, B:210:0x0431, B:217:0x045e, B:219:0x0478, B:221:0x0485, B:222:0x0489, B:213:0x043c, B:215:0x0456, B:216:0x045b, B:225:0x0493, B:232:0x04cf, B:234:0x04e3, B:236:0x04f0, B:237:0x04f4, B:228:0x04ad, B:230:0x04c7, B:231:0x04cc, B:131:0x0294, B:100:0x01c9, B:102:0x01cf, B:103:0x01d6, B:105:0x01da, B:114:0x0213, B:106:0x01e3, B:108:0x01f6, B:110:0x01fc, B:111:0x0205, B:113:0x020d, B:85:0x0194, B:87:0x019c, B:32:0x0078, B:34:0x007c, B:40:0x008c, B:51:0x00bc, B:53:0x00ce, B:54:0x00d3, B:56:0x00fe, B:58:0x0111, B:60:0x0117, B:62:0x011d, B:76:0x0171, B:63:0x0120, B:66:0x0144, B:73:0x0163, B:74:0x016d), top: B:294:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x05a0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0163 A[Catch: Exception -> 0x0636, TryCatch #0 {Exception -> 0x0636, blocks: (B:9:0x0024, B:11:0x002c, B:12:0x0034, B:14:0x003a, B:16:0x004c, B:23:0x005d, B:26:0x0067, B:29:0x006c, B:31:0x0070, B:43:0x0096, B:46:0x009c, B:48:0x00a2, B:50:0x00a9, B:77:0x017d, B:79:0x0181, B:80:0x0185, B:88:0x019f, B:93:0x01a8, B:95:0x01ac, B:97:0x01bc, B:99:0x01c0, B:116:0x0219, B:118:0x0225, B:119:0x0246, B:121:0x025a, B:123:0x0262, B:126:0x0267, B:127:0x026e, B:128:0x0271, B:130:0x027d, B:132:0x029d, B:135:0x02be, B:137:0x02c6, B:147:0x02de, B:149:0x02e2, B:152:0x02e8, B:159:0x02fc, B:161:0x0300, B:240:0x04fe, B:242:0x051b, B:243:0x0523, B:245:0x0527, B:246:0x0533, B:248:0x0537, B:252:0x054a, B:254:0x0550, B:261:0x057d, B:256:0x0559, B:258:0x056d, B:260:0x0573, B:263:0x0583, B:266:0x0588, B:270:0x05a5, B:271:0x05aa, B:275:0x05c2, B:276:0x05c7, B:279:0x05e1, B:283:0x05fc, B:284:0x0600, B:288:0x061c, B:289:0x0620, B:154:0x02ee, B:156:0x02f2, B:165:0x031c, B:167:0x0325, B:169:0x032d, B:171:0x033e, B:172:0x0353, B:173:0x035c, B:180:0x038a, B:182:0x039e, B:184:0x03a4, B:186:0x03ae, B:187:0x03b1, B:176:0x0367, B:178:0x0381, B:179:0x0386, B:191:0x03ca, B:193:0x03d3, B:195:0x03db, B:197:0x03ec, B:198:0x03fd, B:199:0x0406, B:202:0x0418, B:206:0x0421, B:208:0x0428, B:210:0x0431, B:217:0x045e, B:219:0x0478, B:221:0x0485, B:222:0x0489, B:213:0x043c, B:215:0x0456, B:216:0x045b, B:225:0x0493, B:232:0x04cf, B:234:0x04e3, B:236:0x04f0, B:237:0x04f4, B:228:0x04ad, B:230:0x04c7, B:231:0x04cc, B:131:0x0294, B:100:0x01c9, B:102:0x01cf, B:103:0x01d6, B:105:0x01da, B:114:0x0213, B:106:0x01e3, B:108:0x01f6, B:110:0x01fc, B:111:0x0205, B:113:0x020d, B:85:0x0194, B:87:0x019c, B:32:0x0078, B:34:0x007c, B:40:0x008c, B:51:0x00bc, B:53:0x00ce, B:54:0x00d3, B:56:0x00fe, B:58:0x0111, B:60:0x0117, B:62:0x011d, B:76:0x0171, B:63:0x0120, B:66:0x0144, B:73:0x0163, B:74:0x016d), top: B:294:0x0024 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void editMessage(org.telegram.messenger.MessageObject r29, org.telegram.tgnet.TLRPC$TL_photo r30, org.telegram.messenger.VideoEditedInfo r31, org.telegram.tgnet.TLRPC$TL_document r32, java.lang.String r33, java.util.HashMap<java.lang.String, java.lang.String> r34, boolean r35, boolean r36, java.lang.Object r37) {
        /*
            Method dump skipped, instructions count: 1598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.editMessage(org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$TL_photo, org.telegram.messenger.VideoEditedInfo, org.telegram.tgnet.TLRPC$TL_document, java.lang.String, java.util.HashMap, boolean, boolean, java.lang.Object):void");
    }

    public int editMessage(MessageObject messageObject, String str, boolean z, final BaseFragment baseFragment, ArrayList<TLRPC$MessageEntity> arrayList, int i) {
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return 0;
        }
        final TLRPC$TL_messages_editMessage tLRPC$TL_messages_editMessage = new TLRPC$TL_messages_editMessage();
        tLRPC$TL_messages_editMessage.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        if (str != null) {
            tLRPC$TL_messages_editMessage.message = str;
            tLRPC$TL_messages_editMessage.flags |= 2048;
            tLRPC$TL_messages_editMessage.no_webpage = !z;
        }
        tLRPC$TL_messages_editMessage.f1690id = messageObject.getId();
        if (arrayList != null) {
            tLRPC$TL_messages_editMessage.entities = arrayList;
            tLRPC$TL_messages_editMessage.flags |= 8;
        }
        if (i != 0) {
            tLRPC$TL_messages_editMessage.schedule_date = i;
            tLRPC$TL_messages_editMessage.flags |= LiteMode.FLAG_CHAT_SCALE;
        }
        return getConnectionsManager().sendRequest(tLRPC$TL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda90
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.this.lambda$editMessage$16(baseFragment, tLRPC$TL_messages_editMessage, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editMessage$16(final BaseFragment baseFragment, final TLRPC$TL_messages_editMessage tLRPC$TL_messages_editMessage, TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$editMessage$15(tLRPC$TL_error, baseFragment, tLRPC$TL_messages_editMessage);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editMessage$15(TLRPC$TL_error tLRPC$TL_error, BaseFragment baseFragment, TLRPC$TL_messages_editMessage tLRPC$TL_messages_editMessage) {
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, baseFragment, tLRPC$TL_messages_editMessage, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLocation(Location location) {
        TLRPC$TL_messageMediaGeo tLRPC$TL_messageMediaGeo = new TLRPC$TL_messageMediaGeo();
        TLRPC$TL_geoPoint tLRPC$TL_geoPoint = new TLRPC$TL_geoPoint();
        tLRPC$TL_messageMediaGeo.geo = tLRPC$TL_geoPoint;
        tLRPC$TL_geoPoint.lat = AndroidUtilities.fixLocationCoord(location.getLatitude());
        tLRPC$TL_messageMediaGeo.geo._long = AndroidUtilities.fixLocationCoord(location.getLongitude());
        for (Map.Entry<String, MessageObject> entry : this.waitingForLocation.entrySet()) {
            MessageObject value = entry.getValue();
            sendMessage(SendMessageParams.m87of((TLRPC$MessageMedia) tLRPC$TL_messageMediaGeo, value.getDialogId(), value, (MessageObject) null, (TLRPC$ReplyMarkup) null, (HashMap<String, String>) null, true, 0, (String) null));
        }
    }

    public void sendCurrentLocation(MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
        if (messageObject == null || tLRPC$KeyboardButton == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(messageObject.getDialogId());
        sb.append("_");
        sb.append(messageObject.getId());
        sb.append("_");
        sb.append(Utilities.bytesToHex(tLRPC$KeyboardButton.data));
        sb.append("_");
        sb.append(tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonGame ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : SessionDescription.SUPPORTED_SDP_VERSION);
        this.waitingForLocation.put(sb.toString(), messageObject);
        this.locationProvider.start();
    }

    public boolean isSendingCurrentLocation(MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
        if (messageObject == null || tLRPC$KeyboardButton == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(messageObject.getDialogId());
        sb.append("_");
        sb.append(messageObject.getId());
        sb.append("_");
        sb.append(Utilities.bytesToHex(tLRPC$KeyboardButton.data));
        sb.append("_");
        sb.append(tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonGame ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : SessionDescription.SUPPORTED_SDP_VERSION);
        return this.waitingForLocation.containsKey(sb.toString());
    }

    public void sendNotificationCallback(final long j, final int i, final byte[] bArr) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendNotificationCallback$19(j, i, bArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$19(long j, int i, byte[] bArr) {
        TLRPC$Chat chatSync;
        TLRPC$User userSync;
        final String str = j + "_" + i + "_" + Utilities.bytesToHex(bArr) + "_0";
        this.waitingForCallback.put(str, Boolean.TRUE);
        final List<String> list = this.waitingForCallbackMap.get(j + "_" + i);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.waitingForCallbackMap.put(j + "_" + i, arrayList);
            list = arrayList;
        }
        list.add(str);
        if (DialogObject.isUserDialog(j)) {
            if (getMessagesController().getUser(Long.valueOf(j)) == null && (userSync = getMessagesStorage().getUserSync(j)) != null) {
                getMessagesController().putUser(userSync, true);
            }
        } else {
            long j2 = -j;
            if (getMessagesController().getChat(Long.valueOf(j2)) == null && (chatSync = getMessagesStorage().getChatSync(j2)) != null) {
                getMessagesController().putChat(chatSync, true);
            }
        }
        TLRPC$TL_messages_getBotCallbackAnswer tLRPC$TL_messages_getBotCallbackAnswer = new TLRPC$TL_messages_getBotCallbackAnswer();
        tLRPC$TL_messages_getBotCallbackAnswer.peer = getMessagesController().getInputPeer(j);
        tLRPC$TL_messages_getBotCallbackAnswer.msg_id = i;
        tLRPC$TL_messages_getBotCallbackAnswer.game = false;
        if (bArr != null) {
            tLRPC$TL_messages_getBotCallbackAnswer.flags |= 1;
            tLRPC$TL_messages_getBotCallbackAnswer.data = bArr;
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_getBotCallbackAnswer, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda83
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.this.lambda$sendNotificationCallback$18(str, list, tLObject, tLRPC$TL_error);
            }
        }, 2);
        getMessagesController().markDialogAsRead(j, i, i, 0, false, 0, 0, true, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$18(final String str, final List list, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendNotificationCallback$17(str, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendNotificationCallback$17(String str, List list) {
        this.waitingForCallback.remove(str);
        list.remove(str);
    }

    public void onMessageEdited(TLRPC$Message tLRPC$Message) {
        if (tLRPC$Message == null || tLRPC$Message.reply_markup == null) {
            return;
        }
        HashMap<String, List<String>> hashMap = this.waitingForCallbackMap;
        List<String> remove = hashMap.remove(tLRPC$Message.dialog_id + "_" + tLRPC$Message.f1626id);
        if (remove != null) {
            for (String str : remove) {
                this.waitingForCallback.remove(str);
            }
        }
    }

    public byte[] isSendingVote(MessageObject messageObject) {
        if (messageObject == null) {
            return null;
        }
        return this.waitingForVote.get("poll_" + messageObject.getPollId());
    }

    public int sendVote(final MessageObject messageObject, ArrayList<TLRPC$TL_pollAnswer> arrayList, final Runnable runnable) {
        byte[] bArr;
        if (messageObject == null) {
            return 0;
        }
        final String str = "poll_" + messageObject.getPollId();
        if (this.waitingForCallback.containsKey(str)) {
            return 0;
        }
        TLRPC$TL_messages_sendVote tLRPC$TL_messages_sendVote = new TLRPC$TL_messages_sendVote();
        tLRPC$TL_messages_sendVote.msg_id = messageObject.getId();
        tLRPC$TL_messages_sendVote.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
        if (arrayList != null) {
            bArr = new byte[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC$TL_pollAnswer tLRPC$TL_pollAnswer = arrayList.get(i);
                tLRPC$TL_messages_sendVote.options.add(tLRPC$TL_pollAnswer.option);
                bArr[i] = tLRPC$TL_pollAnswer.option[0];
            }
        } else {
            bArr = new byte[0];
        }
        this.waitingForVote.put(str, bArr);
        return getConnectionsManager().sendRequest(tLRPC$TL_messages_sendVote, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda86
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.this.lambda$sendVote$21(messageObject, str, runnable, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendVote$21(MessageObject messageObject, final String str, final Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            this.voteSendTime.put(messageObject.getPollId(), 0L);
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
            this.voteSendTime.put(messageObject.getPollId(), Long.valueOf(SystemClock.elapsedRealtime()));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendVote$20(str, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendVote$20(String str, Runnable runnable) {
        this.waitingForVote.remove(str);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getVoteSendTime(long j) {
        return this.voteSendTime.get(j, 0L).longValue();
    }

    public void sendReaction(MessageObject messageObject, ArrayList<ReactionsLayoutInBubble.VisibleReaction> arrayList, ReactionsLayoutInBubble.VisibleReaction visibleReaction, boolean z, boolean z2, ChatActivity chatActivity, final Runnable runnable) {
        if (messageObject == null || chatActivity == null) {
            return;
        }
        TLRPC$TL_messages_sendReaction tLRPC$TL_messages_sendReaction = new TLRPC$TL_messages_sendReaction();
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        if (tLRPC$Message.isThreadMessage && tLRPC$Message.fwd_from != null) {
            tLRPC$TL_messages_sendReaction.peer = getMessagesController().getInputPeer(messageObject.getFromChatId());
            tLRPC$TL_messages_sendReaction.msg_id = messageObject.messageOwner.fwd_from.saved_from_msg_id;
        } else {
            tLRPC$TL_messages_sendReaction.peer = getMessagesController().getInputPeer(messageObject.getDialogId());
            tLRPC$TL_messages_sendReaction.msg_id = messageObject.getId();
        }
        tLRPC$TL_messages_sendReaction.add_to_recent = z2;
        if (z2 && visibleReaction != null) {
            MediaDataController.getInstance(this.currentAccount).recentReactions.add(0, ReactionsUtils.toTLReaction(visibleReaction));
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = arrayList.get(i);
                if (visibleReaction2.documentId != 0) {
                    TLRPC$TL_reactionCustomEmoji tLRPC$TL_reactionCustomEmoji = new TLRPC$TL_reactionCustomEmoji();
                    tLRPC$TL_reactionCustomEmoji.document_id = visibleReaction2.documentId;
                    tLRPC$TL_messages_sendReaction.reaction.add(tLRPC$TL_reactionCustomEmoji);
                    tLRPC$TL_messages_sendReaction.flags |= 1;
                } else if (visibleReaction2.emojicon != null) {
                    TLRPC$TL_reactionEmoji tLRPC$TL_reactionEmoji = new TLRPC$TL_reactionEmoji();
                    tLRPC$TL_reactionEmoji.emoticon = visibleReaction2.emojicon;
                    tLRPC$TL_messages_sendReaction.reaction.add(tLRPC$TL_reactionEmoji);
                    tLRPC$TL_messages_sendReaction.flags |= 1;
                }
            }
        }
        if (z) {
            tLRPC$TL_messages_sendReaction.flags |= 2;
            tLRPC$TL_messages_sendReaction.big = true;
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_sendReaction, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda82
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.this.lambda$sendReaction$22(runnable, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendReaction$22(Runnable runnable, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
            if (runnable != null) {
                AndroidUtilities.runOnUIThread(runnable);
            }
        }
    }

    public void requestUrlAuth(final String str, final ChatActivity chatActivity, final boolean z) {
        final TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth = new TLRPC$TL_messages_requestUrlAuth();
        tLRPC$TL_messages_requestUrlAuth.url = str;
        tLRPC$TL_messages_requestUrlAuth.flags |= 4;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_requestUrlAuth, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda92
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.lambda$requestUrlAuth$23(ChatActivity.this, tLRPC$TL_messages_requestUrlAuth, str, z, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestUrlAuth$23(ChatActivity chatActivity, TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth, String str, boolean z, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject != null) {
            if (tLObject instanceof TLRPC$TL_urlAuthResultRequest) {
                chatActivity.showRequestUrlAlert((TLRPC$TL_urlAuthResultRequest) tLObject, tLRPC$TL_messages_requestUrlAuth, str, z);
                return;
            } else if (tLObject instanceof TLRPC$TL_urlAuthResultAccepted) {
                AlertsCreator.showOpenUrlAlert(chatActivity, ((TLRPC$TL_urlAuthResultAccepted) tLObject).url, false, false);
                return;
            } else if (tLObject instanceof TLRPC$TL_urlAuthResultDefault) {
                AlertsCreator.showOpenUrlAlert(chatActivity, str, false, z);
                return;
            } else {
                return;
            }
        }
        AlertsCreator.showOpenUrlAlert(chatActivity, str, false, z);
    }

    public void sendCallback(boolean z, MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton, ChatActivity chatActivity) {
        lambda$sendCallback$24(z, messageObject, tLRPC$KeyboardButton, null, null, chatActivity);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendCallback(final boolean r21, final org.telegram.messenger.MessageObject r22, final org.telegram.tgnet.TLRPC$KeyboardButton r23, final org.telegram.tgnet.TLRPC$InputCheckPasswordSRP r24, final org.telegram.p043ui.TwoStepVerificationActivity r25, final org.telegram.p043ui.ChatActivity r26, final com.iMe.fork.utils.Callbacks$Callback2<java.lang.String, org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth> r27) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.sendCallback(boolean, org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$KeyboardButton, org.telegram.tgnet.TLRPC$InputCheckPasswordSRP, org.telegram.ui.TwoStepVerificationActivity, org.telegram.ui.ChatActivity, com.iMe.fork.utils.Callbacks$Callback2):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$30(final String str, final List list, final boolean z, final MessageObject messageObject, final TLRPC$KeyboardButton tLRPC$KeyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, final Callbacks$Callback2 callbacks$Callback2, final TLObject[] tLObjectArr, final TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, final boolean z2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendCallback$29(str, list, z, tLObject, messageObject, tLRPC$KeyboardButton, chatActivity, twoStepVerificationActivity, callbacks$Callback2, tLObjectArr, tLRPC$TL_error, tLRPC$InputCheckPasswordSRP, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$29(String str, List list, boolean z, TLObject tLObject, final MessageObject messageObject, final TLRPC$KeyboardButton tLRPC$KeyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, Callbacks$Callback2 callbacks$Callback2, TLObject[] tLObjectArr, TLRPC$TL_error tLRPC$TL_error, TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, final boolean z2) {
        int i;
        String str2;
        this.waitingForCallback.remove(str);
        list.remove(str);
        boolean z3 = false;
        if (z && tLObject == null) {
            sendCallback(false, messageObject, tLRPC$KeyboardButton, chatActivity);
        } else if (tLObject != null) {
            if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
            }
            long fromChatId = messageObject.getFromChatId();
            long j = messageObject.messageOwner.via_bot_id;
            if (j != 0) {
                fromChatId = j;
            }
            if (fromChatId > 0) {
                TLRPC$User user = getMessagesController().getUser(Long.valueOf(fromChatId));
                if (user != null) {
                    str2 = ContactsController.formatName(user.first_name, user.last_name);
                }
                str2 = null;
            } else {
                TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(-fromChatId));
                if (chat != null) {
                    str2 = chat.title;
                }
                str2 = null;
            }
            if (str2 == null) {
                str2 = "bot";
            }
            if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonUrlAuth) {
                if (tLObject instanceof TLRPC$TL_urlAuthResultRequest) {
                    TLRPC$TL_urlAuthResultRequest tLRPC$TL_urlAuthResultRequest = (TLRPC$TL_urlAuthResultRequest) tLObject;
                    if (tLRPC$KeyboardButton.url.contains("https://imem.app") && callbacks$Callback2 != null) {
                        callbacks$Callback2.invoke(tLRPC$KeyboardButton.url, (TLRPC$TL_messages_requestUrlAuth) tLObjectArr[0]);
                    } else {
                        chatActivity.showRequestUrlAlert(tLRPC$TL_urlAuthResultRequest, (TLRPC$TL_messages_requestUrlAuth) tLObjectArr[0], tLRPC$KeyboardButton.url, false);
                    }
                } else if (tLObject instanceof TLRPC$TL_urlAuthResultAccepted) {
                    TLRPC$TL_urlAuthResultAccepted tLRPC$TL_urlAuthResultAccepted = (TLRPC$TL_urlAuthResultAccepted) tLObject;
                    if (tLRPC$KeyboardButton.url.contains("https://imem.app") && callbacks$Callback2 != null) {
                        callbacks$Callback2.invoke(tLRPC$TL_urlAuthResultAccepted.url, null);
                    } else {
                        AlertsCreator.showOpenUrlAlert(chatActivity, tLRPC$TL_urlAuthResultAccepted.url, false, false);
                    }
                } else if (tLObject instanceof TLRPC$TL_urlAuthResultDefault) {
                    TLRPC$TL_urlAuthResultDefault tLRPC$TL_urlAuthResultDefault = (TLRPC$TL_urlAuthResultDefault) tLObject;
                    if (tLRPC$KeyboardButton.url.contains("https://imem.app") && callbacks$Callback2 != null) {
                        callbacks$Callback2.invoke(tLRPC$KeyboardButton.url, null);
                    } else {
                        AlertsCreator.showOpenUrlAlert(chatActivity, tLRPC$KeyboardButton.url, false, true);
                    }
                }
            } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonBuy) {
                if (tLObject instanceof TLRPC$TL_payments_paymentForm) {
                    TLRPC$TL_payments_paymentForm tLRPC$TL_payments_paymentForm = (TLRPC$TL_payments_paymentForm) tLObject;
                    getMessagesController().putUsers(tLRPC$TL_payments_paymentForm.users, false);
                    chatActivity.presentFragment(new PaymentFormActivity(tLRPC$TL_payments_paymentForm, messageObject, chatActivity));
                } else if (tLObject instanceof TLRPC$TL_payments_paymentReceipt) {
                    chatActivity.presentFragment(new PaymentFormActivity((TLRPC$TL_payments_paymentReceipt) tLObject));
                }
            } else {
                TLRPC$TL_messages_botCallbackAnswer tLRPC$TL_messages_botCallbackAnswer = (TLRPC$TL_messages_botCallbackAnswer) tLObject;
                if (!z && tLRPC$TL_messages_botCallbackAnswer.cache_time != 0 && !tLRPC$KeyboardButton.requires_password) {
                    getMessagesStorage().saveBotCache(str, tLRPC$TL_messages_botCallbackAnswer);
                }
                String str3 = tLRPC$TL_messages_botCallbackAnswer.message;
                if (str3 != null) {
                    if (tLRPC$TL_messages_botCallbackAnswer.alert) {
                        if (chatActivity.getParentActivity() == null) {
                            return;
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(chatActivity.getParentActivity());
                        builder.setTitle(str2);
                        builder.setPositiveButton(LocaleController.getString("OK", C3632R.string.OK), null);
                        builder.setMessage(tLRPC$TL_messages_botCallbackAnswer.message);
                        chatActivity.showDialog(builder.create());
                        return;
                    }
                    chatActivity.showAlert(str2, str3);
                } else if (tLRPC$TL_messages_botCallbackAnswer.url == null || chatActivity.getParentActivity() == null) {
                } else {
                    TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(fromChatId));
                    boolean z4 = user2 != null && user2.verified;
                    if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonGame) {
                        TLRPC$MessageMedia tLRPC$MessageMedia = messageObject.messageOwner.media;
                        TLRPC$TL_game tLRPC$TL_game = tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaGame ? tLRPC$MessageMedia.game : null;
                        if (tLRPC$TL_game == null) {
                            return;
                        }
                        String str4 = tLRPC$TL_messages_botCallbackAnswer.url;
                        if (!z4) {
                            if (MessagesController.getNotificationsSettings(this.currentAccount).getBoolean("askgame_" + fromChatId, true)) {
                                z3 = true;
                            }
                        }
                        chatActivity.showOpenGameAlert(tLRPC$TL_game, messageObject, str4, z3, fromChatId);
                        return;
                    }
                    AlertsCreator.showOpenUrlAlert(chatActivity, tLRPC$TL_messages_botCallbackAnswer.url, false, false);
                }
            }
        } else if (tLRPC$TL_error == null || chatActivity == null || chatActivity.getParentActivity() == null) {
        } else {
            if ("PASSWORD_HASH_INVALID".equals(tLRPC$TL_error.text)) {
                if (tLRPC$InputCheckPasswordSRP == null) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(chatActivity.getParentActivity());
                    builder2.setTitle(LocaleController.getString("BotOwnershipTransfer", C3632R.string.BotOwnershipTransfer));
                    builder2.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferReadyAlertText", C3632R.string.BotOwnershipTransferReadyAlertText, new Object[0])));
                    builder2.setPositiveButton(LocaleController.getString("BotOwnershipTransferChangeOwner", C3632R.string.BotOwnershipTransferChangeOwner), new DialogInterface.OnClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            SendMessagesHelper.this.lambda$sendCallback$25(z2, messageObject, tLRPC$KeyboardButton, chatActivity, dialogInterface, i2);
                        }
                    });
                    builder2.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                    chatActivity.showDialog(builder2.create());
                }
            } else if ("PASSWORD_MISSING".equals(tLRPC$TL_error.text) || tLRPC$TL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tLRPC$TL_error.text.startsWith("SESSION_TOO_FRESH_")) {
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.needHideProgress();
                }
                AlertDialog.Builder builder3 = new AlertDialog.Builder(chatActivity.getParentActivity());
                builder3.setTitle(LocaleController.getString("EditAdminTransferAlertTitle", C3632R.string.EditAdminTransferAlertTitle));
                LinearLayout linearLayout = new LinearLayout(chatActivity.getParentActivity());
                linearLayout.setPadding(AndroidUtilities.m104dp(24), AndroidUtilities.m104dp(2), AndroidUtilities.m104dp(24), 0);
                linearLayout.setOrientation(1);
                builder3.setView(linearLayout);
                TextView textView = new TextView(chatActivity.getParentActivity());
                int i2 = Theme.key_dialogTextBlack;
                textView.setTextColor(Theme.getColor(i2));
                textView.setTextSize(1, 16.0f);
                textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferAlertText", C3632R.string.BotOwnershipTransferAlertText, new Object[0])));
                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
                LinearLayout linearLayout2 = new LinearLayout(chatActivity.getParentActivity());
                linearLayout2.setOrientation(0);
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                ImageView imageView = new ImageView(chatActivity.getParentActivity());
                int i3 = C3632R.C3634drawable.list_circle;
                imageView.setImageResource(i3);
                imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.m104dp(11) : 0, AndroidUtilities.m104dp(9), LocaleController.isRTL ? 0 : AndroidUtilities.m104dp(11), 0);
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
                TextView textView2 = new TextView(chatActivity.getParentActivity());
                textView2.setTextColor(Theme.getColor(i2));
                textView2.setTextSize(1, 16.0f);
                textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString("EditAdminTransferAlertText1", C3632R.string.EditAdminTransferAlertText1)));
                if (LocaleController.isRTL) {
                    linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                    linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
                } else {
                    linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
                    linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                }
                LinearLayout linearLayout3 = new LinearLayout(chatActivity.getParentActivity());
                linearLayout3.setOrientation(0);
                linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                ImageView imageView2 = new ImageView(chatActivity.getParentActivity());
                imageView2.setImageResource(i3);
                imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.m104dp(11) : 0, AndroidUtilities.m104dp(9), LocaleController.isRTL ? 0 : AndroidUtilities.m104dp(11), 0);
                imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
                TextView textView3 = new TextView(chatActivity.getParentActivity());
                textView3.setTextColor(Theme.getColor(i2));
                textView3.setTextSize(1, 16.0f);
                textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString("EditAdminTransferAlertText2", C3632R.string.EditAdminTransferAlertText2)));
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
                    builder3.setPositiveButton(LocaleController.getString("EditAdminTransferSetPassword", C3632R.string.EditAdminTransferSetPassword), new DialogInterface.OnClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i4) {
                            SendMessagesHelper.lambda$sendCallback$26(ChatActivity.this, dialogInterface, i4);
                        }
                    });
                    builder3.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
                } else {
                    TextView textView4 = new TextView(chatActivity.getParentActivity());
                    textView4.setTextColor(Theme.getColor(i2));
                    textView4.setTextSize(1, 16.0f);
                    textView4.setGravity((LocaleController.isRTL ? i : 3) | 48);
                    textView4.setText(LocaleController.getString("EditAdminTransferAlertText3", C3632R.string.EditAdminTransferAlertText3));
                    linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                    builder3.setNegativeButton(LocaleController.getString("OK", C3632R.string.OK), null);
                }
                chatActivity.showDialog(builder3.create());
            } else if ("SRP_ID_INVALID".equals(tLRPC$TL_error.text)) {
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC$TL_account_getPassword(), new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda91
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error2) {
                        SendMessagesHelper.this.lambda$sendCallback$28(twoStepVerificationActivity, z2, messageObject, tLRPC$KeyboardButton, chatActivity, tLObject2, tLRPC$TL_error2);
                    }
                }, 8);
            } else if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$25(final boolean z, final MessageObject messageObject, final TLRPC$KeyboardButton tLRPC$KeyboardButton, final ChatActivity chatActivity, DialogInterface dialogInterface, int i) {
        final TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
        twoStepVerificationActivity.setDelegate(new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda93
            @Override // org.telegram.p043ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
            public final void didEnterPassword(TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP) {
                SendMessagesHelper.this.lambda$sendCallback$24(z, messageObject, tLRPC$KeyboardButton, twoStepVerificationActivity, chatActivity, tLRPC$InputCheckPasswordSRP);
            }
        });
        chatActivity.presentFragment(twoStepVerificationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$sendCallback$26(ChatActivity chatActivity, DialogInterface dialogInterface, int i) {
        chatActivity.presentFragment(new TwoStepVerificationSetupActivity(6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$28(final TwoStepVerificationActivity twoStepVerificationActivity, final boolean z, final MessageObject messageObject, final TLRPC$KeyboardButton tLRPC$KeyboardButton, final ChatActivity chatActivity, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendCallback$27(tLRPC$TL_error, tLObject, twoStepVerificationActivity, z, messageObject, tLRPC$KeyboardButton, chatActivity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$27(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TwoStepVerificationActivity twoStepVerificationActivity, boolean z, MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton, ChatActivity chatActivity) {
        if (tLRPC$TL_error == null) {
            TLRPC$account_Password tLRPC$account_Password = (TLRPC$account_Password) tLObject;
            twoStepVerificationActivity.setCurrentPasswordInfo(null, tLRPC$account_Password);
            TwoStepVerificationActivity.initPasswordNewAlgo(tLRPC$account_Password);
            lambda$sendCallback$24(z, messageObject, tLRPC$KeyboardButton, twoStepVerificationActivity.getNewSrpPassword(), twoStepVerificationActivity, chatActivity);
        }
    }

    public boolean isSendingCallback(MessageObject messageObject, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
        int i = 0;
        if (messageObject == null || tLRPC$KeyboardButton == null) {
            return false;
        }
        if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonUrlAuth) {
            i = 3;
        } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonGame) {
            i = 1;
        } else if (tLRPC$KeyboardButton instanceof TLRPC$TL_keyboardButtonBuy) {
            i = 2;
        }
        return this.waitingForCallback.containsKey(messageObject.getDialogId() + "_" + messageObject.getId() + "_" + Utilities.bytesToHex(tLRPC$KeyboardButton.data) + "_" + i);
    }

    public void sendGame(TLRPC$InputPeer tLRPC$InputPeer, TLRPC$TL_inputMediaGame tLRPC$TL_inputMediaGame, long j, final long j2) {
        NativeByteBuffer nativeByteBuffer;
        if (tLRPC$InputPeer == null || tLRPC$TL_inputMediaGame == null) {
            return;
        }
        TLRPC$TL_messages_sendMedia tLRPC$TL_messages_sendMedia = new TLRPC$TL_messages_sendMedia();
        tLRPC$TL_messages_sendMedia.peer = tLRPC$InputPeer;
        if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChannel) {
            SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
            tLRPC$TL_messages_sendMedia.silent = notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + (-tLRPC$InputPeer.channel_id), false);
        } else if (tLRPC$InputPeer instanceof TLRPC$TL_inputPeerChat) {
            SharedPreferences notificationsSettings2 = MessagesController.getNotificationsSettings(this.currentAccount);
            tLRPC$TL_messages_sendMedia.silent = notificationsSettings2.getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + (-tLRPC$InputPeer.chat_id), false);
        } else {
            SharedPreferences notificationsSettings3 = MessagesController.getNotificationsSettings(this.currentAccount);
            tLRPC$TL_messages_sendMedia.silent = notificationsSettings3.getBoolean(NotificationsSettingsFacade.PROPERTY_SILENT + tLRPC$InputPeer.user_id, false);
        }
        tLRPC$TL_messages_sendMedia.random_id = j != 0 ? j : getNextRandomId();
        tLRPC$TL_messages_sendMedia.message = "";
        tLRPC$TL_messages_sendMedia.media = tLRPC$TL_inputMediaGame;
        long sendAsPeerId = ChatObject.getSendAsPeerId(getMessagesController().getChat(Long.valueOf(tLRPC$InputPeer.chat_id)), getMessagesController().getChatFull(tLRPC$InputPeer.chat_id));
        if (sendAsPeerId != UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            tLRPC$TL_messages_sendMedia.send_as = getMessagesController().getInputPeer(sendAsPeerId);
        }
        if (j2 == 0) {
            NativeByteBuffer nativeByteBuffer2 = null;
            try {
                nativeByteBuffer = new NativeByteBuffer(tLRPC$InputPeer.getObjectSize() + tLRPC$TL_inputMediaGame.getObjectSize() + 4 + 8);
            } catch (Exception e) {
                e = e;
            }
            try {
                nativeByteBuffer.writeInt32(3);
                nativeByteBuffer.writeInt64(j);
                tLRPC$InputPeer.serializeToStream(nativeByteBuffer);
                tLRPC$TL_inputMediaGame.serializeToStream(nativeByteBuffer);
            } catch (Exception e2) {
                e = e2;
                nativeByteBuffer2 = nativeByteBuffer;
                FileLog.m99e(e);
                nativeByteBuffer = nativeByteBuffer2;
                j2 = getMessagesStorage().createPendingTask(nativeByteBuffer);
                getConnectionsManager().sendRequest(tLRPC$TL_messages_sendMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda80
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        SendMessagesHelper.this.lambda$sendGame$31(j2, tLObject, tLRPC$TL_error);
                    }
                });
            }
            j2 = getMessagesStorage().createPendingTask(nativeByteBuffer);
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_sendMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda80
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.this.lambda$sendGame$31(j2, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendGame$31(long j, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error == null) {
            getMessagesController().processUpdates((TLRPC$Updates) tLObject, false);
        }
        if (j != 0) {
            getMessagesStorage().removePendingTask(j);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(75:10|(1:13)|14|(1:19)|(1:1707)(1:23)|24|(1:26)(1:1706)|27|(2:29|(1:(2:32|33)(1:34))(1:35))(2:1692|(69:1694|(1:1696)(1:1704)|(1:1703)(1:1701)|1702|37|(3:(3:40|(3:43|(1:59)(1:57)|41)|1689)|1690|(5:(1:62)|63|(1:65)(1:(1:1680)(2:1681|67))|66|67)(1:1682))(1:1691)|68|69|(6:71|(1:1398)(3:74|75|(1:77))|78|(6:(2:81|(1:83))(1:1396)|1328|(1:1330)(5:1339|(2:1344|(1:1346)(2:1347|(3:1349|(1:1351)|1352)(5:1353|(2:1360|(1:1362)(5:1363|(2:1373|(3:1375|(1:1377)|1378)(2:1379|(1:1381)(1:1382)))|1383|(1:1385)|1386))|1387|(1:1389)|1390)))|1391|(1:1393)(1:1395)|1394)|(1:1334)|1335|(1:1337)(2:1338|85))(1:1397)|84|85)(14:1399|1400|1401|(1:1403)(1:1670)|(3:(1:1406)(1:1470)|(3:1461|1462|(2:1464|(1:1466)(1:1467)))|(4:(1:1449)(2:1457|(1:1459)(1:1460))|(1:1456)(1:1453)|1454|1455)(1:1419))(3:1471|(4:(1:1474)(1:1479)|1475|1476|1477)(2:1480|(5:(1:1483)(1:1492)|1484|1485|(1:1491)(1:1489)|1490)(3:1493|(10:(1:1496)(1:1519)|1497|1498|(1:1500)|1501|(1:1503)|1504|(1:1518)(1:1508)|(1:1517)(2:1512|(1:1514))|1516)(3:1520|1521|(4:1523|1524|(1:1526)|1530)(1:(5:1532|1533|1534|(1:1536)|1530)(1:(8:(1:1540)(1:1558)|1541|(1:1557)(1:1545)|1546|(1:1548)|1549|(1:1551)|(1:1556)(2:1555|1529))(2:1559|(13:(1:1562)(1:1659)|1563|1564|(1:1656)(5:1567|1568|(2:1570|(3:1573|1574|1575)(1:1572))|1653|1654)|1655|1576|(1:1578)|1579|(2:1641|(2:1649|(1:1651)(1:1652))(1:1648))(1:1583)|(3:1585|(1:1587)|1588)|(1:1640)(1:1598)|(1:1639)(5:1605|(2:1606|(5:1608|1609|1610|1611|(3:1614|1615|(4:1617|(1:1619)(1:1632)|1620|(1:1622)(3:1627|(1:1629)(1:1631)|1630))(1:1633))(1:1613))(2:1636|1637))|1623|1624|1625)|1626)(2:1660|(3:(1:1663)(1:1666)|1664|1665)(1:1667))))))|1515))|1478)|(1:1447)(1:1423)|(1:1425)(3:1443|1444|(1:1446))|1426|(1:1428)|1429|(2:1439|(1:1441)(3:1442|1434|1435))(1:1432)|1433|1434|1435)|(4:87|88|89|(55:91|92|93|94|(1:96)|97|(1:1321)(2:(3:102|(1:104)|105)(1:1320)|106)|107|(3:(1:1302)(1:1319)|1303|(3:(2:1307|1308)|1309|(2:1311|(1:1313)(2:1314|(1:1316))))(2:1317|1318))|111|(1:113)(43:1263|(11:1265|(1:1271)|1272|(2:1274|(5:1276|1277|(2:1295|(2:1297|(2:1287|(2:1289|(1:1293)))))(2:1282|(1:1284))|1285|(0)))(1:1299)|1298|1277|(0)|1295|(0)|1285|(0))(1:1300)|1294|115|(1:117)(1:1262)|(2:120|(1:122))|123|(5:125|(2:127|(2:129|130)(2:131|(1:133)))|134|(3:136|(1:138)(1:140)|139)|141)(6:1216|1217|(1:1219)(1:1261)|(2:1221|1222)(3:1255|1256|(1:1260))|1223|(2:1227|(3:1229|(2:1230|(2:1232|(2:1235|1236)(1:1234))(2:1238|1239))|1237)(2:1240|(3:1244|(2:1245|(2:1247|(2:1250|1251)(1:1249))(2:1253|1254))|1252))))|(1:1215)(15:148|(1:150)(1:1214)|151|(1:1213)(1:155)|(2:161|(11:165|(8:167|168|(1:170)(1:1210)|(1:1209)(1:176)|(3:180|(2:(1:183)(1:196)|(6:185|(1:189)|190|(1:192)|193|(1:195)))|197)|1208|(0)|197)|1211|168|(0)(0)|(1:172)|1209|(3:180|(0)|197)|1208|(0)|197))|1212|1211|168|(0)(0)|(0)|1209|(0)|1208|(0)|197)|198|(2:1206|1207)|202|(1:204)|205|206|(5:208|(1:210)(1:1203)|211|(1:213)(1:1202)|214)(1:1204)|(5:1193|1194|1195|1196|1197)(1:216)|(2:219|220)|(24:1192|223|224|225|226|227|(1:229)(1:1180)|230|(3:1163|1164|(20:1169|1170|1171|(1:1173)|233|234|(1:1160)|237|(7:239|(1:241)(1:1143)|242|(1:244)(1:1142)|245|(1:247)|248)(7:1144|1145|(2:1147|1148)|(3:1150|(1:1152)(1:1158)|1153)(1:1159)|1154|1155|(1:1157))|249|(1:1140)(1:252)|253|254|(2:1008|(2:1045|(17:1085|1086|(1:1088)(1:1135)|1089|(1:1091)(2:1132|(1:1134))|(1:1095)|1096|(1:1098)|(1:1102)|(3:1104|1105|1106)(1:1130)|1108|1109|1110|(1:1112)(1:1123)|1113|1114|(4:1116|(1:1118)(1:1121)|1119|1120)(1:1122))(14:1047|(1:1049)(1:1084)|1050|(1:1052)(2:1081|(1:1083))|(1:1056)|1057|(1:1059)|(1:1061)|(1:1065)|(1:1067)|1068|(1:1070)(1:1080)|1071|(4:1073|(1:1075)(1:1078)|1076|1077)(1:1079)))(11:1010|1011|1012|(1:1016)|1017|(2:1019|(1:1021))|(1:1025)|1026|(1:1041)(1:1030)|1031|(4:1033|(1:1035)(1:1039)|1036|1038)(1:1040)))(6:260|261|(4:920|(1:922)(1:1006)|(2:933|(14:967|968|(1:970)|(2:972|(12:974|(2:976|(1:978)(1:1000))(1:1001)|979|980|(1:982)|983|(1:985)(2:993|(1:995)(2:996|(1:998)))|986|(1:988)(1:992)|989|990|991))(1:1003)|1002|980|(0)|983|(0)(0)|986|(0)(0)|989|990|991)(2:935|(14:937|(1:939)|940|(1:942)(1:965)|943|(1:945)(2:962|(1:964))|946|(1:948)|949|(3:951|(1:953)(1:955)|954)|956|(1:958)(1:961)|959|960)(1:966)))|924)(1:265)|266|(7:268|269|(5:271|272|(1:274)(2:405|(4:407|(1:409)|410|(1:412))(1:413))|275|276)(6:414|415|(14:630|631|632|(3:634|635|636)(1:673)|(1:672)(4:640|(1:642)|643|644)|645|646|647|(1:649)(4:666|(2:668|669)|670|671)|(3:651|(1:653)(1:664)|654)(1:665)|655|(2:659|(2:661|662))|663|662)(4:420|(12:422|(2:488|(1:490))|(6:432|433|434|435|436|437)(1:487)|438|(4:440|441|442|(12:444|445|446|(1:448)|449|450|451|(1:453)(4:467|(1:469)|(1:473)|474)|(3:455|(1:457)(1:465)|458)(1:466)|459|(2:461|(1:463))|464)(1:476))(1:481)|477|451|(0)(0)|(0)(0)|459|(0)|464)(2:491|(3:493|(1:499)(1:497)|498)(16:500|501|(2:506|(9:508|(3:510|511|512)(1:538)|513|514|(1:516)(6:523|524|525|(1:527)|(1:531)|532)|517|(1:519)(1:522)|520|521)(4:539|(4:541|(2:543|(2:545|(4:547|(2:550|548)|551|552)))|553|(2:555|(1:557)))(2:559|(1:561)(2:562|(1:564)(2:565|278)))|558|278))|566|(1:627)(3:569|570|(6:572|573|574|(2:576|577)(6:594|595|596|(1:598)|(1:602)|603)|(3:(3:580|(1:582)(1:591)|583)(1:592)|584|(2:586|(1:588)))(1:593)|589))|607|608|(1:610)|(2:625|626)|(1:624)(1:622)|623|573|574|(0)(0)|(0)(0)|589))|(5:280|(1:282)(4:368|(1:370)(2:374|(1:376))|(1:372)|373)|283|(1:287)|288)(11:377|378|(1:380)|(1:382)(2:402|(1:404))|383|(1:385)|386|(1:390)|(1:392)|(1:396)|(1:398))|(2:290|291)(5:292|293|(4:295|(1:297)(1:303)|298|299)(2:304|(1:(1:307)(3:308|(1:310)(1:312)|311))(2:313|(1:(1:316)(2:(1:318)(1:320)|319))(2:321|(2:(1:324)(1:326)|325)(2:327|(1:(2:(1:333)(1:335)|334)(1:331))(2:336|(1:(1:339)(2:(1:341)(1:343)|342))(2:344|(2:(1:352)(1:354)|353)(1:350)))))))|300|301))|590|(0)(0)|(0)(0))|277|278|(0)(0)|(0)(0))(19:681|682|683|684|(3:913|914|(1:916))(1:686)|687|(1:691)|692|(2:694|(1:696))|697|(3:699|700|(1:702))|703|704|705|(3:707|(1:709)(1:741)|710)(10:742|(5:748|(11:750|(9:755|(1:790)(1:759)|760|(2:761|(2:763|(2:766|767)(1:765))(1:789))|768|(1:772)|788|783|(1:785))|791|(1:796)(1:795)|760|(3:761|(0)(0)|765)|768|(1:772)|788|783|(0))(3:797|(1:799)(7:801|(2:807|(5:809|(1:811)(1:817)|812|(1:814)(1:816)|815))|818|819|820|821|(9:837|838|(2:840|(3:842|843|844)(1:871))(1:872)|845|(3:849|(1:740)(7:714|(1:716)(1:739)|717|718|719|(1:732)|723)|(4:725|(1:727)(1:730)|728|729)(1:731))|(1:867)|(1:869)|(0)(0)|(0)(0))(4:827|(1:829)(1:836)|(2:831|(1:833))(1:835)|834))|800)|712|(0)(0)|(0)(0))|876|877|878|(3:880|881|882)(2:908|909)|883|(4:(6:888|(2:890|(4:892|893|(1:895)(1:897)|896))|898|893|(0)(0)|896)|899|(2:906|907)(1:903)|(1:905))(1:886)|(0)(0)|(0)(0))|711|712|(0)(0)|(0)(0))|537)|359|(1:361)(1:367)|362|(1:364)|365|366))|232|233|234|(0)|1160|237|(0)(0)|249|(0)|1140|253|254|(1:256)|1008|(0)(0))|222|223|224|225|226|227|(0)(0)|230|(0)|232|233|234|(0)|1160|237|(0)(0)|249|(0)|1140|253|254|(0)|1008|(0)(0))|114|115|(0)(0)|(2:120|(0))|123|(0)(0)|(0)|1215|198|(1:200)|1206|1207|202|(0)|205|206|(0)(0)|(0)(0)|(2:219|220)|(0)|222|223|224|225|226|227|(0)(0)|230|(0)|232|233|234|(0)|1160|237|(0)(0)|249|(0)|1140|253|254|(0)|1008|(0)(0)))(1:1327)|1324|92|93|94|(0)|97|(1:99)|1321|107|(1:109)|(0)(0)|1303|(0)(0)|111|(0)(0)|114|115|(0)(0)|(0)|123|(0)(0)|(0)|1215|198|(0)|1206|1207|202|(0)|205|206|(0)(0)|(0)(0)|(0)|(0)|222|223|224|225|226|227|(0)(0)|230|(0)|232|233|234|(0)|1160|237|(0)(0)|249|(0)|1140|253|254|(0)|1008|(0)(0))(1:1705))|36|37|(0)(0)|68|69|(0)(0)|(0)(0)|1324|92|93|94|(0)|97|(0)|1321|107|(0)|(0)(0)|1303|(0)(0)|111|(0)(0)|114|115|(0)(0)|(0)|123|(0)(0)|(0)|1215|198|(0)|1206|1207|202|(0)|205|206|(0)(0)|(0)(0)|(0)|(0)|222|223|224|225|226|227|(0)(0)|230|(0)|232|233|234|(0)|1160|237|(0)(0)|249|(0)|1140|253|254|(0)|1008|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:1351:0x1b62, code lost:
        r9 = r46;
        r3 = new org.telegram.messenger.SendMessagesHelper.DelayedMessage(r90, r9);
        r3.encryptedChat = r6;
        r3.type = 1;
        r3.sendEncryptedRequest = r7;
        r13 = r40;
        r3.originalPath = r13;
        r3.obj = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1352:0x1b76, code lost:
        if (r1 == null) goto L787;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1353:0x1b78, code lost:
        r14 = r82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1354:0x1b7e, code lost:
        if (r1.containsKey(r14) == false) goto L787;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1355:0x1b80, code lost:
        r3.parentObject = r1.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1356:0x1b87, code lost:
        r3.parentObject = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1357:0x1b8b, code lost:
        r3.performMediaUpload = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1358:0x1b8e, code lost:
        if (r43 == 0) goto L786;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1359:0x1b90, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1360:0x1b92, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1361:0x1b93, code lost:
        r3.scheduled = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1423:0x1d7d, code lost:
        r3 = new org.telegram.messenger.SendMessagesHelper.DelayedMessage(r90, r9);
        r3.encryptedChat = r6;
        r3.type = 2;
        r3.sendEncryptedRequest = r7;
        r3.originalPath = r13;
        r3.obj = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1424:0x1d8d, code lost:
        if (r1 == null) goto L861;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1426:0x1d95, code lost:
        if (r1.containsKey(r14) == false) goto L861;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1427:0x1d97, code lost:
        r3.parentObject = r1.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1428:0x1d9e, code lost:
        r3.parentObject = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1429:0x1da2, code lost:
        r3.performMediaUpload = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1430:0x1da5, code lost:
        if (r43 == 0) goto L860;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1431:0x1da7, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1432:0x1da9, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1433:0x1daa, code lost:
        r3.scheduled = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1521:0x1f89, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1631:0x216b, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1632:0x216c, code lost:
        r1 = r7;
        r9 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1633:0x216f, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1634:0x2170, code lost:
        r9 = r15;
        r1 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1636:0x2175, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1637:0x2176, code lost:
        r9 = r15;
        r1 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1638:0x217a, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1639:0x217b, code lost:
        r1 = r5;
        r9 = r43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1640:0x217e, code lost:
        r8 = r1;
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x03d6, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03d7, code lost:
        r1 = r0;
        r8 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x03dd, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03de, code lost:
        r1 = r0;
        r9 = r43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0651, code lost:
        if (r5.containsKey("query_id") != false) goto L1528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x066a, code lost:
        if (r5.containsKey("query_id") != false) goto L1528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x066c, code lost:
        r3 = r2;
        r62 = "query_id";
        r63 = r5;
        r20 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:708:0x0ec5, code lost:
        if (r8.getId() == 1) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:799:0x1079, code lost:
        if (r2 > '\b') goto L925;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1085:0x162a A[Catch: Exception -> 0x15cf, TRY_ENTER, TRY_LEAVE, TryCatch #17 {Exception -> 0x15cf, blocks: (B:1027:0x151d, B:1029:0x152a, B:1031:0x1532, B:1034:0x1542, B:1036:0x1545, B:1037:0x1555, B:1038:0x155b, B:1040:0x155f, B:1042:0x1567, B:1045:0x157c, B:1049:0x1593, B:1055:0x15c2, B:1085:0x162a, B:1065:0x15e1, B:1067:0x15ed, B:1069:0x15f3, B:1072:0x1602, B:1077:0x160f), top: B:1685:0x1472 }] */
    /* JADX WARN: Removed duplicated region for block: B:1087:0x1630 A[Catch: Exception -> 0x16bd, TRY_ENTER, TRY_LEAVE, TryCatch #32 {Exception -> 0x16bd, blocks: (B:1082:0x1624, B:1087:0x1630, B:1063:0x15d8, B:1081:0x161a, B:1075:0x160b), top: B:1708:0x15d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1098:0x166c  */
    /* JADX WARN: Removed duplicated region for block: B:1111:0x16ac  */
    /* JADX WARN: Removed duplicated region for block: B:1163:0x17b1 A[Catch: Exception -> 0x123a, TRY_ENTER, TryCatch #34 {Exception -> 0x123a, blocks: (B:1163:0x17b1, B:1165:0x17b5, B:1175:0x17f8, B:1177:0x183b, B:1179:0x1841, B:1180:0x184b, B:1209:0x18d1, B:1166:0x17b8, B:1168:0x17c9, B:1173:0x17ee, B:1174:0x17f6, B:1169:0x17d8, B:1171:0x17de, B:1185:0x1869, B:1187:0x186e, B:1194:0x1897, B:1197:0x18a9, B:1199:0x18af, B:1201:0x18ba, B:1203:0x18c4, B:1205:0x18c8, B:1207:0x18cd, B:1191:0x1881, B:1001:0x1493, B:1121:0x16e1, B:1126:0x16f3, B:1128:0x16fe, B:1130:0x170f, B:1131:0x1728, B:1145:0x176a, B:1149:0x177b, B:1154:0x1786, B:1156:0x178c, B:1158:0x1796, B:1141:0x1760, B:850:0x118a, B:856:0x119c, B:858:0x11ab, B:859:0x11b7, B:863:0x11c2, B:865:0x11c8, B:869:0x11e9, B:871:0x11ef, B:872:0x11f7, B:874:0x1215, B:876:0x121e, B:878:0x1224, B:883:0x122f, B:866:0x11d5, B:868:0x11db), top: B:1713:0x1061 }] */
    /* JADX WARN: Removed duplicated region for block: B:1182:0x1852  */
    /* JADX WARN: Removed duplicated region for block: B:1209:0x18d1 A[Catch: Exception -> 0x123a, TRY_LEAVE, TryCatch #34 {Exception -> 0x123a, blocks: (B:1163:0x17b1, B:1165:0x17b5, B:1175:0x17f8, B:1177:0x183b, B:1179:0x1841, B:1180:0x184b, B:1209:0x18d1, B:1166:0x17b8, B:1168:0x17c9, B:1173:0x17ee, B:1174:0x17f6, B:1169:0x17d8, B:1171:0x17de, B:1185:0x1869, B:1187:0x186e, B:1194:0x1897, B:1197:0x18a9, B:1199:0x18af, B:1201:0x18ba, B:1203:0x18c4, B:1205:0x18c8, B:1207:0x18cd, B:1191:0x1881, B:1001:0x1493, B:1121:0x16e1, B:1126:0x16f3, B:1128:0x16fe, B:1130:0x170f, B:1131:0x1728, B:1145:0x176a, B:1149:0x177b, B:1154:0x1786, B:1156:0x178c, B:1158:0x1796, B:1141:0x1760, B:850:0x118a, B:856:0x119c, B:858:0x11ab, B:859:0x11b7, B:863:0x11c2, B:865:0x11c8, B:869:0x11e9, B:871:0x11ef, B:872:0x11f7, B:874:0x1215, B:876:0x121e, B:878:0x1224, B:883:0x122f, B:866:0x11d5, B:868:0x11db), top: B:1713:0x1061 }] */
    /* JADX WARN: Removed duplicated region for block: B:1211:0x18d6  */
    /* JADX WARN: Removed duplicated region for block: B:1341:0x1b02 A[Catch: Exception -> 0x19eb, TryCatch #4 {Exception -> 0x19eb, blocks: (B:1281:0x19d8, B:1283:0x19df, B:1290:0x19f9, B:1292:0x19ff, B:1295:0x1a0b, B:1297:0x1a11, B:1301:0x1a28, B:1303:0x1a2e, B:1307:0x1a45, B:1309:0x1a49, B:1311:0x1a68, B:1310:0x1a61, B:1321:0x1a9f, B:1323:0x1aae, B:1326:0x1ab5, B:1328:0x1abe, B:1330:0x1ac2, B:1338:0x1aec, B:1339:0x1afa, B:1341:0x1b02, B:1343:0x1b0e, B:1344:0x1b1e, B:1345:0x1b21, B:1349:0x1b32, B:1351:0x1b62, B:1353:0x1b78, B:1355:0x1b80, B:1357:0x1b8b, B:1361:0x1b93, B:1363:0x1b9c, B:1365:0x1ba2, B:1356:0x1b87, B:1331:0x1ac7, B:1332:0x1acf, B:1334:0x1adc, B:1336:0x1ae0, B:1337:0x1ae5, B:1368:0x1bb2, B:1377:0x1bf0, B:1381:0x1c08, B:1383:0x1c1f, B:1385:0x1c42, B:1384:0x1c34, B:1392:0x1c5f, B:1394:0x1c65, B:1396:0x1c6c, B:1398:0x1c97, B:1401:0x1cb6, B:1403:0x1cbd, B:1405:0x1cc7, B:1399:0x1c9e), top: B:1663:0x19d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1365:0x1ba2 A[Catch: Exception -> 0x19eb, TryCatch #4 {Exception -> 0x19eb, blocks: (B:1281:0x19d8, B:1283:0x19df, B:1290:0x19f9, B:1292:0x19ff, B:1295:0x1a0b, B:1297:0x1a11, B:1301:0x1a28, B:1303:0x1a2e, B:1307:0x1a45, B:1309:0x1a49, B:1311:0x1a68, B:1310:0x1a61, B:1321:0x1a9f, B:1323:0x1aae, B:1326:0x1ab5, B:1328:0x1abe, B:1330:0x1ac2, B:1338:0x1aec, B:1339:0x1afa, B:1341:0x1b02, B:1343:0x1b0e, B:1344:0x1b1e, B:1345:0x1b21, B:1349:0x1b32, B:1351:0x1b62, B:1353:0x1b78, B:1355:0x1b80, B:1357:0x1b8b, B:1361:0x1b93, B:1363:0x1b9c, B:1365:0x1ba2, B:1356:0x1b87, B:1331:0x1ac7, B:1332:0x1acf, B:1334:0x1adc, B:1336:0x1ae0, B:1337:0x1ae5, B:1368:0x1bb2, B:1377:0x1bf0, B:1381:0x1c08, B:1383:0x1c1f, B:1385:0x1c42, B:1384:0x1c34, B:1392:0x1c5f, B:1394:0x1c65, B:1396:0x1c6c, B:1398:0x1c97, B:1401:0x1cb6, B:1403:0x1cbd, B:1405:0x1cc7, B:1399:0x1c9e), top: B:1663:0x19d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1467:0x1e98  */
    /* JADX WARN: Removed duplicated region for block: B:1468:0x1e9a  */
    /* JADX WARN: Removed duplicated region for block: B:1481:0x1ecb A[Catch: Exception -> 0x1f2a, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x1f2a, blocks: (B:1481:0x1ecb, B:1488:0x1edf, B:1487:0x1ed8, B:1446:0x1ddc, B:1453:0x1e1f, B:1470:0x1e9d, B:1477:0x1eb2, B:1452:0x1e15), top: B:1666:0x1ddc }] */
    /* JADX WARN: Removed duplicated region for block: B:1496:0x1f14  */
    /* JADX WARN: Removed duplicated region for block: B:1498:0x1f18 A[Catch: Exception -> 0x1f89, TryCatch #20 {Exception -> 0x1f89, blocks: (B:1490:0x1ee8, B:1495:0x1f07, B:1498:0x1f18, B:1500:0x1f1e, B:1502:0x1f24, B:1519:0x1f7c, B:1527:0x1fa3, B:1529:0x1fa7, B:1532:0x1fae, B:1534:0x1fbc, B:1536:0x1fc2, B:1525:0x1f93), top: B:1690:0x1054 }] */
    /* JADX WARN: Removed duplicated region for block: B:1600:0x20cc  */
    /* JADX WARN: Removed duplicated region for block: B:1650:0x2197  */
    /* JADX WARN: Removed duplicated region for block: B:1651:0x2199  */
    /* JADX WARN: Removed duplicated region for block: B:1654:0x219f  */
    /* JADX WARN: Removed duplicated region for block: B:1688:0x0e4d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1696:0x0efb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1720:0x1f49 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1736:0x1b21 A[EDGE_INSN: B:1736:0x1b21->B:1345:0x1b21 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1751:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x09d6  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0a03  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0a12 A[Catch: Exception -> 0x09fe, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0a1e A[Catch: Exception -> 0x09fe, TRY_ENTER, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0a5a A[Catch: Exception -> 0x09fe, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:478:0x0a60  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0a63 A[Catch: Exception -> 0x217a, TRY_ENTER, TryCatch #35 {Exception -> 0x217a, blocks: (B:456:0x0a0a, B:473:0x0a56, B:497:0x0aaa, B:548:0x0bf9, B:675:0x0e00, B:681:0x0e0f, B:685:0x0e18, B:680:0x0e0d, B:567:0x0c41, B:583:0x0c70, B:578:0x0c5e, B:572:0x0c53, B:480:0x0a6b, B:496:0x0aa8, B:479:0x0a63), top: B:1714:0x0a0a }] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0a71  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0aa7  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0ab8 A[Catch: Exception -> 0x09fe, TRY_ENTER, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0add  */
    /* JADX WARN: Removed duplicated region for block: B:527:0x0b5b A[Catch: Exception -> 0x09fe, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:530:0x0b6d A[Catch: Exception -> 0x09fe, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:541:0x0bc0 A[Catch: Exception -> 0x09fe, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:542:0x0bdb  */
    /* JADX WARN: Removed duplicated region for block: B:544:0x0bdf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0bf3 A[Catch: Exception -> 0x09fe, TRY_LEAVE, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0bff A[Catch: Exception -> 0x09fe, TRY_ENTER, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0c41 A[Catch: Exception -> 0x217a, TRY_ENTER, TRY_LEAVE, TryCatch #35 {Exception -> 0x217a, blocks: (B:456:0x0a0a, B:473:0x0a56, B:497:0x0aaa, B:548:0x0bf9, B:675:0x0e00, B:681:0x0e0f, B:685:0x0e18, B:680:0x0e0d, B:567:0x0c41, B:583:0x0c70, B:578:0x0c5e, B:572:0x0c53, B:480:0x0a6b, B:496:0x0aa8, B:479:0x0a63), top: B:1714:0x0a0a }] */
    /* JADX WARN: Removed duplicated region for block: B:612:0x0ced A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:643:0x0d7b  */
    /* JADX WARN: Removed duplicated region for block: B:644:0x0d7d  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x0d80 A[Catch: Exception -> 0x09fe, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:653:0x0d9c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:658:0x0dae  */
    /* JADX WARN: Removed duplicated region for block: B:677:0x0e06 A[Catch: Exception -> 0x09fe, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:683:0x0e13 A[Catch: Exception -> 0x09fe, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:687:0x0e1c A[Catch: Exception -> 0x09fe, TRY_ENTER, TryCatch #31 {Exception -> 0x09fe, blocks: (B:448:0x09d8, B:459:0x0a12, B:462:0x0a1e, B:465:0x0a26, B:467:0x0a30, B:470:0x0a4b, B:475:0x0a5a, B:499:0x0ab8, B:541:0x0bc0, B:545:0x0be1, B:547:0x0bf3, B:550:0x0bff, B:552:0x0c0f, B:554:0x0c1d, B:556:0x0c23, B:558:0x0c27, B:559:0x0c2a, B:561:0x0c34, B:565:0x0c3b, B:613:0x0cef, B:615:0x0cf3, B:617:0x0cfd, B:619:0x0d09, B:621:0x0d12, B:623:0x0d18, B:628:0x0d31, B:630:0x0d37, B:632:0x0d3d, B:634:0x0d45, B:636:0x0d49, B:638:0x0d51, B:641:0x0d5e, B:646:0x0d80, B:648:0x0d8a, B:659:0x0db0, B:662:0x0dbe, B:664:0x0dc2, B:666:0x0dc6, B:667:0x0dd0, B:669:0x0dd6, B:670:0x0de4, B:672:0x0dea, B:677:0x0e06, B:683:0x0e13, B:687:0x0e1c, B:689:0x0e26, B:691:0x0e3a, B:656:0x0da1, B:620:0x0d0e, B:570:0x0c4e, B:575:0x0c59, B:585:0x0c74, B:587:0x0c7a, B:590:0x0c81, B:592:0x0c8d, B:594:0x0c9d, B:597:0x0ca5, B:595:0x0ca1, B:598:0x0cb0, B:600:0x0cb6, B:603:0x0cbd, B:605:0x0cc9, B:607:0x0cd9, B:610:0x0ce1, B:608:0x0cdd, B:580:0x0c64, B:582:0x0c68, B:505:0x0aed, B:510:0x0afd, B:512:0x0b06, B:514:0x0b10, B:517:0x0b23, B:520:0x0b33, B:522:0x0b3a, B:524:0x0b4e, B:530:0x0b6d, B:532:0x0b7f, B:534:0x0b96, B:536:0x0b9c, B:525:0x0b57, B:527:0x0b5b, B:516:0x0b1c, B:485:0x0a76, B:486:0x0a7e, B:488:0x0a8e, B:490:0x0a92, B:491:0x0a96, B:493:0x0a9d, B:469:0x0a37), top: B:1707:0x09d8 }] */
    /* JADX WARN: Removed duplicated region for block: B:696:0x0e48  */
    /* JADX WARN: Removed duplicated region for block: B:703:0x0e92  */
    /* JADX WARN: Removed duplicated region for block: B:705:0x0ebe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:714:0x0ed4  */
    /* JADX WARN: Removed duplicated region for block: B:719:0x0ef0  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x0ef2  */
    /* JADX WARN: Removed duplicated region for block: B:742:0x0f22 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:747:0x0f2b A[Catch: Exception -> 0x0f12, TRY_ENTER, TryCatch #29 {Exception -> 0x0f12, blocks: (B:729:0x0f06, B:731:0x0f0e, B:747:0x0f2b, B:751:0x0f50, B:755:0x0f66, B:757:0x0f6b, B:779:0x0fdd, B:816:0x10ac, B:818:0x10ba, B:820:0x10c4, B:822:0x10eb, B:824:0x10fe, B:827:0x111d, B:833:0x1136, B:836:0x114f, B:840:0x1163, B:844:0x1171, B:825:0x110e, B:826:0x1116, B:763:0x0fa1, B:765:0x0fab, B:769:0x0fbe, B:775:0x0fd3), top: B:1704:0x0f06 }] */
    /* JADX WARN: Removed duplicated region for block: B:759:0x0f7f  */
    /* JADX WARN: Removed duplicated region for block: B:778:0x0fdb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:784:0x1056  */
    /* JADX WARN: Removed duplicated region for block: B:833:0x1136 A[Catch: Exception -> 0x0f12, TRY_ENTER, TRY_LEAVE, TryCatch #29 {Exception -> 0x0f12, blocks: (B:729:0x0f06, B:731:0x0f0e, B:747:0x0f2b, B:751:0x0f50, B:755:0x0f66, B:757:0x0f6b, B:779:0x0fdd, B:816:0x10ac, B:818:0x10ba, B:820:0x10c4, B:822:0x10eb, B:824:0x10fe, B:827:0x111d, B:833:0x1136, B:836:0x114f, B:840:0x1163, B:844:0x1171, B:825:0x110e, B:826:0x1116, B:763:0x0fa1, B:765:0x0fab, B:769:0x0fbe, B:775:0x0fd3), top: B:1704:0x0f06 }] */
    /* JADX WARN: Removed duplicated region for block: B:836:0x114f A[Catch: Exception -> 0x0f12, TRY_ENTER, TRY_LEAVE, TryCatch #29 {Exception -> 0x0f12, blocks: (B:729:0x0f06, B:731:0x0f0e, B:747:0x0f2b, B:751:0x0f50, B:755:0x0f66, B:757:0x0f6b, B:779:0x0fdd, B:816:0x10ac, B:818:0x10ba, B:820:0x10c4, B:822:0x10eb, B:824:0x10fe, B:827:0x111d, B:833:0x1136, B:836:0x114f, B:840:0x1163, B:844:0x1171, B:825:0x110e, B:826:0x1116, B:763:0x0fa1, B:765:0x0fab, B:769:0x0fbe, B:775:0x0fd3), top: B:1704:0x0f06 }] */
    /* JADX WARN: Removed duplicated region for block: B:838:0x115d A[Catch: Exception -> 0x118f, TRY_ENTER, TRY_LEAVE, TryCatch #16 {Exception -> 0x118f, blocks: (B:814:0x109b, B:831:0x1130, B:834:0x113e, B:838:0x115d, B:842:0x116d, B:830:0x1129), top: B:1683:0x109b }] */
    /* JADX WARN: Removed duplicated region for block: B:847:0x1180  */
    /* JADX WARN: Removed duplicated region for block: B:848:0x1182  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01fb A[Catch: Exception -> 0x03dd, TRY_ENTER, TRY_LEAVE, TryCatch #12 {Exception -> 0x03dd, blocks: (B:91:0x01fb, B:185:0x03f3, B:189:0x040e, B:190:0x0414, B:228:0x04ef, B:229:0x04f5, B:237:0x052e, B:238:0x0534, B:250:0x0593, B:251:0x0599, B:276:0x063b, B:285:0x065b, B:297:0x06a2, B:298:0x06a8, B:319:0x073c, B:320:0x0742, B:416:0x08f7, B:417:0x08fd), top: B:1676:0x01f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:958:0x1386  */
    /* JADX WARN: Removed duplicated region for block: B:959:0x1389 A[Catch: Exception -> 0x12ae, TryCatch #3 {Exception -> 0x12ae, blocks: (B:891:0x1244, B:893:0x1248, B:903:0x128f, B:894:0x1262, B:896:0x1266, B:898:0x1279, B:899:0x127e, B:901:0x1282, B:902:0x128a, B:916:0x12c8, B:918:0x12dd, B:921:0x12e5, B:923:0x12e9, B:947:0x133a, B:949:0x1340, B:950:0x135d, B:956:0x1380, B:968:0x13c4, B:972:0x13db, B:974:0x13e4, B:976:0x13f0, B:978:0x13fd, B:979:0x1401, B:959:0x1389, B:961:0x13a3, B:963:0x13aa, B:965:0x13b0, B:966:0x13be, B:925:0x12ed, B:927:0x12f4, B:982:0x1425, B:984:0x1440, B:986:0x1453, B:987:0x1461, B:997:0x147e, B:1017:0x14ea, B:1021:0x1501, B:1009:0x14be, B:1011:0x14cc, B:1013:0x14d3, B:1015:0x14d9, B:1016:0x14e7, B:1099:0x166e, B:1103:0x1685, B:1105:0x168e, B:1107:0x169a, B:1109:0x16a7, B:1089:0x163e, B:1091:0x164c, B:1093:0x1653, B:1095:0x1659, B:1096:0x1667), top: B:1662:0x1240 }] */
    /* JADX WARN: Removed duplicated region for block: B:968:0x13c4 A[Catch: Exception -> 0x12ae, TryCatch #3 {Exception -> 0x12ae, blocks: (B:891:0x1244, B:893:0x1248, B:903:0x128f, B:894:0x1262, B:896:0x1266, B:898:0x1279, B:899:0x127e, B:901:0x1282, B:902:0x128a, B:916:0x12c8, B:918:0x12dd, B:921:0x12e5, B:923:0x12e9, B:947:0x133a, B:949:0x1340, B:950:0x135d, B:956:0x1380, B:968:0x13c4, B:972:0x13db, B:974:0x13e4, B:976:0x13f0, B:978:0x13fd, B:979:0x1401, B:959:0x1389, B:961:0x13a3, B:963:0x13aa, B:965:0x13b0, B:966:0x13be, B:925:0x12ed, B:927:0x12f4, B:982:0x1425, B:984:0x1440, B:986:0x1453, B:987:0x1461, B:997:0x147e, B:1017:0x14ea, B:1021:0x1501, B:1009:0x14be, B:1011:0x14cc, B:1013:0x14d3, B:1015:0x14d9, B:1016:0x14e7, B:1099:0x166e, B:1103:0x1685, B:1105:0x168e, B:1107:0x169a, B:1109:0x16a7, B:1089:0x163e, B:1091:0x164c, B:1093:0x1653, B:1095:0x1659, B:1096:0x1667), top: B:1662:0x1240 }] */
    /* JADX WARN: Removed duplicated region for block: B:973:0x13de  */
    /* JADX WARN: Removed duplicated region for block: B:976:0x13f0 A[Catch: Exception -> 0x12ae, TryCatch #3 {Exception -> 0x12ae, blocks: (B:891:0x1244, B:893:0x1248, B:903:0x128f, B:894:0x1262, B:896:0x1266, B:898:0x1279, B:899:0x127e, B:901:0x1282, B:902:0x128a, B:916:0x12c8, B:918:0x12dd, B:921:0x12e5, B:923:0x12e9, B:947:0x133a, B:949:0x1340, B:950:0x135d, B:956:0x1380, B:968:0x13c4, B:972:0x13db, B:974:0x13e4, B:976:0x13f0, B:978:0x13fd, B:979:0x1401, B:959:0x1389, B:961:0x13a3, B:963:0x13aa, B:965:0x13b0, B:966:0x13be, B:925:0x12ed, B:927:0x12f4, B:982:0x1425, B:984:0x1440, B:986:0x1453, B:987:0x1461, B:997:0x147e, B:1017:0x14ea, B:1021:0x1501, B:1009:0x14be, B:1011:0x14cc, B:1013:0x14d3, B:1015:0x14d9, B:1016:0x14e7, B:1099:0x166e, B:1103:0x1685, B:1105:0x168e, B:1107:0x169a, B:1109:0x16a7, B:1089:0x163e, B:1091:0x164c, B:1093:0x1653, B:1095:0x1659, B:1096:0x1667), top: B:1662:0x1240 }] */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r10v44 */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r10v52 */
    /* JADX WARN: Type inference failed for: r10v53 */
    /* JADX WARN: Type inference failed for: r10v54 */
    /* JADX WARN: Type inference failed for: r10v55, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r10v59 */
    /* JADX WARN: Type inference failed for: r10v60 */
    /* JADX WARN: Type inference failed for: r10v61, types: [org.telegram.tgnet.TLRPC$Message, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v86 */
    /* JADX WARN: Type inference failed for: r10v87 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v29 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r14v34 */
    /* JADX WARN: Type inference failed for: r14v35 */
    /* JADX WARN: Type inference failed for: r14v56 */
    /* JADX WARN: Type inference failed for: r14v57 */
    /* JADX WARN: Type inference failed for: r1v246, types: [org.telegram.tgnet.TLRPC$TL_inputMediaDice] */
    /* JADX WARN: Type inference failed for: r1v248, types: [org.telegram.tgnet.TLRPC$TL_inputMediaPoll, org.telegram.tgnet.TLRPC$InputMedia] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [org.telegram.tgnet.TLRPC$TL_message_secret] */
    /* JADX WARN: Type inference failed for: r2v8, types: [org.telegram.tgnet.TLRPC$TL_message] */
    /* JADX WARN: Type inference failed for: r2v9, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v222, types: [org.telegram.tgnet.TLRPC$TL_inputMediaPhoto, org.telegram.tgnet.TLRPC$InputMedia] */
    /* JADX WARN: Type inference failed for: r3v279, types: [org.telegram.tgnet.TLRPC$TL_messages_sendMedia, org.telegram.tgnet.TLObject] */
    /* JADX WARN: Type inference failed for: r3v280 */
    /* JADX WARN: Type inference failed for: r3v290, types: [org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia] */
    /* JADX WARN: Type inference failed for: r3v344, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r3v347 */
    /* JADX WARN: Type inference failed for: r3v348, types: [int] */
    /* JADX WARN: Type inference failed for: r3v349 */
    /* JADX WARN: Type inference failed for: r3v359 */
    /* JADX WARN: Type inference failed for: r3v360 */
    /* JADX WARN: Type inference failed for: r4v241, types: [org.telegram.messenger.MediaDataController] */
    /* JADX WARN: Type inference failed for: r5v203 */
    /* JADX WARN: Type inference failed for: r61v11, types: [org.telegram.messenger.MessagesStorage] */
    /* JADX WARN: Type inference failed for: r7v87 */
    /* JADX WARN: Type inference failed for: r7v89, types: [org.telegram.tgnet.TLRPC$Message, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v113 */
    /* JADX WARN: Type inference failed for: r8v114 */
    /* JADX WARN: Type inference failed for: r8v115 */
    /* JADX WARN: Type inference failed for: r8v124 */
    /* JADX WARN: Type inference failed for: r8v125, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r8v81, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r8v94 */
    /* JADX WARN: Type inference failed for: r90v0, types: [org.telegram.messenger.SendMessagesHelper, org.telegram.messenger.BaseController] */
    /* JADX WARN: Type inference failed for: r9v116 */
    /* JADX WARN: Type inference failed for: r9v39 */
    /* JADX WARN: Type inference failed for: r9v50 */
    /* JADX WARN: Type inference failed for: r9v91, types: [org.telegram.tgnet.TLRPC$Message] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendMessage(org.telegram.messenger.SendMessagesHelper.SendMessageParams r91) {
        /*
            Method dump skipped, instructions count: 8639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.sendMessage(org.telegram.messenger.SendMessagesHelper$SendMessageParams):void");
    }

    private void performSendDelayedMessage(DelayedMessage delayedMessage) {
        performSendDelayedMessage(delayedMessage, -1);
    }

    private TLRPC$PhotoSize getThumbForSecretChat(ArrayList<TLRPC$PhotoSize> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC$PhotoSize tLRPC$PhotoSize = arrayList.get(i);
                if (tLRPC$PhotoSize != null && !(tLRPC$PhotoSize instanceof TLRPC$TL_photoPathSize) && !(tLRPC$PhotoSize instanceof TLRPC$TL_photoSizeEmpty) && tLRPC$PhotoSize.location != null) {
                    if (tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize) {
                        return tLRPC$PhotoSize;
                    }
                    TLRPC$TL_photoSize_layer127 tLRPC$TL_photoSize_layer127 = new TLRPC$TL_photoSize_layer127();
                    tLRPC$TL_photoSize_layer127.type = tLRPC$PhotoSize.type;
                    tLRPC$TL_photoSize_layer127.f1634w = tLRPC$PhotoSize.f1634w;
                    tLRPC$TL_photoSize_layer127.f1633h = tLRPC$PhotoSize.f1633h;
                    tLRPC$TL_photoSize_layer127.size = tLRPC$PhotoSize.size;
                    byte[] bArr = tLRPC$PhotoSize.bytes;
                    tLRPC$TL_photoSize_layer127.bytes = bArr;
                    if (bArr == null) {
                        tLRPC$TL_photoSize_layer127.bytes = new byte[0];
                    }
                    TLRPC$TL_fileLocation_layer82 tLRPC$TL_fileLocation_layer82 = new TLRPC$TL_fileLocation_layer82();
                    tLRPC$TL_photoSize_layer127.location = tLRPC$TL_fileLocation_layer82;
                    TLRPC$FileLocation tLRPC$FileLocation = tLRPC$PhotoSize.location;
                    tLRPC$TL_fileLocation_layer82.dc_id = tLRPC$FileLocation.dc_id;
                    tLRPC$TL_fileLocation_layer82.volume_id = tLRPC$FileLocation.volume_id;
                    tLRPC$TL_fileLocation_layer82.local_id = tLRPC$FileLocation.local_id;
                    tLRPC$TL_fileLocation_layer82.secret = tLRPC$FileLocation.secret;
                    return tLRPC$TL_photoSize_layer127;
                }
            }
        }
        return null;
    }

    private void performSendDelayedMessage(final DelayedMessage delayedMessage, int i) {
        boolean z;
        TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile;
        boolean z2;
        MessageObject messageObject;
        TLRPC$InputMedia tLRPC$InputMedia;
        TLRPC$PhotoSize tLRPC$PhotoSize;
        TLRPC$InputMedia tLRPC$InputMedia2;
        TLRPC$InputMedia tLRPC$InputMedia3;
        int i2 = delayedMessage.type;
        if (i2 == 0) {
            String str = delayedMessage.httpLocation;
            if (str != null) {
                putToDelayedMessages(str, delayedMessage);
                ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "file", this.currentAccount);
            } else if (delayedMessage.sendRequest != null) {
                String file = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                putToDelayedMessages(file, delayedMessage);
                getFileLoader().uploadFile(file, false, true, ConnectionsManager.FileTypePhoto);
                putToUploadingMessages(delayedMessage.obj);
            } else {
                String file2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                if (delayedMessage.sendEncryptedRequest != null && delayedMessage.photoSize.location.dc_id != 0) {
                    File file3 = new File(file2);
                    if (!file3.exists()) {
                        file2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize, true).toString();
                        file3 = new File(file2);
                    }
                    if (!file3.exists()) {
                        putToDelayedMessages(FileLoader.getAttachFileName(delayedMessage.photoSize), delayedMessage);
                        getFileLoader().loadFile(ImageLocation.getForObject(delayedMessage.photoSize, delayedMessage.locationParent), delayedMessage.parentObject, "jpg", 3, 0);
                        return;
                    }
                }
                putToDelayedMessages(file2, delayedMessage);
                getFileLoader().uploadFile(file2, true, true, ConnectionsManager.FileTypePhoto);
                putToUploadingMessages(delayedMessage.obj);
            }
        } else if (i2 == 1) {
            VideoEditedInfo videoEditedInfo = delayedMessage.videoEditedInfo;
            if (videoEditedInfo != null && videoEditedInfo.needConvert()) {
                MessageObject messageObject2 = delayedMessage.obj;
                String str2 = messageObject2.messageOwner.attachPath;
                TLRPC$Document document = messageObject2.getDocument();
                if (str2 == null) {
                    str2 = FileLoader.getDirectory(4) + "/" + document.f1610id + ".mp4";
                }
                putToDelayedMessages(str2, delayedMessage);
                if (!delayedMessage.videoEditedInfo.alreadyScheduledConverting) {
                    MediaController.getInstance().scheduleVideoConvert(delayedMessage.obj);
                }
                putToUploadingMessages(delayedMessage.obj);
                return;
            }
            VideoEditedInfo videoEditedInfo2 = delayedMessage.videoEditedInfo;
            if (videoEditedInfo2 != null) {
                TLRPC$InputFile tLRPC$InputFile = videoEditedInfo2.file;
                if (tLRPC$InputFile != null) {
                    TLObject tLObject = delayedMessage.sendRequest;
                    if (tLObject instanceof TLRPC$TL_messages_sendMedia) {
                        tLRPC$InputMedia3 = ((TLRPC$TL_messages_sendMedia) tLObject).media;
                    } else {
                        tLRPC$InputMedia3 = ((TLRPC$TL_messages_editMessage) tLObject).media;
                    }
                    tLRPC$InputMedia3.file = tLRPC$InputFile;
                    videoEditedInfo2.file = null;
                } else if (videoEditedInfo2.encryptedFile != null) {
                    TLRPC$TL_decryptedMessage tLRPC$TL_decryptedMessage = (TLRPC$TL_decryptedMessage) delayedMessage.sendEncryptedRequest;
                    TLRPC$DecryptedMessageMedia tLRPC$DecryptedMessageMedia = tLRPC$TL_decryptedMessage.media;
                    tLRPC$DecryptedMessageMedia.size = videoEditedInfo2.estimatedSize;
                    tLRPC$DecryptedMessageMedia.key = videoEditedInfo2.key;
                    tLRPC$DecryptedMessageMedia.f1606iv = videoEditedInfo2.f1576iv;
                    SecretChatHelper secretChatHelper = getSecretChatHelper();
                    MessageObject messageObject3 = delayedMessage.obj;
                    secretChatHelper.performSendEncryptedRequest(tLRPC$TL_decryptedMessage, messageObject3.messageOwner, delayedMessage.encryptedChat, delayedMessage.videoEditedInfo.encryptedFile, delayedMessage.originalPath, messageObject3);
                    delayedMessage.videoEditedInfo.encryptedFile = null;
                    return;
                }
            }
            TLObject tLObject2 = delayedMessage.sendRequest;
            if (tLObject2 != null) {
                if (tLObject2 instanceof TLRPC$TL_messages_sendMedia) {
                    tLRPC$InputMedia2 = ((TLRPC$TL_messages_sendMedia) tLObject2).media;
                } else {
                    tLRPC$InputMedia2 = ((TLRPC$TL_messages_editMessage) tLObject2).media;
                }
                if (tLRPC$InputMedia2.file == null) {
                    MessageObject messageObject4 = delayedMessage.obj;
                    String str3 = messageObject4.messageOwner.attachPath;
                    TLRPC$Document document2 = messageObject4.getDocument();
                    if (str3 == null) {
                        str3 = FileLoader.getDirectory(4) + "/" + document2.f1610id + ".mp4";
                    }
                    String str4 = str3;
                    putToDelayedMessages(str4, delayedMessage);
                    VideoEditedInfo videoEditedInfo3 = delayedMessage.obj.videoEditedInfo;
                    if (videoEditedInfo3 != null && videoEditedInfo3.needConvert()) {
                        getFileLoader().uploadFile(str4, false, false, document2.size, ConnectionsManager.FileTypeVideo, false);
                    } else {
                        getFileLoader().uploadFile(str4, false, false, ConnectionsManager.FileTypeVideo);
                    }
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                }
                String str5 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                putToDelayedMessages(str5, delayedMessage);
                getFileLoader().uploadFile(str5, false, true, ConnectionsManager.FileTypePhoto);
                putToUploadingMessages(delayedMessage.obj);
                return;
            }
            MessageObject messageObject5 = delayedMessage.obj;
            String str6 = messageObject5.messageOwner.attachPath;
            TLRPC$Document document3 = messageObject5.getDocument();
            if (str6 == null) {
                str6 = FileLoader.getDirectory(4) + "/" + document3.f1610id + ".mp4";
            }
            if (delayedMessage.sendEncryptedRequest != null && document3.dc_id != 0) {
                File file4 = new File(str6);
                if (!file4.exists() && (file4 = getFileLoader().getPathToMessage(delayedMessage.obj.messageOwner)) != null && file4.exists()) {
                    TLRPC$Message tLRPC$Message = delayedMessage.obj.messageOwner;
                    String absolutePath = file4.getAbsolutePath();
                    tLRPC$Message.attachPath = absolutePath;
                    delayedMessage.obj.attachPathExists = true;
                    str6 = absolutePath;
                }
                if ((file4 == null || (!file4.exists() && delayedMessage.obj.getDocument() != null)) && (file4 = getFileLoader().getPathToAttach(delayedMessage.obj.getDocument(), false)) != null && file4.exists()) {
                    TLRPC$Message tLRPC$Message2 = delayedMessage.obj.messageOwner;
                    String absolutePath2 = file4.getAbsolutePath();
                    tLRPC$Message2.attachPath = absolutePath2;
                    delayedMessage.obj.attachPathExists = true;
                    str6 = absolutePath2;
                }
                if (file4 == null || !file4.exists()) {
                    putToDelayedMessages(FileLoader.getAttachFileName(document3), delayedMessage);
                    getFileLoader().loadFile(document3, delayedMessage.parentObject, 3, 0);
                    return;
                }
            }
            String str7 = str6;
            putToDelayedMessages(str7, delayedMessage);
            VideoEditedInfo videoEditedInfo4 = delayedMessage.obj.videoEditedInfo;
            if (videoEditedInfo4 != null && videoEditedInfo4.needConvert()) {
                getFileLoader().uploadFile(str7, true, false, document3.size, ConnectionsManager.FileTypeVideo, false);
            } else {
                getFileLoader().uploadFile(str7, true, false, ConnectionsManager.FileTypeVideo);
            }
            putToUploadingMessages(delayedMessage.obj);
        } else if (i2 == 2) {
            String str8 = delayedMessage.httpLocation;
            if (str8 != null) {
                putToDelayedMessages(str8, delayedMessage);
                ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, AnalyticsEvent.SendClip.typeGif, this.currentAccount);
                return;
            }
            TLObject tLObject3 = delayedMessage.sendRequest;
            if (tLObject3 != null) {
                if (tLObject3 instanceof TLRPC$TL_messages_sendMedia) {
                    tLRPC$InputMedia = ((TLRPC$TL_messages_sendMedia) tLObject3).media;
                } else {
                    tLRPC$InputMedia = ((TLRPC$TL_messages_editMessage) tLObject3).media;
                }
                if (tLRPC$InputMedia.file == null) {
                    String str9 = delayedMessage.obj.messageOwner.attachPath;
                    putToDelayedMessages(str9, delayedMessage);
                    getFileLoader().uploadFile(str9, delayedMessage.sendRequest == null, false, ConnectionsManager.FileTypeFile);
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                } else if (tLRPC$InputMedia.thumb != null || (tLRPC$PhotoSize = delayedMessage.photoSize) == null || (tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize)) {
                    return;
                } else {
                    String str10 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                    putToDelayedMessages(str10, delayedMessage);
                    getFileLoader().uploadFile(str10, false, true, ConnectionsManager.FileTypePhoto);
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                }
            }
            MessageObject messageObject6 = delayedMessage.obj;
            String str11 = messageObject6.messageOwner.attachPath;
            TLRPC$Document document4 = messageObject6.getDocument();
            if (delayedMessage.sendEncryptedRequest != null && document4.dc_id != 0) {
                File file5 = new File(str11);
                if (!file5.exists() && (file5 = getFileLoader().getPathToMessage(delayedMessage.obj.messageOwner)) != null && file5.exists()) {
                    TLRPC$Message tLRPC$Message3 = delayedMessage.obj.messageOwner;
                    String absolutePath3 = file5.getAbsolutePath();
                    tLRPC$Message3.attachPath = absolutePath3;
                    delayedMessage.obj.attachPathExists = true;
                    str11 = absolutePath3;
                }
                if ((file5 == null || (!file5.exists() && delayedMessage.obj.getDocument() != null)) && (file5 = getFileLoader().getPathToAttach(delayedMessage.obj.getDocument(), false)) != null && file5.exists()) {
                    TLRPC$Message tLRPC$Message4 = delayedMessage.obj.messageOwner;
                    String absolutePath4 = file5.getAbsolutePath();
                    tLRPC$Message4.attachPath = absolutePath4;
                    delayedMessage.obj.attachPathExists = true;
                    str11 = absolutePath4;
                }
                if (file5 == null || !file5.exists()) {
                    putToDelayedMessages(FileLoader.getAttachFileName(document4), delayedMessage);
                    getFileLoader().loadFile(document4, delayedMessage.parentObject, 3, 0);
                    return;
                }
            }
            putToDelayedMessages(str11, delayedMessage);
            getFileLoader().uploadFile(str11, true, false, ConnectionsManager.FileTypeFile);
            putToUploadingMessages(delayedMessage.obj);
        } else if (i2 == 3) {
            String str12 = delayedMessage.obj.messageOwner.attachPath;
            putToDelayedMessages(str12, delayedMessage);
            getFileLoader().uploadFile(str12, delayedMessage.sendRequest == null, true, ConnectionsManager.FileTypeAudio);
            putToUploadingMessages(delayedMessage.obj);
        } else if (i2 != 4) {
            if (i2 == 5) {
                final String str13 = "stickerset_" + delayedMessage.obj.getId();
                TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
                tLRPC$TL_messages_getStickerSet.stickerset = (TLRPC$InputStickerSet) delayedMessage.parentObject;
                getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda87
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject4, TLRPC$TL_error tLRPC$TL_error) {
                        SendMessagesHelper.this.lambda$performSendDelayedMessage$33(delayedMessage, str13, tLObject4, tLRPC$TL_error);
                    }
                });
                putToDelayedMessages(str13, delayedMessage);
            }
        } else {
            boolean z3 = i < 0;
            if (delayedMessage.performMediaUpload) {
                int size = i < 0 ? delayedMessage.messageObjects.size() - 1 : i;
                if (size < 0) {
                    return;
                }
                MessageObject messageObject7 = delayedMessage.messageObjects.get(size);
                if (messageObject7.getDocument() != null) {
                    if (delayedMessage.videoEditedInfo != null) {
                        String str14 = messageObject7.messageOwner.attachPath;
                        TLRPC$Document document5 = messageObject7.getDocument();
                        if (str14 == null) {
                            str14 = FileLoader.getDirectory(4) + "/" + document5.f1610id + ".mp4";
                        }
                        putToDelayedMessages(str14, delayedMessage);
                        delayedMessage.extraHashMap.put(messageObject7, str14);
                        delayedMessage.extraHashMap.put(str14 + "_i", messageObject7);
                        TLRPC$PhotoSize tLRPC$PhotoSize2 = delayedMessage.photoSize;
                        if (tLRPC$PhotoSize2 != null && tLRPC$PhotoSize2.location != null) {
                            delayedMessage.extraHashMap.put(str14 + "_t", delayedMessage.photoSize);
                        }
                        if (!delayedMessage.videoEditedInfo.alreadyScheduledConverting) {
                            MediaController.getInstance().scheduleVideoConvert(messageObject7);
                        }
                        delayedMessage.obj = messageObject7;
                        putToUploadingMessages(messageObject7);
                    } else {
                        TLRPC$Document document6 = messageObject7.getDocument();
                        String str15 = messageObject7.messageOwner.attachPath;
                        if (str15 == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(FileLoader.getDirectory(4));
                            sb.append("/");
                            messageObject = messageObject7;
                            sb.append(document6.f1610id);
                            sb.append(".mp4");
                            str15 = sb.toString();
                        } else {
                            messageObject = messageObject7;
                        }
                        TLObject tLObject4 = delayedMessage.sendRequest;
                        if (tLObject4 != null) {
                            TLRPC$InputMedia tLRPC$InputMedia4 = ((TLRPC$TL_messages_sendMultiMedia) tLObject4).multi_media.get(size).media;
                            if (tLRPC$InputMedia4.file == null) {
                                putToDelayedMessages(str15, delayedMessage);
                                MessageObject messageObject8 = messageObject;
                                delayedMessage.extraHashMap.put(messageObject8, str15);
                                delayedMessage.extraHashMap.put(str15, tLRPC$InputMedia4);
                                delayedMessage.extraHashMap.put(str15 + "_i", messageObject8);
                                TLRPC$PhotoSize tLRPC$PhotoSize3 = delayedMessage.photoSize;
                                if (tLRPC$PhotoSize3 != null && tLRPC$PhotoSize3.location != null) {
                                    delayedMessage.extraHashMap.put(str15 + "_t", delayedMessage.photoSize);
                                }
                                VideoEditedInfo videoEditedInfo5 = messageObject8.videoEditedInfo;
                                if (videoEditedInfo5 != null && videoEditedInfo5.needConvert()) {
                                    getFileLoader().uploadFile(str15, false, false, document6.size, ConnectionsManager.FileTypeVideo, false);
                                } else {
                                    getFileLoader().uploadFile(str15, false, false, ConnectionsManager.FileTypeVideo);
                                }
                                putToUploadingMessages(messageObject8);
                            } else {
                                MessageObject messageObject9 = messageObject;
                                if (delayedMessage.photoSize != null) {
                                    String str16 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                                    putToDelayedMessages(str16, delayedMessage);
                                    delayedMessage.extraHashMap.put(str16 + "_o", str15);
                                    delayedMessage.extraHashMap.put(messageObject9, str16);
                                    delayedMessage.extraHashMap.put(str16, tLRPC$InputMedia4);
                                    getFileLoader().uploadFile(str16, false, true, ConnectionsManager.FileTypePhoto);
                                    putToUploadingMessages(messageObject9);
                                }
                            }
                        } else {
                            MessageObject messageObject10 = messageObject;
                            putToDelayedMessages(str15, delayedMessage);
                            delayedMessage.extraHashMap.put(messageObject10, str15);
                            delayedMessage.extraHashMap.put(str15, ((TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest).files.get(size));
                            delayedMessage.extraHashMap.put(str15 + "_i", messageObject10);
                            TLRPC$PhotoSize tLRPC$PhotoSize4 = delayedMessage.photoSize;
                            if (tLRPC$PhotoSize4 != null && tLRPC$PhotoSize4.location != null) {
                                delayedMessage.extraHashMap.put(str15 + "_t", delayedMessage.photoSize);
                            }
                            VideoEditedInfo videoEditedInfo6 = messageObject10.videoEditedInfo;
                            if (videoEditedInfo6 != null && videoEditedInfo6.needConvert()) {
                                getFileLoader().uploadFile(str15, true, false, document6.size, ConnectionsManager.FileTypeVideo, false);
                            } else {
                                getFileLoader().uploadFile(str15, true, false, ConnectionsManager.FileTypeVideo);
                            }
                            putToUploadingMessages(messageObject10);
                        }
                    }
                    delayedMessage.videoEditedInfo = null;
                    delayedMessage.photoSize = null;
                } else {
                    String str17 = delayedMessage.httpLocation;
                    if (str17 != null) {
                        putToDelayedMessages(str17, delayedMessage);
                        delayedMessage.extraHashMap.put(messageObject7, delayedMessage.httpLocation);
                        delayedMessage.extraHashMap.put(delayedMessage.httpLocation, messageObject7);
                        ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "file", this.currentAccount);
                        delayedMessage.httpLocation = null;
                    } else {
                        TLObject tLObject5 = delayedMessage.sendRequest;
                        if (tLObject5 != null) {
                            tLRPC$InputEncryptedFile = ((TLRPC$TL_messages_sendMultiMedia) tLObject5).multi_media.get(size).media;
                        } else {
                            tLRPC$InputEncryptedFile = ((TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest).files.get(size);
                        }
                        String file6 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                        putToDelayedMessages(file6, delayedMessage);
                        delayedMessage.extraHashMap.put(file6, tLRPC$InputEncryptedFile);
                        delayedMessage.extraHashMap.put(messageObject7, file6);
                        z = true;
                        getFileLoader().uploadFile(file6, delayedMessage.sendEncryptedRequest != null, true, ConnectionsManager.FileTypePhoto);
                        putToUploadingMessages(messageObject7);
                        delayedMessage.photoSize = null;
                        z2 = false;
                        delayedMessage.performMediaUpload = z2;
                    }
                }
                z2 = false;
                z = true;
                delayedMessage.performMediaUpload = z2;
            } else {
                z = true;
                if (!delayedMessage.messageObjects.isEmpty()) {
                    ArrayList<MessageObject> arrayList = delayedMessage.messageObjects;
                    putToSendingMessages(arrayList.get(arrayList.size() - 1).messageOwner, delayedMessage.finalGroupMessage != 0);
                }
            }
            sendReadyToSendGroup(delayedMessage, z3, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$33(final DelayedMessage delayedMessage, final String str, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendDelayedMessage$32(tLObject, delayedMessage, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendDelayedMessage$32(TLObject tLObject, DelayedMessage delayedMessage, String str) {
        boolean z;
        if (tLObject != null) {
            TLRPC$TL_messages_stickerSet tLRPC$TL_messages_stickerSet = (TLRPC$TL_messages_stickerSet) tLObject;
            getMediaDataController().storeTempStickerSet(tLRPC$TL_messages_stickerSet);
            TLRPC$TL_inputStickerSetShortName tLRPC$TL_inputStickerSetShortName = new TLRPC$TL_inputStickerSetShortName();
            ((TLRPC$TL_documentAttributeSticker_layer55) delayedMessage.locationParent).stickerset = tLRPC$TL_inputStickerSetShortName;
            tLRPC$TL_inputStickerSetShortName.short_name = tLRPC$TL_messages_stickerSet.set.short_name;
            z = true;
        } else {
            z = false;
        }
        ArrayList<DelayedMessage> remove = this.delayedMessages.remove(str);
        if (remove == null || remove.isEmpty()) {
            return;
        }
        if (z) {
            getMessagesStorage().replaceMessageIfExists(remove.get(0).obj.messageOwner, null, null, false);
        }
        MessageObject messageObject = delayedMessage.obj;
        getSecretChatHelper().performSendEncryptedRequest((TLRPC$DecryptedMessage) delayedMessage.sendEncryptedRequest, messageObject.messageOwner, delayedMessage.encryptedChat, null, null, messageObject);
    }

    private void uploadMultiMedia(final DelayedMessage delayedMessage, final TLRPC$InputMedia tLRPC$InputMedia, TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, String str) {
        if (tLRPC$InputMedia == null) {
            if (tLRPC$InputEncryptedFile != null) {
                TLRPC$TL_messages_sendEncryptedMultiMedia tLRPC$TL_messages_sendEncryptedMultiMedia = (TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
                int i = 0;
                while (true) {
                    if (i >= tLRPC$TL_messages_sendEncryptedMultiMedia.files.size()) {
                        break;
                    } else if (tLRPC$TL_messages_sendEncryptedMultiMedia.files.get(i) == tLRPC$InputEncryptedFile) {
                        putToSendingMessages(delayedMessage.messages.get(i), delayedMessage.scheduled);
                        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                        break;
                    } else {
                        i++;
                    }
                }
                sendReadyToSendGroup(delayedMessage, false, true);
                return;
            }
            return;
        }
        TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia = (TLRPC$TL_messages_sendMultiMedia) delayedMessage.sendRequest;
        int i2 = 0;
        while (true) {
            if (i2 >= tLRPC$TL_messages_sendMultiMedia.multi_media.size()) {
                break;
            } else if (tLRPC$TL_messages_sendMultiMedia.multi_media.get(i2).media == tLRPC$InputMedia) {
                putToSendingMessages(delayedMessage.messages.get(i2), delayedMessage.scheduled);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
                break;
            } else {
                i2++;
            }
        }
        TLRPC$TL_messages_uploadMedia tLRPC$TL_messages_uploadMedia = new TLRPC$TL_messages_uploadMedia();
        tLRPC$TL_messages_uploadMedia.media = tLRPC$InputMedia;
        tLRPC$TL_messages_uploadMedia.peer = ((TLRPC$TL_messages_sendMultiMedia) delayedMessage.sendRequest).peer;
        getConnectionsManager().sendRequest(tLRPC$TL_messages_uploadMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda89
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.this.lambda$uploadMultiMedia$35(tLRPC$InputMedia, delayedMessage, tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadMultiMedia$35(final TLRPC$InputMedia tLRPC$InputMedia, final DelayedMessage delayedMessage, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$uploadMultiMedia$34(tLObject, tLRPC$InputMedia, delayedMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$uploadMultiMedia$34(org.telegram.tgnet.TLObject r6, org.telegram.tgnet.TLRPC$InputMedia r7, org.telegram.messenger.SendMessagesHelper.DelayedMessage r8) {
        /*
            r5 = this;
            if (r6 == 0) goto L66
            org.telegram.tgnet.TLRPC$MessageMedia r6 = (org.telegram.tgnet.TLRPC$MessageMedia) r6
            boolean r0 = r7 instanceof org.telegram.tgnet.TLRPC$TL_inputMediaUploadedPhoto
            if (r0 == 0) goto L35
            boolean r0 = r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto
            if (r0 == 0) goto L35
            org.telegram.tgnet.TLRPC$TL_inputMediaPhoto r0 = new org.telegram.tgnet.TLRPC$TL_inputMediaPhoto
            r0.<init>()
            org.telegram.tgnet.TLRPC$TL_inputPhoto r1 = new org.telegram.tgnet.TLRPC$TL_inputPhoto
            r1.<init>()
            r0.f1671id = r1
            org.telegram.tgnet.TLRPC$Photo r6 = r6.photo
            long r2 = r6.f1632id
            r1.f1624id = r2
            long r2 = r6.access_hash
            r1.access_hash = r2
            byte[] r6 = r6.file_reference
            r1.file_reference = r6
            boolean r6 = r7.spoiler
            r0.spoiler = r6
            boolean r6 = org.telegram.messenger.BuildVars.DEBUG_VERSION
            if (r6 == 0) goto L67
            java.lang.String r6 = "set uploaded photo"
            org.telegram.messenger.FileLog.m102d(r6)
            goto L67
        L35:
            boolean r0 = r7 instanceof org.telegram.tgnet.TLRPC$TL_inputMediaUploadedDocument
            if (r0 == 0) goto L66
            boolean r0 = r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument
            if (r0 == 0) goto L66
            org.telegram.tgnet.TLRPC$TL_inputMediaDocument r0 = new org.telegram.tgnet.TLRPC$TL_inputMediaDocument
            r0.<init>()
            org.telegram.tgnet.TLRPC$TL_inputDocument r1 = new org.telegram.tgnet.TLRPC$TL_inputDocument
            r1.<init>()
            r0.f1669id = r1
            org.telegram.tgnet.TLRPC$Document r6 = r6.document
            long r2 = r6.f1610id
            r1.f1618id = r2
            long r2 = r6.access_hash
            r1.access_hash = r2
            byte[] r6 = r6.file_reference
            r1.file_reference = r6
            boolean r6 = r7.spoiler
            r0.spoiler = r6
            boolean r6 = org.telegram.messenger.BuildVars.DEBUG_VERSION
            if (r6 == 0) goto L67
            java.lang.String r6 = "set uploaded document"
            org.telegram.messenger.FileLog.m102d(r6)
            goto L67
        L66:
            r0 = 0
        L67:
            if (r0 == 0) goto La1
            int r6 = r7.ttl_seconds
            r1 = 1
            if (r6 == 0) goto L75
            r0.ttl_seconds = r6
            int r6 = r0.flags
            r6 = r6 | r1
            r0.flags = r6
        L75:
            org.telegram.tgnet.TLObject r6 = r8.sendRequest
            org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia r6 = (org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia) r6
            r2 = 0
            r3 = r2
        L7b:
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_inputSingleMedia> r4 = r6.multi_media
            int r4 = r4.size()
            if (r3 >= r4) goto L9d
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_inputSingleMedia> r4 = r6.multi_media
            java.lang.Object r4 = r4.get(r3)
            org.telegram.tgnet.TLRPC$TL_inputSingleMedia r4 = (org.telegram.tgnet.TLRPC$TL_inputSingleMedia) r4
            org.telegram.tgnet.TLRPC$InputMedia r4 = r4.media
            if (r4 != r7) goto L9a
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_inputSingleMedia> r6 = r6.multi_media
            java.lang.Object r6 = r6.get(r3)
            org.telegram.tgnet.TLRPC$TL_inputSingleMedia r6 = (org.telegram.tgnet.TLRPC$TL_inputSingleMedia) r6
            r6.media = r0
            goto L9d
        L9a:
            int r3 = r3 + 1
            goto L7b
        L9d:
            r5.sendReadyToSendGroup(r8, r2, r1)
            goto La4
        La1:
            r8.markAsError()
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$uploadMultiMedia$34(org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$InputMedia, org.telegram.messenger.SendMessagesHelper$DelayedMessage):void");
    }

    private void sendReadyToSendGroup(DelayedMessage delayedMessage, boolean z, boolean z2) {
        ArrayList<MessageObject> arrayList;
        DelayedMessage findMaxDelayedMessageForMessageId;
        if (delayedMessage.messageObjects.isEmpty()) {
            delayedMessage.markAsError();
            return;
        }
        String str = "group_" + delayedMessage.groupId;
        if (delayedMessage.finalGroupMessage != delayedMessage.messageObjects.get(arrayList.size() - 1).getId()) {
            if (z) {
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m102d("final message not added, add");
                }
                putToDelayedMessages(str, delayedMessage);
                return;
            } else if (BuildVars.DEBUG_VERSION) {
                FileLog.m102d("final message not added");
                return;
            } else {
                return;
            }
        }
        int i = 0;
        if (z) {
            this.delayedMessages.remove(str);
            getMessagesStorage().putMessages(delayedMessage.messages, false, true, false, 0, delayedMessage.scheduled, 0);
            getMessagesController().updateInterfaceWithMessages(delayedMessage.peer, delayedMessage.messageObjects, delayedMessage.scheduled);
            if (!delayedMessage.scheduled) {
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
            }
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m102d("add message");
            }
        }
        TLObject tLObject = delayedMessage.sendRequest;
        if (tLObject instanceof TLRPC$TL_messages_sendMultiMedia) {
            TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia = (TLRPC$TL_messages_sendMultiMedia) tLObject;
            while (i < tLRPC$TL_messages_sendMultiMedia.multi_media.size()) {
                TLRPC$InputMedia tLRPC$InputMedia = tLRPC$TL_messages_sendMultiMedia.multi_media.get(i).media;
                if ((tLRPC$InputMedia instanceof TLRPC$TL_inputMediaUploadedPhoto) || (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaUploadedDocument)) {
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m102d("multi media not ready");
                        return;
                    }
                    return;
                }
                i++;
            }
            if (z2 && (findMaxDelayedMessageForMessageId = findMaxDelayedMessageForMessageId(delayedMessage.finalGroupMessage, delayedMessage.peer)) != null) {
                findMaxDelayedMessageForMessageId.addDelayedRequest(delayedMessage.sendRequest, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
                ArrayList<DelayedMessageSendAfterRequest> arrayList2 = delayedMessage.requests;
                if (arrayList2 != null) {
                    findMaxDelayedMessageForMessageId.requests.addAll(arrayList2);
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m102d("has maxDelayedMessage, delay");
                    return;
                }
                return;
            }
        } else {
            TLRPC$TL_messages_sendEncryptedMultiMedia tLRPC$TL_messages_sendEncryptedMultiMedia = (TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest;
            while (i < tLRPC$TL_messages_sendEncryptedMultiMedia.files.size()) {
                if (tLRPC$TL_messages_sendEncryptedMultiMedia.files.get(i) instanceof TLRPC$TL_inputEncryptedFile) {
                    return;
                }
                i++;
            }
        }
        TLObject tLObject2 = delayedMessage.sendRequest;
        if (tLObject2 instanceof TLRPC$TL_messages_sendMultiMedia) {
            performSendMessageRequestMulti((TLRPC$TL_messages_sendMultiMedia) tLObject2, delayedMessage.messageObjects, delayedMessage.originalPaths, delayedMessage.parentObjects, delayedMessage, delayedMessage.scheduled);
        } else {
            getSecretChatHelper().performSendEncryptedRequest((TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest, delayedMessage);
        }
        delayedMessage.sendDelayedRequests();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void putToSendingMessages(final TLRPC$Message tLRPC$Message, final boolean z) {
        if (Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$putToSendingMessages$36(tLRPC$Message, z);
                }
            });
        } else {
            putToSendingMessages(tLRPC$Message, z, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putToSendingMessages$36(TLRPC$Message tLRPC$Message, boolean z) {
        putToSendingMessages(tLRPC$Message, z, true);
    }

    protected void putToSendingMessages(TLRPC$Message tLRPC$Message, boolean z, boolean z2) {
        if (tLRPC$Message == null) {
            return;
        }
        int i = tLRPC$Message.f1626id;
        if (i > 0) {
            this.editingMessages.put(i, tLRPC$Message);
            return;
        }
        boolean z3 = this.sendingMessages.indexOfKey(i) >= 0;
        removeFromUploadingMessages(tLRPC$Message.f1626id, z);
        this.sendingMessages.put(tLRPC$Message.f1626id, tLRPC$Message);
        if (z || z3) {
            return;
        }
        long dialogId = MessageObject.getDialogId(tLRPC$Message);
        LongSparseArray<Integer> longSparseArray = this.sendingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(longSparseArray.get(dialogId, 0).intValue() + 1));
        if (z2) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TLRPC$Message removeFromSendingMessages(int i, boolean z) {
        long dialogId;
        Integer num;
        if (i > 0) {
            TLRPC$Message tLRPC$Message = this.editingMessages.get(i);
            if (tLRPC$Message != null) {
                this.editingMessages.remove(i);
                return tLRPC$Message;
            }
            return tLRPC$Message;
        }
        TLRPC$Message tLRPC$Message2 = this.sendingMessages.get(i);
        if (tLRPC$Message2 != null) {
            this.sendingMessages.remove(i);
            if (!z && (num = this.sendingMessagesIdDialogs.get((dialogId = MessageObject.getDialogId(tLRPC$Message2)))) != null) {
                int intValue = num.intValue() - 1;
                if (intValue <= 0) {
                    this.sendingMessagesIdDialogs.remove(dialogId);
                } else {
                    this.sendingMessagesIdDialogs.put(dialogId, Integer.valueOf(intValue));
                }
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
            }
        }
        return tLRPC$Message2;
    }

    public int getSendingMessageId(long j) {
        for (int i = 0; i < this.sendingMessages.size(); i++) {
            TLRPC$Message valueAt = this.sendingMessages.valueAt(i);
            if (valueAt.dialog_id == j) {
                return valueAt.f1626id;
            }
        }
        for (int i2 = 0; i2 < this.uploadMessages.size(); i2++) {
            TLRPC$Message valueAt2 = this.uploadMessages.valueAt(i2);
            if (valueAt2.dialog_id == j) {
                return valueAt2.f1626id;
            }
        }
        return 0;
    }

    protected void putToUploadingMessages(MessageObject messageObject) {
        if (messageObject == null || messageObject.getId() > 0 || messageObject.scheduled) {
            return;
        }
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        boolean z = this.uploadMessages.indexOfKey(tLRPC$Message.f1626id) >= 0;
        this.uploadMessages.put(tLRPC$Message.f1626id, tLRPC$Message);
        if (z) {
            return;
        }
        long dialogId = MessageObject.getDialogId(tLRPC$Message);
        LongSparseArray<Integer> longSparseArray = this.uploadingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(longSparseArray.get(dialogId, 0).intValue() + 1));
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
    }

    protected void removeFromUploadingMessages(int i, boolean z) {
        TLRPC$Message tLRPC$Message;
        if (i > 0 || z || (tLRPC$Message = this.uploadMessages.get(i)) == null) {
            return;
        }
        this.uploadMessages.remove(i);
        long dialogId = MessageObject.getDialogId(tLRPC$Message);
        Integer num = this.uploadingMessagesIdDialogs.get(dialogId);
        if (num != null) {
            int intValue = num.intValue() - 1;
            if (intValue <= 0) {
                this.uploadingMessagesIdDialogs.remove(dialogId);
            } else {
                this.uploadingMessagesIdDialogs.put(dialogId, Integer.valueOf(intValue));
            }
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.sendingMessagesChanged, new Object[0]);
        }
    }

    public boolean isSendingMessage(int i) {
        return this.sendingMessages.indexOfKey(i) >= 0 || this.editingMessages.indexOfKey(i) >= 0;
    }

    public boolean isSendingMessageIdDialog(long j) {
        return this.sendingMessagesIdDialogs.get(j, 0).intValue() > 0;
    }

    public boolean isUploadingMessageIdDialog(long j) {
        return this.uploadingMessagesIdDialogs.get(j, 0).intValue() > 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void performSendMessageRequestMulti(final TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia, final ArrayList<MessageObject> arrayList, final ArrayList<String> arrayList2, final ArrayList<Object> arrayList3, final DelayedMessage delayedMessage, final boolean z) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            putToSendingMessages(arrayList.get(i).messageOwner, z);
        }
        getConnectionsManager().sendRequest(tLRPC$TL_messages_sendMultiMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda85
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                SendMessagesHelper.this.lambda$performSendMessageRequestMulti$45(arrayList3, tLRPC$TL_messages_sendMultiMedia, arrayList, arrayList2, delayedMessage, z, tLObject, tLRPC$TL_error);
            }
        }, (QuickAckDelegate) null, 68);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$45(ArrayList arrayList, final TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia, final ArrayList arrayList2, final ArrayList arrayList3, final DelayedMessage delayedMessage, final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null && FileRefController.isFileRefError(tLRPC$TL_error.text)) {
            if (arrayList != null) {
                ArrayList arrayList4 = new ArrayList(arrayList);
                getFileRefController().requestReference(arrayList4, tLRPC$TL_messages_sendMultiMedia, arrayList2, arrayList3, arrayList4, delayedMessage, Boolean.valueOf(z));
                return;
            } else if (delayedMessage != null && !delayedMessage.retriedToSend) {
                delayedMessage.retriedToSend = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda59
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequestMulti$37(tLRPC$TL_messages_sendMultiMedia, delayedMessage, arrayList2, z);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequestMulti$44(tLRPC$TL_error, tLObject, arrayList2, arrayList3, z, tLRPC$TL_messages_sendMultiMedia);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$37(TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia, DelayedMessage delayedMessage, ArrayList arrayList, boolean z) {
        int size = tLRPC$TL_messages_sendMultiMedia.multi_media.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            if (delayedMessage.parentObjects.get(i) != null) {
                removeFromSendingMessages(((MessageObject) arrayList.get(i)).getId(), z);
                TLRPC$TL_inputSingleMedia tLRPC$TL_inputSingleMedia = tLRPC$TL_messages_sendMultiMedia.multi_media.get(i);
                TLRPC$InputMedia tLRPC$InputMedia = tLRPC$TL_inputSingleMedia.media;
                if (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaPhoto) {
                    tLRPC$TL_inputSingleMedia.media = delayedMessage.inputMedias.get(i);
                } else if (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaDocument) {
                    tLRPC$TL_inputSingleMedia.media = delayedMessage.inputMedias.get(i);
                }
                delayedMessage.videoEditedInfo = delayedMessage.videoEditedInfos.get(i);
                delayedMessage.httpLocation = delayedMessage.httpLocations.get(i);
                TLRPC$PhotoSize tLRPC$PhotoSize = delayedMessage.locations.get(i);
                delayedMessage.photoSize = tLRPC$PhotoSize;
                delayedMessage.performMediaUpload = true;
                z2 = (tLRPC$TL_inputSingleMedia.media.file == null || tLRPC$PhotoSize != null) ? true : true;
                performSendDelayedMessage(delayedMessage, i);
            }
        }
        if (z2) {
            return;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$Message tLRPC$Message = ((MessageObject) arrayList.get(i2)).messageOwner;
            getMessagesStorage().markMessageAsSendError(tLRPC$Message, z);
            tLRPC$Message.send_state = 2;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(tLRPC$Message.f1626id));
            processSentMessage(tLRPC$Message.f1626id);
            removeFromSendingMessages(tLRPC$Message.f1626id, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$44(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, ArrayList arrayList, ArrayList arrayList2, final boolean z, TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia) {
        boolean z2;
        final TLRPC$Updates tLRPC$Updates;
        boolean z3;
        TLRPC$Message tLRPC$Message;
        TLRPC$Updates tLRPC$Updates2;
        int i;
        TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader;
        int i2;
        if (tLRPC$TL_error == null) {
            SparseArray sparseArray = new SparseArray();
            LongSparseArray longSparseArray = new LongSparseArray();
            TLRPC$Updates tLRPC$Updates3 = (TLRPC$Updates) tLObject;
            ArrayList<TLRPC$Update> arrayList3 = tLRPC$Updates3.updates;
            int i3 = 0;
            LongSparseArray<SparseArray<TLRPC$MessageReplies>> longSparseArray2 = null;
            while (i3 < arrayList3.size()) {
                TLRPC$Update tLRPC$Update = arrayList3.get(i3);
                if (tLRPC$Update instanceof TLRPC$TL_updateMessageID) {
                    TLRPC$TL_updateMessageID tLRPC$TL_updateMessageID = (TLRPC$TL_updateMessageID) tLRPC$Update;
                    longSparseArray.put(tLRPC$TL_updateMessageID.random_id, Integer.valueOf(tLRPC$TL_updateMessageID.f1742id));
                    arrayList3.remove(i3);
                } else if (tLRPC$Update instanceof TLRPC$TL_updateNewMessage) {
                    final TLRPC$TL_updateNewMessage tLRPC$TL_updateNewMessage = (TLRPC$TL_updateNewMessage) tLRPC$Update;
                    TLRPC$Message tLRPC$Message2 = tLRPC$TL_updateNewMessage.message;
                    sparseArray.put(tLRPC$Message2.f1626id, tLRPC$Message2);
                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda65
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.this.lambda$performSendMessageRequestMulti$38(tLRPC$TL_updateNewMessage);
                        }
                    });
                    arrayList3.remove(i3);
                } else {
                    if (tLRPC$Update instanceof TLRPC$TL_updateNewChannelMessage) {
                        final TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage = (TLRPC$TL_updateNewChannelMessage) tLRPC$Update;
                        final long updateChannelId = MessagesController.getUpdateChannelId(tLRPC$TL_updateNewChannelMessage);
                        TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(updateChannelId));
                        if (!(chat == null || chat.megagroup) || (tLRPC$MessageReplyHeader = tLRPC$TL_updateNewChannelMessage.message.reply_to) == null || (tLRPC$MessageReplyHeader.reply_to_top_id == 0 && tLRPC$MessageReplyHeader.reply_to_msg_id == 0)) {
                            i2 = i3;
                        } else {
                            if (longSparseArray2 == null) {
                                longSparseArray2 = new LongSparseArray<>();
                            }
                            i2 = i3;
                            long dialogId = MessageObject.getDialogId(tLRPC$TL_updateNewChannelMessage.message);
                            SparseArray<TLRPC$MessageReplies> sparseArray2 = longSparseArray2.get(dialogId);
                            if (sparseArray2 == null) {
                                sparseArray2 = new SparseArray<>();
                                longSparseArray2.put(dialogId, sparseArray2);
                            }
                            TLRPC$MessageReplyHeader tLRPC$MessageReplyHeader2 = tLRPC$TL_updateNewChannelMessage.message.reply_to;
                            int i4 = tLRPC$MessageReplyHeader2.reply_to_top_id;
                            if (i4 == 0) {
                                i4 = tLRPC$MessageReplyHeader2.reply_to_msg_id;
                            }
                            TLRPC$MessageReplies tLRPC$MessageReplies = sparseArray2.get(i4);
                            if (tLRPC$MessageReplies == null) {
                                tLRPC$MessageReplies = new TLRPC$TL_messageReplies();
                                sparseArray2.put(i4, tLRPC$MessageReplies);
                            }
                            TLRPC$Peer tLRPC$Peer = tLRPC$TL_updateNewChannelMessage.message.from_id;
                            if (tLRPC$Peer != null) {
                                tLRPC$MessageReplies.recent_repliers.add(0, tLRPC$Peer);
                            }
                            tLRPC$MessageReplies.replies++;
                        }
                        TLRPC$Message tLRPC$Message3 = tLRPC$TL_updateNewChannelMessage.message;
                        sparseArray.put(tLRPC$Message3.f1626id, tLRPC$Message3);
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda62
                            @Override // java.lang.Runnable
                            public final void run() {
                                SendMessagesHelper.this.lambda$performSendMessageRequestMulti$39(tLRPC$TL_updateNewChannelMessage);
                            }
                        });
                        int i5 = i2;
                        arrayList3.remove(i5);
                        i = i5 - 1;
                        if (tLRPC$TL_updateNewChannelMessage.message.pinned) {
                            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda63
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.this.lambda$performSendMessageRequestMulti$40(tLRPC$TL_updateNewChannelMessage, updateChannelId);
                                }
                            });
                        }
                    } else {
                        int i6 = i3;
                        if (tLRPC$Update instanceof TLRPC$TL_updateNewScheduledMessage) {
                            TLRPC$Message tLRPC$Message4 = ((TLRPC$TL_updateNewScheduledMessage) tLRPC$Update).message;
                            sparseArray.put(tLRPC$Message4.f1626id, tLRPC$Message4);
                            arrayList3.remove(i6);
                            i = i6 - 1;
                        } else {
                            i = i6;
                        }
                    }
                    i3 = i + 1;
                }
                i = i3 - 1;
                i3 = i + 1;
            }
            if (longSparseArray2 != null) {
                getMessagesStorage().putChannelViews(null, null, longSparseArray2, true);
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateMessagesViews, null, null, longSparseArray2, Boolean.TRUE);
            }
            int i7 = 0;
            while (i7 < arrayList.size()) {
                MessageObject messageObject = (MessageObject) arrayList.get(i7);
                String str = (String) arrayList2.get(i7);
                final TLRPC$Message tLRPC$Message5 = messageObject.messageOwner;
                final int i8 = tLRPC$Message5.f1626id;
                final ArrayList arrayList4 = new ArrayList();
                Integer num = (Integer) longSparseArray.get(tLRPC$Message5.random_id);
                if (num == null || (tLRPC$Message = (TLRPC$Message) sparseArray.get(num.intValue())) == null) {
                    tLRPC$Updates = tLRPC$Updates3;
                    z3 = true;
                    break;
                }
                MessageObject.getDialogId(tLRPC$Message);
                arrayList4.add(tLRPC$Message);
                if ((tLRPC$Message.flags & ConnectionsManager.FileTypeVideo) != 0) {
                    TLRPC$Message tLRPC$Message6 = messageObject.messageOwner;
                    tLRPC$Message6.ttl_period = tLRPC$Message.ttl_period;
                    tLRPC$Message6.flags = 33554432 | tLRPC$Message6.flags;
                }
                updateMediaPaths(messageObject, tLRPC$Message, tLRPC$Message.f1626id, str, false);
                final int mediaExistanceFlags = messageObject.getMediaExistanceFlags();
                tLRPC$Message5.f1626id = tLRPC$Message.f1626id;
                if (ChatObject.isTemplatesChat(this.currentAccount, -tLRPC$Message.dialog_id)) {
                    tLRPC$Updates2 = tLRPC$Updates3;
                    getTemplatesController().markAsSent(tLRPC$Message5.random_id, tLRPC$Message5.f1626id);
                } else {
                    tLRPC$Updates2 = tLRPC$Updates3;
                }
                final long j = tLRPC$Message.grouped_id;
                if (!z) {
                    Integer num2 = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(tLRPC$Message.dialog_id));
                    if (num2 == null) {
                        num2 = Integer.valueOf(getMessagesStorage().getDialogReadMax(tLRPC$Message.out, tLRPC$Message.dialog_id));
                        getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(tLRPC$Message.dialog_id), num2);
                    }
                    tLRPC$Message.unread = num2.intValue() < tLRPC$Message.f1626id;
                }
                getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, 1);
                tLRPC$Message5.send_state = 0;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i8), Integer.valueOf(tLRPC$Message5.f1626id), tLRPC$Message5, Long.valueOf(tLRPC$Message5.dialog_id), Long.valueOf(j), Integer.valueOf(mediaExistanceFlags), Boolean.valueOf(z));
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda48
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequestMulti$42(tLRPC$Message5, i8, z, arrayList4, j, mediaExistanceFlags);
                    }
                });
                i7++;
                sparseArray = sparseArray;
                tLRPC$Updates3 = tLRPC$Updates2;
                longSparseArray = longSparseArray;
            }
            tLRPC$Updates = tLRPC$Updates3;
            z3 = false;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequestMulti$43(tLRPC$Updates);
                }
            });
            z2 = z3;
        } else {
            AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, null, tLRPC$TL_messages_sendMultiMedia, new Object[0]);
            z2 = true;
        }
        if (z2) {
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                TLRPC$Message tLRPC$Message7 = ((MessageObject) arrayList.get(i9)).messageOwner;
                getMessagesStorage().markMessageAsSendError(tLRPC$Message7, z);
                tLRPC$Message7.send_state = 2;
                getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageSendError, Integer.valueOf(tLRPC$Message7.f1626id));
                processSentMessage(tLRPC$Message7.f1626id);
                removeFromSendingMessages(tLRPC$Message7.f1626id, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$38(TLRPC$TL_updateNewMessage tLRPC$TL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tLRPC$TL_updateNewMessage.pts, -1, tLRPC$TL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$39(TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tLRPC$TL_updateNewChannelMessage.pts, tLRPC$TL_updateNewChannelMessage.pts_count, tLRPC$TL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$40(TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage, long j) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(tLRPC$TL_updateNewChannelMessage.message.f1626id));
        getMessagesStorage().updatePinnedMessages(-j, arrayList, true, -1, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$42(final TLRPC$Message tLRPC$Message, final int i, final boolean z, ArrayList arrayList, final long j, final int i2) {
        getMessagesStorage().updateMessageStateAndId(tLRPC$Message.random_id, MessageObject.getPeerId(tLRPC$Message.peer_id), Integer.valueOf(i), tLRPC$Message.f1626id, 0, false, z ? 1 : 0);
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, z, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequestMulti$41(tLRPC$Message, i, j, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$41(TLRPC$Message tLRPC$Message, int i, long j, int i2, boolean z) {
        getMediaDataController().increasePeerRaiting(tLRPC$Message.dialog_id);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(tLRPC$Message.f1626id), tLRPC$Message, Long.valueOf(tLRPC$Message.dialog_id), Long.valueOf(j), Integer.valueOf(i2), Boolean.valueOf(z));
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$43(TLRPC$Updates tLRPC$Updates) {
        getMessagesController().processUpdates(tLRPC$Updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSendMessageRequest(TLObject tLObject, MessageObject messageObject, String str, DelayedMessage delayedMessage, Object obj, HashMap<String, String> hashMap, boolean z) {
        performSendMessageRequest(tLObject, messageObject, str, null, false, delayedMessage, obj, hashMap, z);
    }

    private DelayedMessage findMaxDelayedMessageForMessageId(int i, long j) {
        int id;
        ArrayList<MessageObject> arrayList;
        DelayedMessage delayedMessage = null;
        int i2 = Integer.MIN_VALUE;
        for (Map.Entry<String, ArrayList<DelayedMessage>> entry : this.delayedMessages.entrySet()) {
            ArrayList<DelayedMessage> value = entry.getValue();
            int size = value.size();
            for (int i3 = 0; i3 < size; i3++) {
                DelayedMessage delayedMessage2 = value.get(i3);
                int i4 = delayedMessage2.type;
                if ((i4 == 4 || i4 == 0) && delayedMessage2.peer == j) {
                    MessageObject messageObject = delayedMessage2.obj;
                    if (messageObject != null) {
                        id = messageObject.getId();
                    } else {
                        ArrayList<MessageObject> arrayList2 = delayedMessage2.messageObjects;
                        id = (arrayList2 == null || arrayList2.isEmpty()) ? 0 : delayedMessage2.messageObjects.get(arrayList.size() - 1).getId();
                    }
                    if (id != 0 && id > i && delayedMessage == null && i2 < id) {
                        delayedMessage = delayedMessage2;
                        i2 = id;
                    }
                }
            }
        }
        return delayedMessage;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void performSendMessageRequest(final TLObject tLObject, final MessageObject messageObject, final String str, final DelayedMessage delayedMessage, final boolean z, final DelayedMessage delayedMessage2, final Object obj, HashMap<String, String> hashMap, final boolean z2) {
        DelayedMessage findMaxDelayedMessageForMessageId;
        ArrayList<DelayedMessageSendAfterRequest> arrayList;
        if (!(tLObject instanceof TLRPC$TL_messages_editMessage) && z && (findMaxDelayedMessageForMessageId = findMaxDelayedMessageForMessageId(messageObject.getId(), messageObject.getDialogId())) != null) {
            findMaxDelayedMessageForMessageId.addDelayedRequest(tLObject, messageObject, str, obj, delayedMessage2, delayedMessage != null ? delayedMessage.scheduled : false);
            if (delayedMessage == null || (arrayList = delayedMessage.requests) == null) {
                return;
            }
            findMaxDelayedMessageForMessageId.requests.addAll(arrayList);
        } else if (messageObject.isForwardingEditor) {
            messageObject.messageOwner.send_state = 0;
            messageObject.attachPathExists = true;
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByAck, Integer.valueOf(messageObject.messageOwner.f1626id));
        } else {
            final TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            putToSendingMessages(tLRPC$Message, z2);
            tLRPC$Message.reqId = getConnectionsManager().sendRequest(tLObject, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda88
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
                    SendMessagesHelper.this.lambda$performSendMessageRequest$60(tLObject, obj, messageObject, str, delayedMessage, z, delayedMessage2, z2, tLRPC$Message, tLObject2, tLRPC$TL_error);
                }
            }, new QuickAckDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda79
                @Override // org.telegram.tgnet.QuickAckDelegate
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequest$62(tLRPC$Message);
                }
            }, (tLObject instanceof TLRPC$TL_messages_sendMessage ? 128 : 0) | 68);
            if (delayedMessage != null) {
                delayedMessage.sendDelayedRequests();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$60(final TLObject tLObject, Object obj, final MessageObject messageObject, final String str, DelayedMessage delayedMessage, boolean z, final DelayedMessage delayedMessage2, final boolean z2, final TLRPC$Message tLRPC$Message, final TLObject tLObject2, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null && (((tLObject instanceof TLRPC$TL_messages_sendMedia) || (tLObject instanceof TLRPC$TL_messages_editMessage)) && FileRefController.isFileRefError(tLRPC$TL_error.text))) {
            if (obj != null) {
                getFileRefController().requestReference(obj, tLObject, messageObject, str, delayedMessage, Boolean.valueOf(z), delayedMessage2, Boolean.valueOf(z2));
                return;
            } else if (delayedMessage2 != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda53
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequest$46(tLRPC$Message, z2, tLObject, delayedMessage2);
                    }
                });
                return;
            }
        }
        if (tLObject instanceof TLRPC$TL_messages_editMessage) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequest$49(tLRPC$TL_error, tLRPC$Message, tLObject2, messageObject, str, z2, tLObject);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequest$59(z2, tLRPC$TL_error, tLRPC$Message, tLObject2, messageObject, str, tLObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$46(TLRPC$Message tLRPC$Message, boolean z, TLObject tLObject, DelayedMessage delayedMessage) {
        removeFromSendingMessages(tLRPC$Message.f1626id, z);
        if (tLObject instanceof TLRPC$TL_messages_sendMedia) {
            TLRPC$TL_messages_sendMedia tLRPC$TL_messages_sendMedia = (TLRPC$TL_messages_sendMedia) tLObject;
            TLRPC$InputMedia tLRPC$InputMedia = tLRPC$TL_messages_sendMedia.media;
            if (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaPhoto) {
                tLRPC$TL_messages_sendMedia.media = delayedMessage.inputUploadMedia;
            } else if (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaDocument) {
                tLRPC$TL_messages_sendMedia.media = delayedMessage.inputUploadMedia;
            }
        } else if (tLObject instanceof TLRPC$TL_messages_editMessage) {
            TLRPC$TL_messages_editMessage tLRPC$TL_messages_editMessage = (TLRPC$TL_messages_editMessage) tLObject;
            TLRPC$InputMedia tLRPC$InputMedia2 = tLRPC$TL_messages_editMessage.media;
            if (tLRPC$InputMedia2 instanceof TLRPC$TL_inputMediaPhoto) {
                tLRPC$TL_messages_editMessage.media = delayedMessage.inputUploadMedia;
            } else if (tLRPC$InputMedia2 instanceof TLRPC$TL_inputMediaDocument) {
                tLRPC$TL_messages_editMessage.media = delayedMessage.inputUploadMedia;
            }
        }
        delayedMessage.performMediaUpload = true;
        performSendDelayedMessage(delayedMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$49(TLRPC$TL_error tLRPC$TL_error, final TLRPC$Message tLRPC$Message, TLObject tLObject, MessageObject messageObject, String str, final boolean z, TLObject tLObject2) {
        int i = 0;
        TLRPC$Message tLRPC$Message2 = null;
        if (tLRPC$TL_error == null) {
            String str2 = tLRPC$Message.attachPath;
            final TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
            ArrayList<TLRPC$Update> arrayList = tLRPC$Updates.updates;
            while (true) {
                if (i >= arrayList.size()) {
                    break;
                }
                TLRPC$Update tLRPC$Update = arrayList.get(i);
                if (tLRPC$Update instanceof TLRPC$TL_updateEditMessage) {
                    tLRPC$Message2 = ((TLRPC$TL_updateEditMessage) tLRPC$Update).message;
                    break;
                } else if (tLRPC$Update instanceof TLRPC$TL_updateEditChannelMessage) {
                    tLRPC$Message2 = ((TLRPC$TL_updateEditChannelMessage) tLRPC$Update).message;
                    break;
                } else if (tLRPC$Update instanceof TLRPC$TL_updateNewScheduledMessage) {
                    tLRPC$Message2 = ((TLRPC$TL_updateNewScheduledMessage) tLRPC$Update).message;
                    break;
                } else {
                    i++;
                }
            }
            TLRPC$Message tLRPC$Message3 = tLRPC$Message2;
            if (tLRPC$Message3 != null) {
                ImageLoader.saveMessageThumbs(tLRPC$Message3);
                updateMediaPaths(messageObject, tLRPC$Message3, tLRPC$Message3.f1626id, str, false);
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda70
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequest$48(tLRPC$Updates, tLRPC$Message, z);
                }
            });
            return;
        }
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, null, tLObject2, new Object[0]);
        removeFromSendingMessages(tLRPC$Message.f1626id, z);
        revertEditingMessageObject(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$48(TLRPC$Updates tLRPC$Updates, final TLRPC$Message tLRPC$Message, final boolean z) {
        getMessagesController().processUpdates(tLRPC$Updates, false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda52
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$47(tLRPC$Message, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$47(TLRPC$Message tLRPC$Message, boolean z) {
        processSentMessage(tLRPC$Message.f1626id);
        removeFromSendingMessages(tLRPC$Message.f1626id, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0115, code lost:
        r11 = r10;
        r10 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0309  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$performSendMessageRequest$59(final boolean r27, org.telegram.tgnet.TLRPC$TL_error r28, final org.telegram.tgnet.TLRPC$Message r29, org.telegram.tgnet.TLObject r30, final org.telegram.messenger.MessageObject r31, java.lang.String r32, org.telegram.tgnet.TLObject r33) {
        /*
            Method dump skipped, instructions count: 1002
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$performSendMessageRequest$59(boolean, org.telegram.tgnet.TLRPC$TL_error, org.telegram.tgnet.TLRPC$Message, org.telegram.tgnet.TLObject, org.telegram.messenger.MessageObject, java.lang.String, org.telegram.tgnet.TLObject):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$50(TLRPC$TL_updateShortSentMessage tLRPC$TL_updateShortSentMessage) {
        getMessagesController().processNewDifferenceParams(-1, tLRPC$TL_updateShortSentMessage.pts, tLRPC$TL_updateShortSentMessage.date, tLRPC$TL_updateShortSentMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$51(TLRPC$TL_updateNewMessage tLRPC$TL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tLRPC$TL_updateNewMessage.pts, -1, tLRPC$TL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$52(TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tLRPC$TL_updateNewChannelMessage.pts, tLRPC$TL_updateNewChannelMessage.pts_count, tLRPC$TL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$53(TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage, long j) {
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(Integer.valueOf(tLRPC$TL_updateNewChannelMessage.message.f1626id));
        getMessagesStorage().updatePinnedMessages(-j, arrayList, true, -1, 0, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$54(TLRPC$Updates tLRPC$Updates) {
        getMessagesController().processUpdates(tLRPC$Updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$56(ArrayList arrayList, final MessageObject messageObject, final TLRPC$Message tLRPC$Message, final int i, final boolean z) {
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, false, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$55(messageObject, tLRPC$Message, i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$55(MessageObject messageObject, TLRPC$Message tLRPC$Message, int i, boolean z) {
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(new MessageObject(messageObject.currentAccount, messageObject.messageOwner, true, true));
        getMessagesController().updateInterfaceWithMessages(tLRPC$Message.dialog_id, arrayList, false);
        getMediaDataController().increasePeerRaiting(tLRPC$Message.dialog_id);
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$58(final TLRPC$Message tLRPC$Message, final int i, final boolean z, ArrayList arrayList, final int i2) {
        getMessagesStorage().updateMessageStateAndId(tLRPC$Message.random_id, MessageObject.getPeerId(tLRPC$Message.peer_id), Integer.valueOf(i), tLRPC$Message.f1626id, 0, false, z ? 1 : 0);
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, z, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$57(tLRPC$Message, i, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$57(TLRPC$Message tLRPC$Message, int i, int i2, boolean z) {
        getMediaDataController().increasePeerRaiting(tLRPC$Message.dialog_id);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(tLRPC$Message.f1626id), tLRPC$Message, Long.valueOf(tLRPC$Message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$62(final TLRPC$Message tLRPC$Message) {
        final int i = tLRPC$Message.f1626id;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$61(tLRPC$Message, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$61(TLRPC$Message tLRPC$Message, int i) {
        tLRPC$Message.send_state = 0;
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageReceivedByAck, Integer.valueOf(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateMediaPaths(org.telegram.messenger.MessageObject r19, org.telegram.tgnet.TLRPC$Message r20, int r21, java.lang.String r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 1845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.updateMediaPaths(org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$Message, int, java.lang.String, boolean):void");
    }

    private void putToDelayedMessages(String str, DelayedMessage delayedMessage) {
        ArrayList<DelayedMessage> arrayList = this.delayedMessages.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.delayedMessages.put(str, arrayList);
        }
        arrayList.add(delayedMessage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ArrayList<DelayedMessage> getDelayedMessages(String str) {
        return this.delayedMessages.get(str);
    }

    public long getNextRandomId() {
        long j = 0;
        while (j == 0) {
            j = Utilities.random.nextLong();
        }
        return j;
    }

    public void checkUnsentMessages() {
        getMessagesStorage().getUnsentMessages(1000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processUnsentMessages(final ArrayList<TLRPC$Message> arrayList, final ArrayList<TLRPC$Message> arrayList2, final ArrayList<TLRPC$User> arrayList3, final ArrayList<TLRPC$Chat> arrayList4, final ArrayList<TLRPC$EncryptedChat> arrayList5) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$processUnsentMessages$63(arrayList3, arrayList4, arrayList5, arrayList, arrayList2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUnsentMessages$63(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        HashMap<String, String> hashMap;
        getMessagesController().putUsers(arrayList, true);
        getMessagesController().putChats(arrayList2, true);
        getMessagesController().putEncryptedChats(arrayList3, true);
        int size = arrayList4.size();
        for (int i = 0; i < size; i++) {
            MessageObject messageObject = new MessageObject(this.currentAccount, (TLRPC$Message) arrayList4.get(i), false, true);
            long groupId = messageObject.getGroupId();
            if (groupId != 0 && (hashMap = messageObject.messageOwner.params) != null && !hashMap.containsKey("final") && (i == size - 1 || ((TLRPC$Message) arrayList4.get(i + 1)).grouped_id != groupId)) {
                messageObject.messageOwner.params.put("final", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            }
            retrySendMessage(messageObject, true);
        }
        if (arrayList5 != null) {
            for (int i2 = 0; i2 < arrayList5.size(); i2++) {
                MessageObject messageObject2 = new MessageObject(this.currentAccount, (TLRPC$Message) arrayList5.get(i2), false, true);
                messageObject2.scheduled = true;
                retrySendMessage(messageObject2, true);
            }
        }
    }

    public ImportingStickers getImportingStickers(String str) {
        return this.importingStickersMap.get(str);
    }

    public ImportingHistory getImportingHistory(long j) {
        return this.importingHistoryMap.get(j);
    }

    public boolean isImportingStickers() {
        return this.importingStickersMap.size() != 0;
    }

    public boolean isImportingHistory() {
        return this.importingHistoryMap.size() != 0;
    }

    public void prepareImportHistory(final long j, final Uri uri, final ArrayList<Uri> arrayList, final MessagesStorage.LongCallback longCallback) {
        if (this.importingHistoryMap.get(j) != null) {
            longCallback.run(0L);
            return;
        }
        if (DialogObject.isChatDialog(j)) {
            long j2 = -j;
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(j2));
            if (chat != null && !chat.megagroup) {
                getMessagesController().convertToMegaGroup(null, j2, null, new MessagesStorage.LongCallback() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda78
                    @Override // org.telegram.messenger.MessagesStorage.LongCallback
                    public final void run(long j3) {
                        SendMessagesHelper.this.lambda$prepareImportHistory$64(uri, arrayList, longCallback, j3);
                    }
                });
                return;
            }
        }
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$prepareImportHistory$69(arrayList, j, uri, longCallback);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$64(Uri uri, ArrayList arrayList, MessagesStorage.LongCallback longCallback, long j) {
        if (j != 0) {
            prepareImportHistory(-j, uri, arrayList, longCallback);
        } else {
            longCallback.run(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$69(ArrayList arrayList, final long j, Uri uri, final MessagesStorage.LongCallback longCallback) {
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        final ImportingHistory importingHistory = new ImportingHistory();
        importingHistory.mediaPaths = arrayList;
        importingHistory.dialogId = j;
        importingHistory.peer = getMessagesController().getInputPeer(j);
        final HashMap hashMap = new HashMap();
        int i = 0;
        int size = arrayList.size();
        while (i < size + 1) {
            Uri uri2 = i == 0 ? uri : (Uri) arrayList.get(i - 1);
            if (uri2 != null && !AndroidUtilities.isInternalUri(uri2)) {
                String copyFileToCache = MediaController.copyFileToCache(uri2, "txt");
                if (copyFileToCache == null) {
                    continue;
                } else {
                    File file = new File(copyFileToCache);
                    if (file.exists()) {
                        long length = file.length();
                        if (length != 0) {
                            importingHistory.totalSize += length;
                            if (i != 0) {
                                importingHistory.uploadMedia.add(copyFileToCache);
                            } else if (length > 33554432) {
                                file.delete();
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda19
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SendMessagesHelper.lambda$prepareImportHistory$67(MessagesStorage.LongCallback.this);
                                    }
                                });
                                return;
                            } else {
                                importingHistory.historyPath = copyFileToCache;
                            }
                            importingHistory.uploadSet.add(copyFileToCache);
                            hashMap.put(copyFileToCache, importingHistory);
                        }
                    }
                    if (i == 0) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda18
                            @Override // java.lang.Runnable
                            public final void run() {
                                MessagesStorage.LongCallback.this.run(0L);
                            }
                        });
                        return;
                    }
                }
            } else if (i == 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.LongCallback.this.run(0L);
                    }
                });
                return;
            }
            i++;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$prepareImportHistory$68(hashMap, j, importingHistory, longCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareImportHistory$67(MessagesStorage.LongCallback longCallback) {
        Toast.makeText(ApplicationLoader.applicationContext, LocaleController.getString("ImportFileTooLarge", C3632R.string.ImportFileTooLarge), 0).show();
        longCallback.run(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$68(HashMap hashMap, long j, ImportingHistory importingHistory, MessagesStorage.LongCallback longCallback) {
        this.importingHistoryFiles.putAll(hashMap);
        this.importingHistoryMap.put(j, importingHistory);
        getFileLoader().uploadFile(importingHistory.historyPath, false, true, 0L, ConnectionsManager.FileTypeFile, true);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, Long.valueOf(j));
        longCallback.run(j);
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, ImportingService.class));
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    public void prepareImportStickers(final String str, final String str2, final String str3, final ArrayList<ImportingSticker> arrayList, final MessagesStorage.StringCallback stringCallback) {
        if (this.importingStickersMap.get(str2) != null) {
            stringCallback.run(null);
        } else {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$prepareImportStickers$72(str, str2, str3, arrayList, stringCallback);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportStickers$72(String str, final String str2, String str3, ArrayList arrayList, final MessagesStorage.StringCallback stringCallback) {
        final ImportingStickers importingStickers = new ImportingStickers();
        importingStickers.title = str;
        importingStickers.shortName = str2;
        importingStickers.software = str3;
        final HashMap hashMap = new HashMap();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ImportingSticker importingSticker = (ImportingSticker) arrayList.get(i);
            File file = new File(importingSticker.path);
            if (file.exists()) {
                long length = file.length();
                if (length != 0) {
                    importingStickers.totalSize += length;
                    importingStickers.uploadMedia.add(importingSticker);
                    importingStickers.uploadSet.put(importingSticker.path, importingSticker);
                    hashMap.put(importingSticker.path, importingStickers);
                }
            }
            if (i == 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        MessagesStorage.StringCallback.this.run(null);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$prepareImportStickers$71(importingStickers, hashMap, str2, stringCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportStickers$71(ImportingStickers importingStickers, HashMap hashMap, String str, MessagesStorage.StringCallback stringCallback) {
        if (importingStickers.uploadMedia.get(0).item != null) {
            importingStickers.startImport();
        } else {
            this.importingStickersFiles.putAll(hashMap);
            this.importingStickersMap.put(str, importingStickers);
            importingStickers.initImport();
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.historyImportProgressChanged, str);
            stringCallback.run(str);
        }
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, ImportingService.class));
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    public TLRPC$TL_photo generatePhotoSizes(String str, Uri uri) {
        return generatePhotoSizes(null, str, uri);
    }

    public TLRPC$TL_photo generatePhotoSizes(TLRPC$TL_photo tLRPC$TL_photo, String str, Uri uri) {
        Bitmap loadBitmap = ImageLoader.loadBitmap(str, uri, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), true);
        if (loadBitmap == null) {
            loadBitmap = ImageLoader.loadBitmap(str, uri, 800.0f, 800.0f, true);
        }
        ArrayList<TLRPC$PhotoSize> arrayList = new ArrayList<>();
        TLRPC$PhotoSize scaleAndSaveImage = ImageLoader.scaleAndSaveImage(loadBitmap, 90.0f, 90.0f, 55, true);
        if (scaleAndSaveImage != null) {
            arrayList.add(scaleAndSaveImage);
        }
        TLRPC$PhotoSize scaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(loadBitmap, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), true, 80, false, 101, 101);
        if (scaleAndSaveImage2 != null) {
            arrayList.add(scaleAndSaveImage2);
        }
        if (loadBitmap != null) {
            loadBitmap.recycle();
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        getUserConfig().saveConfig(false);
        if (tLRPC$TL_photo == null) {
            tLRPC$TL_photo = new TLRPC$TL_photo();
        }
        tLRPC$TL_photo.date = getConnectionsManager().getCurrentTime();
        tLRPC$TL_photo.sizes = arrayList;
        tLRPC$TL_photo.file_reference = new byte[0];
        return tLRPC$TL_photo;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't wrap try/catch for region: R(28:(5:243|244|245|246|(10:248|249|250|251|252|253|254|255|256|257)(1:296))|(3:267|268|(28:270|271|(25:273|261|262|263|(7:53|(1:55)|56|(1:58)|59|(1:61)|62)(1:242)|(2:64|(18:66|67|(1:235)(7:70|(1:72)(1:234)|73|(1:233)(1:77)|(1:232)(4:82|(1:84)(1:231)|85|(2:89|90))|230|90)|91|(11:93|(1:95)|96|(3:98|99|101)(1:228)|(3:111|112|(10:114|115|116|117|(1:119)|120|121|(1:195)(8:124|125|126|127|128|129|130|(2:137|138))|188|138))|202|121|(0)|195|188|138)(1:229)|(1:140)(1:187)|141|(1:143)|144|(1:147)|(1:149)|150|(2:152|(2:172|(2:182|(1:184)(1:185))(1:178))(4:156|(1:171)(2:(1:170)(1:163)|(2:165|(1:167)))|168|169))(1:186)|179|(0)|171|168|169)(2:(1:237)(1:240)|238))(1:241)|239|67|(0)|235|91|(0)(0)|(0)(0)|141|(0)|144|(1:147)|(0)|150|(0)(0)|179|(0)|171|168|169)|260|261|262|263|(0)(0)|(0)(0)|239|67|(0)|235|91|(0)(0)|(0)(0)|141|(0)|144|(0)|(0)|150|(0)(0)|179|(0)|171|168|169))|259|260|261|262|263|(0)(0)|(0)(0)|239|67|(0)|235|91|(0)(0)|(0)(0)|141|(0)|144|(0)|(0)|150|(0)(0)|179|(0)|171|168|169) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0059, code lost:
        if (r3 == false) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x014e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x014f, code lost:
        org.telegram.messenger.FileLog.m99e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0234 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x03fa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0494 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:286:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0509 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x017a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int prepareSendingDocumentInternal(final org.telegram.messenger.AccountInstance r33, java.lang.String r34, java.lang.String r35, android.net.Uri r36, java.lang.String r37, final long r38, final org.telegram.messenger.MessageObject r40, final org.telegram.messenger.MessageObject r41, final org.telegram.tgnet.p042tl.TL_stories$StoryItem r42, final org.telegram.p043ui.ChatActivity.ReplyQuote r43, final java.util.ArrayList<org.telegram.tgnet.TLRPC$MessageEntity> r44, final org.telegram.messenger.MessageObject r45, long[] r46, boolean r47, java.lang.CharSequence r48, final boolean r49, final int r50, java.lang.Integer[] r51, boolean r52, final java.lang.String r53) {
        /*
            Method dump skipped, instructions count: 1440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.prepareSendingDocumentInternal(org.telegram.messenger.AccountInstance, java.lang.String, java.lang.String, android.net.Uri, java.lang.String, long, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, org.telegram.tgnet.tl.TL_stories$StoryItem, org.telegram.ui.ChatActivity$ReplyQuote, java.util.ArrayList, org.telegram.messenger.MessageObject, long[], boolean, java.lang.CharSequence, boolean, int, java.lang.Integer[], boolean, java.lang.String):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingDocumentInternal$73(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_document tLRPC$TL_document, String str, HashMap hashMap, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, String str3, ArrayList arrayList, boolean z, int i, String str4, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tLRPC$TL_document, str, hashMap, false, false, str2);
            return;
        }
        SendMessageParams m86of = SendMessageParams.m86of(tLRPC$TL_document, null, str, j, messageObject2, messageObject3, str3, arrayList, null, hashMap, z, i, 0, str2, null, false, str4);
        m86of.replyToStoryItem = tL_stories$StoryItem;
        m86of.replyQuote = replyQuote;
        accountInstance.getSendMessagesHelper().sendMessage(m86of);
    }

    private static boolean checkFileSize(AccountInstance accountInstance, Uri uri) {
        long j = 0;
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                AssetFileDescriptor openAssetFileDescriptor = ApplicationLoader.applicationContext.getContentResolver().openAssetFileDescriptor(uri, "r", null);
                if (openAssetFileDescriptor != null) {
                    openAssetFileDescriptor.getLength();
                }
                Cursor query = ApplicationLoader.applicationContext.getContentResolver().query(uri, new String[]{"_size"}, null, null, null);
                int columnIndex = query.getColumnIndex("_size");
                query.moveToFirst();
                j = query.getLong(columnIndex);
                query.close();
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        }
        return !FileLoader.checkUploadFileSize(accountInstance.getCurrentAccount(), j);
    }

    public static void prepareSendingDocument(AccountInstance accountInstance, String str, String str2, Uri uri, String str3, String str4, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject3, boolean z, int i, InputContentInfoCompat inputContentInfoCompat, String str5) {
        if ((str == null || str2 == null) && uri == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = null;
        if (uri != null) {
            arrayList3 = new ArrayList();
            arrayList3.add(uri);
        }
        if (str != null) {
            arrayList.add(str);
            arrayList2.add(str2);
        }
        prepareSendingDocuments(accountInstance, arrayList, arrayList2, arrayList3, str3, str4, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, messageObject3, z, i, inputContentInfoCompat, str5, true);
    }

    public static void prepareSendingAudioDocuments(final AccountInstance accountInstance, final ArrayList<MessageObject> arrayList, final CharSequence charSequence, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final boolean z, final int i, final MessageObject messageObject3, final String str, final boolean z2) {
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingAudioDocuments$75(arrayList, j, accountInstance, charSequence, z2, messageObject3, messageObject, messageObject2, z, i, str, tL_stories$StoryItem);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0102 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingAudioDocuments$75(java.util.ArrayList r25, final long r26, final org.telegram.messenger.AccountInstance r28, java.lang.CharSequence r29, boolean r30, final org.telegram.messenger.MessageObject r31, final org.telegram.messenger.MessageObject r32, final org.telegram.messenger.MessageObject r33, final boolean r34, final int r35, final java.lang.String r36, final org.telegram.tgnet.p042tl.TL_stories$StoryItem r37) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingAudioDocuments$75(java.util.ArrayList, long, org.telegram.messenger.AccountInstance, java.lang.CharSequence, boolean, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, boolean, int, java.lang.String, org.telegram.tgnet.tl.TL_stories$StoryItem):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingAudioDocuments$74(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_document tLRPC$TL_document, MessageObject messageObject2, HashMap hashMap, String str, long j, MessageObject messageObject3, MessageObject messageObject4, String str2, ArrayList arrayList, boolean z, int i, String str3, TL_stories$StoryItem tL_stories$StoryItem) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tLRPC$TL_document, messageObject2.messageOwner.attachPath, hashMap, false, false, str);
            return;
        }
        SendMessageParams m85of = SendMessageParams.m85of(tLRPC$TL_document, null, messageObject2.messageOwner.attachPath, j, messageObject3, messageObject4, str2, arrayList, null, hashMap, z, i, 0, str, null, false, false, str3);
        m85of.replyToStoryItem = tL_stories$StoryItem;
        accountInstance.getSendMessagesHelper().sendMessage(m85of);
    }

    private static void finishGroup(final AccountInstance accountInstance, final long j, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$finishGroup$76(AccountInstance.this, j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$finishGroup$76(AccountInstance accountInstance, long j, int i) {
        SendMessagesHelper sendMessagesHelper = accountInstance.getSendMessagesHelper();
        HashMap<String, ArrayList<DelayedMessage>> hashMap = sendMessagesHelper.delayedMessages;
        ArrayList<DelayedMessage> arrayList = hashMap.get("group_" + j);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        DelayedMessage delayedMessage = arrayList.get(0);
        ArrayList<MessageObject> arrayList2 = delayedMessage.messageObjects;
        MessageObject messageObject = arrayList2.get(arrayList2.size() - 1);
        delayedMessage.finalGroupMessage = messageObject.getId();
        messageObject.messageOwner.params.put("final", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        TLRPC$TL_messages_messages tLRPC$TL_messages_messages = new TLRPC$TL_messages_messages();
        tLRPC$TL_messages_messages.messages.add(messageObject.messageOwner);
        accountInstance.getMessagesStorage().putMessages((TLRPC$messages_Messages) tLRPC$TL_messages_messages, delayedMessage.peer, -2, 0, false, i != 0, 0);
        sendMessagesHelper.sendReadyToSendGroup(delayedMessage, true, true);
    }

    public static void prepareSendingDocuments(final AccountInstance accountInstance, final ArrayList<String> arrayList, final ArrayList<String> arrayList2, final ArrayList<Uri> arrayList3, final String str, final String str2, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final MessageObject messageObject3, final boolean z, final int i, final InputContentInfoCompat inputContentInfoCompat, final String str3, final boolean z2) {
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            return;
        }
        if (arrayList == null || arrayList2 == null || arrayList.size() == arrayList2.size()) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$prepareSendingDocuments$77(j, arrayList, str, accountInstance, i, arrayList2, str2, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, messageObject3, z2, z, inputContentInfoCompat, str3, arrayList3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$prepareSendingDocuments$77(long j, ArrayList arrayList, String str, AccountInstance accountInstance, int i, ArrayList arrayList2, String str2, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, MessageObject messageObject3, boolean z, boolean z2, InputContentInfoCompat inputContentInfoCompat, String str3, ArrayList arrayList3) {
        Integer[] numArr;
        long[] jArr;
        ArrayList arrayList4;
        int i2;
        int i3;
        AccountInstance accountInstance2 = accountInstance;
        int i4 = i;
        int i5 = 1;
        long[] jArr2 = new long[1];
        Integer[] numArr2 = new Integer[1];
        boolean isEncryptedDialog = DialogObject.isEncryptedDialog(j);
        int i6 = 10;
        if (arrayList != null) {
            int size = arrayList.size();
            i2 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i8 < size) {
                String str4 = i8 == 0 ? str : null;
                if (!isEncryptedDialog && size > i5 && i7 % 10 == 0) {
                    if (jArr2[0] != 0) {
                        finishGroup(accountInstance2, jArr2[0], i4);
                    }
                    jArr2[0] = Utilities.random.nextLong();
                    i7 = 0;
                }
                int i9 = i7 + 1;
                long j2 = jArr2[0];
                int i10 = i8;
                int i11 = size;
                Integer[] numArr3 = numArr2;
                long[] jArr3 = jArr2;
                i2 = prepareSendingDocumentInternal(accountInstance, (String) arrayList.get(i8), (String) arrayList2.get(i8), null, str2, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, null, messageObject3, !z ? null : jArr2, (i9 == i6 || i8 == size + (-1)) ? i5 : 0, str4, z2, i, numArr3, inputContentInfoCompat == null ? i5 : 0, str3);
                i7 = (j2 != jArr3[0] || jArr3[0] == -1) ? 1 : i9;
                i8 = i10 + 1;
                accountInstance2 = accountInstance;
                i4 = i;
                size = i11;
                numArr2 = numArr3;
                jArr2 = jArr3;
                i6 = 10;
                i5 = 1;
            }
            numArr = numArr2;
            jArr = jArr2;
            arrayList4 = arrayList3;
        } else {
            numArr = numArr2;
            jArr = jArr2;
            arrayList4 = arrayList3;
            i2 = 0;
        }
        if (arrayList4 != null) {
            jArr[0] = 0;
            int size2 = arrayList3.size();
            int i12 = 0;
            int i13 = 0;
            while (i13 < arrayList3.size()) {
                String str5 = (i13 == 0 && (arrayList == null || arrayList.size() == 0)) ? str : null;
                if (isEncryptedDialog) {
                    i3 = 1;
                } else {
                    i3 = 1;
                    if (size2 > 1 && i12 % 10 == 0) {
                        if (jArr[0] != 0) {
                            finishGroup(accountInstance, jArr[0], i);
                        }
                        jArr[0] = Utilities.random.nextLong();
                        i12 = 0;
                    }
                }
                int i14 = i12 + 1;
                long j3 = jArr[0];
                int i15 = i3;
                int i16 = i13;
                int i17 = size2;
                i2 = prepareSendingDocumentInternal(accountInstance, null, null, (Uri) arrayList4.get(i13), str2, j, messageObject, messageObject2, tL_stories$StoryItem, replyQuote, null, messageObject3, jArr, (i14 == 10 || i13 == size2 + (-1)) ? i3 : 0, str5, z2, i, numArr, inputContentInfoCompat == null ? i3 : 0, str3);
                i12 = (j3 != jArr[0] || jArr[0] == -1) ? i15 : i14;
                i13 = i16 + 1;
                arrayList4 = arrayList3;
                size2 = i17;
            }
        }
        if (inputContentInfoCompat != null) {
            inputContentInfoCompat.releasePermission();
        }
        handleError(i2, accountInstance);
    }

    private static void handleError(final int i, final AccountInstance accountInstance) {
        if (i != 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$handleError$78(i, accountInstance);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleError$78(int i, AccountInstance accountInstance) {
        try {
            if (i == 1) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString("UnsupportedAttachment", C3632R.string.UnsupportedAttachment));
            } else if (i != 2) {
            } else {
                NotificationCenter.getInstance(accountInstance.getCurrentAccount()).lambda$postNotificationNameOnUIThread$1(NotificationCenter.currentUserShowLimitReachedDialog, 6);
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, ChatActivity.ReplyQuote replyQuote, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, ArrayList<TLRPC$InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, boolean z, int i2, String str2) {
        prepareSendingPhoto(accountInstance, str, null, uri, j, messageObject, messageObject2, null, null, arrayList, arrayList2, inputContentInfoCompat, i, messageObject3, null, z, i2, false, charSequence, str2);
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, String str2, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, ArrayList<TLRPC$MessageEntity> arrayList, ArrayList<TLRPC$InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, CharSequence charSequence, String str3) {
        SendingMediaInfo sendingMediaInfo = new SendingMediaInfo();
        sendingMediaInfo.path = str;
        sendingMediaInfo.thumbPath = str2;
        sendingMediaInfo.uri = uri;
        if (charSequence != null) {
            sendingMediaInfo.caption = charSequence.toString();
        }
        sendingMediaInfo.entities = arrayList;
        sendingMediaInfo.ttl = i;
        if (arrayList2 != null) {
            sendingMediaInfo.masks = new ArrayList<>(arrayList2);
        }
        sendingMediaInfo.videoEditedInfo = videoEditedInfo;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(sendingMediaInfo);
        prepareSendingMedia(accountInstance, arrayList3, j, messageObject, messageObject2, null, replyQuote, z2, false, messageObject3, z, i2, false, inputContentInfoCompat, str3);
    }

    public static void prepareSendingBotContextResult(final BaseFragment baseFragment, final AccountInstance accountInstance, final TLRPC$BotInlineResult tLRPC$BotInlineResult, final HashMap<String, String> hashMap, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final boolean z, final int i, final String str) {
        if (tLRPC$BotInlineResult == null) {
            return;
        }
        TLRPC$BotInlineMessage tLRPC$BotInlineMessage = tLRPC$BotInlineResult.send_message;
        if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaAuto) {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$prepareSendingBotContextResult$82(j, tLRPC$BotInlineResult, accountInstance, hashMap, baseFragment, messageObject, messageObject2, z, i, str, tL_stories$StoryItem, replyQuote);
                }
            }).run();
        } else if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageText) {
            TLRPC$TL_webPagePending tLRPC$TL_webPagePending = null;
            if (DialogObject.isEncryptedDialog(j)) {
                int i2 = 0;
                while (true) {
                    if (i2 >= tLRPC$BotInlineResult.send_message.entities.size()) {
                        break;
                    }
                    TLRPC$MessageEntity tLRPC$MessageEntity = tLRPC$BotInlineResult.send_message.entities.get(i2);
                    if (tLRPC$MessageEntity instanceof TLRPC$TL_messageEntityUrl) {
                        tLRPC$TL_webPagePending = new TLRPC$TL_webPagePending();
                        String str2 = tLRPC$BotInlineResult.send_message.message;
                        int i3 = tLRPC$MessageEntity.offset;
                        tLRPC$TL_webPagePending.url = str2.substring(i3, tLRPC$MessageEntity.length + i3);
                        break;
                    }
                    i2++;
                }
            }
            TLRPC$TL_webPagePending tLRPC$TL_webPagePending2 = tLRPC$TL_webPagePending;
            SendMessagesHelper sendMessagesHelper = accountInstance.getSendMessagesHelper();
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage2 = tLRPC$BotInlineResult.send_message;
            sendMessagesHelper.sendMessage(SendMessageParams.m91of(tLRPC$BotInlineMessage2.message, j, messageObject, messageObject2, tLRPC$TL_webPagePending2, !tLRPC$BotInlineMessage2.no_webpage, tLRPC$BotInlineMessage2.entities, tLRPC$BotInlineMessage2.reply_markup, hashMap, z, i, null, false, str));
        } else if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaVenue) {
            TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue = new TLRPC$TL_messageMediaVenue();
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage3 = tLRPC$BotInlineResult.send_message;
            tLRPC$TL_messageMediaVenue.geo = tLRPC$BotInlineMessage3.geo;
            tLRPC$TL_messageMediaVenue.address = tLRPC$BotInlineMessage3.address;
            tLRPC$TL_messageMediaVenue.title = tLRPC$BotInlineMessage3.title;
            tLRPC$TL_messageMediaVenue.provider = tLRPC$BotInlineMessage3.provider;
            tLRPC$TL_messageMediaVenue.venue_id = tLRPC$BotInlineMessage3.venue_id;
            String str3 = tLRPC$BotInlineMessage3.venue_type;
            tLRPC$TL_messageMediaVenue.venue_id = str3;
            tLRPC$TL_messageMediaVenue.venue_type = str3;
            if (str3 == null) {
                tLRPC$TL_messageMediaVenue.venue_type = "";
            }
            accountInstance.getSendMessagesHelper().sendMessage(SendMessageParams.m87of(tLRPC$TL_messageMediaVenue, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str));
        } else if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaGeo) {
            if (tLRPC$BotInlineMessage.period != 0 || tLRPC$BotInlineMessage.proximity_notification_radius != 0) {
                TLRPC$TL_messageMediaGeoLive tLRPC$TL_messageMediaGeoLive = new TLRPC$TL_messageMediaGeoLive();
                TLRPC$BotInlineMessage tLRPC$BotInlineMessage4 = tLRPC$BotInlineResult.send_message;
                int i4 = tLRPC$BotInlineMessage4.period;
                if (i4 == 0) {
                    i4 = 900;
                }
                tLRPC$TL_messageMediaGeoLive.period = i4;
                tLRPC$TL_messageMediaGeoLive.geo = tLRPC$BotInlineMessage4.geo;
                tLRPC$TL_messageMediaGeoLive.heading = tLRPC$BotInlineMessage4.heading;
                tLRPC$TL_messageMediaGeoLive.proximity_notification_radius = tLRPC$BotInlineMessage4.proximity_notification_radius;
                accountInstance.getSendMessagesHelper().sendMessage(SendMessageParams.m87of(tLRPC$TL_messageMediaGeoLive, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str));
                return;
            }
            TLRPC$TL_messageMediaGeo tLRPC$TL_messageMediaGeo = new TLRPC$TL_messageMediaGeo();
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage5 = tLRPC$BotInlineResult.send_message;
            tLRPC$TL_messageMediaGeo.geo = tLRPC$BotInlineMessage5.geo;
            tLRPC$TL_messageMediaGeo.heading = tLRPC$BotInlineMessage5.heading;
            accountInstance.getSendMessagesHelper().sendMessage(SendMessageParams.m87of(tLRPC$TL_messageMediaGeo, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str));
        } else if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaContact) {
            TLRPC$TL_user tLRPC$TL_user = new TLRPC$TL_user();
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage6 = tLRPC$BotInlineResult.send_message;
            tLRPC$TL_user.phone = tLRPC$BotInlineMessage6.phone_number;
            tLRPC$TL_user.first_name = tLRPC$BotInlineMessage6.first_name;
            tLRPC$TL_user.last_name = tLRPC$BotInlineMessage6.last_name;
            TLRPC$TL_restrictionReason tLRPC$TL_restrictionReason = new TLRPC$TL_restrictionReason();
            tLRPC$TL_restrictionReason.text = tLRPC$BotInlineResult.send_message.vcard;
            tLRPC$TL_restrictionReason.platform = "";
            tLRPC$TL_restrictionReason.reason = "";
            tLRPC$TL_user.restriction_reason.add(tLRPC$TL_restrictionReason);
            accountInstance.getSendMessagesHelper().sendMessage(SendMessageParams.m79of(tLRPC$TL_user, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str));
        } else if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaInvoice) {
            if (DialogObject.isEncryptedDialog(j)) {
                return;
            }
            TLRPC$TL_botInlineMessageMediaInvoice tLRPC$TL_botInlineMessageMediaInvoice = (TLRPC$TL_botInlineMessageMediaInvoice) tLRPC$BotInlineResult.send_message;
            TLRPC$TL_messageMediaInvoice tLRPC$TL_messageMediaInvoice = new TLRPC$TL_messageMediaInvoice();
            tLRPC$TL_messageMediaInvoice.shipping_address_requested = tLRPC$TL_botInlineMessageMediaInvoice.shipping_address_requested;
            tLRPC$TL_messageMediaInvoice.test = tLRPC$TL_botInlineMessageMediaInvoice.test;
            tLRPC$TL_messageMediaInvoice.title = tLRPC$TL_botInlineMessageMediaInvoice.title;
            tLRPC$TL_messageMediaInvoice.description = tLRPC$TL_botInlineMessageMediaInvoice.description;
            TLRPC$WebDocument tLRPC$WebDocument = tLRPC$TL_botInlineMessageMediaInvoice.photo;
            if (tLRPC$WebDocument != null) {
                tLRPC$TL_messageMediaInvoice.webPhoto = tLRPC$WebDocument;
                tLRPC$TL_messageMediaInvoice.flags |= 1;
            }
            tLRPC$TL_messageMediaInvoice.currency = tLRPC$TL_botInlineMessageMediaInvoice.currency;
            tLRPC$TL_messageMediaInvoice.total_amount = tLRPC$TL_botInlineMessageMediaInvoice.total_amount;
            tLRPC$TL_messageMediaInvoice.start_param = "";
            accountInstance.getSendMessagesHelper().sendMessage(SendMessageParams.m83of(tLRPC$TL_messageMediaInvoice, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str));
        } else if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaWebPage) {
            TLRPC$TL_webPagePending tLRPC$TL_webPagePending3 = new TLRPC$TL_webPagePending();
            tLRPC$TL_webPagePending3.url = ((TLRPC$TL_botInlineMessageMediaWebPage) tLRPC$BotInlineMessage).url;
            SendMessagesHelper sendMessagesHelper2 = accountInstance.getSendMessagesHelper();
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage7 = tLRPC$BotInlineResult.send_message;
            sendMessagesHelper2.sendMessage(SendMessageParams.m91of(tLRPC$BotInlineMessage7.message, j, messageObject, messageObject2, tLRPC$TL_webPagePending3, !tLRPC$BotInlineMessage7.no_webpage, tLRPC$BotInlineMessage7.entities, tLRPC$BotInlineMessage7.reply_markup, hashMap, z, i, null, false, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01ce, code lost:
        if (r0.equals("voice") == false) goto L85;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:179:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x050e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingBotContextResult$82(final long r23, final org.telegram.tgnet.TLRPC$BotInlineResult r25, final org.telegram.messenger.AccountInstance r26, final java.util.HashMap r27, final org.telegram.p043ui.ActionBar.BaseFragment r28, final org.telegram.messenger.MessageObject r29, final org.telegram.messenger.MessageObject r30, final boolean r31, final int r32, final java.lang.String r33, final org.telegram.tgnet.p042tl.TL_stories$StoryItem r34, final org.telegram.p043ui.ChatActivity.ReplyQuote r35) {
        /*
            Method dump skipped, instructions count: 1498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingBotContextResult$82(long, org.telegram.tgnet.TLRPC$BotInlineResult, org.telegram.messenger.AccountInstance, java.util.HashMap, org.telegram.ui.ActionBar.BaseFragment, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, boolean, int, java.lang.String, org.telegram.tgnet.tl.TL_stories$StoryItem, org.telegram.ui.ChatActivity$ReplyQuote):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingBotContextResult$81(TLRPC$TL_document tLRPC$TL_document, Bitmap[] bitmapArr, String[] strArr, String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$BotInlineResult tLRPC$BotInlineResult, HashMap hashMap, boolean z, int i, String str2, TLRPC$TL_photo tLRPC$TL_photo, TLRPC$TL_game tLRPC$TL_game, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote, AccountInstance accountInstance) {
        SendMessageParams sendMessageParams = null;
        if (tLRPC$TL_document != null) {
            if (bitmapArr[0] != null && strArr[0] != null) {
                ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
            }
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage = tLRPC$BotInlineResult.send_message;
            sendMessageParams = SendMessageParams.m86of(tLRPC$TL_document, null, str, j, messageObject, messageObject2, tLRPC$BotInlineMessage.message, tLRPC$BotInlineMessage.entities, tLRPC$BotInlineMessage.reply_markup, hashMap, z, i, 0, tLRPC$BotInlineResult, null, false, str2);
        } else if (tLRPC$TL_photo != null) {
            TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.content;
            String str3 = tLRPC$WebDocument != null ? tLRPC$WebDocument.url : null;
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage2 = tLRPC$BotInlineResult.send_message;
            sendMessageParams = SendMessageParams.m81of(tLRPC$TL_photo, str3, j, messageObject, messageObject2, tLRPC$BotInlineMessage2.message, tLRPC$BotInlineMessage2.entities, tLRPC$BotInlineMessage2.reply_markup, hashMap, z, i, 0, tLRPC$BotInlineResult, false, str2);
        } else if (tLRPC$TL_game != null) {
            sendMessageParams = SendMessageParams.m84of(tLRPC$TL_game, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str2);
        }
        if (sendMessageParams != null) {
            sendMessageParams.replyToStoryItem = tL_stories$StoryItem;
            sendMessageParams.replyQuote = replyQuote;
            accountInstance.getSendMessagesHelper().sendMessage(sendMessageParams);
        }
    }

    private static String getTrimmedString(String str) {
        String trim = str.trim();
        if (trim.length() == 0) {
            return trim;
        }
        while (str.startsWith("\n")) {
            str = str.substring(1);
        }
        while (str.endsWith("\n")) {
            str = str.substring(0, str.length() - 1);
        }
        return str;
    }

    public static void prepareSendingText(AccountInstance accountInstance, String str, long j, boolean z, int i, String str2) {
        prepareSendingText(accountInstance, str, j, 0, z, i, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingText$84(final String str, final int i, final AccountInstance accountInstance, final long j, final boolean z, final int i2, final String str2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingText$83(str, i, accountInstance, j, z, i2, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingText$85(final String str, final int i, final AccountInstance accountInstance, final long j, final boolean z, final int i2, final String str2) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingText$84(str, i, accountInstance, j, z, i2, str2);
            }
        });
    }

    public static void prepareSendingText(final AccountInstance accountInstance, final String str, final long j, final int i, final boolean z, final int i2, final String str2) {
        accountInstance.getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingText$85(str, i, accountInstance, j, z, i2, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0077 -> B:11:0x0041). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingText$83(java.lang.String r21, int r22, org.telegram.messenger.AccountInstance r23, long r24, boolean r26, int r27, java.lang.String r28) {
        /*
            r0 = r22
            java.lang.String r1 = getTrimmedString(r21)
            int r2 = r1.length()
            if (r2 == 0) goto L7a
            int r2 = r1.length()
            float r2 = (float) r2
            r3 = 1166016512(0x45800000, float:4096.0)
            float r2 = r2 / r3
            double r2 = (double) r2
            double r2 = java.lang.Math.ceil(r2)
            int r2 = (int) r2
            r3 = 0
            r4 = 0
            if (r0 == 0) goto L77
            org.telegram.messenger.MessagesController r5 = r23.getMessagesController()
            org.telegram.messenger.TopicsController r5 = r5.getTopicsController()
            r14 = r24
            long r6 = -r14
            org.telegram.tgnet.TLRPC$TL_forumTopic r0 = r5.findTopic(r6, r0)
            if (r0 == 0) goto L41
            org.telegram.tgnet.TLRPC$Message r5 = r0.topicStartMessage
            if (r5 == 0) goto L41
            org.telegram.messenger.MessageObject r3 = new org.telegram.messenger.MessageObject
            int r5 = r23.getCurrentAccount()
            org.telegram.tgnet.TLRPC$Message r0 = r0.topicStartMessage
            r3.<init>(r5, r0, r4, r4)
            r0 = 1
            r3.isTopicMainMessage = r0
        L41:
            if (r4 >= r2) goto L7a
            int r0 = r4 * 4096
            int r4 = r4 + 1
            int r5 = r4 * 4096
            int r6 = r1.length()
            int r5 = java.lang.Math.min(r5, r6)
            java.lang.String r6 = r1.substring(r0, r5)
            org.telegram.messenger.SendMessagesHelper r0 = r23.getSendMessagesHelper()
            r11 = 0
            r12 = 1
            r13 = 0
            r5 = 0
            r16 = 0
            r18 = 0
            r19 = 0
            r7 = r24
            r9 = r3
            r10 = r3
            r14 = r5
            r15 = r16
            r16 = r26
            r17 = r27
            r20 = r28
            org.telegram.messenger.SendMessagesHelper$SendMessageParams r5 = org.telegram.messenger.SendMessagesHelper.SendMessageParams.m91of(r6, r7, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            r0.sendMessage(r5)
        L77:
            r14 = r24
            goto L41
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingText$83(java.lang.String, int, org.telegram.messenger.AccountInstance, long, boolean, int, java.lang.String):void");
    }

    public static void ensureMediaThumbExists(AccountInstance accountInstance, boolean z, TLObject tLObject, String str, Uri uri, long j) {
        TLRPC$PhotoSize scaleAndSaveImage;
        TLRPC$PhotoSize scaleAndSaveImage2;
        if (tLObject instanceof TLRPC$TL_photo) {
            TLRPC$TL_photo tLRPC$TL_photo = (TLRPC$TL_photo) tLObject;
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$TL_photo.sizes, 90);
            boolean exists = ((closestPhotoSizeWithSize instanceof TLRPC$TL_photoStrippedSize) || (closestPhotoSizeWithSize instanceof TLRPC$TL_photoPathSize)) ? true : FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize, true).exists();
            TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$TL_photo.sizes, AndroidUtilities.getPhotoSize());
            boolean exists2 = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize2, false).exists();
            if (exists && exists2) {
                return;
            }
            Bitmap loadBitmap = ImageLoader.loadBitmap(str, uri, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), true);
            if (loadBitmap == null) {
                loadBitmap = ImageLoader.loadBitmap(str, uri, 800.0f, 800.0f, true);
            }
            Bitmap bitmap = loadBitmap;
            if (!exists2 && (scaleAndSaveImage2 = ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize2, bitmap, Bitmap.CompressFormat.JPEG, true, AndroidUtilities.getPhotoSize(), AndroidUtilities.getPhotoSize(), 80, false, 101, 101, false)) != closestPhotoSizeWithSize2) {
                tLRPC$TL_photo.sizes.add(0, scaleAndSaveImage2);
            }
            if (!exists && (scaleAndSaveImage = ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize, bitmap, 90.0f, 90.0f, 55, true, false)) != closestPhotoSizeWithSize) {
                tLRPC$TL_photo.sizes.add(0, scaleAndSaveImage);
            }
            if (bitmap != null) {
                bitmap.recycle();
            }
        } else if (tLObject instanceof TLRPC$TL_document) {
            TLRPC$TL_document tLRPC$TL_document = (TLRPC$TL_document) tLObject;
            if ((MessageObject.isVideoDocument(tLRPC$TL_document) || MessageObject.isNewGifDocument(tLRPC$TL_document)) && MessageObject.isDocumentHasThumb(tLRPC$TL_document)) {
                TLRPC$PhotoSize closestPhotoSizeWithSize3 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$TL_document.thumbs, 320);
                if ((closestPhotoSizeWithSize3 instanceof TLRPC$TL_photoStrippedSize) || (closestPhotoSizeWithSize3 instanceof TLRPC$TL_photoPathSize) || FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(closestPhotoSizeWithSize3, true).exists()) {
                    return;
                }
                Bitmap createVideoThumbnailAtTime = createVideoThumbnailAtTime(str, j);
                Bitmap createVideoThumbnail = createVideoThumbnailAtTime == null ? createVideoThumbnail(str, 1) : createVideoThumbnailAtTime;
                int i = z ? 90 : 320;
                float f = i;
                tLRPC$TL_document.thumbs.set(0, ImageLoader.scaleAndSaveImage(closestPhotoSizeWithSize3, createVideoThumbnail, f, f, i > 90 ? 80 : 55, false, true));
            }
        }
    }

    public static String getKeyForPhotoSize(AccountInstance accountInstance, TLRPC$PhotoSize tLRPC$PhotoSize, Bitmap[] bitmapArr, boolean z, boolean z2) {
        if (tLRPC$PhotoSize == null || tLRPC$PhotoSize.location == null) {
            return null;
        }
        Point messageSize = ChatMessageCell.getMessageSize(tLRPC$PhotoSize.f1634w, tLRPC$PhotoSize.f1633h);
        if (bitmapArr != null) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tLRPC$PhotoSize, z2);
                FileInputStream fileInputStream = new FileInputStream(pathToAttach);
                BitmapFactory.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
                float max = Math.max(options.outWidth / messageSize.f1892x, options.outHeight / messageSize.f1893y);
                if (max < 1.0f) {
                    max = 1.0f;
                }
                options.inJustDecodeBounds = false;
                options.inSampleSize = (int) max;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                if (Build.VERSION.SDK_INT >= 21) {
                    FileInputStream fileInputStream2 = new FileInputStream(pathToAttach);
                    bitmapArr[0] = BitmapFactory.decodeStream(fileInputStream2, null, options);
                    fileInputStream2.close();
                }
            } catch (Throwable unused) {
            }
        }
        return String.format(Locale.US, z ? "%d_%d@%d_%d_b" : "%d_%d@%d_%d", Long.valueOf(tLRPC$PhotoSize.location.volume_id), Integer.valueOf(tLRPC$PhotoSize.location.local_id), Integer.valueOf((int) (messageSize.f1892x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.f1893y / AndroidUtilities.density)));
    }

    public static boolean shouldSendWebPAsSticker(String str, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str != null) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
                MappedByteBuffer map = randomAccessFile.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, str.length());
                Utilities.loadWebpImage(null, map, map.limit(), options, true);
                randomAccessFile.close();
            } catch (Exception e) {
                FileLog.m99e(e);
            }
        } else {
            try {
                InputStream openInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                BitmapFactory.decodeStream(openInputStream, null, options);
                if (openInputStream != null) {
                    openInputStream.close();
                }
            } catch (Exception unused) {
            }
        }
        return options.outWidth < 800 && options.outHeight < 800;
    }

    public static void prepareSendingMedia(final AccountInstance accountInstance, final ArrayList<SendingMediaInfo> arrayList, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final boolean z, boolean z2, final MessageObject messageObject3, final boolean z3, final int i, final boolean z4, final InputContentInfoCompat inputContentInfoCompat, final String str) {
        final boolean z5;
        if (arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z5 = z2;
                break;
            } else if (arrayList.get(i2).ttl > 0) {
                z5 = false;
                break;
            } else {
                i2++;
            }
        }
        mediaSendQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingMedia$91(arrayList, j, z, z5, accountInstance, messageObject3, messageObject, messageObject2, z3, i, str, tL_stories$StoryItem, replyQuote, inputContentInfoCompat, z4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0633, code lost:
        if (r5 != null) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
        if (r4 != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x08c5, code lost:
        if (r67.size() == 1) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x090f, code lost:
        if (r2 == (r15 - 1)) goto L318;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02f2 A[Catch: Exception -> 0x02e3, TryCatch #13 {Exception -> 0x02e3, blocks: (B:134:0x02db, B:141:0x02e8, B:143:0x02f2, B:144:0x02fd), top: B:658:0x02db }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02fd A[Catch: Exception -> 0x02e3, TRY_LEAVE, TryCatch #13 {Exception -> 0x02e3, blocks: (B:134:0x02db, B:141:0x02e8, B:143:0x02f2, B:144:0x02fd), top: B:658:0x02db }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0721  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x07bc  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x08f1  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x091a  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0b79  */
    /* JADX WARN: Removed duplicated region for block: B:544:0x0c86  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0c9c  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0caf  */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0cf8  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0cfd  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x0d7a A[LOOP:4: B:585:0x0d72->B:587:0x0d7a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:640:0x030a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:642:0x0630 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:674:0x0cac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x017d  */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingMedia$91(java.util.ArrayList r67, final long r68, boolean r70, boolean r71, final org.telegram.messenger.AccountInstance r72, final org.telegram.messenger.MessageObject r73, final org.telegram.messenger.MessageObject r74, final org.telegram.messenger.MessageObject r75, final boolean r76, final int r77, final java.lang.String r78, final org.telegram.tgnet.p042tl.TL_stories$StoryItem r79, final org.telegram.p043ui.ChatActivity.ReplyQuote r80, androidx.core.view.inputmethod.InputContentInfoCompat r81, final boolean r82) {
        /*
            Method dump skipped, instructions count: 3921
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingMedia$91(java.util.ArrayList, long, boolean, boolean, org.telegram.messenger.AccountInstance, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, boolean, int, java.lang.String, org.telegram.tgnet.tl.TL_stories$StoryItem, org.telegram.ui.ChatActivity$ReplyQuote, androidx.core.view.inputmethod.InputContentInfoCompat, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$86(MediaSendPrepareWorker mediaSendPrepareWorker, AccountInstance accountInstance, SendingMediaInfo sendingMediaInfo, boolean z) {
        mediaSendPrepareWorker.photo = accountInstance.getSendMessagesHelper().generatePhotoSizes(sendingMediaInfo.path, sendingMediaInfo.uri);
        if (z && sendingMediaInfo.canDeleteAfter) {
            new File(sendingMediaInfo.path).delete();
        }
        mediaSendPrepareWorker.sync.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$87(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_document tLRPC$TL_document, String str, HashMap hashMap, SendingMediaInfo sendingMediaInfo, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, String str3, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tLRPC$TL_document, str, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str2);
            return;
        }
        SendMessageParams m85of = SendMessageParams.m85of(tLRPC$TL_document, null, str, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z, i, 0, str2, null, false, sendingMediaInfo.hasMediaSpoilers, str3);
        m85of.replyToStoryItem = tL_stories$StoryItem;
        m85of.replyQuote = replyQuote;
        accountInstance.getSendMessagesHelper().sendMessage(m85of);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$88(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_photo tLRPC$TL_photo, boolean z, SendingMediaInfo sendingMediaInfo, HashMap hashMap, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z2, int i, String str2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tLRPC$TL_photo, null, null, z ? sendingMediaInfo.searchImage.imageUrl : null, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str);
            return;
        }
        SendMessageParams m80of = SendMessageParams.m80of(tLRPC$TL_photo, z ? sendingMediaInfo.searchImage.imageUrl : null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z2, i, sendingMediaInfo.ttl, str, false, sendingMediaInfo.hasMediaSpoilers, str2);
        m80of.replyToStoryItem = tL_stories$StoryItem;
        m80of.replyQuote = replyQuote;
        accountInstance.getSendMessagesHelper().sendMessage(m80of);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$89(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC$TL_document tLRPC$TL_document, String str2, HashMap hashMap, SendingMediaInfo sendingMediaInfo, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, String str4, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tLRPC$TL_document, str2, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str3);
            return;
        }
        SendMessageParams m85of = SendMessageParams.m85of(tLRPC$TL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z, i, sendingMediaInfo.ttl, str3, null, false, sendingMediaInfo.hasMediaSpoilers, str4);
        m85of.replyToStoryItem = tL_stories$StoryItem;
        m85of.replyQuote = replyQuote;
        accountInstance.getSendMessagesHelper().sendMessage(m85of);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$90(Bitmap[] bitmapArr, String[] strArr, MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_photo tLRPC$TL_photo, HashMap hashMap, SendingMediaInfo sendingMediaInfo, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, boolean z2, String str2, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tLRPC$TL_photo, null, null, null, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str);
            return;
        }
        SendMessageParams m80of = SendMessageParams.m80of(tLRPC$TL_photo, null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z, i, sendingMediaInfo.ttl, str, z2, sendingMediaInfo.hasMediaSpoilers, str2);
        m80of.replyToStoryItem = tL_stories$StoryItem;
        m80of.replyQuote = replyQuote;
        accountInstance.getSendMessagesHelper().sendMessage(m80of);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
        if (r2 == 270) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.Throwable, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r2v23, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void fillVideoAttribute(java.lang.String r6, org.telegram.tgnet.TLRPC$TL_documentAttributeVideo r7, org.telegram.messenger.VideoEditedInfo r8) {
        /*
            r0 = 4652007308841189376(0x408f400000000000, double:1000.0)
            r2 = 0
            android.media.MediaMetadataRetriever r3 = new android.media.MediaMetadataRetriever     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r3.<init>()     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L77
            r3.setDataSource(r6)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r2 = 18
            java.lang.String r2 = r3.extractMetadata(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            if (r2 == 0) goto L1c
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r7.f1613w = r2     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
        L1c:
            r2 = 19
            java.lang.String r2 = r3.extractMetadata(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            if (r2 == 0) goto L2a
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r7.f1612h = r2     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
        L2a:
            r2 = 9
            java.lang.String r2 = r3.extractMetadata(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            if (r2 == 0) goto L3a
            long r4 = java.lang.Long.parseLong(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            double r4 = (double) r4     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            double r4 = r4 / r0
            r7.duration = r4     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
        L3a:
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r4 = 17
            if (r2 < r4) goto L65
            r2 = 24
            java.lang.String r2 = r3.extractMetadata(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            if (r2 == 0) goto L65
            java.lang.Integer r2 = org.telegram.messenger.Utilities.parseInt(r2)     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            if (r8 == 0) goto L55
            r8.rotationValue = r2     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            goto L65
        L55:
            r8 = 90
            if (r2 == r8) goto L5d
            r8 = 270(0x10e, float:3.78E-43)
            if (r2 != r8) goto L65
        L5d:
            int r8 = r7.f1613w     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            int r2 = r7.f1612h     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r7.f1613w = r2     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
            r7.f1612h = r8     // Catch: java.lang.Throwable -> L6f java.lang.Exception -> L72
        L65:
            r8 = 1
            r3.release()     // Catch: java.lang.Exception -> L6a
            goto L86
        L6a:
            r2 = move-exception
            org.telegram.messenger.FileLog.m99e(r2)
            goto L86
        L6f:
            r6 = move-exception
            r2 = r3
            goto Lb6
        L72:
            r8 = move-exception
            r2 = r3
            goto L78
        L75:
            r6 = move-exception
            goto Lb6
        L77:
            r8 = move-exception
        L78:
            org.telegram.messenger.FileLog.m99e(r8)     // Catch: java.lang.Throwable -> L75
            if (r2 == 0) goto L85
            r2.release()     // Catch: java.lang.Exception -> L81
            goto L85
        L81:
            r8 = move-exception
            org.telegram.messenger.FileLog.m99e(r8)
        L85:
            r8 = 0
        L86:
            if (r8 != 0) goto Lb5
            android.content.Context r8 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Exception -> Lb1
            java.io.File r2 = new java.io.File     // Catch: java.lang.Exception -> Lb1
            r2.<init>(r6)     // Catch: java.lang.Exception -> Lb1
            android.net.Uri r6 = android.net.Uri.fromFile(r2)     // Catch: java.lang.Exception -> Lb1
            android.media.MediaPlayer r6 = android.media.MediaPlayer.create(r8, r6)     // Catch: java.lang.Exception -> Lb1
            if (r6 == 0) goto Lb5
            int r8 = r6.getDuration()     // Catch: java.lang.Exception -> Lb1
            double r2 = (double) r8     // Catch: java.lang.Exception -> Lb1
            double r2 = r2 / r0
            r7.duration = r2     // Catch: java.lang.Exception -> Lb1
            int r8 = r6.getVideoWidth()     // Catch: java.lang.Exception -> Lb1
            r7.f1613w = r8     // Catch: java.lang.Exception -> Lb1
            int r8 = r6.getVideoHeight()     // Catch: java.lang.Exception -> Lb1
            r7.f1612h = r8     // Catch: java.lang.Exception -> Lb1
            r6.release()     // Catch: java.lang.Exception -> Lb1
            goto Lb5
        Lb1:
            r6 = move-exception
            org.telegram.messenger.FileLog.m99e(r6)
        Lb5:
            return
        Lb6:
            if (r2 == 0) goto Lc0
            r2.release()     // Catch: java.lang.Exception -> Lbc
            goto Lc0
        Lbc:
            r7 = move-exception
            org.telegram.messenger.FileLog.m99e(r7)
        Lc0:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.fillVideoAttribute(java.lang.String, org.telegram.tgnet.TLRPC$TL_documentAttributeVideo, org.telegram.messenger.VideoEditedInfo):void");
    }

    public static Bitmap createVideoThumbnail(String str, int i) {
        float f = i == 2 ? 1920.0f : i == 3 ? 96.0f : 512.0f;
        Bitmap createVideoThumbnailAtTime = createVideoThumbnailAtTime(str, 0L);
        if (createVideoThumbnailAtTime != null) {
            int width = createVideoThumbnailAtTime.getWidth();
            int height = createVideoThumbnailAtTime.getHeight();
            float f2 = width;
            if (f2 > f || height > f) {
                float max = Math.max(width, height) / f;
                return Bitmap.createScaledBitmap(createVideoThumbnailAtTime, (int) (f2 / max), (int) (height / max), true);
            }
            return createVideoThumbnailAtTime;
        }
        return createVideoThumbnailAtTime;
    }

    public static Bitmap createVideoThumbnailAtTime(String str, long j) {
        return createVideoThumbnailAtTime(str, j, null, false);
    }

    public static Bitmap createVideoThumbnailAtTime(String str, long j, int[] iArr, boolean z) {
        Bitmap bitmap;
        if (z) {
            AnimatedFileDrawable animatedFileDrawable = new AnimatedFileDrawable(new File(str), true, 0L, 0, null, null, null, 0L, 0, true, null);
            bitmap = animatedFileDrawable.getFrameAtTime(j, z);
            if (iArr != null) {
                iArr[0] = animatedFileDrawable.getOrientation();
            }
            animatedFileDrawable.recycle();
            if (bitmap == null) {
                return createVideoThumbnailAtTime(str, j, iArr, false);
            }
        } else {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            bitmap = null;
            try {
                try {
                    mediaMetadataRetriever.setDataSource(str);
                    Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(j, 1);
                    if (frameAtTime == null) {
                        try {
                            frameAtTime = mediaMetadataRetriever.getFrameAtTime(j, 3);
                        } catch (Exception unused) {
                        }
                    }
                    bitmap = frameAtTime;
                } finally {
                    try {
                        mediaMetadataRetriever.release();
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Exception unused3) {
            }
        }
        return bitmap;
    }

    private static VideoEditedInfo createCompressionSettings(String str) {
        MediaCodecInfo selectCodec;
        int[] iArr = new int[11];
        AnimatedFileDrawable.getVideoInfo(str, iArr);
        if (iArr[0] == 0) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m102d("video hasn't avc1 atom");
            }
            return null;
        }
        long length = new File(str).length();
        int videoBitrate = MediaController.getVideoBitrate(str);
        if (videoBitrate == -1) {
            videoBitrate = iArr[3];
        }
        float f = iArr[4];
        int i = iArr[6];
        long j = iArr[5];
        int i2 = iArr[7];
        if (Build.VERSION.SDK_INT < 18) {
            try {
                selectCodec = MediaController.selectCodec("video/avc");
            } catch (Exception unused) {
            }
            if (selectCodec == null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m102d("no codec info for video/avc");
                }
                return null;
            }
            String name = selectCodec.getName();
            if (!name.equals("OMX.google.h264.encoder") && !name.equals("OMX.ST.VFM.H264Enc") && !name.equals("OMX.Exynos.avc.enc") && !name.equals("OMX.MARVELL.VIDEO.HW.CODA7542ENCODER") && !name.equals("OMX.MARVELL.VIDEO.H264ENCODER") && !name.equals("OMX.k3.video.encoder.avc") && !name.equals("OMX.TI.DUCATI1.VIDEO.H264E")) {
                if (MediaController.selectColorFormat(selectCodec, "video/avc") == 0) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m102d("no color format for video/avc");
                    }
                    return null;
                }
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m102d("unsupported encoder = " + name);
            }
            return null;
        }
        VideoEditedInfo videoEditedInfo = new VideoEditedInfo();
        videoEditedInfo.startTime = -1L;
        videoEditedInfo.endTime = -1L;
        videoEditedInfo.bitrate = videoBitrate;
        videoEditedInfo.originalPath = str;
        videoEditedInfo.framerate = i2;
        videoEditedInfo.estimatedDuration = (long) Math.ceil(f);
        boolean z = true;
        int i3 = iArr[1];
        videoEditedInfo.originalWidth = i3;
        videoEditedInfo.resultWidth = i3;
        int i4 = iArr[2];
        videoEditedInfo.originalHeight = i4;
        videoEditedInfo.resultHeight = i4;
        videoEditedInfo.rotationValue = iArr[8];
        videoEditedInfo.originalDuration = f * 1000.0f;
        float max = Math.max(i3, i4);
        int i5 = max > 1280.0f ? 4 : max > 854.0f ? 3 : max > 640.0f ? 2 : 1;
        int round = Math.round(DownloadController.getInstance(UserConfig.selectedAccount).getMaxVideoBitrate() / (100.0f / i5));
        if (round > i5) {
            round = i5;
        }
        if (new File(str).length() < 1048576000) {
            if (round != i5 || Math.max(videoEditedInfo.originalWidth, videoEditedInfo.originalHeight) > 1280) {
                float f2 = round != 1 ? round != 2 ? round != 3 ? 1280.0f : 848.0f : 640.0f : 432.0f;
                int i6 = videoEditedInfo.originalWidth;
                int i7 = videoEditedInfo.originalHeight;
                float f3 = f2 / (i6 > i7 ? i6 : i7);
                videoEditedInfo.resultWidth = Math.round((i6 * f3) / 2.0f) * 2;
                videoEditedInfo.resultHeight = Math.round((videoEditedInfo.originalHeight * f3) / 2.0f) * 2;
            } else {
                z = false;
            }
            videoBitrate = MediaController.makeVideoBitrate(videoEditedInfo.originalHeight, videoEditedInfo.originalWidth, videoBitrate, videoEditedInfo.resultHeight, videoEditedInfo.resultWidth);
        } else {
            z = false;
        }
        if (!z) {
            videoEditedInfo.resultWidth = videoEditedInfo.originalWidth;
            videoEditedInfo.resultHeight = videoEditedInfo.originalHeight;
            videoEditedInfo.bitrate = videoBitrate;
            videoEditedInfo.estimatedSize = length;
        } else {
            videoEditedInfo.bitrate = videoBitrate;
            videoEditedInfo.estimatedSize = ((float) j) + (((f / 1000.0f) * MediaController.extractRealEncoderBitrate(videoEditedInfo.resultWidth, videoEditedInfo.resultHeight, videoBitrate, false)) / 8.0f);
        }
        if (videoEditedInfo.estimatedSize == 0) {
            videoEditedInfo.estimatedSize = 1L;
        }
        return videoEditedInfo;
    }

    public static void prepareSendingVideo(final AccountInstance accountInstance, final String str, final VideoEditedInfo videoEditedInfo, final long j, final MessageObject messageObject, final MessageObject messageObject2, final TL_stories$StoryItem tL_stories$StoryItem, final ChatActivity.ReplyQuote replyQuote, final ArrayList<TLRPC$MessageEntity> arrayList, final int i, final MessageObject messageObject3, final boolean z, final int i2, final boolean z2, final boolean z3, final CharSequence charSequence, final String str2) {
        if (str == null || str.length() == 0) {
            return;
        }
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingVideo$93(VideoEditedInfo.this, str, j, i, accountInstance, charSequence, messageObject3, z3, messageObject, messageObject2, arrayList, z, i2, str2, tL_stories$StoryItem, replyQuote, z2);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x026d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingVideo$93(org.telegram.messenger.VideoEditedInfo r25, java.lang.String r26, final long r27, final int r29, final org.telegram.messenger.AccountInstance r30, java.lang.CharSequence r31, final org.telegram.messenger.MessageObject r32, final boolean r33, final org.telegram.messenger.MessageObject r34, final org.telegram.messenger.MessageObject r35, final java.util.ArrayList r36, final boolean r37, final int r38, final java.lang.String r39, final org.telegram.tgnet.p042tl.TL_stories$StoryItem r40, final org.telegram.p043ui.ChatActivity.ReplyQuote r41, boolean r42) {
        /*
            Method dump skipped, instructions count: 894
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingVideo$93(org.telegram.messenger.VideoEditedInfo, java.lang.String, long, int, org.telegram.messenger.AccountInstance, java.lang.CharSequence, org.telegram.messenger.MessageObject, boolean, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, java.util.ArrayList, boolean, int, java.lang.String, org.telegram.tgnet.tl.TL_stories$StoryItem, org.telegram.ui.ChatActivity$ReplyQuote, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingVideo$92(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC$TL_document tLRPC$TL_document, String str2, HashMap hashMap, boolean z, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, String str4, ArrayList arrayList, boolean z2, int i, int i2, String str5, TL_stories$StoryItem tL_stories$StoryItem, ChatActivity.ReplyQuote replyQuote) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tLRPC$TL_document, str2, hashMap, false, z, str3);
            return;
        }
        SendMessageParams m85of = SendMessageParams.m85of(tLRPC$TL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, str4, arrayList, null, hashMap, z2, i, i2, str3, null, false, z, str5);
        m85of.replyToStoryItem = tL_stories$StoryItem;
        m85of.replyQuote = replyQuote;
        accountInstance.getSendMessagesHelper().sendMessage(m85of);
    }

    /* loaded from: classes4.dex */
    public static class SendMessageParams {
        public String caption;
        public TLRPC$TL_document document;
        public ArrayList<TLRPC$MessageEntity> entities;
        public TLRPC$TL_game game;
        public boolean hasMediaSpoilers;
        public boolean invert_media;
        public TLRPC$TL_messageMediaInvoice invoice;
        public TLRPC$MessageMedia location;
        public TLRPC$TL_messageMediaWebPage mediaWebPage;
        public String message;
        public boolean notify;
        public HashMap<String, String> params;
        public Object parentObject;
        public String path;
        public long peer;
        public TLRPC$TL_photo photo;
        public TLRPC$TL_messageMediaPoll poll;
        public TLRPC$ReplyMarkup replyMarkup;
        public ChatActivity.ReplyQuote replyQuote;
        public MessageObject replyToMsg;
        public TL_stories$StoryItem replyToStoryItem;
        public MessageObject replyToTopMsg;
        public MessageObject retryMessageObject;
        public int scheduleDate;
        public boolean searchLinks = true;
        public MessageObject.SendAnimationData sendAnimationData;
        public TL_stories$StoryItem sendingStory;
        public String templateName;
        public int ttl;
        public boolean updateStickersOrder;
        public TLRPC$User user;
        public VideoEditedInfo videoEditedInfo;
        public TLRPC$WebPage webPage;

        /* renamed from: of */
        public static SendMessageParams m92of(String str, long j, String str2) {
            return m90of(str, null, null, null, null, null, null, null, null, null, j, null, null, null, null, true, null, null, null, null, false, 0, 0, null, null, false, str2);
        }

        /* renamed from: of */
        public static SendMessageParams m88of(MessageObject messageObject, String str) {
            long dialogId = messageObject.getDialogId();
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            return m90of(null, null, null, null, null, null, null, null, null, null, dialogId, tLRPC$Message.attachPath, null, null, null, true, messageObject, null, tLRPC$Message.reply_markup, tLRPC$Message.params, !tLRPC$Message.silent, messageObject.scheduled ? tLRPC$Message.date : 0, 0, null, null, false, str);
        }

        /* renamed from: of */
        public static SendMessageParams m79of(TLRPC$User tLRPC$User, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
            return m90of(null, null, null, null, null, tLRPC$User, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
        }

        /* renamed from: of */
        public static SendMessageParams m83of(TLRPC$TL_messageMediaInvoice tLRPC$TL_messageMediaInvoice, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
            return m90of(null, null, null, null, null, null, null, null, null, tLRPC$TL_messageMediaInvoice, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
        }

        /* renamed from: of */
        public static SendMessageParams m86of(TLRPC$TL_document tLRPC$TL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2, String str3) {
            return m90of(null, str2, null, null, videoEditedInfo, null, tLRPC$TL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, sendAnimationData, z2, str3);
        }

        /* renamed from: of */
        public static SendMessageParams m85of(TLRPC$TL_document tLRPC$TL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2, boolean z3, String str3) {
            return m89of(null, str2, null, null, videoEditedInfo, null, tLRPC$TL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, sendAnimationData, z2, z3, str3);
        }

        /* renamed from: of */
        public static SendMessageParams m91of(String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$WebPage tLRPC$WebPage, boolean z, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z2, int i, MessageObject.SendAnimationData sendAnimationData, boolean z3, String str2) {
            return m90of(str, null, null, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, tLRPC$WebPage, z, null, arrayList, tLRPC$ReplyMarkup, hashMap, z2, i, 0, null, sendAnimationData, z3, str2);
        }

        /* renamed from: of */
        public static SendMessageParams m87of(TLRPC$MessageMedia tLRPC$MessageMedia, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
            return m90of(null, null, tLRPC$MessageMedia, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
        }

        /* renamed from: of */
        public static SendMessageParams m82of(TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
            return m90of(null, null, null, null, null, null, null, null, tLRPC$TL_messageMediaPoll, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
        }

        /* renamed from: of */
        public static SendMessageParams m84of(TLRPC$TL_game tLRPC$TL_game, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
            return m90of(null, null, null, null, null, null, null, tLRPC$TL_game, null, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
        }

        /* renamed from: of */
        public static SendMessageParams m80of(TLRPC$TL_photo tLRPC$TL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, boolean z2, boolean z3, String str3) {
            return m89of(null, str2, null, tLRPC$TL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, null, z2, z3, str3);
        }

        /* renamed from: of */
        public static SendMessageParams m81of(TLRPC$TL_photo tLRPC$TL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, boolean z2, String str3) {
            return m90of(null, str2, null, tLRPC$TL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, null, z2, str3);
        }

        /* renamed from: of */
        private static SendMessageParams m90of(String str, String str2, TLRPC$MessageMedia tLRPC$MessageMedia, TLRPC$TL_photo tLRPC$TL_photo, VideoEditedInfo videoEditedInfo, TLRPC$User tLRPC$User, TLRPC$TL_document tLRPC$TL_document, TLRPC$TL_game tLRPC$TL_game, TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll, TLRPC$TL_messageMediaInvoice tLRPC$TL_messageMediaInvoice, long j, String str3, MessageObject messageObject, MessageObject messageObject2, TLRPC$WebPage tLRPC$WebPage, boolean z, MessageObject messageObject3, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z2, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z3, String str4) {
            return m89of(str, str2, tLRPC$MessageMedia, tLRPC$TL_photo, videoEditedInfo, tLRPC$User, tLRPC$TL_document, tLRPC$TL_game, tLRPC$TL_messageMediaPoll, tLRPC$TL_messageMediaInvoice, j, str3, messageObject, messageObject2, tLRPC$WebPage, z, messageObject3, arrayList, tLRPC$ReplyMarkup, hashMap, z2, i, i2, obj, sendAnimationData, z3, false, str4);
        }

        /* renamed from: of */
        public static SendMessageParams m89of(String str, String str2, TLRPC$MessageMedia tLRPC$MessageMedia, TLRPC$TL_photo tLRPC$TL_photo, VideoEditedInfo videoEditedInfo, TLRPC$User tLRPC$User, TLRPC$TL_document tLRPC$TL_document, TLRPC$TL_game tLRPC$TL_game, TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll, TLRPC$TL_messageMediaInvoice tLRPC$TL_messageMediaInvoice, long j, String str3, MessageObject messageObject, MessageObject messageObject2, TLRPC$WebPage tLRPC$WebPage, boolean z, MessageObject messageObject3, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z2, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z3, boolean z4, String str4) {
            SendMessageParams sendMessageParams = new SendMessageParams();
            sendMessageParams.message = str;
            sendMessageParams.caption = str2;
            sendMessageParams.location = tLRPC$MessageMedia;
            sendMessageParams.photo = tLRPC$TL_photo;
            sendMessageParams.videoEditedInfo = videoEditedInfo;
            sendMessageParams.user = tLRPC$User;
            sendMessageParams.document = tLRPC$TL_document;
            sendMessageParams.game = tLRPC$TL_game;
            sendMessageParams.poll = tLRPC$TL_messageMediaPoll;
            sendMessageParams.invoice = tLRPC$TL_messageMediaInvoice;
            sendMessageParams.peer = j;
            sendMessageParams.path = str3;
            sendMessageParams.replyToMsg = messageObject;
            sendMessageParams.replyToTopMsg = messageObject2;
            sendMessageParams.webPage = tLRPC$WebPage;
            sendMessageParams.searchLinks = z;
            sendMessageParams.retryMessageObject = messageObject3;
            sendMessageParams.entities = arrayList;
            sendMessageParams.replyMarkup = tLRPC$ReplyMarkup;
            sendMessageParams.params = hashMap;
            sendMessageParams.notify = z2;
            sendMessageParams.scheduleDate = i;
            sendMessageParams.ttl = i2;
            sendMessageParams.parentObject = obj;
            sendMessageParams.sendAnimationData = sendAnimationData;
            sendMessageParams.updateStickersOrder = z3;
            sendMessageParams.hasMediaSpoilers = z4;
            sendMessageParams.templateName = str4;
            return sendMessageParams;
        }
    }
}
