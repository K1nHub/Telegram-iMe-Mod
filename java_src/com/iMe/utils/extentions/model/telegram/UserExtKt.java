package com.iMe.utils.extentions.model.telegram;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ContactsController;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: UserExt.kt */
/* loaded from: classes4.dex */
public final class UserExtKt {
    public static final String getFullName(TLRPC$User tLRPC$User) {
        Intrinsics.checkNotNullParameter(tLRPC$User, "<this>");
        String formatName = ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name);
        Intrinsics.checkNotNullExpressionValue(formatName, "formatName(first_name, last_name)");
        return formatName;
    }

    public static final String getPrivacySafeName(TLRPC$User tLRPC$User) {
        Intrinsics.checkNotNullParameter(tLRPC$User, "<this>");
        String str = tLRPC$User.username;
        if (str == null || str.length() == 0) {
            return "user";
        }
        return '@' + tLRPC$User.username;
    }

    public static final String getPrivacySafeName(TLRPC$Chat tLRPC$Chat) {
        Intrinsics.checkNotNullParameter(tLRPC$Chat, "<this>");
        String str = tLRPC$Chat.username;
        if (str == null || str.length() == 0) {
            String title = tLRPC$Chat.title;
            Intrinsics.checkNotNullExpressionValue(title, "title");
            return title;
        }
        return '@' + tLRPC$Chat.username;
    }
}
