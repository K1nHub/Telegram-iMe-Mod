package org.telegram.messenger;

import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseBooleanArray;
import com.iMe.storage.domain.model.templates.TemplateModel;
import java.util.ArrayList;
import java.util.Iterator;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$MessageFwdHeader;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageEntitySpoiler;
import org.telegram.tgnet.TLRPC$TL_messageFwdHeader;
import org.telegram.tgnet.TLRPC$TL_messageMediaPoll;
import org.telegram.tgnet.TLRPC$TL_pollAnswerVoters;
import org.telegram.tgnet.TLRPC$TL_pollResults;
/* loaded from: classes4.dex */
public class ForwardingMessagesParams {
    public boolean hasCaption;
    public boolean hasPreview;
    public boolean hasSenders;
    public boolean hasSpoilers;
    public boolean hideCaption;
    public boolean hideForwardSendersName;
    public boolean isFromShareAlert;
    public boolean isLastHideMedia;
    public boolean isLastHidePreview;
    public boolean isSecret;
    public ArrayList<MessageObject> messages;
    public boolean multiplyUsers;
    public boolean needForceHideForwardAuthor;
    public boolean needHideMedia;
    public boolean needHidePreview;
    public TemplateModel template;
    public boolean willSeeSenders;
    public LongSparseArray<MessageObject.GroupedMessages> groupedMessagesMap = new LongSparseArray<>();
    public ArrayList<MessageObject> previewMessages = new ArrayList<>();
    public SparseBooleanArray selectedIds = new SparseBooleanArray();
    public ArrayList<TLRPC$TL_pollAnswerVoters> pollChoosenAnswers = new ArrayList<>();

    public void getSelectedMessages(ArrayList<MessageObject> arrayList) {
        getSelectedMessages(arrayList, false);
    }

    public void enableTemplatePreviewMode(TemplateModel templateModel) {
        this.template = templateModel;
        this.hideForwardSendersName = true;
        this.hasPreview = false;
        this.hasCaption = false;
        this.hasSenders = false;
    }

    public boolean isTemplatePreview() {
        return this.template != null;
    }

