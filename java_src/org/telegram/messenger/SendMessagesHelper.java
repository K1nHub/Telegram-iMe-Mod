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
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.ChatMessageCell;
import org.telegram.p048ui.ChatActivity;
import org.telegram.p048ui.Components.AlertsCreator;
import org.telegram.p048ui.Components.AnimatedEmojiSpan;
import org.telegram.p048ui.Components.AnimatedFileDrawable;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Point;
import org.telegram.p048ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p048ui.Components.Reactions.ReactionsUtils;
import org.telegram.p048ui.PaymentFormActivity;
import org.telegram.p048ui.TwoStepVerificationActivity;
import org.telegram.p048ui.TwoStepVerificationSetupActivity;
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
import org.telegram.tgnet.TLRPC$InputStickerSet;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$MessageReplies;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$ReplyMarkup;
import org.telegram.tgnet.TLRPC$TL_account_getPassword;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaAuto;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaContact;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaGeo;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_botInlineMessageMediaVenue;
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
/* loaded from: classes4.dex */
public class SendMessagesHelper extends BaseController implements NotificationCenter.NotificationCenterDelegate {
    private static final int ERROR_TYPE_FILE_TOO_LARGE = 2;
    private static final int ERROR_TYPE_UNSUPPORTED = 1;
    private static volatile SendMessagesHelper[] Instance;
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

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i, MessageObject messageObject, ForwardingMessagesParams forwardingMessagesParams, boolean z4) {
        return sendMessage(arrayList, j, z, z2, z3, i, messageObject, forwardingMessagesParams, z4, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x013b, code lost:
        if (org.telegram.messenger.DialogObject.isEncryptedDialog(r42) == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x019b, code lost:
        if (org.telegram.messenger.DialogObject.isEncryptedDialog(r42) != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x019d, code lost:
        r19 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void forwardWithoutAuthor(org.telegram.messenger.MessageObject r37, org.telegram.messenger.MessageObject r38, org.telegram.messenger.MessageObject r39, java.lang.Long r40, boolean r41, long r42, boolean r44, int r45, boolean r46, boolean r47, boolean r48) {
        /*
            Method dump skipped, instructions count: 442
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
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_initHistoryImport, new C31661(tLRPC$TL_messages_initHistoryImport), 2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1 */
        /* loaded from: classes4.dex */
        public class C31661 implements RequestDelegate {
            final /* synthetic */ TLRPC$TL_messages_initHistoryImport val$req;

            C31661(TLRPC$TL_messages_initHistoryImport tLRPC$TL_messages_initHistoryImport) {
                this.val$req = tLRPC$TL_messages_initHistoryImport;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
                final TLRPC$TL_messages_initHistoryImport tLRPC$TL_messages_initHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingHistory.C31661.this.lambda$run$0(tLObject, tLRPC$TL_messages_initHistoryImport, tLRPC$TL_error);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLObject tLObject, TLRPC$TL_messages_initHistoryImport tLRPC$TL_messages_initHistoryImport, TLRPC$TL_error tLRPC$TL_error) {
                if (!(tLObject instanceof TLRPC$TL_messages_historyImport)) {
                    SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                    SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tLRPC$TL_messages_initHistoryImport, tLRPC$TL_error);
                    return;
                }
                ImportingHistory importingHistory = ImportingHistory.this;
                importingHistory.importId = ((TLRPC$TL_messages_historyImport) tLObject).f1590id;
                importingHistory.uploadSet.remove(importingHistory.historyPath);
                SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
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
                SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId), new TLRPC$TL_messages_initHistoryImport(), tLRPC$TL_error);
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
                SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
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
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_uploadImportedMedia, new C31672(str), 2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2 */
        /* loaded from: classes4.dex */
        public class C31672 implements RequestDelegate {
            final /* synthetic */ String val$path;

            C31672(String str) {
                this.val$path = str;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                final String str = this.val$path;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingHistory.C31672.this.lambda$run$0(str);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(String str) {
                ImportingHistory.this.uploadSet.remove(str);
                SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
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
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_messages_startHistoryImport, new C31683(tLRPC$TL_messages_startHistoryImport));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3 */
        /* loaded from: classes4.dex */
        public class C31683 implements RequestDelegate {
            final /* synthetic */ TLRPC$TL_messages_startHistoryImport val$req;

            C31683(TLRPC$TL_messages_startHistoryImport tLRPC$TL_messages_startHistoryImport) {
                this.val$req = tLRPC$TL_messages_startHistoryImport;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
                final TLRPC$TL_messages_startHistoryImport tLRPC$TL_messages_startHistoryImport = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingHistory$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingHistory.C31683.this.lambda$run$0(tLRPC$TL_error, tLRPC$TL_messages_startHistoryImport);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_messages_startHistoryImport tLRPC$TL_messages_startHistoryImport) {
                SendMessagesHelper.this.importingHistoryMap.remove(ImportingHistory.this.dialogId);
                if (tLRPC$TL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId));
                } else {
                    SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(ImportingHistory.this.dialogId), tLRPC$TL_messages_startHistoryImport, tLRPC$TL_error);
                }
            }
        }

        public void setImportProgress(int i) {
            if (i == 100) {
                SendMessagesHelper.this.importingHistoryMap.remove(this.dialogId);
            }
            SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(this.dialogId));
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
            ConnectionsManager.getInstance(i).sendRequest(tLRPC$TL_messages_uploadMedia, new C31691(runnable), 2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1 */
        /* loaded from: classes4.dex */
        public class C31691 implements RequestDelegate {
            final /* synthetic */ Runnable val$onFinish;

            C31691(Runnable runnable) {
                this.val$onFinish = runnable;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                final Runnable runnable = this.val$onFinish;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingSticker$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingSticker.C31691.this.lambda$run$0(tLObject, runnable);
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
                    tLRPC$InputDocument.f1510id = tLRPC$Document.f1502id;
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
            SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.stickersImportProgressChanged, this.shortName);
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
                SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.stickersImportProgressChanged, this.shortName);
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
            SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.stickersImportProgressChanged, this.shortName);
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
            SendMessagesHelper.this.getConnectionsManager().sendRequest(tLRPC$TL_stickers_createStickerSet, new C31701(tLRPC$TL_stickers_createStickerSet));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1 */
        /* loaded from: classes4.dex */
        public class C31701 implements RequestDelegate {
            final /* synthetic */ TLRPC$TL_stickers_createStickerSet val$req;

            C31701(TLRPC$TL_stickers_createStickerSet tLRPC$TL_stickers_createStickerSet) {
                this.val$req = tLRPC$TL_stickers_createStickerSet;
            }

            @Override // org.telegram.tgnet.RequestDelegate
            public void run(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
                final TLRPC$TL_stickers_createStickerSet tLRPC$TL_stickers_createStickerSet = this.val$req;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$ImportingStickers$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.ImportingStickers.C31701.this.lambda$run$0(tLRPC$TL_error, tLRPC$TL_stickers_createStickerSet, tLObject);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$run$0(TLRPC$TL_error tLRPC$TL_error, TLRPC$TL_stickers_createStickerSet tLRPC$TL_stickers_createStickerSet, TLObject tLObject) {
                SendMessagesHelper.this.importingStickersMap.remove(ImportingStickers.this.shortName);
                if (tLRPC$TL_error == null) {
                    SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName);
                } else {
                    SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.stickersImportProgressChanged, ImportingStickers.this.shortName, tLRPC$TL_stickers_createStickerSet, tLRPC$TL_error);
                }
                if (tLObject instanceof TLRPC$TL_messages_stickerSet) {
                    NotificationCenter notificationCenter = SendMessagesHelper.this.getNotificationCenter();
                    int i = NotificationCenter.stickersImportComplete;
                    if (notificationCenter.hasObservers(i)) {
                        SendMessagesHelper.this.getNotificationCenter().postNotificationName(i, tLObject);
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
            SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.stickersImportProgressChanged, this.shortName);
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
                    FileLog.m48d("found location " + location);
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
                FileLog.m45e(e);
            }
            try {
                this.locationManager.requestLocationUpdates("network", 1L, BitmapDescriptorFactory.HUE_RED, this.networkLocationListener);
            } catch (Exception e2) {
                FileLog.m45e(e2);
            }
            try {
                Location lastKnownLocation = this.locationManager.getLastKnownLocation("gps");
                this.lastKnownLocation = lastKnownLocation;
                if (lastKnownLocation == null) {
                    this.lastKnownLocation = this.locationManager.getLastKnownLocation("network");
                }
            } catch (Exception e3) {
                FileLog.m45e(e3);
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
                    SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
                    SendMessagesHelper.this.processSentMessage(messageObject.getId());
                    SendMessagesHelper.this.removeFromUploadingMessages(messageObject.getId(), this.scheduled);
                }
                HashMap hashMap = SendMessagesHelper.this.delayedMessages;
                hashMap.remove("group_" + this.groupId);
            } else {
                MessagesStorage messagesStorage = SendMessagesHelper.this.getMessagesStorage();
                MessageObject messageObject2 = this.obj;
                messagesStorage.markMessageAsSendError(messageObject2.messageOwner, messageObject2.scheduled);
                this.obj.messageOwner.send_state = 2;
                SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.messageSendError, Integer.valueOf(this.obj.getId()));
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
                SendMessagesHelper.this.getNotificationCenter().postNotificationName(NotificationCenter.wasUnableToFindCurrentLocation, new HashMap(SendMessagesHelper.this.waitingForLocation));
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
        TLRPC$InputMedia tLRPC$InputMedia;
        ArrayList<DelayedMessage> arrayList2;
        TLRPC$InputFile tLRPC$InputFile;
        String str2;
        TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile;
        TLObject tLObject;
        TLRPC$TL_decryptedMessage tLRPC$TL_decryptedMessage;
        ArrayList<DelayedMessage> arrayList3;
        TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile2;
        int i3;
        String str3;
        int i4;
        TLRPC$PhotoSize tLRPC$PhotoSize;
        TLRPC$PhotoSize tLRPC$PhotoSize2;
        int i5 = 0;
        boolean z = true;
        if (i == NotificationCenter.fileUploadProgressChanged) {
            String str4 = (String) objArr[0];
            ImportingHistory importingHistory = this.importingHistoryFiles.get(str4);
            if (importingHistory != null) {
                Long l = (Long) objArr[1];
                importingHistory.addUploadProgress(str4, l.longValue(), ((float) l.longValue()) / ((float) ((Long) objArr[2]).longValue()));
            }
            ImportingStickers importingStickers = this.importingStickersFiles.get(str4);
            if (importingStickers != null) {
                Long l2 = (Long) objArr[1];
                importingStickers.addUploadProgress(str4, l2.longValue(), ((float) l2.longValue()) / ((float) ((Long) objArr[2]).longValue()));
            }
        } else if (i == NotificationCenter.fileUploaded) {
            String str5 = (String) objArr[0];
            TLRPC$InputFile tLRPC$InputFile2 = (TLRPC$InputFile) objArr[1];
            TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile3 = (TLRPC$InputEncryptedFile) objArr[2];
            ImportingHistory importingHistory2 = this.importingHistoryFiles.get(str5);
            if (importingHistory2 != null) {
                if (str5.equals(importingHistory2.historyPath)) {
                    importingHistory2.initImport(tLRPC$InputFile2);
                } else {
                    importingHistory2.onMediaImport(str5, ((Long) objArr[5]).longValue(), tLRPC$InputFile2);
                }
            }
            ImportingStickers importingStickers2 = this.importingStickersFiles.get(str5);
            if (importingStickers2 != null) {
                importingStickers2.onMediaImport(str5, ((Long) objArr[5]).longValue(), tLRPC$InputFile2);
            }
            ArrayList<DelayedMessage> arrayList4 = this.delayedMessages.get(str5);
            if (arrayList4 != null) {
                while (i5 < arrayList4.size()) {
                    DelayedMessage delayedMessage = arrayList4.get(i5);
                    TLObject tLObject2 = delayedMessage.sendRequest;
                    if (tLObject2 instanceof TLRPC$TL_messages_sendMedia) {
                        tLRPC$InputMedia = ((TLRPC$TL_messages_sendMedia) tLObject2).media;
                    } else if (tLObject2 instanceof TLRPC$TL_messages_editMessage) {
                        tLRPC$InputMedia = ((TLRPC$TL_messages_editMessage) tLObject2).media;
                    } else {
                        tLRPC$InputMedia = tLObject2 instanceof TLRPC$TL_messages_sendMultiMedia ? (TLRPC$InputMedia) delayedMessage.extraHashMap.get(str5) : null;
                    }
                    if (tLRPC$InputFile2 == null || tLRPC$InputMedia == null) {
                        arrayList2 = arrayList4;
                        TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile4 = tLRPC$InputEncryptedFile3;
                        tLRPC$InputFile = tLRPC$InputFile2;
                        str2 = str5;
                        tLRPC$InputEncryptedFile = tLRPC$InputEncryptedFile4;
                        if (tLRPC$InputEncryptedFile != null && (tLObject = delayedMessage.sendEncryptedRequest) != null) {
                            if (delayedMessage.type == 4) {
                                TLRPC$TL_messages_sendEncryptedMultiMedia tLRPC$TL_messages_sendEncryptedMultiMedia = (TLRPC$TL_messages_sendEncryptedMultiMedia) tLObject;
                                TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile5 = (TLRPC$InputEncryptedFile) delayedMessage.extraHashMap.get(str2);
                                int indexOf = tLRPC$TL_messages_sendEncryptedMultiMedia.files.indexOf(tLRPC$InputEncryptedFile5);
                                if (indexOf >= 0) {
                                    tLRPC$TL_messages_sendEncryptedMultiMedia.files.set(indexOf, tLRPC$InputEncryptedFile);
                                    if (tLRPC$InputEncryptedFile5.f1511id == 1) {
                                        MessageObject messageObject3 = (MessageObject) delayedMessage.extraHashMap.get(str2 + "_i");
                                        delayedMessage.photoSize = (TLRPC$PhotoSize) delayedMessage.extraHashMap.get(str2 + "_t");
                                        stopVideoService(delayedMessage.messageObjects.get(indexOf).messageOwner.attachPath);
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
                                tLRPC$DecryptedMessageMedia2.f1498iv = (byte[]) objArr[4];
                                if (delayedMessage.type == 4) {
                                    uploadMultiMedia(delayedMessage, null, tLRPC$InputEncryptedFile, str2);
                                } else {
                                    SecretChatHelper secretChatHelper = getSecretChatHelper();
                                    MessageObject messageObject4 = delayedMessage.obj;
                                    secretChatHelper.performSendEncryptedRequest(tLRPC$TL_decryptedMessage, messageObject4.messageOwner, delayedMessage.encryptedChat, tLRPC$InputEncryptedFile, delayedMessage.originalPath, messageObject4);
                                }
                            }
                            arrayList2.remove(i5);
                            i5--;
                        }
                    } else {
                        int i6 = delayedMessage.type;
                        if (i6 == 0) {
                            tLRPC$InputMedia.file = tLRPC$InputFile2;
                            arrayList3 = arrayList4;
                            tLRPC$InputEncryptedFile2 = tLRPC$InputEncryptedFile3;
                            i3 = i5;
                            tLRPC$InputFile = tLRPC$InputFile2;
                            str3 = str5;
                            performSendMessageRequest(delayedMessage.sendRequest, delayedMessage.obj, delayedMessage.originalPath, delayedMessage, true, null, delayedMessage.parentObject, null, delayedMessage.scheduled);
                        } else {
                            arrayList3 = arrayList4;
                            tLRPC$InputEncryptedFile2 = tLRPC$InputEncryptedFile3;
                            i3 = i5;
                            tLRPC$InputFile = tLRPC$InputFile2;
                            str3 = str5;
                            if (i6 == z) {
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
                                    str2 = str3;
                                } else if (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaUploadedDocument) {
                                    if (tLRPC$InputMedia.file == null) {
                                        tLRPC$InputMedia.file = tLRPC$InputFile;
                                        HashMap<Object, Object> hashMap = delayedMessage.extraHashMap;
                                        StringBuilder sb = new StringBuilder();
                                        str2 = str3;
                                        sb.append(str2);
                                        sb.append("_i");
                                        int indexOf2 = delayedMessage.messageObjects.indexOf((MessageObject) hashMap.get(sb.toString()));
                                        if (indexOf2 >= 0) {
                                            stopVideoService(delayedMessage.messageObjects.get(indexOf2).messageOwner.attachPath);
                                        }
                                        TLRPC$PhotoSize tLRPC$PhotoSize3 = (TLRPC$PhotoSize) delayedMessage.extraHashMap.get(str2 + "_t");
                                        delayedMessage.photoSize = tLRPC$PhotoSize3;
                                        if (tLRPC$InputMedia.thumb == null && tLRPC$PhotoSize3 != null && tLRPC$PhotoSize3.location != null) {
                                            delayedMessage.performMediaUpload = z;
                                            performSendDelayedMessage(delayedMessage, indexOf2);
                                        } else {
                                            uploadMultiMedia(delayedMessage, tLRPC$InputMedia, null, str2);
                                        }
                                    } else {
                                        str2 = str3;
                                        tLRPC$InputMedia.thumb = tLRPC$InputFile;
                                        tLRPC$InputMedia.flags |= 4;
                                        uploadMultiMedia(delayedMessage, tLRPC$InputMedia, null, (String) delayedMessage.extraHashMap.get(str2 + "_o"));
                                    }
                                } else {
                                    str2 = str3;
                                    tLRPC$InputMedia.file = tLRPC$InputFile;
                                    uploadMultiMedia(delayedMessage, tLRPC$InputMedia, null, str2);
                                }
                                arrayList2 = arrayList3;
                                i4 = i3;
                                arrayList2.remove(i4);
                                i5 = i4 - 1;
                                tLRPC$InputEncryptedFile = tLRPC$InputEncryptedFile2;
                            }
                        }
                        arrayList2 = arrayList3;
                        i4 = i3;
                        str2 = str3;
                        arrayList2.remove(i4);
                        i5 = i4 - 1;
                        tLRPC$InputEncryptedFile = tLRPC$InputEncryptedFile2;
                    }
                    i5++;
                    arrayList4 = arrayList2;
                    str5 = str2;
                    tLRPC$InputFile2 = tLRPC$InputFile;
                    z = true;
                    tLRPC$InputEncryptedFile3 = tLRPC$InputEncryptedFile;
                }
                String str6 = str5;
                if (arrayList4.isEmpty()) {
                    this.delayedMessages.remove(str6);
                }
            }
        } else if (i == NotificationCenter.fileUploadFailed) {
            String str7 = (String) objArr[0];
            boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
            ImportingHistory importingHistory3 = this.importingHistoryFiles.get(str7);
            if (importingHistory3 != null) {
                importingHistory3.onFileFailedToUpload(str7);
            }
            ImportingStickers importingStickers3 = this.importingStickersFiles.get(str7);
            if (importingStickers3 != null) {
                importingStickers3.onFileFailedToUpload(str7);
            }
            ArrayList<DelayedMessage> arrayList5 = this.delayedMessages.get(str7);
            if (arrayList5 != null) {
                while (i5 < arrayList5.size()) {
                    DelayedMessage delayedMessage2 = arrayList5.get(i5);
                    if ((booleanValue && delayedMessage2.sendEncryptedRequest != null) || (!booleanValue && delayedMessage2.sendRequest != null)) {
                        delayedMessage2.markAsError();
                        arrayList5.remove(i5);
                        i5--;
                    }
                    i5++;
                }
                if (arrayList5.isEmpty()) {
                    this.delayedMessages.remove(str7);
                }
            }
        } else if (i == NotificationCenter.filePreparingStarted) {
            MessageObject messageObject5 = (MessageObject) objArr[0];
            if (messageObject5.getId() == 0) {
                return;
            }
            String str8 = (String) objArr[1];
            ArrayList<DelayedMessage> arrayList6 = this.delayedMessages.get(messageObject5.messageOwner.attachPath);
            if (arrayList6 != null) {
                while (true) {
                    if (i5 >= arrayList6.size()) {
                        break;
                    }
                    DelayedMessage delayedMessage3 = arrayList6.get(i5);
                    if (delayedMessage3.type == 4) {
                        int indexOf3 = delayedMessage3.messageObjects.indexOf(messageObject5);
                        delayedMessage3.photoSize = (TLRPC$PhotoSize) delayedMessage3.extraHashMap.get(messageObject5.messageOwner.attachPath + "_t");
                        delayedMessage3.performMediaUpload = true;
                        performSendDelayedMessage(delayedMessage3, indexOf3);
                        arrayList6.remove(i5);
                        break;
                    } else if (delayedMessage3.obj == messageObject5) {
                        delayedMessage3.videoEditedInfo = null;
                        performSendDelayedMessage(delayedMessage3);
                        arrayList6.remove(i5);
                        break;
                    } else {
                        i5++;
                    }
                }
                if (arrayList6.isEmpty()) {
                    this.delayedMessages.remove(messageObject5.messageOwner.attachPath);
                }
            }
        } else {
            MessageObject messageObject6 = null;
            if (i == NotificationCenter.fileNewChunkAvailable) {
                MessageObject messageObject7 = (MessageObject) objArr[0];
                if (messageObject7.getId() == 0) {
                    return;
                }
                long longValue = ((Long) objArr[2]).longValue();
                long longValue2 = ((Long) objArr[3]).longValue();
                getFileLoader().checkUploadNewDataAvailable((String) objArr[1], DialogObject.isEncryptedDialog(messageObject7.getDialogId()), longValue, longValue2);
                if (longValue2 != 0) {
                    stopVideoService(messageObject7.messageOwner.attachPath);
                    ArrayList<DelayedMessage> arrayList7 = this.delayedMessages.get(messageObject7.messageOwner.attachPath);
                    if (arrayList7 != null) {
                        for (int i7 = 0; i7 < arrayList7.size(); i7++) {
                            DelayedMessage delayedMessage4 = arrayList7.get(i7);
                            if (delayedMessage4.type == 4) {
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= delayedMessage4.messageObjects.size()) {
                                        break;
                                    }
                                    MessageObject messageObject8 = delayedMessage4.messageObjects.get(i8);
                                    if (messageObject8 == messageObject7) {
                                        delayedMessage4.obj.shouldRemoveVideoEditedInfo = true;
                                        messageObject8.messageOwner.params.remove("ve");
                                        messageObject8.messageOwner.media.document.size = longValue2;
                                        ArrayList<TLRPC$Message> arrayList8 = new ArrayList<>();
                                        arrayList8.add(messageObject8.messageOwner);
                                        getMessagesStorage().putMessages(arrayList8, false, true, false, 0, messageObject8.scheduled, 0);
                                        break;
                                    }
                                    i8++;
                                }
                            } else {
                                MessageObject messageObject9 = delayedMessage4.obj;
                                if (messageObject9 == messageObject7) {
                                    messageObject9.shouldRemoveVideoEditedInfo = true;
                                    messageObject9.messageOwner.params.remove("ve");
                                    delayedMessage4.obj.messageOwner.media.document.size = longValue2;
                                    ArrayList<TLRPC$Message> arrayList9 = new ArrayList<>();
                                    arrayList9.add(delayedMessage4.obj.messageOwner);
                                    getMessagesStorage().putMessages(arrayList9, false, true, false, 0, delayedMessage4.obj.scheduled, 0);
                                    return;
                                }
                            }
                        }
                    }
                }
            } else if (i == NotificationCenter.filePreparingFailed) {
                MessageObject messageObject10 = (MessageObject) objArr[0];
                if (messageObject10.getId() == 0) {
                    return;
                }
                String str9 = (String) objArr[1];
                stopVideoService(messageObject10.messageOwner.attachPath);
                ArrayList<DelayedMessage> arrayList10 = this.delayedMessages.get(str9);
                if (arrayList10 != null) {
                    int i9 = 0;
                    while (i9 < arrayList10.size()) {
                        DelayedMessage delayedMessage5 = arrayList10.get(i9);
                        if (delayedMessage5.type == 4) {
                            for (int i10 = 0; i10 < delayedMessage5.messages.size(); i10++) {
                                if (delayedMessage5.messageObjects.get(i10) == messageObject10) {
                                    delayedMessage5.markAsError();
                                    arrayList10.remove(i9);
                                    i9--;
                                    break;
                                }
                            }
                            i9++;
                        } else if (delayedMessage5.obj == messageObject10) {
                            delayedMessage5.markAsError();
                            arrayList10.remove(i9);
                            i9--;
                            break;
                            i9++;
                        } else {
                            i9++;
                        }
                    }
                    if (arrayList10.isEmpty()) {
                        this.delayedMessages.remove(str9);
                    }
                }
            } else if (i == NotificationCenter.httpFileDidLoad) {
                final String str10 = (String) objArr[0];
                ArrayList<DelayedMessage> arrayList11 = this.delayedMessages.get(str10);
                if (arrayList11 != null) {
                    int i11 = 0;
                    while (i11 < arrayList11.size()) {
                        final DelayedMessage delayedMessage6 = arrayList11.get(i11);
                        int i12 = delayedMessage6.type;
                        if (i12 == 0) {
                            messageObject = delayedMessage6.obj;
                            c = 0;
                        } else {
                            if (i12 == 2) {
                                messageObject2 = delayedMessage6.obj;
                            } else if (i12 == 4) {
                                messageObject2 = (MessageObject) delayedMessage6.extraHashMap.get(str10);
                                if (messageObject2.getDocument() == null) {
                                    messageObject = messageObject2;
                                    c = 0;
                                }
                            } else {
                                c = 65535;
                                messageObject = messageObject6;
                            }
                            messageObject = messageObject2;
                            c = 1;
                        }
                        if (c == 0) {
                            final File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str10) + "." + ImageLoader.getHttpUrlExtension(str10, "file"));
                            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda25
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.this.lambda$didReceivedNotification$2(file, messageObject, delayedMessage6, str10);
                                }
                            });
                        } else if (c == 1) {
                            final File file2 = new File(FileLoader.getDirectory(4), Utilities.MD5(str10) + ".gif");
                            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda39
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.this.lambda$didReceivedNotification$4(delayedMessage6, file2, messageObject);
                                }
                            });
                            i11++;
                            messageObject6 = null;
                        }
                        i11++;
                        messageObject6 = null;
                    }
                    this.delayedMessages.remove(str10);
                }
            } else if (i == NotificationCenter.fileLoaded) {
                String str11 = (String) objArr[0];
                ArrayList<DelayedMessage> arrayList12 = this.delayedMessages.get(str11);
                if (arrayList12 != null) {
                    while (i5 < arrayList12.size()) {
                        performSendDelayedMessage(arrayList12.get(i5));
                        i5++;
                    }
                    this.delayedMessages.remove(str11);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda62
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
            getNotificationCenter().postNotificationName(NotificationCenter.updateMessageMedia, messageObject.messageOwner);
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
            FileLog.m47e("can't load image " + str + " to file " + file.toString());
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
                FileLog.m45e(e);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda40
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
        getNotificationCenter().postNotificationName(NotificationCenter.updateMessageMedia, delayedMessage.obj.messageOwner);
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
        getNotificationCenter().postNotificationName(NotificationCenter.replaceMessagesObjects, Long.valueOf(messageObject.getDialogId()), arrayList3);
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
            stopVideoService(str2);
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
                getNotificationCenter().postNotificationName(NotificationCenter.messageSendError, Integer.valueOf(messageObject.getId()));
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
        sendMessage(messageObject);
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

    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processForwardFromMyName(org.telegram.messenger.MessageObject r21, long r22) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.processForwardFromMyName(org.telegram.messenger.MessageObject, long):void");
    }

    public void sendScreenshotMessage(TLRPC$User tLRPC$User, int i, TLRPC$Message tLRPC$Message) {
        TLRPC$Message tLRPC$Message2 = tLRPC$Message;
        if (tLRPC$User == null || i == 0 || tLRPC$User.f1633id == getUserConfig().getClientUserId()) {
            return;
        }
        TLRPC$TL_messages_sendScreenshotNotification tLRPC$TL_messages_sendScreenshotNotification = new TLRPC$TL_messages_sendScreenshotNotification();
        TLRPC$TL_inputPeerUser tLRPC$TL_inputPeerUser = new TLRPC$TL_inputPeerUser();
        tLRPC$TL_messages_sendScreenshotNotification.peer = tLRPC$TL_inputPeerUser;
        tLRPC$TL_inputPeerUser.access_hash = tLRPC$User.access_hash;
        tLRPC$TL_inputPeerUser.user_id = tLRPC$User.f1633id;
        if (tLRPC$Message2 != null) {
            tLRPC$TL_messages_sendScreenshotNotification.reply_to_msg_id = i;
            tLRPC$TL_messages_sendScreenshotNotification.random_id = tLRPC$Message2.random_id;
        } else {
            tLRPC$Message2 = new TLRPC$TL_messageService();
            tLRPC$Message2.random_id = getNextRandomId();
            tLRPC$Message2.dialog_id = tLRPC$User.f1633id;
            tLRPC$Message2.unread = true;
            tLRPC$Message2.out = true;
            int newMessageId = getUserConfig().getNewMessageId();
            tLRPC$Message2.f1518id = newMessageId;
            tLRPC$Message2.local_id = newMessageId;
            TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
            tLRPC$Message2.from_id = tLRPC$TL_peerUser;
            tLRPC$TL_peerUser.user_id = getUserConfig().getClientUserId();
            int i2 = tLRPC$Message2.flags | 256;
            tLRPC$Message2.flags = i2;
            tLRPC$Message2.flags = i2 | 8;
            TLRPC$TL_messageReplyHeader tLRPC$TL_messageReplyHeader = new TLRPC$TL_messageReplyHeader();
            tLRPC$Message2.reply_to = tLRPC$TL_messageReplyHeader;
            tLRPC$TL_messageReplyHeader.reply_to_msg_id = i;
            TLRPC$TL_peerUser tLRPC$TL_peerUser2 = new TLRPC$TL_peerUser();
            tLRPC$Message2.peer_id = tLRPC$TL_peerUser2;
            tLRPC$TL_peerUser2.user_id = tLRPC$User.f1633id;
            tLRPC$Message2.date = getConnectionsManager().getCurrentTime();
            tLRPC$Message2.action = new TLRPC$TL_messageActionScreenshotTaken();
            getUserConfig().saveConfig(false);
        }
        tLRPC$TL_messages_sendScreenshotNotification.random_id = tLRPC$Message2.random_id;
        MessageObject messageObject = new MessageObject(this.currentAccount, tLRPC$Message2, false, true);
        messageObject.messageOwner.send_state = 1;
        messageObject.wasJustSent = true;
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        arrayList.add(messageObject);
        getMessagesController().updateInterfaceWithMessages(tLRPC$Message2.dialog_id, arrayList, false);
        getNotificationCenter().postNotificationName(NotificationCenter.dialogsNeedReload, new Object[0]);
        ArrayList<TLRPC$Message> arrayList2 = new ArrayList<>();
        arrayList2.add(tLRPC$Message2);
        getMessagesStorage().putMessages(arrayList2, false, true, false, 0, false, 0);
        performSendMessageRequest(tLRPC$TL_messages_sendScreenshotNotification, messageObject, null, null, null, null, false);
    }

    public void sendSticker(TLRPC$Document tLRPC$Document, String str, final long j, final MessageObject messageObject, final MessageObject messageObject2, final Object obj, final MessageObject.SendAnimationData sendAnimationData, final boolean z, final int i, boolean z2, final String str2) {
        final TLRPC$TL_document_layer82 tLRPC$TL_document_layer82;
        HashMap<String, String> hashMap;
        if (tLRPC$Document == null) {
            return;
        }
        if (DialogObject.isEncryptedDialog(j)) {
            if (getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j))) == null) {
                return;
            }
            TLRPC$TL_document_layer82 tLRPC$TL_document_layer822 = new TLRPC$TL_document_layer82();
            tLRPC$TL_document_layer822.f1502id = tLRPC$Document.f1502id;
            tLRPC$TL_document_layer822.access_hash = tLRPC$Document.access_hash;
            tLRPC$TL_document_layer822.date = tLRPC$Document.date;
            tLRPC$TL_document_layer822.mime_type = tLRPC$Document.mime_type;
            byte[] bArr = tLRPC$Document.file_reference;
            tLRPC$TL_document_layer822.file_reference = bArr;
            if (bArr == null) {
                tLRPC$TL_document_layer822.file_reference = new byte[0];
            }
            tLRPC$TL_document_layer822.size = tLRPC$Document.size;
            tLRPC$TL_document_layer822.dc_id = tLRPC$Document.dc_id;
            tLRPC$TL_document_layer822.attributes = new ArrayList<>(tLRPC$Document.attributes);
            if (tLRPC$TL_document_layer822.mime_type == null) {
                tLRPC$TL_document_layer822.mime_type = "";
            }
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Document.thumbs, 90);
            if ((closestPhotoSizeWithSize instanceof TLRPC$TL_photoSize) || (closestPhotoSizeWithSize instanceof TLRPC$TL_photoSizeProgressive)) {
                File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true);
                if (pathToAttach.exists()) {
                    try {
                        pathToAttach.length();
                        byte[] bArr2 = new byte[(int) pathToAttach.length()];
                        new RandomAccessFile(pathToAttach, "r").readFully(bArr2);
                        TLRPC$TL_photoCachedSize tLRPC$TL_photoCachedSize = new TLRPC$TL_photoCachedSize();
                        TLRPC$TL_fileLocation_layer82 tLRPC$TL_fileLocation_layer82 = new TLRPC$TL_fileLocation_layer82();
                        TLRPC$FileLocation tLRPC$FileLocation = closestPhotoSizeWithSize.location;
                        tLRPC$TL_fileLocation_layer82.dc_id = tLRPC$FileLocation.dc_id;
                        tLRPC$TL_fileLocation_layer82.volume_id = tLRPC$FileLocation.volume_id;
                        tLRPC$TL_fileLocation_layer82.local_id = tLRPC$FileLocation.local_id;
                        tLRPC$TL_fileLocation_layer82.secret = tLRPC$FileLocation.secret;
                        tLRPC$TL_photoCachedSize.location = tLRPC$TL_fileLocation_layer82;
                        tLRPC$TL_photoCachedSize.size = closestPhotoSizeWithSize.size;
                        tLRPC$TL_photoCachedSize.f1525w = closestPhotoSizeWithSize.f1525w;
                        tLRPC$TL_photoCachedSize.f1524h = closestPhotoSizeWithSize.f1524h;
                        tLRPC$TL_photoCachedSize.type = closestPhotoSizeWithSize.type;
                        tLRPC$TL_photoCachedSize.bytes = bArr2;
                        tLRPC$TL_document_layer822.thumbs.add(tLRPC$TL_photoCachedSize);
                        tLRPC$TL_document_layer822.flags |= 1;
                    } catch (Exception e) {
                        FileLog.m45e(e);
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
            mediaSendQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$sendSticker$6(tLRPC$TL_document_layer82, j, messageObject, messageObject2, z, i, obj, sendAnimationData, str2);
                }
            });
            return;
        }
        if (TextUtils.isEmpty(str)) {
            hashMap = null;
        } else {
            hashMap = new HashMap<>();
            hashMap.put(SearchIntents.EXTRA_QUERY, str);
        }
        sendMessage((TLRPC$TL_document) tLRPC$TL_document_layer82, null, null, j, messageObject, messageObject2, null, null, null, hashMap, z, i, 0, obj, sendAnimationData, z2, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$6(final TLRPC$Document tLRPC$Document, final long j, final MessageObject messageObject, final MessageObject messageObject2, final boolean z, final int i, final Object obj, final MessageObject.SendAnimationData sendAnimationData, final String str) {
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
                SendMessagesHelper.this.lambda$sendSticker$5(bitmapArr, strArr, tLRPC$Document, j, messageObject, messageObject2, z, i, obj, sendAnimationData, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendSticker$5(Bitmap[] bitmapArr, String[] strArr, TLRPC$Document tLRPC$Document, long j, MessageObject messageObject, MessageObject messageObject2, boolean z, int i, Object obj, MessageObject.SendAnimationData sendAnimationData, String str) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        sendMessage((TLRPC$TL_document) tLRPC$Document, null, null, j, messageObject, messageObject2, null, null, null, null, z, i, 0, obj, sendAnimationData, false, str);
    }

    public int sendMessage(ArrayList<MessageObject> arrayList, long j, boolean z, boolean z2, boolean z3, int i) {
        return sendMessage(arrayList, j, z, z2, z3, i, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0234, code lost:
        if (org.telegram.messenger.ChatObject.isActionBannedByDefault(r9, org.telegram.messenger.ChatObject.ACTION_SEND_GAMES) != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0237, code lost:
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0245, code lost:
        if (org.telegram.messenger.ChatObject.isActionBannedByDefault(r9, 8) != false) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:340:0x07ad  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x07b7  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x07d2  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0830  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0842  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x085f  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0888  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x088a  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0900  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x091b  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0951  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0959  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x095b  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0963  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x099b  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x09c1  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x0a08  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0a1d  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0a20  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x0a2f  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0a31  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0a53  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0a76  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0a7d  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0a8b  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0a9b  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0ac5  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0ae2  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0afd  */
    /* JADX WARN: Removed duplicated region for block: B:467:0x0b00  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0b56  */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v32, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int sendMessage(java.util.ArrayList<org.telegram.messenger.MessageObject> r74, final long r75, boolean r77, boolean r78, boolean r79, final int r80, org.telegram.messenger.MessageObject r81, org.telegram.messenger.ForwardingMessagesParams r82, boolean r83, org.telegram.messenger.MessageObject r84) {
        /*
            Method dump skipped, instructions count: 3257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.sendMessage(java.util.ArrayList, long, boolean, boolean, boolean, int, org.telegram.messenger.MessageObject, org.telegram.messenger.ForwardingMessagesParams, boolean, org.telegram.messenger.MessageObject):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$sendMessage$14(final long r27, final int r29, boolean r30, boolean r31, androidx.collection.LongSparseArray r32, java.util.ArrayList r33, java.util.ArrayList r34, final org.telegram.messenger.MessageObject r35, final org.telegram.tgnet.TLRPC$Peer r36, final org.telegram.tgnet.TLRPC$TL_messages_forwardMessages r37, org.telegram.tgnet.TLObject r38, final org.telegram.tgnet.TLRPC$TL_error r39) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$sendMessage$14(long, int, boolean, boolean, androidx.collection.LongSparseArray, java.util.ArrayList, java.util.ArrayList, org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$Peer, org.telegram.tgnet.TLRPC$TL_messages_forwardMessages, org.telegram.tgnet.TLObject, org.telegram.tgnet.TLRPC$TL_error):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$9(final int i, final TLRPC$Message tLRPC$Message, final ArrayList arrayList, final MessageObject messageObject, final int i2) {
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        arrayList2.add(Integer.valueOf(i));
        getMessagesController().deleteMessages(arrayList2, null, null, tLRPC$Message.dialog_id, false, true);
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendMessage$8(arrayList, messageObject, tLRPC$Message, i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendMessage$8(ArrayList arrayList, final MessageObject messageObject, final TLRPC$Message tLRPC$Message, final int i, final int i2) {
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, false, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda37
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
        getMessagesStorage().updateMessageStateAndId(tLRPC$Message.random_id, MessageObject.getPeerId(tLRPC$Peer), Integer.valueOf(i), tLRPC$Message.f1518id, 0, false, i2 != 0 ? 1 : 0);
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, i2 != 0, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda51
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
        objArr[1] = Integer.valueOf(tLRPC$Message2.f1518id);
        objArr[2] = tLRPC$Message2;
        objArr[3] = Long.valueOf(j);
        objArr[4] = 0L;
        objArr[5] = Integer.valueOf(i2);
        objArr[6] = Boolean.valueOf(i3 != 0);
        notificationCenter.postNotificationName(i4, objArr);
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
        getNotificationCenter().postNotificationName(NotificationCenter.messageSendError, Integer.valueOf(tLRPC$Message.f1518id));
        processSentMessage(tLRPC$Message.f1518id);
        removeFromSendingMessages(tLRPC$Message.f1518id, i != 0);
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

    /* JADX WARN: Removed duplicated region for block: B:228:0x04e2 A[Catch: Exception -> 0x05ff, TryCatch #0 {Exception -> 0x05ff, blocks: (B:9:0x0022, B:11:0x002a, B:12:0x0032, B:14:0x0038, B:16:0x004a, B:23:0x005b, B:26:0x0065, B:29:0x006a, B:31:0x006e, B:43:0x0094, B:46:0x009a, B:48:0x00a0, B:50:0x00a7, B:77:0x0179, B:79:0x017d, B:80:0x0181, B:88:0x019b, B:93:0x01a4, B:95:0x01a8, B:97:0x01b8, B:99:0x01bc, B:116:0x0215, B:118:0x0221, B:119:0x0242, B:121:0x0256, B:123:0x025e, B:126:0x0263, B:127:0x026a, B:128:0x026d, B:130:0x0279, B:132:0x0295, B:135:0x02b4, B:137:0x02bc, B:151:0x02dd, B:153:0x02e6, B:155:0x02ee, B:157:0x02ff, B:158:0x0318, B:160:0x0326, B:167:0x0354, B:169:0x0368, B:171:0x036e, B:173:0x0377, B:226:0x04cb, B:228:0x04e2, B:229:0x04ea, B:231:0x04ee, B:232:0x04fc, B:234:0x0500, B:238:0x0513, B:240:0x0519, B:247:0x0546, B:242:0x0522, B:244:0x0536, B:246:0x053c, B:249:0x054c, B:252:0x0551, B:256:0x056e, B:257:0x0573, B:261:0x058b, B:262:0x0590, B:265:0x05aa, B:269:0x05c5, B:270:0x05c9, B:274:0x05e5, B:275:0x05e9, B:174:0x037a, B:163:0x0330, B:165:0x034b, B:166:0x0350, B:178:0x0397, B:180:0x03a2, B:182:0x03aa, B:184:0x03bb, B:185:0x03cc, B:186:0x03d5, B:189:0x03e7, B:193:0x03f0, B:195:0x03f7, B:197:0x03ff, B:204:0x042a, B:206:0x0444, B:208:0x0451, B:209:0x0455, B:200:0x0408, B:202:0x0422, B:203:0x0427, B:212:0x0462, B:219:0x049c, B:221:0x04b0, B:223:0x04bd, B:224:0x04c1, B:215:0x047a, B:217:0x0494, B:218:0x0499, B:131:0x028e, B:100:0x01c5, B:102:0x01cb, B:103:0x01d2, B:105:0x01d6, B:114:0x020f, B:106:0x01df, B:108:0x01f2, B:110:0x01f8, B:111:0x0201, B:113:0x0209, B:85:0x0190, B:87:0x0198, B:32:0x0076, B:34:0x007a, B:40:0x008a, B:51:0x00ba, B:53:0x00cc, B:54:0x00d1, B:56:0x00fb, B:58:0x010e, B:60:0x0114, B:62:0x011a, B:76:0x016d, B:63:0x011d, B:66:0x0141, B:73:0x0160, B:74:0x0169), top: B:280:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04ee A[Catch: Exception -> 0x05ff, TryCatch #0 {Exception -> 0x05ff, blocks: (B:9:0x0022, B:11:0x002a, B:12:0x0032, B:14:0x0038, B:16:0x004a, B:23:0x005b, B:26:0x0065, B:29:0x006a, B:31:0x006e, B:43:0x0094, B:46:0x009a, B:48:0x00a0, B:50:0x00a7, B:77:0x0179, B:79:0x017d, B:80:0x0181, B:88:0x019b, B:93:0x01a4, B:95:0x01a8, B:97:0x01b8, B:99:0x01bc, B:116:0x0215, B:118:0x0221, B:119:0x0242, B:121:0x0256, B:123:0x025e, B:126:0x0263, B:127:0x026a, B:128:0x026d, B:130:0x0279, B:132:0x0295, B:135:0x02b4, B:137:0x02bc, B:151:0x02dd, B:153:0x02e6, B:155:0x02ee, B:157:0x02ff, B:158:0x0318, B:160:0x0326, B:167:0x0354, B:169:0x0368, B:171:0x036e, B:173:0x0377, B:226:0x04cb, B:228:0x04e2, B:229:0x04ea, B:231:0x04ee, B:232:0x04fc, B:234:0x0500, B:238:0x0513, B:240:0x0519, B:247:0x0546, B:242:0x0522, B:244:0x0536, B:246:0x053c, B:249:0x054c, B:252:0x0551, B:256:0x056e, B:257:0x0573, B:261:0x058b, B:262:0x0590, B:265:0x05aa, B:269:0x05c5, B:270:0x05c9, B:274:0x05e5, B:275:0x05e9, B:174:0x037a, B:163:0x0330, B:165:0x034b, B:166:0x0350, B:178:0x0397, B:180:0x03a2, B:182:0x03aa, B:184:0x03bb, B:185:0x03cc, B:186:0x03d5, B:189:0x03e7, B:193:0x03f0, B:195:0x03f7, B:197:0x03ff, B:204:0x042a, B:206:0x0444, B:208:0x0451, B:209:0x0455, B:200:0x0408, B:202:0x0422, B:203:0x0427, B:212:0x0462, B:219:0x049c, B:221:0x04b0, B:223:0x04bd, B:224:0x04c1, B:215:0x047a, B:217:0x0494, B:218:0x0499, B:131:0x028e, B:100:0x01c5, B:102:0x01cb, B:103:0x01d2, B:105:0x01d6, B:114:0x020f, B:106:0x01df, B:108:0x01f2, B:110:0x01f8, B:111:0x0201, B:113:0x0209, B:85:0x0190, B:87:0x0198, B:32:0x0076, B:34:0x007a, B:40:0x008a, B:51:0x00ba, B:53:0x00cc, B:54:0x00d1, B:56:0x00fb, B:58:0x010e, B:60:0x0114, B:62:0x011a, B:76:0x016d, B:63:0x011d, B:66:0x0141, B:73:0x0160, B:74:0x0169), top: B:280:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0500 A[Catch: Exception -> 0x05ff, TryCatch #0 {Exception -> 0x05ff, blocks: (B:9:0x0022, B:11:0x002a, B:12:0x0032, B:14:0x0038, B:16:0x004a, B:23:0x005b, B:26:0x0065, B:29:0x006a, B:31:0x006e, B:43:0x0094, B:46:0x009a, B:48:0x00a0, B:50:0x00a7, B:77:0x0179, B:79:0x017d, B:80:0x0181, B:88:0x019b, B:93:0x01a4, B:95:0x01a8, B:97:0x01b8, B:99:0x01bc, B:116:0x0215, B:118:0x0221, B:119:0x0242, B:121:0x0256, B:123:0x025e, B:126:0x0263, B:127:0x026a, B:128:0x026d, B:130:0x0279, B:132:0x0295, B:135:0x02b4, B:137:0x02bc, B:151:0x02dd, B:153:0x02e6, B:155:0x02ee, B:157:0x02ff, B:158:0x0318, B:160:0x0326, B:167:0x0354, B:169:0x0368, B:171:0x036e, B:173:0x0377, B:226:0x04cb, B:228:0x04e2, B:229:0x04ea, B:231:0x04ee, B:232:0x04fc, B:234:0x0500, B:238:0x0513, B:240:0x0519, B:247:0x0546, B:242:0x0522, B:244:0x0536, B:246:0x053c, B:249:0x054c, B:252:0x0551, B:256:0x056e, B:257:0x0573, B:261:0x058b, B:262:0x0590, B:265:0x05aa, B:269:0x05c5, B:270:0x05c9, B:274:0x05e5, B:275:0x05e9, B:174:0x037a, B:163:0x0330, B:165:0x034b, B:166:0x0350, B:178:0x0397, B:180:0x03a2, B:182:0x03aa, B:184:0x03bb, B:185:0x03cc, B:186:0x03d5, B:189:0x03e7, B:193:0x03f0, B:195:0x03f7, B:197:0x03ff, B:204:0x042a, B:206:0x0444, B:208:0x0451, B:209:0x0455, B:200:0x0408, B:202:0x0422, B:203:0x0427, B:212:0x0462, B:219:0x049c, B:221:0x04b0, B:223:0x04bd, B:224:0x04c1, B:215:0x047a, B:217:0x0494, B:218:0x0499, B:131:0x028e, B:100:0x01c5, B:102:0x01cb, B:103:0x01d2, B:105:0x01d6, B:114:0x020f, B:106:0x01df, B:108:0x01f2, B:110:0x01f8, B:111:0x0201, B:113:0x0209, B:85:0x0190, B:87:0x0198, B:32:0x0076, B:34:0x007a, B:40:0x008a, B:51:0x00ba, B:53:0x00cc, B:54:0x00d1, B:56:0x00fb, B:58:0x010e, B:60:0x0114, B:62:0x011a, B:76:0x016d, B:63:0x011d, B:66:0x0141, B:73:0x0160, B:74:0x0169), top: B:280:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x054c A[Catch: Exception -> 0x05ff, TryCatch #0 {Exception -> 0x05ff, blocks: (B:9:0x0022, B:11:0x002a, B:12:0x0032, B:14:0x0038, B:16:0x004a, B:23:0x005b, B:26:0x0065, B:29:0x006a, B:31:0x006e, B:43:0x0094, B:46:0x009a, B:48:0x00a0, B:50:0x00a7, B:77:0x0179, B:79:0x017d, B:80:0x0181, B:88:0x019b, B:93:0x01a4, B:95:0x01a8, B:97:0x01b8, B:99:0x01bc, B:116:0x0215, B:118:0x0221, B:119:0x0242, B:121:0x0256, B:123:0x025e, B:126:0x0263, B:127:0x026a, B:128:0x026d, B:130:0x0279, B:132:0x0295, B:135:0x02b4, B:137:0x02bc, B:151:0x02dd, B:153:0x02e6, B:155:0x02ee, B:157:0x02ff, B:158:0x0318, B:160:0x0326, B:167:0x0354, B:169:0x0368, B:171:0x036e, B:173:0x0377, B:226:0x04cb, B:228:0x04e2, B:229:0x04ea, B:231:0x04ee, B:232:0x04fc, B:234:0x0500, B:238:0x0513, B:240:0x0519, B:247:0x0546, B:242:0x0522, B:244:0x0536, B:246:0x053c, B:249:0x054c, B:252:0x0551, B:256:0x056e, B:257:0x0573, B:261:0x058b, B:262:0x0590, B:265:0x05aa, B:269:0x05c5, B:270:0x05c9, B:274:0x05e5, B:275:0x05e9, B:174:0x037a, B:163:0x0330, B:165:0x034b, B:166:0x0350, B:178:0x0397, B:180:0x03a2, B:182:0x03aa, B:184:0x03bb, B:185:0x03cc, B:186:0x03d5, B:189:0x03e7, B:193:0x03f0, B:195:0x03f7, B:197:0x03ff, B:204:0x042a, B:206:0x0444, B:208:0x0451, B:209:0x0455, B:200:0x0408, B:202:0x0422, B:203:0x0427, B:212:0x0462, B:219:0x049c, B:221:0x04b0, B:223:0x04bd, B:224:0x04c1, B:215:0x047a, B:217:0x0494, B:218:0x0499, B:131:0x028e, B:100:0x01c5, B:102:0x01cb, B:103:0x01d2, B:105:0x01d6, B:114:0x020f, B:106:0x01df, B:108:0x01f2, B:110:0x01f8, B:111:0x0201, B:113:0x0209, B:85:0x0190, B:87:0x0198, B:32:0x0076, B:34:0x007a, B:40:0x008a, B:51:0x00ba, B:53:0x00cc, B:54:0x00d1, B:56:0x00fb, B:58:0x010e, B:60:0x0114, B:62:0x011a, B:76:0x016d, B:63:0x011d, B:66:0x0141, B:73:0x0160, B:74:0x0169), top: B:280:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0551 A[Catch: Exception -> 0x05ff, TryCatch #0 {Exception -> 0x05ff, blocks: (B:9:0x0022, B:11:0x002a, B:12:0x0032, B:14:0x0038, B:16:0x004a, B:23:0x005b, B:26:0x0065, B:29:0x006a, B:31:0x006e, B:43:0x0094, B:46:0x009a, B:48:0x00a0, B:50:0x00a7, B:77:0x0179, B:79:0x017d, B:80:0x0181, B:88:0x019b, B:93:0x01a4, B:95:0x01a8, B:97:0x01b8, B:99:0x01bc, B:116:0x0215, B:118:0x0221, B:119:0x0242, B:121:0x0256, B:123:0x025e, B:126:0x0263, B:127:0x026a, B:128:0x026d, B:130:0x0279, B:132:0x0295, B:135:0x02b4, B:137:0x02bc, B:151:0x02dd, B:153:0x02e6, B:155:0x02ee, B:157:0x02ff, B:158:0x0318, B:160:0x0326, B:167:0x0354, B:169:0x0368, B:171:0x036e, B:173:0x0377, B:226:0x04cb, B:228:0x04e2, B:229:0x04ea, B:231:0x04ee, B:232:0x04fc, B:234:0x0500, B:238:0x0513, B:240:0x0519, B:247:0x0546, B:242:0x0522, B:244:0x0536, B:246:0x053c, B:249:0x054c, B:252:0x0551, B:256:0x056e, B:257:0x0573, B:261:0x058b, B:262:0x0590, B:265:0x05aa, B:269:0x05c5, B:270:0x05c9, B:274:0x05e5, B:275:0x05e9, B:174:0x037a, B:163:0x0330, B:165:0x034b, B:166:0x0350, B:178:0x0397, B:180:0x03a2, B:182:0x03aa, B:184:0x03bb, B:185:0x03cc, B:186:0x03d5, B:189:0x03e7, B:193:0x03f0, B:195:0x03f7, B:197:0x03ff, B:204:0x042a, B:206:0x0444, B:208:0x0451, B:209:0x0455, B:200:0x0408, B:202:0x0422, B:203:0x0427, B:212:0x0462, B:219:0x049c, B:221:0x04b0, B:223:0x04bd, B:224:0x04c1, B:215:0x047a, B:217:0x0494, B:218:0x0499, B:131:0x028e, B:100:0x01c5, B:102:0x01cb, B:103:0x01d2, B:105:0x01d6, B:114:0x020f, B:106:0x01df, B:108:0x01f2, B:110:0x01f8, B:111:0x0201, B:113:0x0209, B:85:0x0190, B:87:0x0198, B:32:0x0076, B:34:0x007a, B:40:0x008a, B:51:0x00ba, B:53:0x00cc, B:54:0x00d1, B:56:0x00fb, B:58:0x010e, B:60:0x0114, B:62:0x011a, B:76:0x016d, B:63:0x011d, B:66:0x0141, B:73:0x0160, B:74:0x0169), top: B:280:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0160 A[Catch: Exception -> 0x05ff, TryCatch #0 {Exception -> 0x05ff, blocks: (B:9:0x0022, B:11:0x002a, B:12:0x0032, B:14:0x0038, B:16:0x004a, B:23:0x005b, B:26:0x0065, B:29:0x006a, B:31:0x006e, B:43:0x0094, B:46:0x009a, B:48:0x00a0, B:50:0x00a7, B:77:0x0179, B:79:0x017d, B:80:0x0181, B:88:0x019b, B:93:0x01a4, B:95:0x01a8, B:97:0x01b8, B:99:0x01bc, B:116:0x0215, B:118:0x0221, B:119:0x0242, B:121:0x0256, B:123:0x025e, B:126:0x0263, B:127:0x026a, B:128:0x026d, B:130:0x0279, B:132:0x0295, B:135:0x02b4, B:137:0x02bc, B:151:0x02dd, B:153:0x02e6, B:155:0x02ee, B:157:0x02ff, B:158:0x0318, B:160:0x0326, B:167:0x0354, B:169:0x0368, B:171:0x036e, B:173:0x0377, B:226:0x04cb, B:228:0x04e2, B:229:0x04ea, B:231:0x04ee, B:232:0x04fc, B:234:0x0500, B:238:0x0513, B:240:0x0519, B:247:0x0546, B:242:0x0522, B:244:0x0536, B:246:0x053c, B:249:0x054c, B:252:0x0551, B:256:0x056e, B:257:0x0573, B:261:0x058b, B:262:0x0590, B:265:0x05aa, B:269:0x05c5, B:270:0x05c9, B:274:0x05e5, B:275:0x05e9, B:174:0x037a, B:163:0x0330, B:165:0x034b, B:166:0x0350, B:178:0x0397, B:180:0x03a2, B:182:0x03aa, B:184:0x03bb, B:185:0x03cc, B:186:0x03d5, B:189:0x03e7, B:193:0x03f0, B:195:0x03f7, B:197:0x03ff, B:204:0x042a, B:206:0x0444, B:208:0x0451, B:209:0x0455, B:200:0x0408, B:202:0x0422, B:203:0x0427, B:212:0x0462, B:219:0x049c, B:221:0x04b0, B:223:0x04bd, B:224:0x04c1, B:215:0x047a, B:217:0x0494, B:218:0x0499, B:131:0x028e, B:100:0x01c5, B:102:0x01cb, B:103:0x01d2, B:105:0x01d6, B:114:0x020f, B:106:0x01df, B:108:0x01f2, B:110:0x01f8, B:111:0x0201, B:113:0x0209, B:85:0x0190, B:87:0x0198, B:32:0x0076, B:34:0x007a, B:40:0x008a, B:51:0x00ba, B:53:0x00cc, B:54:0x00d1, B:56:0x00fb, B:58:0x010e, B:60:0x0114, B:62:0x011a, B:76:0x016d, B:63:0x011d, B:66:0x0141, B:73:0x0160, B:74:0x0169), top: B:280:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void editMessage(org.telegram.messenger.MessageObject r29, org.telegram.tgnet.TLRPC$TL_photo r30, org.telegram.messenger.VideoEditedInfo r31, org.telegram.tgnet.TLRPC$TL_document r32, java.lang.String r33, java.util.HashMap<java.lang.String, java.lang.String> r34, boolean r35, boolean r36, java.lang.Object r37) {
        /*
            Method dump skipped, instructions count: 1543
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
        tLRPC$TL_messages_editMessage.f1577id = messageObject.getId();
        if (arrayList != null) {
            tLRPC$TL_messages_editMessage.entities = arrayList;
            tLRPC$TL_messages_editMessage.flags |= 8;
        }
        if (i != 0) {
            tLRPC$TL_messages_editMessage.schedule_date = i;
            tLRPC$TL_messages_editMessage.flags |= 32768;
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
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda60
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
            sendMessage((TLRPC$MessageMedia) tLRPC$TL_messageMediaGeo, value.getDialogId(), value, (MessageObject) null, (TLRPC$ReplyMarkup) null, (HashMap<String, String>) null, true, 0, (String) null);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda30
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
        List<String> remove = hashMap.remove(tLRPC$Message.dialog_id + "_" + tLRPC$Message.f1518id);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda28
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
                chatActivity.showRequestUrlAlert((TLRPC$TL_urlAuthResultRequest) tLObject, tLRPC$TL_messages_requestUrlAuth, str, z, false);
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00da  */
    /* renamed from: sendCallback */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$sendCallback$24(final boolean r21, final org.telegram.messenger.MessageObject r22, final org.telegram.tgnet.TLRPC$KeyboardButton r23, final org.telegram.tgnet.TLRPC$InputCheckPasswordSRP r24, final org.telegram.p048ui.TwoStepVerificationActivity r25, final org.telegram.p048ui.ChatActivity r26) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$sendCallback$24(boolean, org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$KeyboardButton, org.telegram.tgnet.TLRPC$InputCheckPasswordSRP, org.telegram.ui.TwoStepVerificationActivity, org.telegram.ui.ChatActivity):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$30(final String str, final List list, final boolean z, final MessageObject messageObject, final TLRPC$KeyboardButton tLRPC$KeyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, final TLObject[] tLObjectArr, final TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, final boolean z2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$sendCallback$29(str, list, z, tLObject, messageObject, tLRPC$KeyboardButton, chatActivity, twoStepVerificationActivity, tLObjectArr, tLRPC$TL_error, tLRPC$InputCheckPasswordSRP, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendCallback$29(String str, List list, boolean z, TLObject tLObject, final MessageObject messageObject, final TLRPC$KeyboardButton tLRPC$KeyboardButton, final ChatActivity chatActivity, final TwoStepVerificationActivity twoStepVerificationActivity, TLObject[] tLObjectArr, TLRPC$TL_error tLRPC$TL_error, TLRPC$InputCheckPasswordSRP tLRPC$InputCheckPasswordSRP, final boolean z2) {
        String str2;
        this.waitingForCallback.remove(str);
        list.remove(str);
        boolean z3 = false;
        if (z && tLObject == null) {
            sendCallback(false, messageObject, tLRPC$KeyboardButton, chatActivity);
            return;
        }
        if (tLObject != null) {
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
                    String str3 = tLRPC$KeyboardButton.url;
                    chatActivity.showRequestUrlAlert((TLRPC$TL_urlAuthResultRequest) tLObject, (TLRPC$TL_messages_requestUrlAuth) tLObjectArr[0], str3, false, str3.contains("https://imem.app"));
                } else if (tLObject instanceof TLRPC$TL_urlAuthResultAccepted) {
                    TLRPC$TL_urlAuthResultAccepted tLRPC$TL_urlAuthResultAccepted = (TLRPC$TL_urlAuthResultAccepted) tLObject;
                    if (tLRPC$KeyboardButton.url.contains("https://imem.app")) {
                        chatActivity.onAuthWalletAccepted(tLRPC$TL_urlAuthResultAccepted.url);
                    } else {
                        AlertsCreator.showOpenUrlAlert(chatActivity, tLRPC$TL_urlAuthResultAccepted.url, false, false);
                    }
                } else if (tLObject instanceof TLRPC$TL_urlAuthResultDefault) {
                    TLRPC$TL_urlAuthResultDefault tLRPC$TL_urlAuthResultDefault = (TLRPC$TL_urlAuthResultDefault) tLObject;
                    if (tLRPC$KeyboardButton.url.contains("https://imem.app")) {
                        chatActivity.onAuthWalletAccepted(tLRPC$KeyboardButton.url);
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
                String str4 = tLRPC$TL_messages_botCallbackAnswer.message;
                if (str4 != null) {
                    if (tLRPC$TL_messages_botCallbackAnswer.alert) {
                        if (chatActivity.getParentActivity() == null) {
                            return;
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(chatActivity.getParentActivity());
                        builder.setTitle(str2);
                        builder.setPositiveButton(LocaleController.getString("OK", C3158R.string.OK), null);
                        builder.setMessage(tLRPC$TL_messages_botCallbackAnswer.message);
                        chatActivity.showDialog(builder.create());
                        return;
                    }
                    chatActivity.showAlert(str2, str4);
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
                        String str5 = tLRPC$TL_messages_botCallbackAnswer.url;
                        if (!z4) {
                            if (MessagesController.getNotificationsSettings(this.currentAccount).getBoolean("askgame_" + fromChatId, true)) {
                                z3 = true;
                            }
                        }
                        chatActivity.showOpenGameAlert(tLRPC$TL_game, messageObject, str5, z3, fromChatId);
                        return;
                    }
                    AlertsCreator.showOpenUrlAlert(chatActivity, tLRPC$TL_messages_botCallbackAnswer.url, false, false);
                }
            }
        } else if (tLRPC$TL_error == null || chatActivity.getParentActivity() == null) {
        } else {
            if ("PASSWORD_HASH_INVALID".equals(tLRPC$TL_error.text)) {
                if (tLRPC$InputCheckPasswordSRP == null) {
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(chatActivity.getParentActivity());
                    builder2.setTitle(LocaleController.getString("BotOwnershipTransfer", C3158R.string.BotOwnershipTransfer));
                    builder2.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferReadyAlertText", C3158R.string.BotOwnershipTransferReadyAlertText, new Object[0])));
                    builder2.setPositiveButton(LocaleController.getString("BotOwnershipTransferChangeOwner", C3158R.string.BotOwnershipTransferChangeOwner), new DialogInterface.OnClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            SendMessagesHelper.this.lambda$sendCallback$25(z2, messageObject, tLRPC$KeyboardButton, chatActivity, dialogInterface, i);
                        }
                    });
                    builder2.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                    chatActivity.showDialog(builder2.create());
                }
            } else if ("PASSWORD_MISSING".equals(tLRPC$TL_error.text) || tLRPC$TL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tLRPC$TL_error.text.startsWith("SESSION_TOO_FRESH_")) {
                if (twoStepVerificationActivity != null) {
                    twoStepVerificationActivity.needHideProgress();
                }
                AlertDialog.Builder builder3 = new AlertDialog.Builder(chatActivity.getParentActivity());
                builder3.setTitle(LocaleController.getString("EditAdminTransferAlertTitle", C3158R.string.EditAdminTransferAlertTitle));
                LinearLayout linearLayout = new LinearLayout(chatActivity.getParentActivity());
                linearLayout.setPadding(AndroidUtilities.m50dp(24), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(24), 0);
                linearLayout.setOrientation(1);
                builder3.setView(linearLayout);
                TextView textView = new TextView(chatActivity.getParentActivity());
                textView.setTextColor(Theme.getColor("dialogTextBlack"));
                textView.setTextSize(1, 16.0f);
                textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("BotOwnershipTransferAlertText", C3158R.string.BotOwnershipTransferAlertText, new Object[0])));
                linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
                LinearLayout linearLayout2 = new LinearLayout(chatActivity.getParentActivity());
                linearLayout2.setOrientation(0);
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                ImageView imageView = new ImageView(chatActivity.getParentActivity());
                int i = C3158R.C3160drawable.list_circle;
                imageView.setImageResource(i);
                imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(11) : 0, AndroidUtilities.m50dp(9), LocaleController.isRTL ? 0 : AndroidUtilities.m50dp(11), 0);
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogTextBlack"), PorterDuff.Mode.MULTIPLY));
                TextView textView2 = new TextView(chatActivity.getParentActivity());
                textView2.setTextColor(Theme.getColor("dialogTextBlack"));
                textView2.setTextSize(1, 16.0f);
                textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString("EditAdminTransferAlertText1", C3158R.string.EditAdminTransferAlertText1)));
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
                imageView2.setImageResource(i);
                imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.m50dp(11) : 0, AndroidUtilities.m50dp(9), LocaleController.isRTL ? 0 : AndroidUtilities.m50dp(11), 0);
                imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor("dialogTextBlack"), PorterDuff.Mode.MULTIPLY));
                TextView textView3 = new TextView(chatActivity.getParentActivity());
                textView3.setTextColor(Theme.getColor("dialogTextBlack"));
                textView3.setTextSize(1, 16.0f);
                textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString("EditAdminTransferAlertText2", C3158R.string.EditAdminTransferAlertText2)));
                if (LocaleController.isRTL) {
                    linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
                } else {
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
                    linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                }
                if ("PASSWORD_MISSING".equals(tLRPC$TL_error.text)) {
                    builder3.setPositiveButton(LocaleController.getString("EditAdminTransferSetPassword", C3158R.string.EditAdminTransferSetPassword), new DialogInterface.OnClickListener() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            SendMessagesHelper.lambda$sendCallback$26(ChatActivity.this, dialogInterface, i2);
                        }
                    });
                    builder3.setNegativeButton(LocaleController.getString("Cancel", C3158R.string.Cancel), null);
                } else {
                    TextView textView4 = new TextView(chatActivity.getParentActivity());
                    textView4.setTextColor(Theme.getColor("dialogTextBlack"));
                    textView4.setTextSize(1, 16.0f);
                    textView4.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
                    textView4.setText(LocaleController.getString("EditAdminTransferAlertText3", C3158R.string.EditAdminTransferAlertText3));
                    linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0, 11, 0, 0));
                    builder3.setNegativeButton(LocaleController.getString("OK", C3158R.string.OK), null);
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
            @Override // org.telegram.p048ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda57
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
                try {
                    nativeByteBuffer.writeInt32(3);
                    nativeByteBuffer.writeInt64(j);
                    tLRPC$InputPeer.serializeToStream(nativeByteBuffer);
                    tLRPC$TL_inputMediaGame.serializeToStream(nativeByteBuffer);
                } catch (Exception e) {
                    e = e;
                    nativeByteBuffer2 = nativeByteBuffer;
                    FileLog.m45e(e);
                    nativeByteBuffer = nativeByteBuffer2;
                    j2 = getMessagesStorage().createPendingTask(nativeByteBuffer);
                    getConnectionsManager().sendRequest(tLRPC$TL_messages_sendMedia, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda80
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                            SendMessagesHelper.this.lambda$sendGame$31(j2, tLObject, tLRPC$TL_error);
                        }
                    });
                }
            } catch (Exception e2) {
                e = e2;
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

    public void sendMessage(MessageObject messageObject) {
        long dialogId = messageObject.getDialogId();
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        sendMessage(null, null, null, null, null, null, null, null, null, null, dialogId, tLRPC$Message.attachPath, null, null, null, true, messageObject, null, tLRPC$Message.reply_markup, tLRPC$Message.params, !tLRPC$Message.silent, messageObject.scheduled ? tLRPC$Message.date : 0, 0, null, null, false, null);
    }

    public void sendMessage(TLRPC$User tLRPC$User, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
        sendMessage(null, null, null, null, null, tLRPC$User, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
    }

    public void sendMessage(TLRPC$TL_messageMediaInvoice tLRPC$TL_messageMediaInvoice, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
        sendMessage(null, null, null, null, null, null, null, null, null, tLRPC$TL_messageMediaInvoice, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
    }

    public void sendMessage(TLRPC$TL_document tLRPC$TL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2, String str3) {
        sendMessage(null, str2, null, null, videoEditedInfo, null, tLRPC$TL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, sendAnimationData, z2, str3);
    }

    public void sendMessage(TLRPC$TL_document tLRPC$TL_document, VideoEditedInfo videoEditedInfo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z2, boolean z3, String str3) {
        sendMessage(null, str2, null, null, videoEditedInfo, null, tLRPC$TL_document, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, sendAnimationData, z2, z3, str3);
    }

    public void sendMessage(String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$WebPage tLRPC$WebPage, boolean z, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z2, int i, MessageObject.SendAnimationData sendAnimationData, boolean z3, String str2) {
        sendMessage(str, null, null, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, tLRPC$WebPage, z, null, arrayList, tLRPC$ReplyMarkup, hashMap, z2, i, 0, null, sendAnimationData, z3, str2);
    }

    public void sendMessage(TLRPC$MessageMedia tLRPC$MessageMedia, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
        sendMessage(null, null, tLRPC$MessageMedia, null, null, null, null, null, null, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
    }

    public void sendMessage(TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
        sendMessage(null, null, null, null, null, null, null, null, tLRPC$TL_messageMediaPoll, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
    }

    public void sendMessage(TLRPC$TL_game tLRPC$TL_game, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, String str) {
        sendMessage(null, null, null, null, null, null, null, tLRPC$TL_game, null, null, j, null, messageObject, messageObject2, null, true, null, null, tLRPC$ReplyMarkup, hashMap, z, i, 0, null, null, false, str);
    }

    public void sendMessage(TLRPC$TL_photo tLRPC$TL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, boolean z2, boolean z3, String str3) {
        sendMessage(null, str2, null, tLRPC$TL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, null, z2, z3, str3);
    }

    public void sendMessage(TLRPC$TL_photo tLRPC$TL_photo, String str, long j, MessageObject messageObject, MessageObject messageObject2, String str2, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z, int i, int i2, Object obj, boolean z2, String str3) {
        sendMessage(null, str2, null, tLRPC$TL_photo, null, null, null, null, null, null, j, str, messageObject, messageObject2, null, true, null, arrayList, tLRPC$ReplyMarkup, hashMap, z, i, i2, obj, null, z2, str3);
    }

    private void sendMessage(String str, String str2, TLRPC$MessageMedia tLRPC$MessageMedia, TLRPC$TL_photo tLRPC$TL_photo, VideoEditedInfo videoEditedInfo, TLRPC$User tLRPC$User, TLRPC$TL_document tLRPC$TL_document, TLRPC$TL_game tLRPC$TL_game, TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll, TLRPC$TL_messageMediaInvoice tLRPC$TL_messageMediaInvoice, long j, String str3, MessageObject messageObject, MessageObject messageObject2, TLRPC$WebPage tLRPC$WebPage, boolean z, MessageObject messageObject3, ArrayList<TLRPC$MessageEntity> arrayList, TLRPC$ReplyMarkup tLRPC$ReplyMarkup, HashMap<String, String> hashMap, boolean z2, int i, int i2, Object obj, MessageObject.SendAnimationData sendAnimationData, boolean z3, String str4) {
        sendMessage(str, str2, tLRPC$MessageMedia, tLRPC$TL_photo, videoEditedInfo, tLRPC$User, tLRPC$TL_document, tLRPC$TL_game, tLRPC$TL_messageMediaPoll, tLRPC$TL_messageMediaInvoice, j, str3, messageObject, messageObject2, tLRPC$WebPage, z, messageObject3, arrayList, tLRPC$ReplyMarkup, hashMap, z2, i, i2, obj, sendAnimationData, z3, false, str4);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:224|(11:226|(1:228)|229|230|(4:232|(4:234|(1:236)(2:354|(4:356|(1:358)|359|(1:361))(1:362))|237|238)(4:363|364|(11:613|614|615|(1:617)|(1:652)(4:621|(1:623)|624|625)|626|627|(1:629)(5:645|646|647|(1:649)|650)|(3:631|(1:633)(1:643)|634)(1:644)|635|(1:642)(1:641))(4:369|370|(18:545|546|(13:548|(1:(2:551|(1:553)))(1:607)|(1:561)|(3:595|596|(13:598|599|(1:601)|602|603|564|565|566|(1:568)(4:584|(2:586|587)|(1:591)|592)|(4:570|571|(1:573)(1:581)|574)(1:583)|575|(2:577|(1:579))|580))|563|564|565|566|(0)(0)|(0)(0)|575|(0)|580)|608|555|556|(1:558)|(0)|(0)|563|564|565|566|(0)(0)|(0)(0)|575|(0)|580)(4:372|(3:374|(1:383)(1:378)|379)(9:384|(2:389|(9:391|(5:429|430|431|432|433)(1:393)|394|395|396|(1:398)(6:405|406|407|(1:409)|(1:413)|414)|399|(1:401)(1:404)|402)(3:440|(4:442|(2:446|(4:448|(2:451|449)|452|453))|454|(2:456|(1:458)))(2:460|(1:462)(2:463|381))|459))|464|(6:513|514|(4:534|535|536|537)(1:516)|(3:531|532|533)|(1:530)(1:528)|529)(1:471)|472|473|(2:475|476)(7:499|500|501|502|(1:504)|(1:508)|509)|(4:(5:479|480|481|(1:483)(1:492)|484)(1:497)|485|(2:487|(1:489))|490)(1:498)|491)|380|381)|382)|403)|(5:240|(1:242)(6:319|(1:321)|322|(1:326)|(1:328)|329)|243|(1:247)|248)(11:330|(1:332)|333|(1:337)|338|(1:340)|341|(1:345)|(1:347)|(1:351)|(1:353))|(2:250|251)(2:252|(4:254|(1:256)(1:259)|257|258)(2:260|(1:(2:263|264)(4:265|(1:267)(1:270)|268|269))(2:271|(1:(2:274|275)(3:(1:277)(1:280)|278|279))(2:281|(3:(1:284)(1:287)|285|286)(2:288|(1:(3:(1:295)(1:298)|296|297)(2:292|293))(2:299|(1:(2:302|303)(3:(1:305)(1:308)|306|307))(2:309|(3:(1:315)(1:318)|316|317)(1:313)))))))))(19:657|658|659|660|(2:662|(1:664))(1:908)|665|(1:669)|670|(2:672|(1:674))|675|(3:677|678|(1:680))(1:907)|681|682|683|(4:685|(1:687)(1:720)|688|689)(10:721|(2:723|(4:781|(13:849|850|(7:855|(1:895)(1:859)|860|(2:861|(2:863|(2:866|867)(1:865))(1:894))|868|(3:(8:875|(3:877|878|(5:880|881|882|(1:884)(1:889)|885))|891|892|881|882|(0)(0)|885)(1:893)|886|(1:888))(2:871|872)|873)|896|(1:901)(1:900)|860|(3:861|(0)(0)|865)|868|(0)|(0)(0)|886|(0)|873)(2:783|(1:785)(4:786|(2:792|(5:794|(1:796)(1:802)|797|(1:799)(1:801)|800))|803|(8:819|(1:821)(1:848)|822|(2:826|740)|839|(1:845)|(1:847)|740)(5:809|(1:811)(1:818)|(2:813|(2:815|691))(1:817)|816|691)))|(1:719)(7:693|(1:695)(1:718)|696|697|698|(1:711)|702)|(4:704|(1:706)(1:709)|707|708)(1:710))(1:726))(1:904)|727|728|729|730|731|(3:733|734|735)(2:774|775)|736|(7:(10:753|754|(3:756|757|(6:759|760|761|(1:763)(1:766)|764|765))|768|769|760|761|(0)(0)|764|765)(1:742)|743|744|(2:751|752)(1:748)|(1:750)|(0)(0)|(0)(0))(4:739|740|(0)(0)|(0)(0)))|690|691|(0)(0)|(0)(0))|420|(1:422)(1:428)|423|(1:425)|426|427)|912|(2:924|(12:926|(1:928)|(2:930|(11:932|(2:934|(1:936)(1:956))(1:957)|937|938|(1:940)|941|(1:943)(2:950|(1:952)(2:953|(1:955)))|944|(1:946)(1:949)|947|948))(1:959)|958|938|(0)|941|(0)(0)|944|(0)(0)|947|948)(2:960|(16:962|(1:964)|965|(1:967)|968|(1:970)(1:992)|971|(1:975)|976|(1:978)|979|(3:981|(1:983)(1:985)|984)|986|(1:988)(1:991)|989|990)(1:993)))|229|230|(0)(0)|420|(0)(0)|423|(0)|426|427) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:721|(6:(2:723|(4:781|(13:849|850|(7:855|(1:895)(1:859)|860|(2:861|(2:863|(2:866|867)(1:865))(1:894))|868|(3:(8:875|(3:877|878|(5:880|881|882|(1:884)(1:889)|885))|891|892|881|882|(0)(0)|885)(1:893)|886|(1:888))(2:871|872)|873)|896|(1:901)(1:900)|860|(3:861|(0)(0)|865)|868|(0)|(0)(0)|886|(0)|873)(2:783|(1:785)(4:786|(2:792|(5:794|(1:796)(1:802)|797|(1:799)(1:801)|800))|803|(8:819|(1:821)(1:848)|822|(2:826|740)|839|(1:845)|(1:847)|740)(5:809|(1:811)(1:818)|(2:813|(2:815|691))(1:817)|816|691)))|(1:719)(7:693|(1:695)(1:718)|696|697|698|(1:711)|702)|(4:704|(1:706)(1:709)|707|708)(1:710))(1:726))(1:904)|730|731|(3:733|734|735)(2:774|775)|736|(7:(10:753|754|(3:756|757|(6:759|760|761|(1:763)(1:766)|764|765))|768|769|760|761|(0)(0)|764|765)(1:742)|743|744|(2:751|752)(1:748)|(1:750)|(0)(0)|(0)(0))(4:739|740|(0)(0)|(0)(0)))|727|728|729) */
    /* JADX WARN: Can't wrap try/catch for region: R(71:10|(1:1571)(1:13)|(1:1570)(1:17)|18|(1:20)(1:1569)|21|(2:23|(1:(2:26|27)(1:28))(1:29))(2:1555|(67:1557|(1:1559)(1:1567)|(1:1566)(1:1564)|1565|31|(3:(3:34|(3:37|(1:53)(1:51)|35)|1552)|1553|(65:(1:56)(1:1544)|57|(1:59)(1:(1:1542)(62:1543|61|62|63|(7:65|(1:1254)(1:70)|71|(7:77|(1:79)(10:1191|(7:1196|(1:1198)(3:1200|(3:1202|(1:1204)|1205)(4:1207|(2:1214|(1:1216)(4:1217|(2:1228|(2:1230|(2:1232|1233)(5:1234|1235|(1:1190)(1:84)|85|(3:87|88|89)(2:1189|89)))(2:1236|(1:1238)(1:1239)))|1240|(2:1242|1233)(6:1243|1235|(1:82)|1190|85|(0)(0))))|1244|(2:1246|1233)(6:1247|1235|(0)|1190|85|(0)(0)))|1206)|1199|(0)|1190|85|(0)(0))|1248|(1:1250)(1:1252)|1251|1199|(0)|1190|85|(0)(0))|80|(0)|1190|85|(0)(0))|1253|88|89)(5:1255|1256|1257|(1:1259)(1:1534)|(19:(1:1262)(1:1335)|(3:1325|1326|(3:1328|(1:1330)(1:1331)|(14:(1:1315)(1:1324)|(1:1323)(1:1319)|1320|1321|1322|(3:1309|1310|(12:1312|(1:1280)(3:1305|1306|(1:1308))|1281|(1:1283)|1284|(2:1301|(1:1303)(6:1304|1289|1290|1291|1292|1293))(1:1287)|1288|1289|1290|1291|1292|1293))|1278|(0)(0)|1281|(0)|1284|(0)|1301|(0)(0))(10:1276|(0)|1278|(0)(0)|1281|(0)|1284|(0)|1301|(0)(0))))|1264|(1:1266)|(0)(0)|(1:1317)|1323|1320|1321|1322|(0)|1278|(0)(0)|1281|(0)|1284|(0)|1301|(0)(0))(11:1336|(3:(1:1339)(1:1342)|1340|1341)(4:1343|(4:(1:1346)(1:1355)|1347|(1:1354)(1:1351)|1352)(4:1356|1357|(9:(1:1360)(1:1384)|1361|(1:1363)|1364|(1:1366)|1367|(1:1383)(1:1371)|(3:1380|1381|1382)(1:1377)|1378)(3:1386|1387|(3:1389|1390|(1:1396)(2:1394|1395))(2:1397|(3:1399|1400|(1:1405)(2:1404|1395))(2:1406|(9:(1:1409)(1:1428)|1410|1411|(1:1427)(1:1415)|1416|(1:1418)|1419|(1:1421)|(1:1426)(1:1425))(2:1429|(14:(1:1432)(1:1528)|1433|1434|(4:1437|1438|(2:1440|(3:1443|1444|1445)(1:1442))|1522)|1525|1446|(1:1448)|1449|(2:1510|(2:1518|(1:1520)(1:1521))(1:1517))(1:1453)|(3:1455|(1:1457)(1:1508)|1458)(1:1509)|(1:1507)(1:1466)|(3:1473|(3:1476|(4:1479|1480|1481|(5:1483|(2:1485|1486)(3:1497|1498|1499)|1487|(1:1489)(3:1491|(1:1493)(1:1495)|1494)|1490)(2:1501|1502))(1:1478)|1474)|1505)|1506|1502)(2:1529|1322)))))|1379)|1353|1322)|(0)|1278|(0)(0)|1281|(0)|1284|(0)|1301|(0)(0)))|(4:91|92|93|(52:95|96|97|98|(1:100)|101|(1:1181)(2:(3:106|(1:108)|109)(1:1180)|110)|111|112|(3:(1:1162)(1:1179)|1163|(3:(2:1167|1168)|1169|(2:1171|(1:1173)(2:1174|(1:1176))))(2:1177|1178))|116|117|(47:119|(1:1159)(3:122|123|(1:125))|126|(2:128|(39:130|131|(2:1153|(1:1155))(2:136|(1:138))|139|(1:141)|142|(2:145|(1:147))|148|(4:150|(2:152|(2:154|155)(2:156|(1:158)))|159|(3:161|(1:163)(1:165)|164))(6:1109|1110|(1:1112)(1:1152)|(1:1114)(2:1147|(1:1151))|1115|(2:1119|(3:1121|(2:1122|(2:1124|(2:1127|1128)(1:1126))(2:1130|1131))|1129)(2:1132|(3:1136|(2:1137|(2:1139|(2:1142|1143)(1:1141))(2:1145|1146))|1144))))|166|(2:1107|1108)|170|(1:172)|173|174|(4:176|(1:178)(1:1105)|179|(20:181|(1:183)(1:1103)|(1:1102)(1:189)|190|191|192|193|(1:195)(1:1098)|196|(3:1088|1089|(1:1096))|198|(1:1087)|201|(7:203|(1:205)(1:1070)|206|(1:208)(1:1069)|209|(1:211)(1:1068)|212)(7:1071|1072|(2:1074|1075)|(3:1077|(1:1079)(1:1085)|1080)(1:1086)|1081|1082|(1:1084))|213|(1:1066)(1:216)|217|(13:224|(11:226|(1:228)|229|230|(4:232|(4:234|(1:236)(2:354|(4:356|(1:358)|359|(1:361))(1:362))|237|238)(4:363|364|(11:613|614|615|(1:617)|(1:652)(4:621|(1:623)|624|625)|626|627|(1:629)(5:645|646|647|(1:649)|650)|(3:631|(1:633)(1:643)|634)(1:644)|635|(1:642)(1:641))(4:369|370|(18:545|546|(13:548|(1:(2:551|(1:553)))(1:607)|(1:561)|(3:595|596|(13:598|599|(1:601)|602|603|564|565|566|(1:568)(4:584|(2:586|587)|(1:591)|592)|(4:570|571|(1:573)(1:581)|574)(1:583)|575|(2:577|(1:579))|580))|563|564|565|566|(0)(0)|(0)(0)|575|(0)|580)|608|555|556|(1:558)|(0)|(0)|563|564|565|566|(0)(0)|(0)(0)|575|(0)|580)(4:372|(3:374|(1:383)(1:378)|379)(9:384|(2:389|(9:391|(5:429|430|431|432|433)(1:393)|394|395|396|(1:398)(6:405|406|407|(1:409)|(1:413)|414)|399|(1:401)(1:404)|402)(3:440|(4:442|(2:446|(4:448|(2:451|449)|452|453))|454|(2:456|(1:458)))(2:460|(1:462)(2:463|381))|459))|464|(6:513|514|(4:534|535|536|537)(1:516)|(3:531|532|533)|(1:530)(1:528)|529)(1:471)|472|473|(2:475|476)(7:499|500|501|502|(1:504)|(1:508)|509)|(4:(5:479|480|481|(1:483)(1:492)|484)(1:497)|485|(2:487|(1:489))|490)(1:498)|491)|380|381)|382)|403)|(5:240|(1:242)(6:319|(1:321)|322|(1:326)|(1:328)|329)|243|(1:247)|248)(11:330|(1:332)|333|(1:337)|338|(1:340)|341|(1:345)|(1:347)|(1:351)|(1:353))|(2:250|251)(2:252|(4:254|(1:256)(1:259)|257|258)(2:260|(1:(2:263|264)(4:265|(1:267)(1:270)|268|269))(2:271|(1:(2:274|275)(3:(1:277)(1:280)|278|279))(2:281|(3:(1:284)(1:287)|285|286)(2:288|(1:(3:(1:295)(1:298)|296|297)(2:292|293))(2:299|(1:(2:302|303)(3:(1:305)(1:308)|306|307))(2:309|(3:(1:315)(1:318)|316|317)(1:313)))))))))(19:657|658|659|660|(2:662|(1:664))(1:908)|665|(1:669)|670|(2:672|(1:674))|675|(3:677|678|(1:680))(1:907)|681|682|683|(4:685|(1:687)(1:720)|688|689)(10:721|(2:723|(4:781|(13:849|850|(7:855|(1:895)(1:859)|860|(2:861|(2:863|(2:866|867)(1:865))(1:894))|868|(3:(8:875|(3:877|878|(5:880|881|882|(1:884)(1:889)|885))|891|892|881|882|(0)(0)|885)(1:893)|886|(1:888))(2:871|872)|873)|896|(1:901)(1:900)|860|(3:861|(0)(0)|865)|868|(0)|(0)(0)|886|(0)|873)(2:783|(1:785)(4:786|(2:792|(5:794|(1:796)(1:802)|797|(1:799)(1:801)|800))|803|(8:819|(1:821)(1:848)|822|(2:826|740)|839|(1:845)|(1:847)|740)(5:809|(1:811)(1:818)|(2:813|(2:815|691))(1:817)|816|691)))|(1:719)(7:693|(1:695)(1:718)|696|697|698|(1:711)|702)|(4:704|(1:706)(1:709)|707|708)(1:710))(1:726))(1:904)|727|728|729|730|731|(3:733|734|735)(2:774|775)|736|(7:(10:753|754|(3:756|757|(6:759|760|761|(1:763)(1:766)|764|765))|768|769|760|761|(0)(0)|764|765)(1:742)|743|744|(2:751|752)(1:748)|(1:750)|(0)(0)|(0)(0))(4:739|740|(0)(0)|(0)(0)))|690|691|(0)(0)|(0)(0))|420|(1:422)(1:428)|423|(1:425)|426|427)|912|(2:924|(12:926|(1:928)|(2:930|(11:932|(2:934|(1:936)(1:956))(1:957)|937|938|(1:940)|941|(1:943)(2:950|(1:952)(2:953|(1:955)))|944|(1:946)(1:949)|947|948))(1:959)|958|938|(0)|941|(0)(0)|944|(0)(0)|947|948)(2:960|(16:962|(1:964)|965|(1:967)|968|(1:970)(1:992)|971|(1:975)|976|(1:978)|979|(3:981|(1:983)(1:985)|984)|986|(1:988)(1:991)|989|990)(1:993)))|229|230|(0)(0)|420|(0)(0)|423|(0)|426|427)|994|(16:996|(1:998)(1:1035)|999|(1:1001)|(1:1005)|1006|(1:1008)|1009|(1:1013)|(1:1015)|(1:1019)|(1:1021)|1022|(1:1024)(1:1034)|1025|(4:1027|(1:1029)(1:1032)|1030|1031)(1:1033))(9:1036|(1:1040)|1041|(2:1043|(1:1045))|(1:1049)|1050|(1:1064)(1:1054)|1055|(4:1057|(1:1059)(1:1062)|1060|1061)(1:1063))))(1:1106)|1104|(0)(0)|(0)|1102|190|191|192|193|(0)(0)|196|(0)|198|(0)|1087|201|(0)(0)|213|(0)|1066|217|(10:219|224|(0)|912|(1:914)|916|919|921|924|(0)(0))|994|(0)(0)))(1:1157)|1156|131|(0)|1153|(0)|139|(0)|142|(2:145|(0))|148|(0)(0)|166|(1:168)|1107|1108|170|(0)|173|174|(0)(0)|1104|(0)(0)|(0)|1102|190|191|192|193|(0)(0)|196|(0)|198|(0)|1087|201|(0)(0)|213|(0)|1066|217|(0)|994|(0)(0))(1:1160)|1158|139|(0)|142|(0)|148|(0)(0)|166|(0)|1107|1108|170|(0)|173|174|(0)(0)|1104|(0)(0)|(0)|1102|190|191|192|193|(0)(0)|196|(0)|198|(0)|1087|201|(0)(0)|213|(0)|1066|217|(0)|994|(0)(0)))(1:1188)|1185|96|97|98|(0)|101|(1:103)|1181|111|112|(1:114)|(0)(0)|1163|(0)(0)|116|117|(0)(0)|1158|139|(0)|142|(0)|148|(0)(0)|166|(0)|1107|1108|170|(0)|173|174|(0)(0)|1104|(0)(0)|(0)|1102|190|191|192|193|(0)(0)|196|(0)|198|(0)|1087|201|(0)(0)|213|(0)|1066|217|(0)|994|(0)(0)))|60|61|62|63|(0)(0)|(0)(0)|1185|96|97|98|(0)|101|(0)|1181|111|112|(0)|(0)(0)|1163|(0)(0)|116|117|(0)(0)|1158|139|(0)|142|(0)|148|(0)(0)|166|(0)|1107|1108|170|(0)|173|174|(0)(0)|1104|(0)(0)|(0)|1102|190|191|192|193|(0)(0)|196|(0)|198|(0)|1087|201|(0)(0)|213|(0)|1066|217|(0)|994|(0)(0)))(1:1554)|1545|62|63|(0)(0)|(0)(0)|1185|96|97|98|(0)|101|(0)|1181|111|112|(0)|(0)(0)|1163|(0)(0)|116|117|(0)(0)|1158|139|(0)|142|(0)|148|(0)(0)|166|(0)|1107|1108|170|(0)|173|174|(0)(0)|1104|(0)(0)|(0)|1102|190|191|192|193|(0)(0)|196|(0)|198|(0)|1087|201|(0)(0)|213|(0)|1066|217|(0)|994|(0)(0))(1:1568))|30|31|(0)(0)|1545|62|63|(0)(0)|(0)(0)|1185|96|97|98|(0)|101|(0)|1181|111|112|(0)|(0)(0)|1163|(0)(0)|116|117|(0)(0)|1158|139|(0)|142|(0)|148|(0)(0)|166|(0)|1107|1108|170|(0)|173|174|(0)(0)|1104|(0)(0)|(0)|1102|190|191|192|193|(0)(0)|196|(0)|198|(0)|1087|201|(0)(0)|213|(0)|1066|217|(0)|994|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:1176:0x166d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1320:0x1a2d, code lost:
        r1 = new org.telegram.messenger.SendMessagesHelper.DelayedMessage(r15, r11);
        r1.encryptedChat = r3;
        r1.type = 2;
        r1.sendEncryptedRequest = r10;
        r1.originalPath = r5;
        r1.obj = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1321:0x1a3d, code lost:
        if (r13 == null) goto L838;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1323:0x1a43, code lost:
        if (r13.containsKey(r4) == false) goto L838;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1324:0x1a45, code lost:
        r1.parentObject = r13.get(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1325:0x1a4c, code lost:
        r1.parentObject = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1326:0x1a50, code lost:
        r1.performMediaUpload = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1327:0x1a53, code lost:
        if (r76 == 0) goto L837;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1328:0x1a55, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1329:0x1a57, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1330:0x1a58, code lost:
        r1.scheduled = r3;
        r9 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1412:0x1be5, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1413:0x1be6, code lost:
        r23 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1485:0x1d38, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1487:0x1d3a, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1488:0x1d3b, code lost:
        r2 = r1;
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1490:0x1d40, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1491:0x1d41, code lost:
        r1 = r0;
        r5 = r4;
        r15 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03a6, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x03a7, code lost:
        r15 = r53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03ac, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x03ad, code lost:
        r2 = null;
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:817:0x0f78, code lost:
        if (r14.roundVideo == false) goto L555;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1168:0x163b  */
    /* JADX WARN: Removed duplicated region for block: B:1236:0x179b A[Catch: Exception -> 0x166d, TRY_ENTER, TryCatch #0 {Exception -> 0x166d, blocks: (B:1063:0x1434, B:1065:0x1438, B:1077:0x1472, B:1079:0x14b3, B:1081:0x14b9, B:1082:0x14c3, B:1108:0x153a, B:1115:0x154a, B:1119:0x1564, B:1124:0x1570, B:1128:0x158c, B:1132:0x1596, B:1138:0x15b3, B:1143:0x15cf, B:1147:0x15d9, B:1151:0x15f4, B:1155:0x15fe, B:1163:0x1620, B:1066:0x143b, B:1068:0x144a, B:1069:0x1456, B:1071:0x145a, B:1073:0x145e, B:1075:0x1468, B:1076:0x1470, B:1083:0x14c9, B:1085:0x14dc, B:1086:0x14e8, B:1088:0x14ec, B:1090:0x14f0, B:1091:0x14f8, B:1093:0x1500, B:1094:0x150c, B:1096:0x1512, B:1098:0x1518, B:1100:0x1523, B:1102:0x152d, B:1104:0x1531, B:1106:0x1536, B:1047:0x13e7, B:1051:0x13f8, B:1053:0x1401, B:1055:0x1409, B:1057:0x140f, B:1059:0x1417, B:1060:0x141a, B:1042:0x13cf, B:1044:0x13dd, B:1045:0x13e2, B:1172:0x165c, B:1174:0x1663, B:1181:0x167a, B:1183:0x1680, B:1186:0x168c, B:1188:0x1692, B:1192:0x16ab, B:1194:0x16b1, B:1200:0x16cb, B:1202:0x16cf, B:1204:0x16ee, B:1203:0x16e7, B:1216:0x1748, B:1219:0x174f, B:1221:0x1758, B:1223:0x175c, B:1236:0x179b, B:1238:0x17a7, B:1245:0x17ca, B:1251:0x181c, B:1253:0x1822, B:1262:0x1837, B:1264:0x1846, B:1266:0x184a, B:1224:0x1761, B:1228:0x1776, B:1230:0x177a), top: B:1508:0x0ec8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1248:0x1804 A[Catch: Exception -> 0x1856, TRY_ENTER, TRY_LEAVE, TryCatch #24 {Exception -> 0x1856, blocks: (B:1214:0x1739, B:1233:0x1786, B:1234:0x1793, B:1241:0x17b9, B:1248:0x1804, B:1257:0x182d, B:1256:0x182b, B:1226:0x1769, B:1232:0x177f), top: B:1545:0x1739 }] */
    /* JADX WARN: Removed duplicated region for block: B:1260:0x1834  */
    /* JADX WARN: Removed duplicated region for block: B:1261:0x1836  */
    /* JADX WARN: Removed duplicated region for block: B:1263:0x183c  */
    /* JADX WARN: Removed duplicated region for block: B:1266:0x184a A[Catch: Exception -> 0x166d, TRY_LEAVE, TryCatch #0 {Exception -> 0x166d, blocks: (B:1063:0x1434, B:1065:0x1438, B:1077:0x1472, B:1079:0x14b3, B:1081:0x14b9, B:1082:0x14c3, B:1108:0x153a, B:1115:0x154a, B:1119:0x1564, B:1124:0x1570, B:1128:0x158c, B:1132:0x1596, B:1138:0x15b3, B:1143:0x15cf, B:1147:0x15d9, B:1151:0x15f4, B:1155:0x15fe, B:1163:0x1620, B:1066:0x143b, B:1068:0x144a, B:1069:0x1456, B:1071:0x145a, B:1073:0x145e, B:1075:0x1468, B:1076:0x1470, B:1083:0x14c9, B:1085:0x14dc, B:1086:0x14e8, B:1088:0x14ec, B:1090:0x14f0, B:1091:0x14f8, B:1093:0x1500, B:1094:0x150c, B:1096:0x1512, B:1098:0x1518, B:1100:0x1523, B:1102:0x152d, B:1104:0x1531, B:1106:0x1536, B:1047:0x13e7, B:1051:0x13f8, B:1053:0x1401, B:1055:0x1409, B:1057:0x140f, B:1059:0x1417, B:1060:0x141a, B:1042:0x13cf, B:1044:0x13dd, B:1045:0x13e2, B:1172:0x165c, B:1174:0x1663, B:1181:0x167a, B:1183:0x1680, B:1186:0x168c, B:1188:0x1692, B:1192:0x16ab, B:1194:0x16b1, B:1200:0x16cb, B:1202:0x16cf, B:1204:0x16ee, B:1203:0x16e7, B:1216:0x1748, B:1219:0x174f, B:1221:0x1758, B:1223:0x175c, B:1236:0x179b, B:1238:0x17a7, B:1245:0x17ca, B:1251:0x181c, B:1253:0x1822, B:1262:0x1837, B:1264:0x1846, B:1266:0x184a, B:1224:0x1761, B:1228:0x1776, B:1230:0x177a), top: B:1508:0x0ec8 }] */
    /* JADX WARN: Removed duplicated region for block: B:1370:0x1b4a  */
    /* JADX WARN: Removed duplicated region for block: B:1371:0x1b4c  */
    /* JADX WARN: Removed duplicated region for block: B:1388:0x1b86 A[Catch: Exception -> 0x1bc9, TRY_ENTER, TRY_LEAVE, TryCatch #23 {Exception -> 0x1bc9, blocks: (B:1388:0x1b86, B:1393:0x1b94, B:1392:0x1b8d, B:1377:0x1b58, B:1384:0x1b6d), top: B:1543:0x1b58 }] */
    /* JADX WARN: Removed duplicated region for block: B:1403:0x1bcb  */
    /* JADX WARN: Removed duplicated region for block: B:1405:0x1bcf A[Catch: Exception -> 0x1d38, TryCatch #4 {Exception -> 0x1d38, blocks: (B:1395:0x1b9d, B:1400:0x1bbc, B:1405:0x1bcf, B:1407:0x1bd5, B:1409:0x1bdb, B:1419:0x1c02, B:1423:0x1c0e, B:1425:0x1c1c, B:1427:0x1c2a, B:1429:0x1c2e, B:1430:0x1c31, B:1432:0x1c35, B:1433:0x1c41, B:1435:0x1c45, B:1437:0x1c49, B:1439:0x1c53, B:1441:0x1c58, B:1443:0x1c5e, B:1445:0x1c69, B:1450:0x1c78, B:1452:0x1c8d, B:1454:0x1c93, B:1456:0x1c99, B:1457:0x1c9f, B:1459:0x1caa, B:1461:0x1cb0, B:1462:0x1cb8, B:1464:0x1cbc, B:1466:0x1cc2, B:1468:0x1ccd, B:1470:0x1cd3, B:1471:0x1ce1, B:1473:0x1cef, B:1475:0x1cf3, B:1477:0x1d0c, B:1479:0x1d27, B:1481:0x1d2d, B:1483:0x1d33, B:1476:0x1d05), top: B:1513:0x0cee }] */
    /* JADX WARN: Removed duplicated region for block: B:1419:0x1c02 A[Catch: Exception -> 0x1d38, TryCatch #4 {Exception -> 0x1d38, blocks: (B:1395:0x1b9d, B:1400:0x1bbc, B:1405:0x1bcf, B:1407:0x1bd5, B:1409:0x1bdb, B:1419:0x1c02, B:1423:0x1c0e, B:1425:0x1c1c, B:1427:0x1c2a, B:1429:0x1c2e, B:1430:0x1c31, B:1432:0x1c35, B:1433:0x1c41, B:1435:0x1c45, B:1437:0x1c49, B:1439:0x1c53, B:1441:0x1c58, B:1443:0x1c5e, B:1445:0x1c69, B:1450:0x1c78, B:1452:0x1c8d, B:1454:0x1c93, B:1456:0x1c99, B:1457:0x1c9f, B:1459:0x1caa, B:1461:0x1cb0, B:1462:0x1cb8, B:1464:0x1cbc, B:1466:0x1cc2, B:1468:0x1ccd, B:1470:0x1cd3, B:1471:0x1ce1, B:1473:0x1cef, B:1475:0x1cf3, B:1477:0x1d0c, B:1479:0x1d27, B:1481:0x1d2d, B:1483:0x1d33, B:1476:0x1d05), top: B:1513:0x0cee }] */
    /* JADX WARN: Removed duplicated region for block: B:1457:0x1c9f A[Catch: Exception -> 0x1d38, TryCatch #4 {Exception -> 0x1d38, blocks: (B:1395:0x1b9d, B:1400:0x1bbc, B:1405:0x1bcf, B:1407:0x1bd5, B:1409:0x1bdb, B:1419:0x1c02, B:1423:0x1c0e, B:1425:0x1c1c, B:1427:0x1c2a, B:1429:0x1c2e, B:1430:0x1c31, B:1432:0x1c35, B:1433:0x1c41, B:1435:0x1c45, B:1437:0x1c49, B:1439:0x1c53, B:1441:0x1c58, B:1443:0x1c5e, B:1445:0x1c69, B:1450:0x1c78, B:1452:0x1c8d, B:1454:0x1c93, B:1456:0x1c99, B:1457:0x1c9f, B:1459:0x1caa, B:1461:0x1cb0, B:1462:0x1cb8, B:1464:0x1cbc, B:1466:0x1cc2, B:1468:0x1ccd, B:1470:0x1cd3, B:1471:0x1ce1, B:1473:0x1cef, B:1475:0x1cf3, B:1477:0x1d0c, B:1479:0x1d27, B:1481:0x1d2d, B:1483:0x1d33, B:1476:0x1d05), top: B:1513:0x0cee }] */
    /* JADX WARN: Removed duplicated region for block: B:1501:0x1d60  */
    /* JADX WARN: Removed duplicated region for block: B:1502:0x1d62  */
    /* JADX WARN: Removed duplicated region for block: B:1505:0x1d68  */
    /* JADX WARN: Removed duplicated region for block: B:1528:0x0fa2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1534:0x07fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1535:0x0819 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1541:0x0bb4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1582:0x17b9 A[EDGE_INSN: B:1582:0x17b9->B:1241:0x17b9 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1607:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0324 A[Catch: Exception -> 0x03a6, TryCatch #14 {Exception -> 0x03a6, blocks: (B:90:0x019d, B:92:0x01a3, B:94:0x01aa, B:97:0x01b2, B:100:0x01bc, B:102:0x01c2, B:167:0x0324, B:171:0x0331, B:104:0x01d8, B:106:0x01dc, B:109:0x01e4, B:111:0x01eb, B:114:0x01fc, B:123:0x021d, B:128:0x0227, B:142:0x0276, B:148:0x029e, B:150:0x02bc, B:154:0x02de, B:160:0x0307, B:163:0x0312, B:231:0x0481, B:238:0x04aa, B:240:0x04ae, B:251:0x04e4, B:253:0x04f9, B:256:0x04ff, B:257:0x0509, B:259:0x050d, B:264:0x051e, B:266:0x0524, B:268:0x052c, B:269:0x0531), top: B:1510:0x0195 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0442 A[Catch: Exception -> 0x03f4, TryCatch #6 {Exception -> 0x03f4, blocks: (B:195:0x03e0, B:197:0x03e4, B:199:0x03e8, B:205:0x03fa, B:209:0x0406, B:211:0x040c, B:215:0x0423, B:217:0x0442, B:220:0x0455, B:224:0x0460, B:218:0x044a), top: B:1516:0x03e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x044a A[Catch: Exception -> 0x03f4, TryCatch #6 {Exception -> 0x03f4, blocks: (B:195:0x03e0, B:197:0x03e4, B:199:0x03e8, B:205:0x03fa, B:209:0x0406, B:211:0x040c, B:215:0x0423, B:217:0x0442, B:220:0x0455, B:224:0x0460, B:218:0x044a), top: B:1516:0x03e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0816 A[Catch: Exception -> 0x080e, TRY_LEAVE, TryCatch #17 {Exception -> 0x080e, blocks: (B:418:0x07fd, B:420:0x0803, B:425:0x0816, B:432:0x0823, B:436:0x0838, B:439:0x0852, B:429:0x081d), top: B:1534:0x07fd }] */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0823 A[Catch: Exception -> 0x080e, TRY_ENTER, TRY_LEAVE, TryCatch #17 {Exception -> 0x080e, blocks: (B:418:0x07fd, B:420:0x0803, B:425:0x0816, B:432:0x0823, B:436:0x0838, B:439:0x0852, B:429:0x081d), top: B:1534:0x07fd }] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0836 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0852 A[Catch: Exception -> 0x080e, TRY_LEAVE, TryCatch #17 {Exception -> 0x080e, blocks: (B:418:0x07fd, B:420:0x0803, B:425:0x0816, B:432:0x0823, B:436:0x0838, B:439:0x0852, B:429:0x081d), top: B:1534:0x07fd }] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0859 A[Catch: Exception -> 0x1d4c, TRY_ENTER, TryCatch #18 {Exception -> 0x1d4c, blocks: (B:430:0x081f, B:433:0x0825, B:442:0x086a, B:441:0x0859, B:427:0x0819), top: B:1535:0x0819 }] */
    /* JADX WARN: Removed duplicated region for block: B:447:0x089a  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x08c5  */
    /* JADX WARN: Removed duplicated region for block: B:460:0x08d2 A[Catch: Exception -> 0x08bf, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:463:0x08de A[Catch: Exception -> 0x08bf, TRY_ENTER, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0916 A[Catch: Exception -> 0x08bf, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:480:0x091c  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x091e A[Catch: Exception -> 0x1d40, TRY_ENTER, TryCatch #29 {Exception -> 0x1d40, blocks: (B:457:0x08ca, B:474:0x0910, B:499:0x0965, B:539:0x0a28, B:600:0x0b12, B:606:0x0b21, B:610:0x0b2a, B:631:0x0b8d, B:605:0x0b1f, B:558:0x0a6e, B:572:0x0a99, B:567:0x0a87, B:563:0x0a80, B:482:0x0926, B:498:0x0963, B:481:0x091e), top: B:1555:0x08ca }] */
    /* JADX WARN: Removed duplicated region for block: B:484:0x092c  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x0962  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:502:0x0973  */
    /* JADX WARN: Removed duplicated region for block: B:527:0x09dd A[Catch: Exception -> 0x08bf, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:528:0x09ea  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x09f2 A[Catch: Exception -> 0x08bf, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:535:0x0a10 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:538:0x0a22 A[Catch: Exception -> 0x08bf, TRY_LEAVE, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:541:0x0a2e A[Catch: Exception -> 0x08bf, TRY_ENTER, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0a6e A[Catch: Exception -> 0x1d40, TRY_ENTER, TRY_LEAVE, TryCatch #29 {Exception -> 0x1d40, blocks: (B:457:0x08ca, B:474:0x0910, B:499:0x0965, B:539:0x0a28, B:600:0x0b12, B:606:0x0b21, B:610:0x0b2a, B:631:0x0b8d, B:605:0x0b1f, B:558:0x0a6e, B:572:0x0a99, B:567:0x0a87, B:563:0x0a80, B:482:0x0926, B:498:0x0963, B:481:0x091e), top: B:1555:0x08ca }] */
    /* JADX WARN: Removed duplicated region for block: B:602:0x0b18 A[Catch: Exception -> 0x08bf, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0b25 A[Catch: Exception -> 0x08bf, TRY_ENTER, TRY_LEAVE, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:612:0x0b2e A[Catch: Exception -> 0x08bf, TRY_ENTER, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:619:0x0b56  */
    /* JADX WARN: Removed duplicated region for block: B:622:0x0b5b A[Catch: Exception -> 0x08bf, TryCatch #31 {Exception -> 0x08bf, blocks: (B:448:0x089c, B:460:0x08d2, B:463:0x08de, B:466:0x08e6, B:468:0x08f0, B:471:0x0907, B:477:0x0916, B:506:0x097b, B:510:0x0985, B:512:0x098e, B:514:0x0998, B:517:0x09ab, B:520:0x09b5, B:522:0x09bc, B:524:0x09d0, B:532:0x09f2, B:536:0x0a12, B:538:0x0a22, B:541:0x0a2e, B:543:0x0a3e, B:545:0x0a4c, B:547:0x0a52, B:549:0x0a56, B:550:0x0a59, B:552:0x0a63, B:556:0x0a6a, B:602:0x0b18, B:608:0x0b25, B:612:0x0b2e, B:614:0x0b38, B:616:0x0b4c, B:622:0x0b5b, B:626:0x0b81, B:561:0x0a7b, B:565:0x0a84, B:574:0x0a9d, B:576:0x0aa3, B:579:0x0aaa, B:581:0x0ab6, B:583:0x0ac6, B:586:0x0acd, B:584:0x0ac9, B:587:0x0ad8, B:589:0x0ade, B:592:0x0ae5, B:594:0x0af1, B:596:0x0b01, B:599:0x0b08, B:597:0x0b04, B:569:0x0a8d, B:571:0x0a91, B:525:0x09d9, B:527:0x09dd, B:516:0x09a4, B:487:0x0931, B:488:0x0939, B:490:0x0949, B:492:0x094d, B:493:0x0951, B:495:0x0958, B:470:0x08f5), top: B:1559:0x089c }] */
    /* JADX WARN: Removed duplicated region for block: B:623:0x0b76  */
    /* JADX WARN: Removed duplicated region for block: B:625:0x0b7f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:635:0x0ba9  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x0bab  */
    /* JADX WARN: Removed duplicated region for block: B:652:0x0bd3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:657:0x0bdc A[Catch: Exception -> 0x0bca, TRY_ENTER, TryCatch #21 {Exception -> 0x0bca, blocks: (B:639:0x0bb4, B:644:0x0bbe, B:646:0x0bc6, B:657:0x0bdc, B:661:0x0c05, B:665:0x0c17, B:667:0x0c1c, B:691:0x0c89, B:787:0x0ecd, B:789:0x0ed3, B:799:0x0f1d, B:790:0x0eed, B:792:0x0ef1, B:794:0x0f04, B:795:0x0f0a, B:797:0x0f0e, B:798:0x0f18, B:811:0x0f66, B:814:0x0f6e, B:816:0x0f76, B:824:0x0f8b, B:826:0x0f92, B:985:0x129c, B:962:0x124c, B:967:0x125e, B:969:0x1264, B:972:0x1272, B:977:0x127f, B:719:0x0d22, B:721:0x0d33, B:723:0x0d41, B:725:0x0d4b, B:727:0x0d72, B:729:0x0d85, B:732:0x0da4, B:735:0x0db7, B:737:0x0dbd, B:738:0x0dc5, B:740:0x0dd6, B:751:0x0e0a, B:741:0x0de4, B:743:0x0dea, B:744:0x0df4, B:746:0x0df8, B:730:0x0d95, B:731:0x0d9d, B:734:0x0db0, B:754:0x0e27, B:756:0x0e34, B:757:0x0e40, B:759:0x0e44, B:760:0x0e50, B:764:0x0e5b, B:766:0x0e61, B:768:0x0e65, B:769:0x0e6d, B:771:0x0e73, B:772:0x0e7b, B:774:0x0e99, B:776:0x0ea2, B:778:0x0ea8, B:783:0x0eb3, B:675:0x0c55, B:677:0x0c5f, B:681:0x0c6e, B:687:0x0c7f), top: B:1541:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:671:0x0c33  */
    /* JADX WARN: Removed duplicated region for block: B:690:0x0c87 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:694:0x0cf0  */
    /* JADX WARN: Removed duplicated region for block: B:701:0x0cff  */
    /* JADX WARN: Removed duplicated region for block: B:719:0x0d22 A[Catch: Exception -> 0x0bca, TryCatch #21 {Exception -> 0x0bca, blocks: (B:639:0x0bb4, B:644:0x0bbe, B:646:0x0bc6, B:657:0x0bdc, B:661:0x0c05, B:665:0x0c17, B:667:0x0c1c, B:691:0x0c89, B:787:0x0ecd, B:789:0x0ed3, B:799:0x0f1d, B:790:0x0eed, B:792:0x0ef1, B:794:0x0f04, B:795:0x0f0a, B:797:0x0f0e, B:798:0x0f18, B:811:0x0f66, B:814:0x0f6e, B:816:0x0f76, B:824:0x0f8b, B:826:0x0f92, B:985:0x129c, B:962:0x124c, B:967:0x125e, B:969:0x1264, B:972:0x1272, B:977:0x127f, B:719:0x0d22, B:721:0x0d33, B:723:0x0d41, B:725:0x0d4b, B:727:0x0d72, B:729:0x0d85, B:732:0x0da4, B:735:0x0db7, B:737:0x0dbd, B:738:0x0dc5, B:740:0x0dd6, B:751:0x0e0a, B:741:0x0de4, B:743:0x0dea, B:744:0x0df4, B:746:0x0df8, B:730:0x0d95, B:731:0x0d9d, B:734:0x0db0, B:754:0x0e27, B:756:0x0e34, B:757:0x0e40, B:759:0x0e44, B:760:0x0e50, B:764:0x0e5b, B:766:0x0e61, B:768:0x0e65, B:769:0x0e6d, B:771:0x0e73, B:772:0x0e7b, B:774:0x0e99, B:776:0x0ea2, B:778:0x0ea8, B:783:0x0eb3, B:675:0x0c55, B:677:0x0c5f, B:681:0x0c6e, B:687:0x0c7f), top: B:1541:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:737:0x0dbd A[Catch: Exception -> 0x0bca, TryCatch #21 {Exception -> 0x0bca, blocks: (B:639:0x0bb4, B:644:0x0bbe, B:646:0x0bc6, B:657:0x0bdc, B:661:0x0c05, B:665:0x0c17, B:667:0x0c1c, B:691:0x0c89, B:787:0x0ecd, B:789:0x0ed3, B:799:0x0f1d, B:790:0x0eed, B:792:0x0ef1, B:794:0x0f04, B:795:0x0f0a, B:797:0x0f0e, B:798:0x0f18, B:811:0x0f66, B:814:0x0f6e, B:816:0x0f76, B:824:0x0f8b, B:826:0x0f92, B:985:0x129c, B:962:0x124c, B:967:0x125e, B:969:0x1264, B:972:0x1272, B:977:0x127f, B:719:0x0d22, B:721:0x0d33, B:723:0x0d41, B:725:0x0d4b, B:727:0x0d72, B:729:0x0d85, B:732:0x0da4, B:735:0x0db7, B:737:0x0dbd, B:738:0x0dc5, B:740:0x0dd6, B:751:0x0e0a, B:741:0x0de4, B:743:0x0dea, B:744:0x0df4, B:746:0x0df8, B:730:0x0d95, B:731:0x0d9d, B:734:0x0db0, B:754:0x0e27, B:756:0x0e34, B:757:0x0e40, B:759:0x0e44, B:760:0x0e50, B:764:0x0e5b, B:766:0x0e61, B:768:0x0e65, B:769:0x0e6d, B:771:0x0e73, B:772:0x0e7b, B:774:0x0e99, B:776:0x0ea2, B:778:0x0ea8, B:783:0x0eb3, B:675:0x0c55, B:677:0x0c5f, B:681:0x0c6e, B:687:0x0c7f), top: B:1541:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:740:0x0dd6 A[Catch: Exception -> 0x0bca, TryCatch #21 {Exception -> 0x0bca, blocks: (B:639:0x0bb4, B:644:0x0bbe, B:646:0x0bc6, B:657:0x0bdc, B:661:0x0c05, B:665:0x0c17, B:667:0x0c1c, B:691:0x0c89, B:787:0x0ecd, B:789:0x0ed3, B:799:0x0f1d, B:790:0x0eed, B:792:0x0ef1, B:794:0x0f04, B:795:0x0f0a, B:797:0x0f0e, B:798:0x0f18, B:811:0x0f66, B:814:0x0f6e, B:816:0x0f76, B:824:0x0f8b, B:826:0x0f92, B:985:0x129c, B:962:0x124c, B:967:0x125e, B:969:0x1264, B:972:0x1272, B:977:0x127f, B:719:0x0d22, B:721:0x0d33, B:723:0x0d41, B:725:0x0d4b, B:727:0x0d72, B:729:0x0d85, B:732:0x0da4, B:735:0x0db7, B:737:0x0dbd, B:738:0x0dc5, B:740:0x0dd6, B:751:0x0e0a, B:741:0x0de4, B:743:0x0dea, B:744:0x0df4, B:746:0x0df8, B:730:0x0d95, B:731:0x0d9d, B:734:0x0db0, B:754:0x0e27, B:756:0x0e34, B:757:0x0e40, B:759:0x0e44, B:760:0x0e50, B:764:0x0e5b, B:766:0x0e61, B:768:0x0e65, B:769:0x0e6d, B:771:0x0e73, B:772:0x0e7b, B:774:0x0e99, B:776:0x0ea2, B:778:0x0ea8, B:783:0x0eb3, B:675:0x0c55, B:677:0x0c5f, B:681:0x0c6e, B:687:0x0c7f), top: B:1541:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:741:0x0de4 A[Catch: Exception -> 0x0bca, TryCatch #21 {Exception -> 0x0bca, blocks: (B:639:0x0bb4, B:644:0x0bbe, B:646:0x0bc6, B:657:0x0bdc, B:661:0x0c05, B:665:0x0c17, B:667:0x0c1c, B:691:0x0c89, B:787:0x0ecd, B:789:0x0ed3, B:799:0x0f1d, B:790:0x0eed, B:792:0x0ef1, B:794:0x0f04, B:795:0x0f0a, B:797:0x0f0e, B:798:0x0f18, B:811:0x0f66, B:814:0x0f6e, B:816:0x0f76, B:824:0x0f8b, B:826:0x0f92, B:985:0x129c, B:962:0x124c, B:967:0x125e, B:969:0x1264, B:972:0x1272, B:977:0x127f, B:719:0x0d22, B:721:0x0d33, B:723:0x0d41, B:725:0x0d4b, B:727:0x0d72, B:729:0x0d85, B:732:0x0da4, B:735:0x0db7, B:737:0x0dbd, B:738:0x0dc5, B:740:0x0dd6, B:751:0x0e0a, B:741:0x0de4, B:743:0x0dea, B:744:0x0df4, B:746:0x0df8, B:730:0x0d95, B:731:0x0d9d, B:734:0x0db0, B:754:0x0e27, B:756:0x0e34, B:757:0x0e40, B:759:0x0e44, B:760:0x0e50, B:764:0x0e5b, B:766:0x0e61, B:768:0x0e65, B:769:0x0e6d, B:771:0x0e73, B:772:0x0e7b, B:774:0x0e99, B:776:0x0ea2, B:778:0x0ea8, B:783:0x0eb3, B:675:0x0c55, B:677:0x0c5f, B:681:0x0c6e, B:687:0x0c7f), top: B:1541:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:749:0x0e07  */
    /* JADX WARN: Removed duplicated region for block: B:750:0x0e09  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x0e1f  */
    /* JADX WARN: Removed duplicated region for block: B:785:0x0eca  */
    /* JADX WARN: Removed duplicated region for block: B:826:0x0f92 A[Catch: Exception -> 0x0bca, TRY_LEAVE, TryCatch #21 {Exception -> 0x0bca, blocks: (B:639:0x0bb4, B:644:0x0bbe, B:646:0x0bc6, B:657:0x0bdc, B:661:0x0c05, B:665:0x0c17, B:667:0x0c1c, B:691:0x0c89, B:787:0x0ecd, B:789:0x0ed3, B:799:0x0f1d, B:790:0x0eed, B:792:0x0ef1, B:794:0x0f04, B:795:0x0f0a, B:797:0x0f0e, B:798:0x0f18, B:811:0x0f66, B:814:0x0f6e, B:816:0x0f76, B:824:0x0f8b, B:826:0x0f92, B:985:0x129c, B:962:0x124c, B:967:0x125e, B:969:0x1264, B:972:0x1272, B:977:0x127f, B:719:0x0d22, B:721:0x0d33, B:723:0x0d41, B:725:0x0d4b, B:727:0x0d72, B:729:0x0d85, B:732:0x0da4, B:735:0x0db7, B:737:0x0dbd, B:738:0x0dc5, B:740:0x0dd6, B:751:0x0e0a, B:741:0x0de4, B:743:0x0dea, B:744:0x0df4, B:746:0x0df8, B:730:0x0d95, B:731:0x0d9d, B:734:0x0db0, B:754:0x0e27, B:756:0x0e34, B:757:0x0e40, B:759:0x0e44, B:760:0x0e50, B:764:0x0e5b, B:766:0x0e61, B:768:0x0e65, B:769:0x0e6d, B:771:0x0e73, B:772:0x0e7b, B:774:0x0e99, B:776:0x0ea2, B:778:0x0ea8, B:783:0x0eb3, B:675:0x0c55, B:677:0x0c5f, B:681:0x0c6e, B:687:0x0c7f), top: B:1541:0x0bb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:842:0x0ff8  */
    /* JADX WARN: Removed duplicated region for block: B:843:0x0ffc A[Catch: Exception -> 0x1086, TRY_LEAVE, TryCatch #36 {Exception -> 0x1086, blocks: (B:840:0x0ff2, B:853:0x1036, B:843:0x0ffc, B:851:0x1031), top: B:1567:0x0ff2 }] */
    /* JADX WARN: Removed duplicated region for block: B:853:0x1036 A[Catch: Exception -> 0x1086, TRY_LEAVE, TryCatch #36 {Exception -> 0x1086, blocks: (B:840:0x0ff2, B:853:0x1036, B:843:0x0ffc, B:851:0x1031), top: B:1567:0x0ff2 }] */
    /* JADX WARN: Removed duplicated region for block: B:859:0x1052  */
    /* JADX WARN: Removed duplicated region for block: B:862:0x1066 A[Catch: Exception -> 0x10ec, TryCatch #1 {Exception -> 0x10ec, blocks: (B:831:0x0fae, B:833:0x0fc0, B:834:0x0fdb, B:858:0x104f, B:860:0x1058, B:862:0x1066, B:864:0x1073, B:865:0x1077, B:846:0x1017, B:848:0x101d, B:850:0x1023, B:874:0x10a8, B:876:0x10c3, B:878:0x10d6, B:879:0x10e4, B:890:0x10fb, B:916:0x1175, B:920:0x118e, B:908:0x1148, B:910:0x1156, B:912:0x115d, B:914:0x1163, B:915:0x1171, B:925:0x11a7, B:927:0x11b4, B:929:0x11bc, B:932:0x11cc, B:934:0x11cf, B:935:0x11df, B:936:0x11e5, B:938:0x11e9, B:940:0x11f1, B:943:0x1206, B:953:0x1232), top: B:1509:0x0f4e }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0197 A[Catch: Exception -> 0x03ac, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x03ac, blocks: (B:87:0x0197, B:188:0x03bc, B:192:0x03d3, B:193:0x03d9, B:229:0x0476, B:230:0x047c, B:236:0x049f, B:237:0x04a5, B:248:0x04d9), top: B:1510:0x0195 }] */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v4, types: [org.telegram.messenger.SendMessagesHelper] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v188 */
    /* JADX WARN: Type inference failed for: r1v189, types: [int] */
    /* JADX WARN: Type inference failed for: r1v190 */
    /* JADX WARN: Type inference failed for: r1v193 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [org.telegram.messenger.MessagesStorage] */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v15 */
    /* JADX WARN: Type inference failed for: r23v16 */
    /* JADX WARN: Type inference failed for: r23v17 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v51 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v29, types: [int] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33, types: [org.telegram.messenger.MessageObject, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35, types: [org.telegram.messenger.MessageObject] */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r4v56, types: [org.telegram.messenger.SecretChatHelper] */
    /* JADX WARN: Type inference failed for: r4v72, types: [org.telegram.messenger.SecretChatHelper] */
    /* JADX WARN: Type inference failed for: r4v81, types: [org.telegram.messenger.SecretChatHelper] */
    /* JADX WARN: Type inference failed for: r4v86, types: [org.telegram.messenger.SecretChatHelper] */
    /* JADX WARN: Type inference failed for: r4v94, types: [org.telegram.messenger.SecretChatHelper] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v138 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v140 */
    /* JADX WARN: Type inference failed for: r5v158, types: [org.telegram.messenger.SecretChatHelper] */
    /* JADX WARN: Type inference failed for: r5v181 */
    /* JADX WARN: Type inference failed for: r5v183, types: [org.telegram.tgnet.TLRPC$TL_inputMediaPhoto, org.telegram.tgnet.TLRPC$InputMedia] */
    /* JADX WARN: Type inference failed for: r5v297 */
    /* JADX WARN: Type inference failed for: r5v298 */
    /* JADX WARN: Type inference failed for: r5v306 */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v50 */
    /* JADX WARN: Type inference failed for: r5v66 */
    /* JADX WARN: Type inference failed for: r5v8, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r6v157, types: [org.telegram.tgnet.TLRPC$TL_messages_sendMedia, org.telegram.tgnet.TLObject] */
    /* JADX WARN: Type inference failed for: r6v158 */
    /* JADX WARN: Type inference failed for: r6v161, types: [org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia] */
    /* JADX WARN: Type inference failed for: r6v184 */
    /* JADX WARN: Type inference failed for: r6v185 */
    /* JADX WARN: Type inference failed for: r78v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v305, types: [org.telegram.messenger.MediaDataController] */
    /* JADX WARN: Type inference failed for: r9v146 */
    /* JADX WARN: Type inference failed for: r9v22, types: [org.telegram.tgnet.TLRPC$InputPeer] */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32, types: [org.telegram.tgnet.TLRPC$Message] */
    /* JADX WARN: Type inference failed for: r9v62 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void sendMessage(java.lang.String r54, java.lang.String r55, org.telegram.tgnet.TLRPC$MessageMedia r56, org.telegram.tgnet.TLRPC$TL_photo r57, org.telegram.messenger.VideoEditedInfo r58, org.telegram.tgnet.TLRPC$User r59, org.telegram.tgnet.TLRPC$TL_document r60, org.telegram.tgnet.TLRPC$TL_game r61, org.telegram.tgnet.TLRPC$TL_messageMediaPoll r62, org.telegram.tgnet.TLRPC$TL_messageMediaInvoice r63, long r64, java.lang.String r66, org.telegram.messenger.MessageObject r67, org.telegram.messenger.MessageObject r68, org.telegram.tgnet.TLRPC$WebPage r69, boolean r70, org.telegram.messenger.MessageObject r71, java.util.ArrayList<org.telegram.tgnet.TLRPC$MessageEntity> r72, org.telegram.tgnet.TLRPC$ReplyMarkup r73, java.util.HashMap<java.lang.String, java.lang.String> r74, boolean r75, int r76, int r77, java.lang.Object r78, org.telegram.messenger.MessageObject.SendAnimationData r79, boolean r80, boolean r81, java.lang.String r82) {
        /*
            Method dump skipped, instructions count: 7560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.sendMessage(java.lang.String, java.lang.String, org.telegram.tgnet.TLRPC$MessageMedia, org.telegram.tgnet.TLRPC$TL_photo, org.telegram.messenger.VideoEditedInfo, org.telegram.tgnet.TLRPC$User, org.telegram.tgnet.TLRPC$TL_document, org.telegram.tgnet.TLRPC$TL_game, org.telegram.tgnet.TLRPC$TL_messageMediaPoll, org.telegram.tgnet.TLRPC$TL_messageMediaInvoice, long, java.lang.String, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, org.telegram.tgnet.TLRPC$WebPage, boolean, org.telegram.messenger.MessageObject, java.util.ArrayList, org.telegram.tgnet.TLRPC$ReplyMarkup, java.util.HashMap, boolean, int, int, java.lang.Object, org.telegram.messenger.MessageObject$SendAnimationData, boolean, boolean, java.lang.String):void");
    }

    private void performSendDelayedMessage(DelayedMessage delayedMessage) {
        performSendDelayedMessage(delayedMessage, -1);
    }

    private TLRPC$PhotoSize getThumbForSecretChat(ArrayList<TLRPC$PhotoSize> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                TLRPC$PhotoSize tLRPC$PhotoSize = arrayList.get(i);
                if (tLRPC$PhotoSize != null && !(tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize) && !(tLRPC$PhotoSize instanceof TLRPC$TL_photoPathSize) && !(tLRPC$PhotoSize instanceof TLRPC$TL_photoSizeEmpty) && tLRPC$PhotoSize.location != null) {
                    TLRPC$TL_photoSize_layer127 tLRPC$TL_photoSize_layer127 = new TLRPC$TL_photoSize_layer127();
                    tLRPC$TL_photoSize_layer127.type = tLRPC$PhotoSize.type;
                    tLRPC$TL_photoSize_layer127.f1525w = tLRPC$PhotoSize.f1525w;
                    tLRPC$TL_photoSize_layer127.f1524h = tLRPC$PhotoSize.f1524h;
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
                    str2 = FileLoader.getDirectory(4) + "/" + document.f1502id + ".mp4";
                }
                putToDelayedMessages(str2, delayedMessage);
                MediaController.getInstance().scheduleVideoConvert(delayedMessage.obj);
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
                    tLRPC$DecryptedMessageMedia.f1498iv = videoEditedInfo2.f1470iv;
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
                        str3 = FileLoader.getDirectory(4) + "/" + document2.f1502id + ".mp4";
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
                str6 = FileLoader.getDirectory(4) + "/" + document3.f1502id + ".mp4";
            }
            if (delayedMessage.sendEncryptedRequest != null && document3.dc_id != 0 && !new File(str6).exists()) {
                putToDelayedMessages(FileLoader.getAttachFileName(document3), delayedMessage);
                getFileLoader().loadFile(document3, delayedMessage.parentObject, 3, 0);
                return;
            }
            putToDelayedMessages(str6, delayedMessage);
            VideoEditedInfo videoEditedInfo4 = delayedMessage.obj.videoEditedInfo;
            if (videoEditedInfo4 != null && videoEditedInfo4.needConvert()) {
                getFileLoader().uploadFile(str6, true, false, document3.size, ConnectionsManager.FileTypeVideo, false);
            } else {
                getFileLoader().uploadFile(str6, true, false, ConnectionsManager.FileTypeVideo);
            }
            putToUploadingMessages(delayedMessage.obj);
        } else if (i2 == 2) {
            String str7 = delayedMessage.httpLocation;
            if (str7 != null) {
                putToDelayedMessages(str7, delayedMessage);
                ImageLoader.getInstance().loadHttpFile(delayedMessage.httpLocation, "gif", this.currentAccount);
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
                    String str8 = delayedMessage.obj.messageOwner.attachPath;
                    putToDelayedMessages(str8, delayedMessage);
                    getFileLoader().uploadFile(str8, delayedMessage.sendRequest == null, false, ConnectionsManager.FileTypeFile);
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                } else if (tLRPC$InputMedia.thumb != null || (tLRPC$PhotoSize = delayedMessage.photoSize) == null || (tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize)) {
                    return;
                } else {
                    String str9 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                    putToDelayedMessages(str9, delayedMessage);
                    getFileLoader().uploadFile(str9, false, true, ConnectionsManager.FileTypePhoto);
                    putToUploadingMessages(delayedMessage.obj);
                    return;
                }
            }
            MessageObject messageObject6 = delayedMessage.obj;
            String str10 = messageObject6.messageOwner.attachPath;
            TLRPC$Document document4 = messageObject6.getDocument();
            if (delayedMessage.sendEncryptedRequest != null && document4.dc_id != 0 && !new File(str10).exists()) {
                putToDelayedMessages(FileLoader.getAttachFileName(document4), delayedMessage);
                getFileLoader().loadFile(document4, delayedMessage.parentObject, 3, 0);
                return;
            }
            putToDelayedMessages(str10, delayedMessage);
            getFileLoader().uploadFile(str10, true, false, ConnectionsManager.FileTypeFile);
            putToUploadingMessages(delayedMessage.obj);
        } else if (i2 == 3) {
            String str11 = delayedMessage.obj.messageOwner.attachPath;
            putToDelayedMessages(str11, delayedMessage);
            getFileLoader().uploadFile(str11, delayedMessage.sendRequest == null, true, ConnectionsManager.FileTypeAudio);
            putToUploadingMessages(delayedMessage.obj);
        } else if (i2 != 4) {
            if (i2 == 5) {
                final String str12 = "stickerset_" + delayedMessage.obj.getId();
                TLRPC$TL_messages_getStickerSet tLRPC$TL_messages_getStickerSet = new TLRPC$TL_messages_getStickerSet();
                tLRPC$TL_messages_getStickerSet.stickerset = (TLRPC$InputStickerSet) delayedMessage.parentObject;
                getConnectionsManager().sendRequest(tLRPC$TL_messages_getStickerSet, new RequestDelegate() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda87
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject4, TLRPC$TL_error tLRPC$TL_error) {
                        SendMessagesHelper.this.lambda$performSendDelayedMessage$33(delayedMessage, str12, tLObject4, tLRPC$TL_error);
                    }
                });
                putToDelayedMessages(str12, delayedMessage);
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
                        String str13 = messageObject7.messageOwner.attachPath;
                        TLRPC$Document document5 = messageObject7.getDocument();
                        if (str13 == null) {
                            str13 = FileLoader.getDirectory(4) + "/" + document5.f1502id + ".mp4";
                        }
                        putToDelayedMessages(str13, delayedMessage);
                        delayedMessage.extraHashMap.put(messageObject7, str13);
                        delayedMessage.extraHashMap.put(str13 + "_i", messageObject7);
                        TLRPC$PhotoSize tLRPC$PhotoSize2 = delayedMessage.photoSize;
                        if (tLRPC$PhotoSize2 != null && tLRPC$PhotoSize2.location != null) {
                            delayedMessage.extraHashMap.put(str13 + "_t", delayedMessage.photoSize);
                        }
                        MediaController.getInstance().scheduleVideoConvert(messageObject7);
                        delayedMessage.obj = messageObject7;
                        putToUploadingMessages(messageObject7);
                    } else {
                        TLRPC$Document document6 = messageObject7.getDocument();
                        String str14 = messageObject7.messageOwner.attachPath;
                        if (str14 == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(FileLoader.getDirectory(4));
                            sb.append("/");
                            messageObject = messageObject7;
                            sb.append(document6.f1502id);
                            sb.append(".mp4");
                            str14 = sb.toString();
                        } else {
                            messageObject = messageObject7;
                        }
                        TLObject tLObject4 = delayedMessage.sendRequest;
                        if (tLObject4 != null) {
                            TLRPC$InputMedia tLRPC$InputMedia4 = ((TLRPC$TL_messages_sendMultiMedia) tLObject4).multi_media.get(size).media;
                            if (tLRPC$InputMedia4.file == null) {
                                putToDelayedMessages(str14, delayedMessage);
                                MessageObject messageObject8 = messageObject;
                                delayedMessage.extraHashMap.put(messageObject8, str14);
                                delayedMessage.extraHashMap.put(str14, tLRPC$InputMedia4);
                                delayedMessage.extraHashMap.put(str14 + "_i", messageObject8);
                                TLRPC$PhotoSize tLRPC$PhotoSize3 = delayedMessage.photoSize;
                                if (tLRPC$PhotoSize3 != null && tLRPC$PhotoSize3.location != null) {
                                    delayedMessage.extraHashMap.put(str14 + "_t", delayedMessage.photoSize);
                                }
                                VideoEditedInfo videoEditedInfo5 = messageObject8.videoEditedInfo;
                                if (videoEditedInfo5 != null && videoEditedInfo5.needConvert()) {
                                    getFileLoader().uploadFile(str14, false, false, document6.size, ConnectionsManager.FileTypeVideo, false);
                                } else {
                                    getFileLoader().uploadFile(str14, false, false, ConnectionsManager.FileTypeVideo);
                                }
                                putToUploadingMessages(messageObject8);
                            } else {
                                MessageObject messageObject9 = messageObject;
                                if (delayedMessage.photoSize != null) {
                                    String str15 = FileLoader.getDirectory(4) + "/" + delayedMessage.photoSize.location.volume_id + "_" + delayedMessage.photoSize.location.local_id + ".jpg";
                                    putToDelayedMessages(str15, delayedMessage);
                                    delayedMessage.extraHashMap.put(str15 + "_o", str14);
                                    delayedMessage.extraHashMap.put(messageObject9, str15);
                                    delayedMessage.extraHashMap.put(str15, tLRPC$InputMedia4);
                                    getFileLoader().uploadFile(str15, false, true, ConnectionsManager.FileTypePhoto);
                                    putToUploadingMessages(messageObject9);
                                }
                            }
                        } else {
                            MessageObject messageObject10 = messageObject;
                            putToDelayedMessages(str14, delayedMessage);
                            delayedMessage.extraHashMap.put(messageObject10, str14);
                            delayedMessage.extraHashMap.put(str14, ((TLRPC$TL_messages_sendEncryptedMultiMedia) delayedMessage.sendEncryptedRequest).files.get(size));
                            delayedMessage.extraHashMap.put(str14 + "_i", messageObject10);
                            TLRPC$PhotoSize tLRPC$PhotoSize4 = delayedMessage.photoSize;
                            if (tLRPC$PhotoSize4 != null && tLRPC$PhotoSize4.location != null) {
                                delayedMessage.extraHashMap.put(str14 + "_t", delayedMessage.photoSize);
                            }
                            VideoEditedInfo videoEditedInfo6 = messageObject10.videoEditedInfo;
                            if (videoEditedInfo6 != null && videoEditedInfo6.needConvert()) {
                                getFileLoader().uploadFile(str14, true, false, document6.size, ConnectionsManager.FileTypeVideo, false);
                            } else {
                                getFileLoader().uploadFile(str14, true, false, ConnectionsManager.FileTypeVideo);
                            }
                            putToUploadingMessages(messageObject10);
                        }
                    }
                    delayedMessage.videoEditedInfo = null;
                    delayedMessage.photoSize = null;
                } else {
                    String str16 = delayedMessage.httpLocation;
                    if (str16 != null) {
                        putToDelayedMessages(str16, delayedMessage);
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
                        String file4 = FileLoader.getInstance(this.currentAccount).getPathToAttach(delayedMessage.photoSize).toString();
                        putToDelayedMessages(file4, delayedMessage);
                        delayedMessage.extraHashMap.put(file4, tLRPC$InputEncryptedFile);
                        delayedMessage.extraHashMap.put(messageObject7, file4);
                        z = true;
                        getFileLoader().uploadFile(file4, delayedMessage.sendEncryptedRequest != null, true, ConnectionsManager.FileTypePhoto);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda42
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
                        getNotificationCenter().postNotificationName(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
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
                getNotificationCenter().postNotificationName(NotificationCenter.fileUploadProgressChanged, str, -1L, -1L, Boolean.FALSE);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$uploadMultiMedia$34(tLObject, tLRPC$InputMedia, delayedMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$uploadMultiMedia$34(org.telegram.tgnet.TLObject r6, org.telegram.tgnet.TLRPC$InputMedia r7, org.telegram.messenger.SendMessagesHelper.DelayedMessage r8) {
        /*
            r5 = this;
            if (r6 == 0) goto L64
            org.telegram.tgnet.TLRPC$MessageMedia r6 = (org.telegram.tgnet.TLRPC$MessageMedia) r6
            boolean r0 = r7 instanceof org.telegram.tgnet.TLRPC$TL_inputMediaUploadedPhoto
            if (r0 == 0) goto L34
            boolean r0 = r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaPhoto
            if (r0 == 0) goto L34
            org.telegram.tgnet.TLRPC$TL_inputMediaPhoto r0 = new org.telegram.tgnet.TLRPC$TL_inputMediaPhoto
            r0.<init>()
            org.telegram.tgnet.TLRPC$TL_inputPhoto r1 = new org.telegram.tgnet.TLRPC$TL_inputPhoto
            r1.<init>()
            r0.f1559id = r1
            org.telegram.tgnet.TLRPC$Photo r6 = r6.photo
            long r2 = r6.f1523id
            r1.f1516id = r2
            long r2 = r6.access_hash
            r1.access_hash = r2
            byte[] r6 = r6.file_reference
            r1.file_reference = r6
            boolean r6 = r7.spoiler
            r0.spoiler = r6
            boolean r6 = org.telegram.messenger.BuildVars.DEBUG_VERSION
            if (r6 == 0) goto L65
            java.lang.String r6 = "set uploaded photo"
            org.telegram.messenger.FileLog.m48d(r6)
            goto L65
        L34:
            boolean r0 = r7 instanceof org.telegram.tgnet.TLRPC$TL_inputMediaUploadedDocument
            if (r0 == 0) goto L64
            boolean r0 = r6 instanceof org.telegram.tgnet.TLRPC$TL_messageMediaDocument
            if (r0 == 0) goto L64
            org.telegram.tgnet.TLRPC$TL_inputMediaDocument r0 = new org.telegram.tgnet.TLRPC$TL_inputMediaDocument
            r0.<init>()
            org.telegram.tgnet.TLRPC$TL_inputDocument r1 = new org.telegram.tgnet.TLRPC$TL_inputDocument
            r1.<init>()
            r0.f1557id = r1
            org.telegram.tgnet.TLRPC$Document r6 = r6.document
            long r2 = r6.f1502id
            r1.f1510id = r2
            long r2 = r6.access_hash
            r1.access_hash = r2
            byte[] r6 = r6.file_reference
            r1.file_reference = r6
            boolean r6 = r7.spoiler
            r0.spoiler = r6
            boolean r6 = org.telegram.messenger.BuildVars.DEBUG_VERSION
            if (r6 == 0) goto L65
            java.lang.String r6 = "set uploaded document"
            org.telegram.messenger.FileLog.m48d(r6)
            goto L65
        L64:
            r0 = 0
        L65:
            if (r0 == 0) goto L9f
            int r6 = r7.ttl_seconds
            r1 = 1
            if (r6 == 0) goto L73
            r0.ttl_seconds = r6
            int r6 = r0.flags
            r6 = r6 | r1
            r0.flags = r6
        L73:
            org.telegram.tgnet.TLObject r6 = r8.sendRequest
            org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia r6 = (org.telegram.tgnet.TLRPC$TL_messages_sendMultiMedia) r6
            r2 = 0
            r3 = 0
        L79:
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_inputSingleMedia> r4 = r6.multi_media
            int r4 = r4.size()
            if (r3 >= r4) goto L9b
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_inputSingleMedia> r4 = r6.multi_media
            java.lang.Object r4 = r4.get(r3)
            org.telegram.tgnet.TLRPC$TL_inputSingleMedia r4 = (org.telegram.tgnet.TLRPC$TL_inputSingleMedia) r4
            org.telegram.tgnet.TLRPC$InputMedia r4 = r4.media
            if (r4 != r7) goto L98
            java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_inputSingleMedia> r6 = r6.multi_media
            java.lang.Object r6 = r6.get(r3)
            org.telegram.tgnet.TLRPC$TL_inputSingleMedia r6 = (org.telegram.tgnet.TLRPC$TL_inputSingleMedia) r6
            r6.media = r0
            goto L9b
        L98:
            int r3 = r3 + 1
            goto L79
        L9b:
            r5.sendReadyToSendGroup(r8, r2, r1)
            goto La2
        L9f:
            r8.markAsError()
        La2:
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
                    FileLog.m48d("final message not added, add");
                }
                putToDelayedMessages(str, delayedMessage);
                return;
            } else if (BuildVars.DEBUG_VERSION) {
                FileLog.m48d("final message not added");
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
                getNotificationCenter().postNotificationName(NotificationCenter.dialogsNeedReload, new Object[0]);
            }
            if (BuildVars.DEBUG_VERSION) {
                FileLog.m48d("add message");
            }
        }
        TLObject tLObject = delayedMessage.sendRequest;
        if (tLObject instanceof TLRPC$TL_messages_sendMultiMedia) {
            TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia = (TLRPC$TL_messages_sendMultiMedia) tLObject;
            while (i < tLRPC$TL_messages_sendMultiMedia.multi_media.size()) {
                TLRPC$InputMedia tLRPC$InputMedia = tLRPC$TL_messages_sendMultiMedia.multi_media.get(i).media;
                if ((tLRPC$InputMedia instanceof TLRPC$TL_inputMediaUploadedPhoto) || (tLRPC$InputMedia instanceof TLRPC$TL_inputMediaUploadedDocument)) {
                    if (BuildVars.DEBUG_VERSION) {
                        FileLog.m48d("multi media not ready");
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
                    FileLog.m48d("has maxDelayedMessage, delay");
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopVideoService$36(String str) {
        NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.stopEncodingService, str, Integer.valueOf(this.currentAccount));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopVideoService$37(final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$stopVideoService$36(str);
            }
        });
    }

    public void stopVideoService(final String str) {
        getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$stopVideoService$37(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void putToSendingMessages(final TLRPC$Message tLRPC$Message, final boolean z) {
        if (Thread.currentThread() != ApplicationLoader.applicationHandler.getLooper().getThread()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$putToSendingMessages$38(tLRPC$Message, z);
                }
            });
        } else {
            putToSendingMessages(tLRPC$Message, z, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putToSendingMessages$38(TLRPC$Message tLRPC$Message, boolean z) {
        putToSendingMessages(tLRPC$Message, z, true);
    }

    protected void putToSendingMessages(TLRPC$Message tLRPC$Message, boolean z, boolean z2) {
        if (tLRPC$Message == null) {
            return;
        }
        int i = tLRPC$Message.f1518id;
        if (i > 0) {
            this.editingMessages.put(i, tLRPC$Message);
            return;
        }
        boolean z3 = this.sendingMessages.indexOfKey(i) >= 0;
        removeFromUploadingMessages(tLRPC$Message.f1518id, z);
        this.sendingMessages.put(tLRPC$Message.f1518id, tLRPC$Message);
        if (z || z3) {
            return;
        }
        long dialogId = MessageObject.getDialogId(tLRPC$Message);
        LongSparseArray<Integer> longSparseArray = this.sendingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(longSparseArray.get(dialogId, 0).intValue() + 1));
        if (z2) {
            getNotificationCenter().postNotificationName(NotificationCenter.sendingMessagesChanged, new Object[0]);
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
                getNotificationCenter().postNotificationName(NotificationCenter.sendingMessagesChanged, new Object[0]);
            }
        }
        return tLRPC$Message2;
    }

    public int getSendingMessageId(long j) {
        for (int i = 0; i < this.sendingMessages.size(); i++) {
            TLRPC$Message valueAt = this.sendingMessages.valueAt(i);
            if (valueAt.dialog_id == j) {
                return valueAt.f1518id;
            }
        }
        for (int i2 = 0; i2 < this.uploadMessages.size(); i2++) {
            TLRPC$Message valueAt2 = this.uploadMessages.valueAt(i2);
            if (valueAt2.dialog_id == j) {
                return valueAt2.f1518id;
            }
        }
        return 0;
    }

    protected void putToUploadingMessages(MessageObject messageObject) {
        if (messageObject == null || messageObject.getId() > 0 || messageObject.scheduled) {
            return;
        }
        TLRPC$Message tLRPC$Message = messageObject.messageOwner;
        boolean z = this.uploadMessages.indexOfKey(tLRPC$Message.f1518id) >= 0;
        this.uploadMessages.put(tLRPC$Message.f1518id, tLRPC$Message);
        if (z) {
            return;
        }
        long dialogId = MessageObject.getDialogId(tLRPC$Message);
        LongSparseArray<Integer> longSparseArray = this.uploadingMessagesIdDialogs;
        longSparseArray.put(dialogId, Integer.valueOf(longSparseArray.get(dialogId, 0).intValue() + 1));
        getNotificationCenter().postNotificationName(NotificationCenter.sendingMessagesChanged, new Object[0]);
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
            getNotificationCenter().postNotificationName(NotificationCenter.sendingMessagesChanged, new Object[0]);
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
                SendMessagesHelper.this.lambda$performSendMessageRequestMulti$46(arrayList3, tLRPC$TL_messages_sendMultiMedia, arrayList, arrayList2, delayedMessage, z, tLObject, tLRPC$TL_error);
            }
        }, (QuickAckDelegate) null, 68);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$46(ArrayList arrayList, final TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia, final ArrayList arrayList2, final ArrayList arrayList3, final DelayedMessage delayedMessage, final boolean z, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null && FileRefController.isFileRefError(tLRPC$TL_error.text)) {
            if (arrayList != null) {
                ArrayList arrayList4 = new ArrayList(arrayList);
                getFileRefController().requestReference(arrayList4, tLRPC$TL_messages_sendMultiMedia, arrayList2, arrayList3, arrayList4, delayedMessage, Boolean.valueOf(z));
                return;
            } else if (delayedMessage != null && !delayedMessage.retriedToSend) {
                delayedMessage.retriedToSend = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda61
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequestMulti$39(tLRPC$TL_messages_sendMultiMedia, delayedMessage, arrayList2, z);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequestMulti$45(tLRPC$TL_error, tLObject, arrayList2, arrayList3, z, tLRPC$TL_messages_sendMultiMedia);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$39(TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia, DelayedMessage delayedMessage, ArrayList arrayList, boolean z) {
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
            getNotificationCenter().postNotificationName(NotificationCenter.messageSendError, Integer.valueOf(tLRPC$Message.f1518id));
            processSentMessage(tLRPC$Message.f1518id);
            removeFromSendingMessages(tLRPC$Message.f1518id, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$45(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, ArrayList arrayList, ArrayList arrayList2, final boolean z, TLRPC$TL_messages_sendMultiMedia tLRPC$TL_messages_sendMultiMedia) {
        boolean z2;
        final TLRPC$Updates tLRPC$Updates;
        boolean z3;
        TLRPC$Message tLRPC$Message;
        TLRPC$Updates tLRPC$Updates2;
        TLRPC$TL_messageReplyHeader tLRPC$TL_messageReplyHeader;
        if (tLRPC$TL_error == null) {
            SparseArray sparseArray = new SparseArray();
            LongSparseArray longSparseArray = new LongSparseArray();
            TLRPC$Updates tLRPC$Updates3 = (TLRPC$Updates) tLObject;
            ArrayList<TLRPC$Update> arrayList3 = tLRPC$Updates3.updates;
            LongSparseArray<SparseArray<TLRPC$MessageReplies>> longSparseArray2 = null;
            int i = 0;
            while (i < arrayList3.size()) {
                TLRPC$Update tLRPC$Update = arrayList3.get(i);
                if (tLRPC$Update instanceof TLRPC$TL_updateMessageID) {
                    TLRPC$TL_updateMessageID tLRPC$TL_updateMessageID = (TLRPC$TL_updateMessageID) tLRPC$Update;
                    longSparseArray.put(tLRPC$TL_updateMessageID.random_id, Integer.valueOf(tLRPC$TL_updateMessageID.f1628id));
                    arrayList3.remove(i);
                } else if (tLRPC$Update instanceof TLRPC$TL_updateNewMessage) {
                    final TLRPC$TL_updateNewMessage tLRPC$TL_updateNewMessage = (TLRPC$TL_updateNewMessage) tLRPC$Update;
                    TLRPC$Message tLRPC$Message2 = tLRPC$TL_updateNewMessage.message;
                    sparseArray.put(tLRPC$Message2.f1518id, tLRPC$Message2);
                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda66
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.this.lambda$performSendMessageRequestMulti$40(tLRPC$TL_updateNewMessage);
                        }
                    });
                    arrayList3.remove(i);
                } else if (tLRPC$Update instanceof TLRPC$TL_updateNewChannelMessage) {
                    final TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage = (TLRPC$TL_updateNewChannelMessage) tLRPC$Update;
                    TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(MessagesController.getUpdateChannelId(tLRPC$TL_updateNewChannelMessage)));
                    if ((chat == null || chat.megagroup) && (tLRPC$TL_messageReplyHeader = tLRPC$TL_updateNewChannelMessage.message.reply_to) != null && (tLRPC$TL_messageReplyHeader.reply_to_top_id != 0 || tLRPC$TL_messageReplyHeader.reply_to_msg_id != 0)) {
                        if (longSparseArray2 == null) {
                            longSparseArray2 = new LongSparseArray<>();
                        }
                        long dialogId = MessageObject.getDialogId(tLRPC$TL_updateNewChannelMessage.message);
                        SparseArray<TLRPC$MessageReplies> sparseArray2 = longSparseArray2.get(dialogId);
                        if (sparseArray2 == null) {
                            sparseArray2 = new SparseArray<>();
                            longSparseArray2.put(dialogId, sparseArray2);
                        }
                        TLRPC$TL_messageReplyHeader tLRPC$TL_messageReplyHeader2 = tLRPC$TL_updateNewChannelMessage.message.reply_to;
                        int i2 = tLRPC$TL_messageReplyHeader2.reply_to_top_id;
                        if (i2 == 0) {
                            i2 = tLRPC$TL_messageReplyHeader2.reply_to_msg_id;
                        }
                        TLRPC$MessageReplies tLRPC$MessageReplies = sparseArray2.get(i2);
                        if (tLRPC$MessageReplies == null) {
                            tLRPC$MessageReplies = new TLRPC$TL_messageReplies();
                            sparseArray2.put(i2, tLRPC$MessageReplies);
                        }
                        TLRPC$Peer tLRPC$Peer = tLRPC$TL_updateNewChannelMessage.message.from_id;
                        if (tLRPC$Peer != null) {
                            tLRPC$MessageReplies.recent_repliers.add(0, tLRPC$Peer);
                        }
                        tLRPC$MessageReplies.replies++;
                    }
                    TLRPC$Message tLRPC$Message3 = tLRPC$TL_updateNewChannelMessage.message;
                    sparseArray.put(tLRPC$Message3.f1518id, tLRPC$Message3);
                    Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda63
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.this.lambda$performSendMessageRequestMulti$41(tLRPC$TL_updateNewChannelMessage);
                        }
                    });
                    arrayList3.remove(i);
                } else if (tLRPC$Update instanceof TLRPC$TL_updateNewScheduledMessage) {
                    TLRPC$Message tLRPC$Message4 = ((TLRPC$TL_updateNewScheduledMessage) tLRPC$Update).message;
                    sparseArray.put(tLRPC$Message4.f1518id, tLRPC$Message4);
                    arrayList3.remove(i);
                } else {
                    i++;
                }
                i--;
                i++;
            }
            if (longSparseArray2 != null) {
                getMessagesStorage().putChannelViews(null, null, longSparseArray2, true);
                getNotificationCenter().postNotificationName(NotificationCenter.didUpdateMessagesViews, null, null, longSparseArray2, Boolean.TRUE);
            }
            int i3 = 0;
            while (i3 < arrayList.size()) {
                MessageObject messageObject = (MessageObject) arrayList.get(i3);
                String str = (String) arrayList2.get(i3);
                final TLRPC$Message tLRPC$Message5 = messageObject.messageOwner;
                final int i4 = tLRPC$Message5.f1518id;
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
                updateMediaPaths(messageObject, tLRPC$Message, tLRPC$Message.f1518id, str, false);
                final int mediaExistanceFlags = messageObject.getMediaExistanceFlags();
                tLRPC$Message5.f1518id = tLRPC$Message.f1518id;
                if (ChatObject.isTemplatesChat(this.currentAccount, -tLRPC$Message.dialog_id)) {
                    tLRPC$Updates2 = tLRPC$Updates3;
                    getTemplatesController().markAsSent(tLRPC$Message5.random_id, tLRPC$Message5.f1518id);
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
                    tLRPC$Message.unread = num2.intValue() < tLRPC$Message.f1518id;
                }
                getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, 1);
                tLRPC$Message5.send_state = 0;
                getNotificationCenter().postNotificationName(NotificationCenter.messageReceivedByServer, Integer.valueOf(i4), Integer.valueOf(tLRPC$Message5.f1518id), tLRPC$Message5, Long.valueOf(tLRPC$Message5.dialog_id), Long.valueOf(j), Integer.valueOf(mediaExistanceFlags), Boolean.valueOf(z));
                getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda50
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequestMulti$43(tLRPC$Message5, i4, z, arrayList4, j, mediaExistanceFlags);
                    }
                });
                i3++;
                sparseArray = sparseArray;
                tLRPC$Updates3 = tLRPC$Updates2;
                longSparseArray = longSparseArray;
            }
            tLRPC$Updates = tLRPC$Updates3;
            z3 = false;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequestMulti$44(tLRPC$Updates);
                }
            });
            z2 = z3;
        } else {
            AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, null, tLRPC$TL_messages_sendMultiMedia, new Object[0]);
            z2 = true;
        }
        if (z2) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                TLRPC$Message tLRPC$Message7 = ((MessageObject) arrayList.get(i5)).messageOwner;
                getMessagesStorage().markMessageAsSendError(tLRPC$Message7, z);
                tLRPC$Message7.send_state = 2;
                getNotificationCenter().postNotificationName(NotificationCenter.messageSendError, Integer.valueOf(tLRPC$Message7.f1518id));
                processSentMessage(tLRPC$Message7.f1518id);
                removeFromSendingMessages(tLRPC$Message7.f1518id, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$40(TLRPC$TL_updateNewMessage tLRPC$TL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tLRPC$TL_updateNewMessage.pts, -1, tLRPC$TL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$41(TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tLRPC$TL_updateNewChannelMessage.pts, tLRPC$TL_updateNewChannelMessage.pts_count, tLRPC$TL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$43(final TLRPC$Message tLRPC$Message, final int i, final boolean z, ArrayList arrayList, final long j, final int i2) {
        getMessagesStorage().updateMessageStateAndId(tLRPC$Message.random_id, MessageObject.getPeerId(tLRPC$Message.peer_id), Integer.valueOf(i), tLRPC$Message.f1518id, 0, false, z ? 1 : 0);
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, z, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequestMulti$42(tLRPC$Message, i, j, i2, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$42(TLRPC$Message tLRPC$Message, int i, long j, int i2, boolean z) {
        getMediaDataController().increasePeerRaiting(tLRPC$Message.dialog_id);
        getNotificationCenter().postNotificationName(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(tLRPC$Message.f1518id), tLRPC$Message, Long.valueOf(tLRPC$Message.dialog_id), Long.valueOf(j), Integer.valueOf(i2), Boolean.valueOf(z));
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequestMulti$44(TLRPC$Updates tLRPC$Updates) {
        getMessagesController().processUpdates(tLRPC$Updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performSendMessageRequest(TLObject tLObject, MessageObject messageObject, String str, DelayedMessage delayedMessage, Object obj, HashMap<String, String> hashMap, boolean z) {
        performSendMessageRequest(tLObject, messageObject, str, null, false, delayedMessage, obj, hashMap, z);
    }

    private DelayedMessage findMaxDelayedMessageForMessageId(int i, long j) {
        int i2;
        DelayedMessage delayedMessage = null;
        int i3 = Integer.MIN_VALUE;
        for (Map.Entry<String, ArrayList<DelayedMessage>> entry : this.delayedMessages.entrySet()) {
            ArrayList<DelayedMessage> value = entry.getValue();
            int size = value.size();
            for (int i4 = 0; i4 < size; i4++) {
                DelayedMessage delayedMessage2 = value.get(i4);
                int i5 = delayedMessage2.type;
                if ((i5 == 4 || i5 == 0) && delayedMessage2.peer == j) {
                    MessageObject messageObject = delayedMessage2.obj;
                    if (messageObject != null) {
                        i2 = messageObject.getId();
                    } else {
                        ArrayList<MessageObject> arrayList = delayedMessage2.messageObjects;
                        if (arrayList == null || arrayList.isEmpty()) {
                            i2 = 0;
                        } else {
                            ArrayList<MessageObject> arrayList2 = delayedMessage2.messageObjects;
                            i2 = arrayList2.get(arrayList2.size() - 1).getId();
                        }
                    }
                    if (i2 != 0 && i2 > i && delayedMessage == null && i3 < i2) {
                        delayedMessage = delayedMessage2;
                        i3 = i2;
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
            getNotificationCenter().postNotificationName(NotificationCenter.messageReceivedByAck, Integer.valueOf(messageObject.messageOwner.f1518id));
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
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda55
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequest$47(tLRPC$Message, z2, tLObject, delayedMessage2);
                    }
                });
                return;
            }
        }
        if (tLObject instanceof TLRPC$TL_messages_editMessage) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequest$50(tLRPC$TL_error, tLRPC$Message, tLObject2, messageObject, str, z2, tLObject);
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
    public /* synthetic */ void lambda$performSendMessageRequest$47(TLRPC$Message tLRPC$Message, boolean z, TLObject tLObject, DelayedMessage delayedMessage) {
        removeFromSendingMessages(tLRPC$Message.f1518id, z);
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
    public /* synthetic */ void lambda$performSendMessageRequest$50(TLRPC$TL_error tLRPC$TL_error, final TLRPC$Message tLRPC$Message, TLObject tLObject, MessageObject messageObject, String str, final boolean z, TLObject tLObject2) {
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
                updateMediaPaths(messageObject, tLRPC$Message3, tLRPC$Message3.f1518id, str, false);
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda70
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.this.lambda$performSendMessageRequest$49(tLRPC$Updates, tLRPC$Message, z);
                }
            });
            if (MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isRoundVideoMessage(tLRPC$Message) || MessageObject.isNewGifMessage(tLRPC$Message)) {
                stopVideoService(str2);
                return;
            }
            return;
        }
        AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, null, tLObject2, new Object[0]);
        if (MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isRoundVideoMessage(tLRPC$Message) || MessageObject.isNewGifMessage(tLRPC$Message)) {
            stopVideoService(tLRPC$Message.attachPath);
        }
        removeFromSendingMessages(tLRPC$Message.f1518id, z);
        revertEditingMessageObject(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$49(TLRPC$Updates tLRPC$Updates, final TLRPC$Message tLRPC$Message, final boolean z) {
        getMessagesController().processUpdates(tLRPC$Updates, false);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$48(tLRPC$Message, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$48(TLRPC$Message tLRPC$Message, boolean z) {
        processSentMessage(tLRPC$Message.f1518id);
        removeFromSendingMessages(tLRPC$Message.f1518id, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$59(final boolean z, TLRPC$TL_error tLRPC$TL_error, final TLRPC$Message tLRPC$Message, TLObject tLObject, final MessageObject messageObject, String str, TLObject tLObject2) {
        boolean z2;
        String str2;
        boolean z3;
        int i;
        LongSparseArray<SparseArray<TLRPC$MessageReplies>> longSparseArray;
        TLRPC$Message tLRPC$Message2;
        boolean z4;
        int i2;
        TLRPC$TL_messageReplyHeader tLRPC$TL_messageReplyHeader;
        if (tLRPC$TL_error == null) {
            final int i3 = tLRPC$Message.f1518id;
            final ArrayList arrayList = new ArrayList();
            String str3 = tLRPC$Message.attachPath;
            boolean z5 = tLRPC$Message.date == 2147483646;
            if (tLObject instanceof TLRPC$TL_updateShortSentMessage) {
                final TLRPC$TL_updateShortSentMessage tLRPC$TL_updateShortSentMessage = (TLRPC$TL_updateShortSentMessage) tLObject;
                updateMediaPaths(messageObject, null, tLRPC$TL_updateShortSentMessage.f1632id, null, false);
                int mediaExistanceFlags = messageObject.getMediaExistanceFlags();
                int i4 = tLRPC$TL_updateShortSentMessage.f1632id;
                tLRPC$Message.f1518id = i4;
                tLRPC$Message.local_id = i4;
                tLRPC$Message.date = tLRPC$TL_updateShortSentMessage.date;
                tLRPC$Message.entities = tLRPC$TL_updateShortSentMessage.entities;
                tLRPC$Message.out = tLRPC$TL_updateShortSentMessage.out;
                if ((tLRPC$TL_updateShortSentMessage.flags & ConnectionsManager.FileTypeVideo) != 0) {
                    tLRPC$Message.ttl_period = tLRPC$TL_updateShortSentMessage.ttl_period;
                    tLRPC$Message.flags |= ConnectionsManager.FileTypeVideo;
                }
                TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$TL_updateShortSentMessage.media;
                if (tLRPC$MessageMedia != null) {
                    tLRPC$Message.media = tLRPC$MessageMedia;
                    tLRPC$Message.flags |= 512;
                    ImageLoader.saveMessageThumbs(tLRPC$Message);
                }
                TLRPC$MessageMedia tLRPC$MessageMedia2 = tLRPC$TL_updateShortSentMessage.media;
                if (((tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaGame) || (tLRPC$MessageMedia2 instanceof TLRPC$TL_messageMediaInvoice)) && !TextUtils.isEmpty(tLRPC$TL_updateShortSentMessage.message)) {
                    tLRPC$Message.message = tLRPC$TL_updateShortSentMessage.message;
                }
                if (!tLRPC$Message.entities.isEmpty()) {
                    tLRPC$Message.flags |= 128;
                }
                Integer num = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(tLRPC$Message.dialog_id));
                if (num == null) {
                    num = Integer.valueOf(getMessagesStorage().getDialogReadMax(tLRPC$Message.out, tLRPC$Message.dialog_id));
                    getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(tLRPC$Message.dialog_id), num);
                }
                tLRPC$Message.unread = num.intValue() < tLRPC$Message.f1518id;
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda67
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequest$51(tLRPC$TL_updateShortSentMessage);
                    }
                });
                arrayList.add(tLRPC$Message);
                i = mediaExistanceFlags;
                str2 = str3;
                z3 = false;
                z2 = false;
            } else if (tLObject instanceof TLRPC$Updates) {
                final TLRPC$Updates tLRPC$Updates = (TLRPC$Updates) tLObject;
                ArrayList<TLRPC$Update> arrayList2 = tLRPC$Updates.updates;
                int i5 = 0;
                while (true) {
                    if (i5 >= arrayList2.size()) {
                        longSparseArray = null;
                        tLRPC$Message2 = null;
                        break;
                    }
                    TLRPC$Update tLRPC$Update = arrayList2.get(i5);
                    if (tLRPC$Update instanceof TLRPC$TL_updateNewMessage) {
                        final TLRPC$TL_updateNewMessage tLRPC$TL_updateNewMessage = (TLRPC$TL_updateNewMessage) tLRPC$Update;
                        TLRPC$Message tLRPC$Message3 = tLRPC$TL_updateNewMessage.message;
                        if (tLRPC$Message3.action == null) {
                            arrayList.add(tLRPC$Message3);
                            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda65
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SendMessagesHelper.this.lambda$performSendMessageRequest$52(tLRPC$TL_updateNewMessage);
                                }
                            });
                            arrayList2.remove(i5);
                            tLRPC$Message2 = tLRPC$Message3;
                            break;
                        }
                    }
                    if (tLRPC$Update instanceof TLRPC$TL_updateNewChannelMessage) {
                        final TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage = (TLRPC$TL_updateNewChannelMessage) tLRPC$Update;
                        TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(MessagesController.getUpdateChannelId(tLRPC$TL_updateNewChannelMessage)));
                        if (!(chat == null || chat.megagroup) || (tLRPC$TL_messageReplyHeader = tLRPC$TL_updateNewChannelMessage.message.reply_to) == null || (tLRPC$TL_messageReplyHeader.reply_to_top_id == 0 && tLRPC$TL_messageReplyHeader.reply_to_msg_id == 0)) {
                            longSparseArray = null;
                        } else {
                            longSparseArray = new LongSparseArray<>();
                            long dialogId = MessageObject.getDialogId(tLRPC$TL_updateNewChannelMessage.message);
                            SparseArray<TLRPC$MessageReplies> sparseArray = longSparseArray.get(dialogId);
                            if (sparseArray == null) {
                                sparseArray = new SparseArray<>();
                                longSparseArray.put(dialogId, sparseArray);
                            }
                            TLRPC$TL_messageReplyHeader tLRPC$TL_messageReplyHeader2 = tLRPC$TL_updateNewChannelMessage.message.reply_to;
                            int i6 = tLRPC$TL_messageReplyHeader2.reply_to_top_id;
                            if (i6 == 0) {
                                i6 = tLRPC$TL_messageReplyHeader2.reply_to_msg_id;
                            }
                            TLRPC$MessageReplies tLRPC$MessageReplies = sparseArray.get(i6);
                            if (tLRPC$MessageReplies == null) {
                                tLRPC$MessageReplies = new TLRPC$TL_messageReplies();
                                sparseArray.put(i6, tLRPC$MessageReplies);
                            }
                            TLRPC$Peer tLRPC$Peer = tLRPC$TL_updateNewChannelMessage.message.from_id;
                            if (tLRPC$Peer != null) {
                                tLRPC$MessageReplies.recent_repliers.add(0, tLRPC$Peer);
                            }
                            tLRPC$MessageReplies.replies++;
                        }
                        TLRPC$Message tLRPC$Message4 = tLRPC$TL_updateNewChannelMessage.message;
                        arrayList.add(tLRPC$Message4);
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda64
                            @Override // java.lang.Runnable
                            public final void run() {
                                SendMessagesHelper.this.lambda$performSendMessageRequest$53(tLRPC$TL_updateNewChannelMessage);
                            }
                        });
                        arrayList2.remove(i5);
                        tLRPC$Message2 = tLRPC$Message4;
                    } else if (tLRPC$Update instanceof TLRPC$TL_updateNewScheduledMessage) {
                        TLRPC$Message tLRPC$Message5 = ((TLRPC$TL_updateNewScheduledMessage) tLRPC$Update).message;
                        arrayList.add(tLRPC$Message5);
                        arrayList2.remove(i5);
                        tLRPC$Message2 = tLRPC$Message5;
                        break;
                    } else {
                        i5++;
                    }
                }
                longSparseArray = null;
                if (longSparseArray != null) {
                    getMessagesStorage().putChannelViews(null, null, longSparseArray, true);
                    str2 = str3;
                    getNotificationCenter().postNotificationName(NotificationCenter.didUpdateMessagesViews, null, null, longSparseArray, Boolean.TRUE);
                } else {
                    str2 = str3;
                }
                if (tLRPC$Message2 != null) {
                    MessageObject.getDialogId(tLRPC$Message2);
                    z3 = (!z5 || tLRPC$Message2.date == 2147483646) ? z : false;
                    ImageLoader.saveMessageThumbs(tLRPC$Message2);
                    if (!z3) {
                        Integer num2 = getMessagesController().dialogs_read_outbox_max.get(Long.valueOf(tLRPC$Message2.dialog_id));
                        if (num2 == null) {
                            num2 = Integer.valueOf(getMessagesStorage().getDialogReadMax(tLRPC$Message2.out, tLRPC$Message2.dialog_id));
                            getMessagesController().dialogs_read_outbox_max.put(Long.valueOf(tLRPC$Message2.dialog_id), num2);
                        }
                        tLRPC$Message2.unread = num2.intValue() < tLRPC$Message2.f1518id;
                    }
                    TLRPC$Message tLRPC$Message6 = messageObject.messageOwner;
                    tLRPC$Message6.post_author = tLRPC$Message2.post_author;
                    if ((tLRPC$Message2.flags & ConnectionsManager.FileTypeVideo) != 0) {
                        tLRPC$Message6.ttl_period = tLRPC$Message2.ttl_period;
                        tLRPC$Message6.flags |= ConnectionsManager.FileTypeVideo;
                    }
                    tLRPC$Message6.entities = tLRPC$Message2.entities;
                    updateMediaPaths(messageObject, tLRPC$Message2, tLRPC$Message2.f1518id, str, false);
                    int mediaExistanceFlags2 = messageObject.getMediaExistanceFlags();
                    tLRPC$Message.f1518id = tLRPC$Message2.f1518id;
                    if (ChatObject.isTemplatesChat(this.currentAccount, -tLRPC$Message.dialog_id)) {
                        getTemplatesController().markAsSent(tLRPC$Message.random_id, tLRPC$Message.f1518id);
                    }
                    i2 = mediaExistanceFlags2;
                    z4 = false;
                } else {
                    if (BuildVars.LOGS_ENABLED) {
                        StringBuilder sb = new StringBuilder();
                        for (int i7 = 0; i7 < arrayList2.size(); i7++) {
                            sb.append(arrayList2.get(i7).getClass().getSimpleName());
                            sb.append(", ");
                        }
                        FileLog.m48d("can't find message in updates " + ((Object) sb));
                    }
                    z3 = z;
                    z4 = true;
                    i2 = 0;
                }
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda69
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendMessagesHelper.this.lambda$performSendMessageRequest$54(tLRPC$Updates);
                    }
                });
                z2 = z4;
                i = i2;
            } else {
                str2 = str3;
                z3 = z;
                i = 0;
                z2 = false;
            }
            if (MessageObject.isLiveLocationMessage(tLRPC$Message) && tLRPC$Message.via_bot_id == 0 && TextUtils.isEmpty(tLRPC$Message.via_bot_name)) {
                getLocationController().addSharingLocation(tLRPC$Message);
            }
            if (!z2) {
                getStatsController().incrementSentItemsCount(ApplicationLoader.getCurrentNetworkType(), 1, 1);
                tLRPC$Message.send_state = 0;
                if (z && !z3) {
                    ArrayList<Integer> arrayList3 = new ArrayList<>();
                    arrayList3.add(Integer.valueOf(i3));
                    getMessagesController().deleteMessages(arrayList3, null, null, tLRPC$Message.dialog_id, false, true);
                    final String str4 = str2;
                    getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda35
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.this.lambda$performSendMessageRequest$56(arrayList, messageObject, tLRPC$Message, i3, z, str4);
                        }
                    });
                } else {
                    getNotificationCenter().postNotificationName(NotificationCenter.messageReceivedByServer, Integer.valueOf(i3), Integer.valueOf(tLRPC$Message.f1518id), tLRPC$Message, Long.valueOf(tLRPC$Message.dialog_id), 0L, Integer.valueOf(i), Boolean.valueOf(z));
                    final int i8 = i;
                    final String str5 = str2;
                    getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda49
                        @Override // java.lang.Runnable
                        public final void run() {
                            SendMessagesHelper.this.lambda$performSendMessageRequest$58(tLRPC$Message, i3, z, arrayList, i8, str5);
                        }
                    });
                }
            }
        } else {
            AlertsCreator.processError(this.currentAccount, tLRPC$TL_error, null, tLObject2, new Object[0]);
            z2 = true;
        }
        if (z2) {
            getMessagesStorage().markMessageAsSendError(tLRPC$Message, z);
            tLRPC$Message.send_state = 2;
            getNotificationCenter().postNotificationName(NotificationCenter.messageSendError, Integer.valueOf(tLRPC$Message.f1518id));
            processSentMessage(tLRPC$Message.f1518id);
            if (MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isRoundVideoMessage(tLRPC$Message) || MessageObject.isNewGifMessage(tLRPC$Message)) {
                stopVideoService(tLRPC$Message.attachPath);
            }
            removeFromSendingMessages(tLRPC$Message.f1518id, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$51(TLRPC$TL_updateShortSentMessage tLRPC$TL_updateShortSentMessage) {
        getMessagesController().processNewDifferenceParams(-1, tLRPC$TL_updateShortSentMessage.pts, tLRPC$TL_updateShortSentMessage.date, tLRPC$TL_updateShortSentMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$52(TLRPC$TL_updateNewMessage tLRPC$TL_updateNewMessage) {
        getMessagesController().processNewDifferenceParams(-1, tLRPC$TL_updateNewMessage.pts, -1, tLRPC$TL_updateNewMessage.pts_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$53(TLRPC$TL_updateNewChannelMessage tLRPC$TL_updateNewChannelMessage) {
        getMessagesController().processNewChannelDifferenceParams(tLRPC$TL_updateNewChannelMessage.pts, tLRPC$TL_updateNewChannelMessage.pts_count, tLRPC$TL_updateNewChannelMessage.message.peer_id.channel_id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$54(TLRPC$Updates tLRPC$Updates) {
        getMessagesController().processUpdates(tLRPC$Updates, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$56(ArrayList arrayList, final MessageObject messageObject, final TLRPC$Message tLRPC$Message, final int i, final boolean z, String str) {
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, false, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$55(messageObject, tLRPC$Message, i, z);
            }
        });
        if (MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isRoundVideoMessage(tLRPC$Message) || MessageObject.isNewGifMessage(tLRPC$Message)) {
            stopVideoService(str);
        }
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
    public /* synthetic */ void lambda$performSendMessageRequest$58(final TLRPC$Message tLRPC$Message, final int i, final boolean z, ArrayList arrayList, final int i2, String str) {
        getMessagesStorage().updateMessageStateAndId(tLRPC$Message.random_id, MessageObject.getPeerId(tLRPC$Message.peer_id), Integer.valueOf(i), tLRPC$Message.f1518id, 0, false, z ? 1 : 0);
        getMessagesStorage().putMessages((ArrayList<TLRPC$Message>) arrayList, true, false, false, 0, z, 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$57(tLRPC$Message, i, i2, z);
            }
        });
        if (MessageObject.isVideoMessage(tLRPC$Message) || MessageObject.isRoundVideoMessage(tLRPC$Message) || MessageObject.isNewGifMessage(tLRPC$Message)) {
            stopVideoService(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$57(TLRPC$Message tLRPC$Message, int i, int i2, boolean z) {
        getMediaDataController().increasePeerRaiting(tLRPC$Message.dialog_id);
        getNotificationCenter().postNotificationName(NotificationCenter.messageReceivedByServer, Integer.valueOf(i), Integer.valueOf(tLRPC$Message.f1518id), tLRPC$Message, Long.valueOf(tLRPC$Message.dialog_id), 0L, Integer.valueOf(i2), Boolean.valueOf(z));
        processSentMessage(i);
        removeFromSendingMessages(i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$62(final TLRPC$Message tLRPC$Message) {
        final int i = tLRPC$Message.f1518id;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$performSendMessageRequest$61(tLRPC$Message, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$performSendMessageRequest$61(TLRPC$Message tLRPC$Message, int i) {
        tLRPC$Message.send_state = 0;
        getNotificationCenter().postNotificationName(NotificationCenter.messageReceivedByAck, Integer.valueOf(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateMediaPaths(org.telegram.messenger.MessageObject r20, org.telegram.tgnet.TLRPC$Message r21, int r22, java.lang.String r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 1820
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda33
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
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda32
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
        ArrayList arrayList2 = arrayList != null ? arrayList : new ArrayList();
        final ImportingHistory importingHistory = new ImportingHistory();
        importingHistory.mediaPaths = arrayList2;
        importingHistory.dialogId = j;
        importingHistory.peer = getMessagesController().getInputPeer(j);
        final HashMap hashMap = new HashMap();
        int i = 0;
        int size = arrayList2.size();
        while (i < size + 1) {
            Uri uri2 = i == 0 ? uri : (Uri) arrayList2.get(i - 1);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.this.lambda$prepareImportHistory$68(hashMap, j, importingHistory, longCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareImportHistory$67(MessagesStorage.LongCallback longCallback) {
        Toast.makeText(ApplicationLoader.applicationContext, LocaleController.getString("ImportFileTooLarge", C3158R.string.ImportFileTooLarge), 0).show();
        longCallback.run(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareImportHistory$68(HashMap hashMap, long j, ImportingHistory importingHistory, MessagesStorage.LongCallback longCallback) {
        this.importingHistoryFiles.putAll(hashMap);
        this.importingHistoryMap.put(j, importingHistory);
        getFileLoader().uploadFile(importingHistory.historyPath, false, true, 0L, ConnectionsManager.FileTypeFile, true);
        getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, Long.valueOf(j));
        longCallback.run(j);
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, ImportingService.class));
        } catch (Throwable th) {
            FileLog.m45e(th);
        }
    }

    public void prepareImportStickers(final String str, final String str2, final String str3, final ArrayList<ImportingSticker> arrayList, final MessagesStorage.StringCallback stringCallback) {
        if (this.importingStickersMap.get(str2) != null) {
            stringCallback.run(null);
        } else {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda29
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda41
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
            getNotificationCenter().postNotificationName(NotificationCenter.historyImportProgressChanged, str);
            stringCallback.run(str);
        }
        try {
            ApplicationLoader.applicationContext.startService(new Intent(ApplicationLoader.applicationContext, ImportingService.class));
        } catch (Throwable th) {
            FileLog.m45e(th);
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
    /* JADX WARN: Can't wrap try/catch for region: R(28:(5:242|243|244|245|(10:247|248|249|250|251|252|253|254|255|256)(1:295))|(3:266|267|(28:269|270|(25:272|260|261|262|(6:53|(1:55)|56|(1:58)|59|(1:61))(1:241)|(2:63|(18:65|66|(1:234)(7:69|(1:71)(1:233)|72|(1:232)(1:76)|(1:231)(4:81|(1:83)(1:230)|84|(2:88|89))|229|89)|90|(11:92|(1:94)|95|(3:97|98|100)(1:227)|(3:110|111|(10:113|114|115|116|(1:118)|119|120|(1:194)(8:123|124|125|126|127|128|129|(2:136|137))|187|137))|201|120|(0)|194|187|137)(1:228)|(1:139)(1:186)|140|(1:142)|143|(1:146)|(1:148)|149|(2:151|(2:171|(2:181|(1:183)(1:184))(1:177))(4:155|(1:170)(2:(1:169)(1:162)|(2:164|(1:166)))|167|168))(1:185)|178|(0)|170|167|168)(2:(1:236)(1:239)|237))(1:240)|238|66|(0)|234|90|(0)(0)|(0)(0)|140|(0)|143|(1:146)|(0)|149|(0)(0)|178|(0)|170|167|168)|259|260|261|262|(0)(0)|(0)(0)|238|66|(0)|234|90|(0)(0)|(0)(0)|140|(0)|143|(0)|(0)|149|(0)(0)|178|(0)|170|167|168))|258|259|260|261|262|(0)(0)|(0)(0)|238|66|(0)|234|90|(0)(0)|(0)(0)|140|(0)|143|(0)|(0)|149|(0)(0)|178|(0)|170|167|168) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0058, code lost:
        if (r3 == false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0149, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x014a, code lost:
        org.telegram.messenger.FileLog.m45e(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x022c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x03f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0490 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0503 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0175 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int prepareSendingDocumentInternal(final org.telegram.messenger.AccountInstance r33, java.lang.String r34, java.lang.String r35, android.net.Uri r36, java.lang.String r37, final long r38, final org.telegram.messenger.MessageObject r40, final org.telegram.messenger.MessageObject r41, java.lang.CharSequence r42, final java.util.ArrayList<org.telegram.tgnet.TLRPC$MessageEntity> r43, final org.telegram.messenger.MessageObject r44, long[] r45, boolean r46, boolean r47, final boolean r48, final int r49, java.lang.Integer[] r50, final java.lang.String r51) {
        /*
            Method dump skipped, instructions count: 1430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.prepareSendingDocumentInternal(org.telegram.messenger.AccountInstance, java.lang.String, java.lang.String, android.net.Uri, java.lang.String, long, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, java.lang.CharSequence, java.util.ArrayList, org.telegram.messenger.MessageObject, long[], boolean, boolean, boolean, int, java.lang.Integer[], java.lang.String):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingDocumentInternal$73(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_document tLRPC$TL_document, String str, HashMap hashMap, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, String str3, ArrayList arrayList, boolean z, int i, String str4) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tLRPC$TL_document, str, hashMap, false, false, str2);
        } else {
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_document, null, str, j, messageObject2, messageObject3, str3, arrayList, null, hashMap, z, i, 0, str2, null, false, str4);
        }
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
            } catch (Exception e) {
                FileLog.m45e(e);
            }
        }
        return !FileLoader.checkUploadFileSize(accountInstance.getCurrentAccount(), j);
    }

    public static void prepareSendingDocument(AccountInstance accountInstance, String str, String str2, Uri uri, String str3, String str4, long j, MessageObject messageObject, MessageObject messageObject2, InputContentInfoCompat inputContentInfoCompat, MessageObject messageObject3, boolean z, int i, String str5) {
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
        prepareSendingDocuments(accountInstance, arrayList, arrayList2, arrayList3, str3, str4, j, messageObject, messageObject2, inputContentInfoCompat, messageObject3, z, i, str5, true);
    }

    public static void prepareSendingAudioDocuments(final AccountInstance accountInstance, final ArrayList<MessageObject> arrayList, final CharSequence charSequence, final long j, final MessageObject messageObject, final MessageObject messageObject2, final MessageObject messageObject3, final boolean z, final int i, final String str, final boolean z2) {
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingAudioDocuments$75(arrayList, j, accountInstance, charSequence, z2, messageObject3, messageObject, messageObject2, z, i, str);
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
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0100 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingAudioDocuments$75(java.util.ArrayList r24, final long r25, final org.telegram.messenger.AccountInstance r27, java.lang.CharSequence r28, boolean r29, final org.telegram.messenger.MessageObject r30, final org.telegram.messenger.MessageObject r31, final org.telegram.messenger.MessageObject r32, final boolean r33, final int r34, final java.lang.String r35) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingAudioDocuments$75(java.util.ArrayList, long, org.telegram.messenger.AccountInstance, java.lang.CharSequence, boolean, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, boolean, int, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingAudioDocuments$74(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_document tLRPC$TL_document, MessageObject messageObject2, HashMap hashMap, String str, long j, MessageObject messageObject3, MessageObject messageObject4, String str2, ArrayList arrayList, boolean z, int i, String str3) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tLRPC$TL_document, messageObject2.messageOwner.attachPath, hashMap, false, false, str);
        } else {
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_document, null, messageObject2.messageOwner.attachPath, j, messageObject3, messageObject4, str2, arrayList, null, hashMap, z, i, 0, str, null, false, false, str3);
        }
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

    public static void prepareSendingDocuments(final AccountInstance accountInstance, final ArrayList<String> arrayList, final ArrayList<String> arrayList2, final ArrayList<Uri> arrayList3, final String str, final String str2, final long j, final MessageObject messageObject, final MessageObject messageObject2, final InputContentInfoCompat inputContentInfoCompat, final MessageObject messageObject3, final boolean z, final int i, final String str3, final boolean z2) {
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            return;
        }
        if (arrayList == null || arrayList2 == null || arrayList.size() == arrayList2.size()) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$prepareSendingDocuments$77(j, arrayList, str, accountInstance, i, arrayList2, str2, messageObject, messageObject2, messageObject3, z2, inputContentInfoCompat, z, str3, arrayList3);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingDocuments$77(long j, ArrayList arrayList, String str, AccountInstance accountInstance, int i, ArrayList arrayList2, String str2, MessageObject messageObject, MessageObject messageObject2, MessageObject messageObject3, boolean z, InputContentInfoCompat inputContentInfoCompat, boolean z2, String str3, ArrayList arrayList3) {
        Integer[] numArr;
        long[] jArr;
        ArrayList arrayList4;
        int i2;
        AccountInstance accountInstance2 = accountInstance;
        int i3 = i;
        int i4 = 1;
        long[] jArr2 = new long[1];
        Integer[] numArr2 = new Integer[1];
        boolean isEncryptedDialog = DialogObject.isEncryptedDialog(j);
        int i5 = 10;
        if (arrayList != null) {
            int size = arrayList.size();
            i2 = 0;
            int i6 = 0;
            int i7 = 0;
            while (i7 < size) {
                String str4 = i7 == 0 ? str : null;
                if (!isEncryptedDialog && size > i4 && i6 % 10 == 0) {
                    if (jArr2[0] != 0) {
                        finishGroup(accountInstance2, jArr2[0], i3);
                    }
                    jArr2[0] = Utilities.random.nextLong();
                    i6 = 0;
                }
                int i8 = i6 + 1;
                long j2 = jArr2[0];
                int i9 = i7;
                int i10 = size;
                Integer[] numArr3 = numArr2;
                long[] jArr3 = jArr2;
                i2 = prepareSendingDocumentInternal(accountInstance, (String) arrayList.get(i7), (String) arrayList2.get(i7), null, str2, j, messageObject, messageObject2, str4, null, messageObject3, !z ? null : jArr2, i8 == i5 || i7 == size + (-1), inputContentInfoCompat == null, z2, i, numArr3, str3);
                i6 = (j2 != jArr3[0] || jArr3[0] == -1) ? 1 : i8;
                i7 = i9 + 1;
                accountInstance2 = accountInstance;
                i3 = i;
                size = i10;
                numArr2 = numArr3;
                jArr2 = jArr3;
                i5 = 10;
                i4 = 1;
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
            int i11 = 0;
            int i12 = 0;
            while (i12 < arrayList3.size()) {
                String str5 = (i12 == 0 && (arrayList == null || arrayList.size() == 0)) ? str : null;
                if (!isEncryptedDialog) {
                    if (size2 > 1 && i11 % 10 == 0) {
                        if (jArr[0] != 0) {
                            finishGroup(accountInstance, jArr[0], i);
                        }
                        jArr[0] = Utilities.random.nextLong();
                        i11 = 0;
                    }
                }
                int i13 = i11 + 1;
                long j3 = jArr[0];
                int i14 = i12;
                int i15 = size2;
                i2 = prepareSendingDocumentInternal(accountInstance, null, null, (Uri) arrayList4.get(i12), str2, j, messageObject, messageObject2, str5, null, messageObject3, jArr, i13 == 10 || i12 == size2 + (-1), inputContentInfoCompat == null, z2, i, numArr, str3);
                i11 = (j3 != jArr[0] || jArr[0] == -1) ? 1 : i13;
                i12 = i14 + 1;
                arrayList4 = arrayList3;
                size2 = i15;
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
                NotificationCenter.getGlobalInstance().postNotificationName(NotificationCenter.showBulletin, 1, LocaleController.getString("UnsupportedAttachment", C3158R.string.UnsupportedAttachment));
            } else if (i != 2) {
            } else {
                NotificationCenter.getInstance(accountInstance.getCurrentAccount()).postNotificationName(NotificationCenter.currentUserShowLimitReachedDialog, 6);
            }
        } catch (Exception e) {
            FileLog.m45e(e);
        }
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, ArrayList<TLRPC$InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, boolean z, int i2, String str2) {
        prepareSendingPhoto(accountInstance, str, null, uri, j, messageObject, messageObject2, charSequence, arrayList, arrayList2, inputContentInfoCompat, i, messageObject3, null, z, i2, false, str2);
    }

    public static void prepareSendingPhoto(AccountInstance accountInstance, String str, String str2, Uri uri, long j, MessageObject messageObject, MessageObject messageObject2, CharSequence charSequence, ArrayList<TLRPC$MessageEntity> arrayList, ArrayList<TLRPC$InputDocument> arrayList2, InputContentInfoCompat inputContentInfoCompat, int i, MessageObject messageObject3, VideoEditedInfo videoEditedInfo, boolean z, int i2, boolean z2, String str3) {
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
        prepareSendingMedia(accountInstance, arrayList3, j, messageObject, messageObject2, inputContentInfoCompat, z2, false, messageObject3, z, i2, false, str3);
    }

    public static void prepareSendingBotContextResult(final BaseFragment baseFragment, final AccountInstance accountInstance, final TLRPC$BotInlineResult tLRPC$BotInlineResult, final HashMap<String, String> hashMap, final long j, final MessageObject messageObject, final MessageObject messageObject2, final boolean z, final int i, final String str) {
        if (tLRPC$BotInlineResult == null) {
            return;
        }
        TLRPC$BotInlineMessage tLRPC$BotInlineMessage = tLRPC$BotInlineResult.send_message;
        if (tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaAuto) {
            new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    SendMessagesHelper.lambda$prepareSendingBotContextResult$82(j, tLRPC$BotInlineResult, accountInstance, hashMap, baseFragment, messageObject, messageObject2, z, i, str);
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
            sendMessagesHelper.sendMessage(tLRPC$BotInlineMessage2.message, j, messageObject, messageObject2, tLRPC$TL_webPagePending2, !tLRPC$BotInlineMessage2.no_webpage, tLRPC$BotInlineMessage2.entities, tLRPC$BotInlineMessage2.reply_markup, hashMap, z, i, null, false, str);
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
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_messageMediaVenue, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str);
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
                accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_messageMediaGeoLive, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str);
                return;
            }
            TLRPC$TL_messageMediaGeo tLRPC$TL_messageMediaGeo = new TLRPC$TL_messageMediaGeo();
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage5 = tLRPC$BotInlineResult.send_message;
            tLRPC$TL_messageMediaGeo.geo = tLRPC$BotInlineMessage5.geo;
            tLRPC$TL_messageMediaGeo.heading = tLRPC$BotInlineMessage5.heading;
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_messageMediaGeo, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str);
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
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_user, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str);
        } else if (!(tLRPC$BotInlineMessage instanceof TLRPC$TL_botInlineMessageMediaInvoice) || DialogObject.isEncryptedDialog(j)) {
        } else {
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
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_messageMediaInvoice, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0509  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingBotContextResult$82(final long r22, final org.telegram.tgnet.TLRPC$BotInlineResult r24, final org.telegram.messenger.AccountInstance r25, final java.util.HashMap r26, final org.telegram.p048ui.ActionBar.BaseFragment r27, final org.telegram.messenger.MessageObject r28, final org.telegram.messenger.MessageObject r29, final boolean r30, final int r31, final java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 1486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingBotContextResult$82(long, org.telegram.tgnet.TLRPC$BotInlineResult, org.telegram.messenger.AccountInstance, java.util.HashMap, org.telegram.ui.ActionBar.BaseFragment, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, boolean, int, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingBotContextResult$81(TLRPC$TL_document tLRPC$TL_document, Bitmap[] bitmapArr, String[] strArr, AccountInstance accountInstance, String str, long j, MessageObject messageObject, MessageObject messageObject2, TLRPC$BotInlineResult tLRPC$BotInlineResult, HashMap hashMap, boolean z, int i, String str2, TLRPC$TL_photo tLRPC$TL_photo, TLRPC$TL_game tLRPC$TL_game) {
        if (tLRPC$TL_document != null) {
            if (bitmapArr[0] != null && strArr[0] != null) {
                ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
            }
            SendMessagesHelper sendMessagesHelper = accountInstance.getSendMessagesHelper();
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage = tLRPC$BotInlineResult.send_message;
            sendMessagesHelper.sendMessage(tLRPC$TL_document, null, str, j, messageObject, messageObject2, tLRPC$BotInlineMessage.message, tLRPC$BotInlineMessage.entities, tLRPC$BotInlineMessage.reply_markup, hashMap, z, i, 0, tLRPC$BotInlineResult, null, false, str2);
        } else if (tLRPC$TL_photo == null) {
            if (tLRPC$TL_game != null) {
                accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_game, j, messageObject, messageObject2, tLRPC$BotInlineResult.send_message.reply_markup, hashMap, z, i, str2);
            }
        } else {
            SendMessagesHelper sendMessagesHelper2 = accountInstance.getSendMessagesHelper();
            TLRPC$WebDocument tLRPC$WebDocument = tLRPC$BotInlineResult.content;
            String str3 = tLRPC$WebDocument != null ? tLRPC$WebDocument.url : null;
            TLRPC$BotInlineMessage tLRPC$BotInlineMessage2 = tLRPC$BotInlineResult.send_message;
            sendMessagesHelper2.sendMessage(tLRPC$TL_photo, str3, j, messageObject, messageObject2, tLRPC$BotInlineMessage2.message, tLRPC$BotInlineMessage2.entities, tLRPC$BotInlineMessage2.reply_markup, hashMap, z, i, 0, tLRPC$BotInlineResult, false, str2);
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
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0072 -> B:11:0x0041). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingText$83(java.lang.String r22, int r23, org.telegram.messenger.AccountInstance r24, long r25, boolean r27, int r28, java.lang.String r29) {
        /*
            r0 = r23
            java.lang.String r1 = getTrimmedString(r22)
            int r2 = r1.length()
            if (r2 == 0) goto L75
            int r2 = r1.length()
            float r2 = (float) r2
            r3 = 1166016512(0x45800000, float:4096.0)
            float r2 = r2 / r3
            double r2 = (double) r2
            double r2 = java.lang.Math.ceil(r2)
            int r2 = (int) r2
            r3 = 0
            r4 = 0
            if (r0 == 0) goto L72
            org.telegram.messenger.MessagesController r5 = r24.getMessagesController()
            org.telegram.messenger.TopicsController r5 = r5.getTopicsController()
            r14 = r25
            long r6 = -r14
            org.telegram.tgnet.TLRPC$TL_forumTopic r0 = r5.findTopic(r6, r0)
            if (r0 == 0) goto L41
            org.telegram.tgnet.TLRPC$Message r5 = r0.topicStartMessage
            if (r5 == 0) goto L41
            org.telegram.messenger.MessageObject r3 = new org.telegram.messenger.MessageObject
            int r5 = r24.getCurrentAccount()
            org.telegram.tgnet.TLRPC$Message r0 = r0.topicStartMessage
            r3.<init>(r5, r0, r4, r4)
            r0 = 1
            r3.isTopicMainMessage = r0
        L41:
            if (r4 >= r2) goto L75
            int r0 = r4 * 4096
            int r4 = r4 + 1
            int r5 = r4 * 4096
            int r6 = r1.length()
            int r5 = java.lang.Math.min(r5, r6)
            java.lang.String r7 = r1.substring(r0, r5)
            org.telegram.messenger.SendMessagesHelper r6 = r24.getSendMessagesHelper()
            r12 = 0
            r13 = 1
            r0 = 0
            r5 = 0
            r16 = 0
            r19 = 0
            r20 = 0
            r8 = r25
            r10 = r3
            r11 = r3
            r14 = r0
            r15 = r5
            r17 = r27
            r18 = r28
            r21 = r29
            r6.sendMessage(r7, r8, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
        L72:
            r14 = r25
            goto L41
        L75:
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
        Point messageSize = ChatMessageCell.getMessageSize(tLRPC$PhotoSize.f1525w, tLRPC$PhotoSize.f1524h);
        if (bitmapArr != null) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                File pathToAttach = FileLoader.getInstance(accountInstance.getCurrentAccount()).getPathToAttach(tLRPC$PhotoSize, z2);
                FileInputStream fileInputStream = new FileInputStream(pathToAttach);
                BitmapFactory.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
                float max = Math.max(options.outWidth / messageSize.f1746x, options.outHeight / messageSize.f1747y);
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
        return String.format(Locale.US, z ? "%d_%d@%d_%d_b" : "%d_%d@%d_%d", Long.valueOf(tLRPC$PhotoSize.location.volume_id), Integer.valueOf(tLRPC$PhotoSize.location.local_id), Integer.valueOf((int) (messageSize.f1746x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.f1747y / AndroidUtilities.density)));
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
                FileLog.m45e(e);
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

    public static void prepareSendingMedia(final AccountInstance accountInstance, final ArrayList<SendingMediaInfo> arrayList, final long j, final MessageObject messageObject, final MessageObject messageObject2, final InputContentInfoCompat inputContentInfoCompat, final boolean z, boolean z2, final MessageObject messageObject3, final boolean z3, final int i, final boolean z4, final String str) {
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
                SendMessagesHelper.lambda$prepareSendingMedia$91(arrayList, j, z, z5, accountInstance, messageObject3, messageObject, messageObject2, z3, i, str, inputContentInfoCompat, z4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0610, code lost:
        if (r5 != null) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
        if (r4 != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x089f, code lost:
        if (r66.size() == 1) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x08e9, code lost:
        if (r2 == (r15 - 1)) goto L306;
     */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02dc A[Catch: Exception -> 0x02cd, TryCatch #2 {Exception -> 0x02cd, blocks: (B:130:0x02c5, B:137:0x02d2, B:139:0x02dc, B:140:0x02e7), top: B:635:0x02c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02e7 A[Catch: Exception -> 0x02cd, TRY_LEAVE, TryCatch #2 {Exception -> 0x02cd, blocks: (B:130:0x02c5, B:137:0x02d2, B:139:0x02dc, B:140:0x02e7), top: B:635:0x02c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x06ff  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0799  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x08cb  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x08f4  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0b54  */
    /* JADX WARN: Removed duplicated region for block: B:512:0x0bf5  */
    /* JADX WARN: Removed duplicated region for block: B:515:0x0c0c  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0c13  */
    /* JADX WARN: Removed duplicated region for block: B:543:0x0c78  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x0c8c  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0ca2  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0cb5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:567:0x0cfe  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x0d03  */
    /* JADX WARN: Removed duplicated region for block: B:589:0x0d81 A[LOOP:4: B:587:0x0d79->B:589:0x0d81, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:631:0x060b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:641:0x02f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:671:0x0cb2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x016b  */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingMedia$91(java.util.ArrayList r66, final long r67, boolean r69, boolean r70, final org.telegram.messenger.AccountInstance r71, final org.telegram.messenger.MessageObject r72, final org.telegram.messenger.MessageObject r73, final org.telegram.messenger.MessageObject r74, final boolean r75, final int r76, final java.lang.String r77, androidx.core.view.inputmethod.InputContentInfoCompat r78, final boolean r79) {
        /*
            Method dump skipped, instructions count: 3916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingMedia$91(java.util.ArrayList, long, boolean, boolean, org.telegram.messenger.AccountInstance, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, boolean, int, java.lang.String, androidx.core.view.inputmethod.InputContentInfoCompat, boolean):void");
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
    public static /* synthetic */ void lambda$prepareSendingMedia$87(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_document tLRPC$TL_document, String str, HashMap hashMap, SendingMediaInfo sendingMediaInfo, String str2, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, String str3) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, null, tLRPC$TL_document, str, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str2);
        } else {
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_document, null, str, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z, i, 0, str2, null, false, sendingMediaInfo.hasMediaSpoilers, str3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$88(MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_photo tLRPC$TL_photo, boolean z, SendingMediaInfo sendingMediaInfo, HashMap hashMap, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z2, int i, String str2) {
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tLRPC$TL_photo, null, null, z ? sendingMediaInfo.searchImage.imageUrl : null, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str);
        } else {
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_photo, z ? sendingMediaInfo.searchImage.imageUrl : null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z2, i, sendingMediaInfo.ttl, str, false, sendingMediaInfo.hasMediaSpoilers, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$89(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC$TL_document tLRPC$TL_document, String str2, HashMap hashMap, SendingMediaInfo sendingMediaInfo, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, String str4) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tLRPC$TL_document, str2, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str3);
        } else {
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z, i, sendingMediaInfo.ttl, str3, null, false, sendingMediaInfo.hasMediaSpoilers, str4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingMedia$90(Bitmap[] bitmapArr, String[] strArr, MessageObject messageObject, AccountInstance accountInstance, TLRPC$TL_photo tLRPC$TL_photo, HashMap hashMap, SendingMediaInfo sendingMediaInfo, String str, long j, MessageObject messageObject2, MessageObject messageObject3, boolean z, int i, boolean z2, String str2) {
        if (bitmapArr[0] != null && strArr[0] != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmapArr[0]), strArr[0], false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, tLRPC$TL_photo, null, null, null, hashMap, false, sendingMediaInfo.hasMediaSpoilers, str);
        } else {
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_photo, null, j, messageObject2, messageObject3, sendingMediaInfo.caption, sendingMediaInfo.entities, null, hashMap, z, i, sendingMediaInfo.ttl, str, z2, sendingMediaInfo.hasMediaSpoilers, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void fillVideoAttribute(java.lang.String r5, org.telegram.tgnet.TLRPC$TL_documentAttributeVideo r6, org.telegram.messenger.VideoEditedInfo r7) {
        /*
            r0 = 1148846080(0x447a0000, float:1000.0)
            r1 = 0
            android.media.MediaMetadataRetriever r2 = new android.media.MediaMetadataRetriever     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            r2.<init>()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            r2.setDataSource(r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            r1 = 18
            java.lang.String r1 = r2.extractMetadata(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            if (r1 == 0) goto L19
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            r6.f1505w = r1     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
        L19:
            r1 = 19
            java.lang.String r1 = r2.extractMetadata(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            if (r1 == 0) goto L27
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            r6.f1504h = r1     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
        L27:
            r1 = 9
            java.lang.String r1 = r2.extractMetadata(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            if (r1 == 0) goto L3d
            long r3 = java.lang.Long.parseLong(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            float r1 = (float) r3     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            float r1 = r1 / r0
            double r3 = (double) r1     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            double r3 = java.lang.Math.ceil(r3)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            int r1 = (int) r3     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            r6.duration = r1     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
        L3d:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            r3 = 17
            if (r1 < r3) goto L68
            r1 = 24
            java.lang.String r1 = r2.extractMetadata(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            if (r1 == 0) goto L68
            java.lang.Integer r1 = org.telegram.messenger.Utilities.parseInt(r1)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            if (r7 == 0) goto L58
            r7.rotationValue = r1     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            goto L68
        L58:
            r7 = 90
            if (r1 == r7) goto L60
            r7 = 270(0x10e, float:3.78E-43)
            if (r1 != r7) goto L68
        L60:
            int r7 = r6.f1505w     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            int r1 = r6.f1504h     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            r6.f1505w = r1     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
            r6.f1504h = r7     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L75
        L68:
            r7 = 1
            r2.release()     // Catch: java.lang.Exception -> L6d
            goto L89
        L6d:
            r1 = move-exception
            org.telegram.messenger.FileLog.m45e(r1)
            goto L89
        L72:
            r5 = move-exception
            r1 = r2
            goto Lbf
        L75:
            r7 = move-exception
            r1 = r2
            goto L7b
        L78:
            r5 = move-exception
            goto Lbf
        L7a:
            r7 = move-exception
        L7b:
            org.telegram.messenger.FileLog.m45e(r7)     // Catch: java.lang.Throwable -> L78
            if (r1 == 0) goto L88
            r1.release()     // Catch: java.lang.Exception -> L84
            goto L88
        L84:
            r7 = move-exception
            org.telegram.messenger.FileLog.m45e(r7)
        L88:
            r7 = 0
        L89:
            if (r7 != 0) goto Lbe
            android.content.Context r7 = org.telegram.messenger.ApplicationLoader.applicationContext     // Catch: java.lang.Exception -> Lba
            java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> Lba
            r1.<init>(r5)     // Catch: java.lang.Exception -> Lba
            android.net.Uri r5 = android.net.Uri.fromFile(r1)     // Catch: java.lang.Exception -> Lba
            android.media.MediaPlayer r5 = android.media.MediaPlayer.create(r7, r5)     // Catch: java.lang.Exception -> Lba
            if (r5 == 0) goto Lbe
            int r7 = r5.getDuration()     // Catch: java.lang.Exception -> Lba
            float r7 = (float) r7     // Catch: java.lang.Exception -> Lba
            float r7 = r7 / r0
            double r0 = (double) r7     // Catch: java.lang.Exception -> Lba
            double r0 = java.lang.Math.ceil(r0)     // Catch: java.lang.Exception -> Lba
            int r7 = (int) r0     // Catch: java.lang.Exception -> Lba
            r6.duration = r7     // Catch: java.lang.Exception -> Lba
            int r7 = r5.getVideoWidth()     // Catch: java.lang.Exception -> Lba
            r6.f1505w = r7     // Catch: java.lang.Exception -> Lba
            int r7 = r5.getVideoHeight()     // Catch: java.lang.Exception -> Lba
            r6.f1504h = r7     // Catch: java.lang.Exception -> Lba
            r5.release()     // Catch: java.lang.Exception -> Lba
            goto Lbe
        Lba:
            r5 = move-exception
            org.telegram.messenger.FileLog.m45e(r5)
        Lbe:
            return
        Lbf:
            if (r1 == 0) goto Lc9
            r1.release()     // Catch: java.lang.Exception -> Lc5
            goto Lc9
        Lc5:
            r6 = move-exception
            org.telegram.messenger.FileLog.m45e(r6)
        Lc9:
            throw r5
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
        boolean z;
        int[] iArr = new int[11];
        AnimatedFileDrawable.getVideoInfo(str, iArr);
        if (iArr[0] == 0) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m48d("video hasn't avc1 atom");
            }
            return null;
        }
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
                    FileLog.m48d("no codec info for video/avc");
                }
                return null;
            }
            String name = selectCodec.getName();
            if (!name.equals("OMX.google.h264.encoder") && !name.equals("OMX.ST.VFM.H264Enc") && !name.equals("OMX.Exynos.avc.enc") && !name.equals("OMX.MARVELL.VIDEO.HW.CODA7542ENCODER") && !name.equals("OMX.MARVELL.VIDEO.H264ENCODER") && !name.equals("OMX.k3.video.encoder.avc") && !name.equals("OMX.TI.DUCATI1.VIDEO.H264E")) {
                if (MediaController.selectColorFormat(selectCodec, "video/avc") == 0) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m48d("no color format for video/avc");
                    }
                    return null;
                }
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m48d("unsupported encoder = " + name);
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
        int i3 = iArr[1];
        videoEditedInfo.originalWidth = i3;
        videoEditedInfo.resultWidth = i3;
        int i4 = iArr[2];
        videoEditedInfo.originalHeight = i4;
        videoEditedInfo.resultHeight = i4;
        videoEditedInfo.rotationValue = iArr[8];
        videoEditedInfo.originalDuration = f * 1000.0f;
        float max = Math.max(i3, i4);
        float f2 = 640.0f;
        int i5 = max <= 1280.0f ? max > 854.0f ? 3 : max > 640.0f ? 2 : 1 : 4;
        int round = Math.round(DownloadController.getInstance(UserConfig.selectedAccount).getMaxVideoBitrate() / (100.0f / i5));
        if (round > i5) {
            round = i5;
        }
        if (new File(str).length() < 1048576000) {
            if (round != i5 || Math.max(videoEditedInfo.originalWidth, videoEditedInfo.originalHeight) > 1280) {
                if (round == 1) {
                    f2 = 432.0f;
                } else if (round != 2) {
                    f2 = round != 3 ? 1280.0f : 848.0f;
                }
                int i6 = videoEditedInfo.originalWidth;
                int i7 = videoEditedInfo.originalHeight;
                float f3 = f2 / (i6 > i7 ? i6 : i7);
                videoEditedInfo.resultWidth = Math.round((i6 * f3) / 2.0f) * 2;
                videoEditedInfo.resultHeight = Math.round((videoEditedInfo.originalHeight * f3) / 2.0f) * 2;
                z = true;
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
        } else {
            videoEditedInfo.bitrate = videoBitrate;
        }
        long j2 = ((float) j) + (((f / 1000.0f) * videoBitrate) / 8.0f);
        videoEditedInfo.estimatedSize = j2;
        if (j2 == 0) {
            videoEditedInfo.estimatedSize = 1L;
        }
        return videoEditedInfo;
    }

    public static void prepareSendingVideo(final AccountInstance accountInstance, final String str, final VideoEditedInfo videoEditedInfo, final long j, final MessageObject messageObject, final MessageObject messageObject2, final CharSequence charSequence, final ArrayList<TLRPC$MessageEntity> arrayList, final int i, final MessageObject messageObject3, final boolean z, final int i2, final boolean z2, final boolean z3, final String str2) {
        if (str == null || str.length() == 0) {
            return;
        }
        new Thread(new Runnable() { // from class: org.telegram.messenger.SendMessagesHelper$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                SendMessagesHelper.lambda$prepareSendingVideo$93(VideoEditedInfo.this, str, j, i, accountInstance, charSequence, messageObject3, z3, messageObject, messageObject2, arrayList, z, i2, str2, z2);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0268  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$prepareSendingVideo$93(org.telegram.messenger.VideoEditedInfo r29, java.lang.String r30, final long r31, final int r33, final org.telegram.messenger.AccountInstance r34, java.lang.CharSequence r35, final org.telegram.messenger.MessageObject r36, final boolean r37, final org.telegram.messenger.MessageObject r38, final org.telegram.messenger.MessageObject r39, final java.util.ArrayList r40, final boolean r41, final int r42, final java.lang.String r43, boolean r44) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.SendMessagesHelper.lambda$prepareSendingVideo$93(org.telegram.messenger.VideoEditedInfo, java.lang.String, long, int, org.telegram.messenger.AccountInstance, java.lang.CharSequence, org.telegram.messenger.MessageObject, boolean, org.telegram.messenger.MessageObject, org.telegram.messenger.MessageObject, java.util.ArrayList, boolean, int, java.lang.String, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$prepareSendingVideo$92(Bitmap bitmap, String str, MessageObject messageObject, AccountInstance accountInstance, VideoEditedInfo videoEditedInfo, TLRPC$TL_document tLRPC$TL_document, String str2, HashMap hashMap, boolean z, String str3, long j, MessageObject messageObject2, MessageObject messageObject3, String str4, ArrayList arrayList, boolean z2, int i, int i2, String str5) {
        if (bitmap != null && str != null) {
            ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), str, false);
        }
        if (messageObject != null) {
            accountInstance.getSendMessagesHelper().editMessage(messageObject, null, videoEditedInfo, tLRPC$TL_document, str2, hashMap, false, z, str3);
        } else {
            accountInstance.getSendMessagesHelper().sendMessage(tLRPC$TL_document, videoEditedInfo, str2, j, messageObject2, messageObject3, str4, arrayList, null, hashMap, z2, i, i2, str3, null, false, z, str5);
        }
    }
}
