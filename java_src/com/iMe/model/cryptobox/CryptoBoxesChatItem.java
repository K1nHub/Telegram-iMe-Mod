package com.iMe.model.cryptobox;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CryptoBoxesChatItem.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxesChatItem extends NoChildNode {
    private final TLRPC$Chat chat;

    public static /* synthetic */ CryptoBoxesChatItem copy$default(CryptoBoxesChatItem cryptoBoxesChatItem, TLRPC$Chat tLRPC$Chat, int i, Object obj) {
        if ((i & 1) != 0) {
            tLRPC$Chat = cryptoBoxesChatItem.chat;
        }
        return cryptoBoxesChatItem.copy(tLRPC$Chat);
    }

    public final TLRPC$Chat component1() {
        return this.chat;
    }

    public final CryptoBoxesChatItem copy(TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        return new CryptoBoxesChatItem(chat);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CryptoBoxesChatItem) && Intrinsics.areEqual(this.chat, ((CryptoBoxesChatItem) obj).chat);
    }

    public int hashCode() {
        return this.chat.hashCode();
    }

    public String toString() {
        return "CryptoBoxesChatItem(chat=" + this.chat + ')';
    }

    public final TLRPC$Chat getChat() {
        return this.chat;
    }

    public CryptoBoxesChatItem(TLRPC$Chat chat) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        this.chat = chat;
    }
}
