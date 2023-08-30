package com.iMe.utils.extentions.model.telegram;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: ChatExt.kt */
/* loaded from: classes4.dex */
public final class ChatExtKt {
    public static final long getBotApiId(TLRPC$Chat tLRPC$Chat) {
        Intrinsics.checkNotNullParameter(tLRPC$Chat, "<this>");
        return Long.parseLong("-100" + tLRPC$Chat.f1531id);
    }
}