    public ForwardingMessagesParams(ArrayList<MessageObject> arrayList, long j) {
        long j2;
        long j3;
        TLRPC$MessageFwdHeader tLRPC$MessageFwdHeader;
        this.messages = arrayList;
        this.hasPreview = false;
        this.hasCaption = false;
        this.hasSenders = false;
        this.isSecret = DialogObject.isEncryptedDialog(j);
        this.hasSpoilers = false;
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            MessageObject messageObject = arrayList.get(i);
            if (!TextUtils.isEmpty(messageObject.caption)) {
                this.hasCaption = true;
            }
            if (!this.hasPreview && messageObject.hasPreview()) {
                this.hasPreview = true;
            }
            this.selectedIds.put(messageObject.getId(), true);
            TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
            TLRPC$Message tLRPC$Message = messageObject.messageOwner;
            tLRPC$TL_message.f1542id = tLRPC$Message.f1542id;
            tLRPC$TL_message.grouped_id = tLRPC$Message.grouped_id;
            tLRPC$TL_message.peer_id = tLRPC$Message.peer_id;
            tLRPC$TL_message.from_id = tLRPC$Message.from_id;
            tLRPC$TL_message.message = tLRPC$Message.message;
            tLRPC$TL_message.media = tLRPC$Message.media;
            tLRPC$TL_message.action = tLRPC$Message.action;
            tLRPC$TL_message.edit_date = 0;
            ArrayList<TLRPC$MessageEntity> arrayList3 = tLRPC$Message.entities;
            if (arrayList3 != null) {
                tLRPC$TL_message.entities.addAll(arrayList3);
                if (!this.hasSpoilers) {
                    Iterator<TLRPC$MessageEntity> it = tLRPC$TL_message.entities.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next() instanceof TLRPC$TL_messageEntitySpoiler) {
                                this.hasSpoilers = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
            tLRPC$TL_message.out = true;
            tLRPC$TL_message.unread = false;
            TLRPC$Message tLRPC$Message2 = messageObject.messageOwner;
            tLRPC$TL_message.via_bot_id = tLRPC$Message2.via_bot_id;
            tLRPC$TL_message.post = tLRPC$Message2.post;
            tLRPC$TL_message.legacy = tLRPC$Message2.legacy;
            tLRPC$TL_message.restriction_reason = tLRPC$Message2.restriction_reason;
            tLRPC$TL_message.replyMessage = tLRPC$Message2.replyMessage;
            tLRPC$TL_message.attachPath = tLRPC$Message2.attachPath;
            long j4 = UserConfig.getInstance(messageObject.currentAccount).clientUserId;
            if (this.isSecret) {
                tLRPC$MessageFwdHeader = null;
            } else {
                tLRPC$MessageFwdHeader = messageObject.messageOwner.fwd_from;
                if (tLRPC$MessageFwdHeader != null) {
                    if (!messageObject.isDice()) {
                        this.hasSenders = true;
                    } else {
                        this.willSeeSenders = true;
                    }
                    if (tLRPC$MessageFwdHeader.from_id == null && !arrayList2.contains(tLRPC$MessageFwdHeader.from_name)) {
                        arrayList2.add(tLRPC$MessageFwdHeader.from_name);
                    }
                } else {
                    tLRPC$MessageFwdHeader = new TLRPC$TL_messageFwdHeader();
                    tLRPC$MessageFwdHeader.from_id = messageObject.messageOwner.from_id;
                    if (!messageObject.isDice()) {
                        this.hasSenders = true;
                    } else {
                        this.willSeeSenders = true;
                    }
                }
            }
            if (tLRPC$MessageFwdHeader != null) {
                tLRPC$TL_message.fwd_from = tLRPC$MessageFwdHeader;
                tLRPC$TL_message.flags |= 4;
            }
            MessageObject messageObject2 = new MessageObject(messageObject.currentAccount, tLRPC$TL_message, true, false) { // from class: org.telegram.messenger.ForwardingMessagesParams.1
                @Override // org.telegram.messenger.MessageObject
                public boolean isPreview() {
                    return true;
                }

                @Override // org.telegram.messenger.MessageObject
                public boolean needDrawForwarded() {
                    if (ForwardingMessagesParams.this.hideForwardSendersName) {
                        return false;
                    }
                    return super.needDrawForwarded();
                }
            };
            messageObject2.attachPathExists = messageObject.attachPathExists;
            messageObject2.mediaExists = messageObject.mediaExists;
            messageObject2.generateThumbs(true);
            messageObject2.preview = true;
            if (messageObject2.getGroupId() != 0) {
                MessageObject.GroupedMessages groupedMessages = this.groupedMessagesMap.get(messageObject2.getGroupId(), null);
                if (groupedMessages == null) {
                    groupedMessages = new MessageObject.GroupedMessages();
                    this.groupedMessagesMap.put(messageObject2.getGroupId(), groupedMessages);
                }
                groupedMessages.messages.add(messageObject2);
            }
            this.previewMessages.add(0, messageObject2);
            if (messageObject.isPoll()) {
                TLRPC$TL_messageMediaPoll tLRPC$TL_messageMediaPoll = (TLRPC$TL_messageMediaPoll) messageObject.messageOwner.media;
                PreviewMediaPoll previewMediaPoll = new PreviewMediaPoll();
                previewMediaPoll.poll = tLRPC$TL_messageMediaPoll.poll;
                previewMediaPoll.provider = tLRPC$TL_messageMediaPoll.provider;
                TLRPC$TL_pollResults tLRPC$TL_pollResults = new TLRPC$TL_pollResults();
                previewMediaPoll.results = tLRPC$TL_pollResults;
                int i2 = tLRPC$TL_messageMediaPoll.results.total_voters;
                tLRPC$TL_pollResults.total_voters = i2;
                previewMediaPoll.totalVotersCached = i2;
                messageObject2.messageOwner.media = previewMediaPoll;
                if (messageObject.canUnvote()) {
                    int size = tLRPC$TL_messageMediaPoll.results.results.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        TLRPC$TL_pollAnswerVoters tLRPC$TL_pollAnswerVoters = tLRPC$TL_messageMediaPoll.results.results.get(i3);
                        if (tLRPC$TL_pollAnswerVoters.chosen) {
                            TLRPC$TL_pollAnswerVoters tLRPC$TL_pollAnswerVoters2 = new TLRPC$TL_pollAnswerVoters();
                            tLRPC$TL_pollAnswerVoters2.chosen = tLRPC$TL_pollAnswerVoters.chosen;
                            tLRPC$TL_pollAnswerVoters2.correct = tLRPC$TL_pollAnswerVoters.correct;
                            tLRPC$TL_pollAnswerVoters2.flags = tLRPC$TL_pollAnswerVoters.flags;
                            tLRPC$TL_pollAnswerVoters2.option = tLRPC$TL_pollAnswerVoters.option;
                            tLRPC$TL_pollAnswerVoters2.voters = tLRPC$TL_pollAnswerVoters.voters;
                            this.pollChoosenAnswers.add(tLRPC$TL_pollAnswerVoters2);
                            previewMediaPoll.results.results.add(tLRPC$TL_pollAnswerVoters2);
                        } else {
                            previewMediaPoll.results.results.add(tLRPC$TL_pollAnswerVoters);
                        }
                    }
                }
            }
            messageObject2.isWebpage = messageObject.isWebpage();
        }
        ArrayList arrayList4 = new ArrayList();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            MessageObject messageObject3 = arrayList.get(i4);
            if (messageObject3.isFromUser()) {
                j3 = messageObject3.messageOwner.from_id.user_id;
            } else {
                TLRPC$Chat chat = MessagesController.getInstance(messageObject3.currentAccount).getChat(Long.valueOf(messageObject3.messageOwner.peer_id.channel_id));
                if (ChatObject.isChannel(chat) && chat.megagroup && messageObject3.isForwardedChannelPost()) {
                    j2 = messageObject3.messageOwner.fwd_from.from_id.channel_id;
                } else {
                    j2 = messageObject3.messageOwner.peer_id.channel_id;
                }
                j3 = -j2;
            }
            if (!arrayList4.contains(Long.valueOf(j3))) {
                arrayList4.add(Long.valueOf(j3));
            }
        }
        if (arrayList4.size() + arrayList2.size() > 1) {
            this.multiplyUsers = true;
        }
        for (int i5 = 0; i5 < this.groupedMessagesMap.size(); i5++) {
            this.groupedMessagesMap.valueAt(i5).calculate();
        }
    }

    public void getSelectedMessages(ArrayList<MessageObject> arrayList, boolean z) {
        ArrayList<MessageObject> arrayList2 = z ? this.previewMessages : this.messages;
        arrayList.clear();
        for (int i = 0; i < arrayList2.size(); i++) {
            MessageObject messageObject = arrayList2.get(i);
            if (messageObject != null) {
                if (this.selectedIds.get(messageObject.getId(), false)) {
                    arrayList.add(messageObject);
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    public class PreviewMediaPoll extends TLRPC$TL_messageMediaPoll {
        public int totalVotersCached;

        public PreviewMediaPoll() {
        }
    }
}
