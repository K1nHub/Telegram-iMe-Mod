package com.iMe.utils.extentions.model.telegram;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ChatObject;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: ChatExt.kt */
/* loaded from: classes6.dex */
public final class ChatExtKt {
    public static final long getBotApiId(TLRPC$Chat tLRPC$Chat) {
        Intrinsics.checkNotNullParameter(tLRPC$Chat, "<this>");
        String str = (ChatObject.isMegagroup(tLRPC$Chat) || ChatObject.isChannel(tLRPC$Chat)) ? "-100" : "-";
        return Long.parseLong(str + Math.abs(tLRPC$Chat.f1522id));
    }
}
