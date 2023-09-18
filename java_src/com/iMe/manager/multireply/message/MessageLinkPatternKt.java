package com.iMe.manager.multireply.message;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: MessageLinkPattern.kt */
/* loaded from: classes4.dex */
public final class MessageLinkPatternKt {
    public static final String buildMessageLink(MessageLinkPattern messageLinkPattern, int i) {
        String replace$default;
        Intrinsics.checkNotNullParameter(messageLinkPattern, "<this>");
        replace$default = StringsKt__StringsJVMKt.replace$default(messageLinkPattern.getMessageLinkChatPattern(), messageLinkPattern.getPatternReplaceSymbols(), String.valueOf(i), false, 4, (Object) null);
        return replace$default;
    }
}
