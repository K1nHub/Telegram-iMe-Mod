package com.iMe.model.multireply;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: MessageLinkModel.kt */
/* loaded from: classes4.dex */
public final class MessageLinkModelKt {
    public static final String getMessageLinkWithNewMessageId(MessageLinkModel messageLinkModel, int i) {
        String replace$default;
        Intrinsics.checkNotNullParameter(messageLinkModel, "<this>");
        replace$default = StringsKt__StringsJVMKt.replace$default(messageLinkModel.getMessageLink(), String.valueOf(messageLinkModel.getMessageId()), String.valueOf(i), false, 4, (Object) null);
        return replace$default;
    }
}
