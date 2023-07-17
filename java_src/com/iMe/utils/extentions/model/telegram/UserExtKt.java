package com.iMe.utils.extentions.model.telegram;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ContactsController;
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
        String str;
        Intrinsics.checkNotNullParameter(tLRPC$User, "<this>");
        if (tLRPC$User.contact) {
            String str2 = tLRPC$User.username;
            str = str2 == null || str2.length() == 0 ? String.valueOf(tLRPC$User.f1656id) : tLRPC$User.username;
            Intrinsics.checkNotNullExpressionValue(str, "if (username.isNullOrEmpty()) \"$id\" else username");
        } else {
            String str3 = tLRPC$User.first_name;
            str = str3 == null ? tLRPC$User.last_name : str3;
            Intrinsics.checkNotNullExpressionValue(str, "first_name ?: last_name");
        }
        return str;
    }
}
