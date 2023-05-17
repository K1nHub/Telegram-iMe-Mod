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
        Intrinsics.checkNotNullParameter(tLRPC$User, "<this>");
        if (!tLRPC$User.contact) {
            String first_name = tLRPC$User.first_name;
            Intrinsics.checkNotNullExpressionValue(first_name, "first_name");
            return first_name;
        }
        String str = tLRPC$User.username;
        String valueOf = str == null || str.length() == 0 ? String.valueOf(tLRPC$User.f1574id) : tLRPC$User.username;
        Intrinsics.checkNotNullExpressionValue(valueOf, "if (username.isNullOrEmpty()) \"$id\" else username");
        return valueOf;
    }
}
