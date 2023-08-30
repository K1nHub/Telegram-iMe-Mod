package com.iMe.manager;

import io.reactivex.Completable;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC$ChannelParticipant;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$TL_exportedMessageLink;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: TelegramApi.kt */
/* loaded from: classes3.dex */
public interface TelegramApi {
    Observable<String> acceptUrlAuth(String str, TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth);

    Completable deleteUsers(ArrayList<TLRPC$User> arrayList);

    Observable<TLRPC$Chat> getChatInfoById(long j);

    Observable<TLRPC$Chat> getChatInfoByUsername(String str);

    Observable<TLRPC$ChannelParticipant> getChatParticipant(TLRPC$Chat tLRPC$Chat, TLRPC$User tLRPC$User);

    Observable<TLRPC$ChatFull> getFullChatInfoById(long j, TLRPC$Chat tLRPC$Chat);

    Observable<TLRPC$messages_BotResults> getInlineBot(String str, long j, long j2);

    Observable<TLRPC$TL_exportedMessageLink> getMessageLinkPattern(MessageObject messageObject, TLRPC$Chat tLRPC$Chat);

    Observable<TLRPC$User> getUserInfoByUsername(String str);

    Observable<List<TLRPC$User>> getUsersByIds(List<Long> list);

    Observable<TLRPC$Chat> subscribeToChannel(TLRPC$Chat tLRPC$Chat);

    Observable<Boolean> unblockPeer(long j);

    Observable<TLRPC$Chat> unsubscribeFromChannel(TLRPC$Chat tLRPC$Chat);

    /* compiled from: TelegramApi.kt */
    /* renamed from: com.iMe.manager.TelegramApi$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static /* synthetic */ Observable getFullChatInfoById$default(TelegramApi telegramApi, long j, TLRPC$Chat tLRPC$Chat, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    tLRPC$Chat = null;
                }
                return telegramApi.getFullChatInfoById(j, tLRPC$Chat);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFullChatInfoById");
        }
    }
}
