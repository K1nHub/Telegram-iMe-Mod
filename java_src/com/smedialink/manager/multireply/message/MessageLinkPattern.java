package com.smedialink.manager.multireply.message;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: MessageLinkPattern.kt */
/* loaded from: classes3.dex */
public final class MessageLinkPattern {
    private final String messageLinkChatPattern;
    private final String patternReplaceSymbols;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageLinkPattern) {
            MessageLinkPattern messageLinkPattern = (MessageLinkPattern) obj;
            return Intrinsics.areEqual(this.patternReplaceSymbols, messageLinkPattern.patternReplaceSymbols) && Intrinsics.areEqual(this.messageLinkChatPattern, messageLinkPattern.messageLinkChatPattern);
        }
        return false;
    }

    public int hashCode() {
        return (this.patternReplaceSymbols.hashCode() * 31) + this.messageLinkChatPattern.hashCode();
    }

    public String toString() {
        return "MessageLinkPattern(patternReplaceSymbols=" + this.patternReplaceSymbols + ", messageLinkChatPattern=" + this.messageLinkChatPattern + ')';
    }

    public MessageLinkPattern(String patternReplaceSymbols, String messageLinkChatPattern) {
        Intrinsics.checkNotNullParameter(patternReplaceSymbols, "patternReplaceSymbols");
        Intrinsics.checkNotNullParameter(messageLinkChatPattern, "messageLinkChatPattern");
        this.patternReplaceSymbols = patternReplaceSymbols;
        this.messageLinkChatPattern = messageLinkChatPattern;
    }

    public final String getPatternReplaceSymbols() {
        return this.patternReplaceSymbols;
    }

    public final String getMessageLinkChatPattern() {
        return this.messageLinkChatPattern;
    }
}
