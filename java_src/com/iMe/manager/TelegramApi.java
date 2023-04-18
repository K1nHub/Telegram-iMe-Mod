package com.iMe.manager;

import io.reactivex.Completable;
import io.reactivex.Observable;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_exportedMessageLink;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$messages_BotResults;
/* compiled from: TelegramApi.kt */
/* loaded from: classes3.dex */
public interface TelegramApi {
    Observable<String> acceptUrlAuth(String str, TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth);

    Completable deleteUsers(ArrayList<TLRPC$User> arrayList);

    Observable<TLRPC$Chat> getChatInfoByUsername(String str);

    Observable<TLRPC$messages_BotResults> getInlineBot(String str, long j, long j2);

    Observable<TLRPC$TL_exportedMessageLink> getMessageLinkPattern(MessageObject messageObject, TLRPC$Chat tLRPC$Chat);

    Observable<TLRPC$User> getUserInfoByUsername(String str);

    Observable<List<TLRPC$User>> getUsersByIds(List<Long> list);

    Observable<TLRPC$Chat> subscribeToChannel(TLRPC$Chat tLRPC$Chat);

    Observable<Boolean> unblockPeer(long j);

    Observable<TLRPC$Chat> unsubscribeFromChannel(TLRPC$Chat tLRPC$Chat);
}
