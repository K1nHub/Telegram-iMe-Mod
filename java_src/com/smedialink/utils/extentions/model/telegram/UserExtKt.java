package com.smedialink.utils.extentions.model.telegram;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ContactsController;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: UserExt.kt */
/* loaded from: classes3.dex */
public final class UserExtKt {
    public static final String getFullName(TLRPC$User tLRPC$User) {
        Intrinsics.checkNotNullParameter(tLRPC$User, "<this>");
        return ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name);
    }

    public static final String getPrivacySafeName(TLRPC$User tLRPC$User) {
        Intrinsics.checkNotNullParameter(tLRPC$User, "<this>");
        if (tLRPC$User.contact) {
            String str = tLRPC$User.username;
            return str == null || str.length() == 0 ? String.valueOf(tLRPC$User.f1640id) : tLRPC$User.username;
        }
        return tLRPC$User.first_name;
    }
}
