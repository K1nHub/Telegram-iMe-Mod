package org.telegram.p043ui.Stories;

import android.text.TextUtils;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: org.telegram.ui.Stories.ChannelBoostUtilities */
/* loaded from: classes6.dex */
public class ChannelBoostUtilities {
    public static String createLink(int i, long j) {
        long j2 = -j;
        TLRPC$Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(j2));
        if (!TextUtils.isEmpty(ChatObject.getPublicUsername(chat))) {
            return "https://t.me/" + ChatObject.getPublicUsername(chat) + "?boost";
        }
        return "https://t.me/c/" + j2 + "?boost";
    }
}
